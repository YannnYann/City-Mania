package io.bidmachine.ads.networks.gam_dynamic;

import android.content.Context;
import android.text.TextUtils;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.UInt32Value;
import com.explorestack.protobuf.UInt64Value;
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader;
import io.bidmachine.ads.networks.gam_dynamic.versions.VersionWrapper;
import io.bidmachine.core.Logger;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.core.Utils;
import io.bidmachine.protobuf.Waterfall;
import io.bidmachine.util.taskmanager.TaskManager;
import io.bidmachine.util.taskmanager.coroutine.NetworkTaskManager;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.Tag;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public class WaterfallController {
    public static final TaskManager TASK_MANAGER = new NetworkTaskManager();
    public final AdsFormat adsFormat;
    public final Context applicationContext;
    public int cacheSize;
    public final GAMAdManager gamAdManager;
    public final GAMEventTracker gamEventTracker;
    public final GAMNetwork gamNetwork;
    public String id;
    public int maxRetryDegree;
    public final NetworkParams networkParams;
    public long refreshTimeOutMs;
    public String refreshUrl;
    public int retryBaseSec;
    public StringValue serverParams;
    public final Tag tag;
    public final TaskExecutor taskExecutor;
    public final VersionWrapper versionWrapper;
    public WaterfallLoader waterfallLoader;
    public final List<Waterfall.Configuration.AdUnit> adUnitList = new LinkedList();
    public final AtomicBoolean isLoading = new AtomicBoolean(false);
    public final AtomicBoolean isPolling = new AtomicBoolean(false);
    public final AtomicBoolean isShouldPollAfter = new AtomicBoolean(false);
    public final AtomicInteger failedWaterfallLoadAttempts = new AtomicInteger(0);

    public WaterfallController(Context context, NetworkParams networkParams, AdsFormat adsFormat, Waterfall.Configuration waterfallConfiguration, VersionWrapper versionWrapper, GAMNetwork gamNetwork, GAMAdManager gamAdManager, GAMEventTracker gamEventTracker, TaskExecutor taskExecutor) {
        this.tag = new Tag(networkParams.getNetworkName() + "WaterfallController");
        this.applicationContext = context.getApplicationContext();
        this.networkParams = networkParams;
        this.adsFormat = adsFormat;
        this.versionWrapper = versionWrapper;
        this.gamNetwork = gamNetwork;
        this.gamAdManager = gamAdManager;
        this.taskExecutor = taskExecutor;
        this.gamEventTracker = gamEventTracker;
        setWaterfallConfiguration(waterfallConfiguration);
    }

    public void load(boolean isForced) {
        if (!this.isLoading.compareAndSet(false, true)) {
            if (!isForced || this.isPolling.get()) {
                return;
            }
            this.isShouldPollAfter.set(true);
            return;
        }
        this.isPolling.set(true);
        this.failedWaterfallLoadAttempts.set(0);
        loadWaterfall();
    }

    public void setWaterfallConfiguration(Waterfall.Configuration waterfallConfiguration) {
        this.id = waterfallConfiguration.getId();
        this.adUnitList.clear();
        List<Waterfall.Configuration.AdUnit> adUnitsList = waterfallConfiguration.getAdUnitsList();
        if (adUnitsList != null && !adUnitsList.isEmpty()) {
            this.adUnitList.addAll(adUnitsList);
            sortDescByPrice(this.adUnitList);
        }
        StringValue refreshUrl = waterfallConfiguration.hasRefreshUrl() ? waterfallConfiguration.getRefreshUrl() : null;
        if (refreshUrl != null) {
            String value = refreshUrl.getValue();
            if (!TextUtils.isEmpty(value) && Utils.isHttpUrl(value)) {
                this.refreshUrl = refreshUrl.getValue();
            }
        }
        UInt32Value cacheSize = waterfallConfiguration.hasCacheSize() ? waterfallConfiguration.getCacheSize() : null;
        this.cacheSize = cacheSize != null ? cacheSize.getValue() : 1;
        UInt32Value retryBase = waterfallConfiguration.hasRetryBase() ? waterfallConfiguration.getRetryBase() : null;
        this.retryBaseSec = retryBase != null ? retryBase.getValue() : 2;
        UInt32Value maxRetryDegree = waterfallConfiguration.hasMaxRetryDegree() ? waterfallConfiguration.getMaxRetryDegree() : null;
        this.maxRetryDegree = maxRetryDegree != null ? maxRetryDegree.getValue() : 5;
        UInt64Value refreshTimeout = waterfallConfiguration.hasRefreshTimeout() ? waterfallConfiguration.getRefreshTimeout() : null;
        this.refreshTimeOutMs = refreshTimeout != null ? refreshTimeout.getValue() : 10000L;
        this.serverParams = waterfallConfiguration.hasServerParams() ? waterfallConfiguration.getServerParams() : null;
    }

    public void loadWaterfall() {
        this.isShouldPollAfter.set(false);
        this.waterfallLoader = new WaterfallLoader(this.applicationContext, this.networkParams, this.adsFormat, this.versionWrapper, this.gamNetwork, this.gamAdManager, this.gamEventTracker, this.taskExecutor, this.id, this.adUnitList, this.cacheSize, new WaterfallLoaderListener());
        final long jCalculateLoadingDelayMs = calculateLoadingDelayMs();
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda0
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                WaterfallController waterfallController = this.f$0;
                return String.format("(%s) Execution waterfall load started after - %s ms (failedAttempts - %s, maxRetryDegree - %s, retryBase - %s sec)", waterfallController.adsFormat, Long.valueOf(jCalculateLoadingDelayMs), Integer.valueOf(waterfallController.failedWaterfallLoadAttempts.get()), Integer.valueOf(waterfallController.maxRetryDegree), Integer.valueOf(waterfallController.retryBaseSec));
            }
        });
        if (this.taskExecutor.execute(this.waterfallLoader, jCalculateLoadingDelayMs)) {
            return;
        }
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda1
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("(%s) Fail to start loading waterfall", this.f$0.adsFormat);
            }
        });
        processLoadCompleted();
    }

    public long calculateLoadingDelayMs() {
        return (long) (Math.pow(this.retryBaseSec, Math.min(this.failedWaterfallLoadAttempts.get(), this.maxRetryDegree)) * 1000.0d);
    }

    public void requestNextWaterfall(Queue<Waterfall.Result.AdUnit> adUnitResultQueue) {
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda4
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("(%s) Request next waterfall", this.f$0.adsFormat);
            }
        });
        if (TextUtils.isEmpty(this.refreshUrl) || !Utils.isHttpUrl(this.refreshUrl)) {
            onWaterfallRequestFail("Request next waterfall failed (refreshUrl is null or empty or incorrect)");
            return;
        }
        Waterfall.Result.Builder builderAddAllAdUnitResults = Waterfall.Result.newBuilder().setFormat(StringValue.newBuilder().setValue(this.adsFormat.getRemoteName()).build()).addAllAdUnitResults(adUnitResultQueue);
        String str = this.id;
        if (str != null) {
            builderAddAllAdUnitResults.setWaterfallId(str);
        }
        List<Waterfall.Result.CachedAdUnit> cachedAdUnitList = this.gamAdManager.getCachedAdUnitList(this.adsFormat);
        if (cachedAdUnitList != null && !cachedAdUnitList.isEmpty()) {
            builderAddAllAdUnitResults.addAllCachedAdUnits(cachedAdUnitList);
        }
        Struct ext = this.networkParams.getExt(this.applicationContext);
        if (ext != null) {
            builderAddAllAdUnitResults.setExt(ext);
        }
        StringValue stringValue = this.serverParams;
        if (stringValue != null) {
            builderAddAllAdUnitResults.setServerParams(stringValue);
        }
        WaterfallCallback waterfallCallback = new WaterfallCallback();
        WaterfallNetworkRequest waterfallNetworkRequest = new WaterfallNetworkRequest(this.refreshUrl, builderAddAllAdUnitResults.build(), (int) this.refreshTimeOutMs);
        waterfallNetworkRequest.setCallback(waterfallCallback);
        waterfallNetworkRequest.setCancelCallback(waterfallCallback);
        waterfallNetworkRequest.request(TASK_MANAGER);
    }

    public void onWaterfallRequestSuccess(Waterfall.Configuration waterfallConfiguration) {
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda6
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("(%s) onWaterfallRequestSuccess", this.f$0.adsFormat);
            }
        });
        setWaterfallConfiguration(waterfallConfiguration);
        if (!this.isShouldPollAfter.get() && waterfallConfiguration.getShouldBreak()) {
            processLoadCompleted();
        } else {
            loadWaterfall();
        }
    }

    public void onWaterfallRequestFail(final String errorMessage) {
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda5
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("(%s) onWaterfallRequestFail - %s", this.f$0.adsFormat, errorMessage);
            }
        });
        loadWaterfall();
    }

    public void processLoadCompleted() {
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda3
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("(%s) Loading completed", this.f$0.adsFormat);
            }
        });
        clearWaterfall();
        this.isLoading.set(false);
    }

    public void clearWaterfall() {
        this.waterfallLoader = null;
    }

    public void sortDescByPrice(List<Waterfall.Configuration.AdUnit> adUnitList) {
        Collections.sort(adUnitList, new Comparator() { // from class: io.bidmachine.ads.networks.gam_dynamic.WaterfallController$$ExternalSyntheticLambda2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return WaterfallController.$r8$lambda$pQNTio1beMiH_T8OnbAzvWyINDw((Waterfall.Configuration.AdUnit) obj, (Waterfall.Configuration.AdUnit) obj2);
            }
        });
    }

    public static /* synthetic */ int $r8$lambda$pQNTio1beMiH_T8OnbAzvWyINDw(Waterfall.Configuration.AdUnit adUnit, Waterfall.Configuration.AdUnit adUnit2) {
        return -Double.compare(adUnit.getPrice(), adUnit2.getPrice());
    }

    public class WaterfallLoaderListener implements WaterfallLoader.Listener {
        public final AtomicBoolean isAdLoaded = new AtomicBoolean(false);

        public WaterfallLoaderListener() {
        }

        @Override // io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader.Listener
        public void onWaterfallLoadCompleted(Queue<Waterfall.Result.AdUnit> adUnitResultQueue) {
            WaterfallController.this.isPolling.set(false);
            if (!this.isAdLoaded.get()) {
                WaterfallController.this.failedWaterfallLoadAttempts.incrementAndGet();
            }
            WaterfallController.this.requestNextWaterfall(adUnitResultQueue);
        }
    }

    public class WaterfallCallback implements NetworkRequest.Callback, NetworkRequest.CancelCallback {
        public WaterfallCallback() {
        }

        @Override // io.bidmachine.core.NetworkRequest.Callback
        public void onSuccess(Waterfall.Configuration response) {
            if (response != null) {
                WaterfallController.this.onWaterfallRequestSuccess(response);
            } else {
                WaterfallController.this.onWaterfallRequestFail("Configuration response is null");
            }
        }

        @Override // io.bidmachine.core.NetworkRequest.Callback
        public void onFail(BMError bmError) {
            String message;
            WaterfallController waterfallController = WaterfallController.this;
            if (bmError != null) {
                message = bmError.getMessage();
            } else {
                message = "Unknown";
            }
            waterfallController.onWaterfallRequestFail(message);
        }

        @Override // io.bidmachine.core.NetworkRequest.CancelCallback
        public void onCanceled() {
            WaterfallController.this.onWaterfallRequestFail("Request is canceled");
        }
    }
}
