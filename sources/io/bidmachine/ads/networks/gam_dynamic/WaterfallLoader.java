package io.bidmachine.ads.networks.gam_dynamic;

import android.content.Context;
import android.text.TextUtils;
import com.explorestack.protobuf.StringValue;
import io.bidmachine.AdsFormat;
import io.bidmachine.TrackEventType;
import io.bidmachine.ads.networks.gam_dynamic.versions.VersionWrapper;
import io.bidmachine.core.Logger;
import io.bidmachine.protobuf.Waterfall;
import io.bidmachine.tracking.EventData;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.Tag;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public class WaterfallLoader implements Runnable {
    public final Queue<Waterfall.Configuration.AdUnit> adUnitQueue;
    public final AdsFormat adsFormat;
    public final Context applicationContext;
    public final int cacheSize;
    public final GAMAdManager gamAdManager;
    public final GAMEventTracker gamEventTracker;
    public final GAMNetwork gamNetwork;
    public final Listener listener;
    public final NetworkParams networkParams;
    public final Tag tag;
    public final TaskExecutor taskExecutor;
    public final VersionWrapper versionWrapper;
    public final String waterfallId;
    public final Queue<Waterfall.Result.AdUnit> adUnitResultQueue = new ConcurrentLinkedQueue();
    public final AtomicBoolean isLoading = new AtomicBoolean(false);

    public interface Listener {
        void onWaterfallLoadCompleted(Queue<Waterfall.Result.AdUnit> adUnitResultQueue);
    }

    public WaterfallLoader(Context context, NetworkParams networkParams, AdsFormat adsFormat, VersionWrapper versionWrapper, GAMNetwork gamNetwork, GAMAdManager gamAdManager, GAMEventTracker gamEventTracker, TaskExecutor taskExecutor, String waterfallId, List<Waterfall.Configuration.AdUnit> adUnitList, int cacheSize, Listener listener) {
        this.tag = new Tag(networkParams.getNetworkName() + "WaterfallLoader");
        this.applicationContext = context.getApplicationContext();
        this.networkParams = networkParams;
        this.adsFormat = adsFormat;
        this.versionWrapper = versionWrapper;
        this.gamNetwork = gamNetwork;
        this.gamAdManager = gamAdManager;
        this.gamEventTracker = gamEventTracker;
        this.taskExecutor = taskExecutor;
        this.waterfallId = waterfallId;
        this.adUnitQueue = new ConcurrentLinkedQueue(adUnitList);
        this.cacheSize = cacheSize;
        this.listener = listener;
    }

    @Override // java.lang.Runnable
    public void run() {
        load();
    }

    public void load() {
        if (this.isLoading.compareAndSet(false, true)) {
            Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$$ExternalSyntheticLambda0
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    WaterfallLoader waterfallLoader = this.f$0;
                    return String.format("(%s) Polling started (waterfallId - %s, ad unit count - %s)", waterfallLoader.adsFormat, waterfallLoader.waterfallId, Integer.valueOf(waterfallLoader.adUnitQueue.size()));
                }
            });
            trackEvent(TrackEventType.WaterfallLoadStart);
            loadNextAdUnit(null);
        }
    }

    public void loadNextAdUnit(Long sleepTimeAfterMs) {
        if (this.adUnitQueue.isEmpty()) {
            processLoadCompleted();
            return;
        }
        final Waterfall.Configuration.AdUnit adUnitPoll = this.adUnitQueue.poll();
        if (adUnitPoll == null) {
            loadNextAdUnit(sleepTimeAfterMs);
            return;
        }
        final long jCalculateLoadingDelayMs = calculateLoadingDelayMs(adUnitPoll, sleepTimeAfterMs);
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$$ExternalSyntheticLambda1
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return String.format("(%s) Execution ad unit load started after %s ms", this.f$0.adsFormat, Long.valueOf(jCalculateLoadingDelayMs));
            }
        });
        if (this.taskExecutor.execute(new Runnable() { // from class: io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                WaterfallLoader.m2505$r8$lambda$DtnBJu0H1w6GySDGGOQQGc_S6E(this.f$0, adUnitPoll);
            }
        }, jCalculateLoadingDelayMs)) {
            return;
        }
        processLoadCompleted();
    }

    /* JADX INFO: renamed from: $r8$lambda$DtnBJu0H1w6GyS-DGGOQQGc_S6E, reason: not valid java name */
    public static /* synthetic */ void m2505$r8$lambda$DtnBJu0H1w6GySDGGOQQGc_S6E(final WaterfallLoader waterfallLoader, Waterfall.Configuration.AdUnit adUnit) {
        Waterfall.Configuration.AdUnit adUnit2;
        InternalAd internalAdFindCheapestIdleAd = waterfallLoader.gamAdManager.findCheapestIdleAd(waterfallLoader.adsFormat);
        if (internalAdFindCheapestIdleAd != null && adUnit.getPrice() <= internalAdFindCheapestIdleAd.getAdUnit().getPrice() && waterfallLoader.gamAdManager.getLoadedAdCount(waterfallLoader.adsFormat) >= waterfallLoader.cacheSize) {
            Logger.d(waterfallLoader.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$$ExternalSyntheticLambda4
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return String.format("(%s) Stop polling. Waterfall already filled with expensive ads", this.f$0.adsFormat);
                }
            });
            waterfallLoader.addAdUnitResult(adUnit, Waterfall.Result.AdUnit.Status.STATUS_SKIPPED, null, null);
            Iterator<Waterfall.Configuration.AdUnit> it = waterfallLoader.adUnitQueue.iterator();
            while (it.hasNext()) {
                waterfallLoader.addAdUnitResult(it.next(), Waterfall.Result.AdUnit.Status.STATUS_SKIPPED, null, null);
            }
            waterfallLoader.processLoadCompleted();
            return;
        }
        try {
            adUnit2 = adUnit;
        } catch (Throwable th) {
            th = th;
            adUnit2 = adUnit;
        }
        try {
            InternalAd internalAdCreateAd = waterfallLoader.versionWrapper.createAd(waterfallLoader.networkParams, waterfallLoader.taskExecutor, waterfallLoader.adsFormat, adUnit2, waterfallLoader.new AdListener());
            if (internalAdCreateAd == null) {
                Logger.d(waterfallLoader.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$$ExternalSyntheticLambda5
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return String.format("(%s) Can't create InternalAd", this.f$0.adsFormat);
                    }
                });
                waterfallLoader.addAdUnitResult(adUnit2, Waterfall.Result.AdUnit.Status.STATUS_SKIPPED, null, BMError.internal("Can't create InternalAd"));
                waterfallLoader.loadNextAdUnit(null);
            } else {
                if (!TextUtils.isEmpty(waterfallLoader.waterfallId)) {
                    internalAdCreateAd.setCustomParam("gam_waterfall_id", waterfallLoader.waterfallId);
                    internalAdCreateAd.setCustomParam("gam_ad_unit_id", adUnit2.getAdUnitId());
                }
                internalAdCreateAd.load(waterfallLoader.applicationContext, waterfallLoader.new AdLoadListener());
                waterfallLoader.trackEvent(TrackEventType.AdUnitLoadStart, internalAdCreateAd);
            }
        } catch (Throwable th2) {
            th = th2;
            Throwable th3 = th;
            Logger.w(th3);
            waterfallLoader.addAdUnitResult(adUnit2, Waterfall.Result.AdUnit.Status.STATUS_SKIPPED, null, BMError.throwable("Exception loading InternalAd object", th3));
            waterfallLoader.loadNextAdUnit(null);
        }
    }

    public long calculateLoadingDelayMs(Waterfall.Configuration.AdUnit adUnit, Long sleepTimeAfterMs) {
        long sleepTimeBeforeMs = getSleepTimeBeforeMs(adUnit);
        return sleepTimeAfterMs != null ? sleepTimeBeforeMs + sleepTimeAfterMs.longValue() : sleepTimeBeforeMs;
    }

    public void addAdUnitResult(Waterfall.Configuration.AdUnit adUnit, Waterfall.Result.AdUnit.Status adUnitStatus, InternalAdLoadData internalAdLoadData, BMError bmError) {
        this.adUnitResultQueue.add(create(adUnit, adUnitStatus, internalAdLoadData, bmError));
    }

    public void processLoadCompleted() {
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.ads.networks.gam_dynamic.WaterfallLoader$$ExternalSyntheticLambda3
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return WaterfallLoader.$r8$lambda$q2v7Dd39UbYcvmQ5e42BuBjC0mQ(this.f$0);
            }
        });
        trackEvent(TrackEventType.WaterfallLoadFinish);
        this.isLoading.set(false);
        this.listener.onWaterfallLoadCompleted(this.adUnitResultQueue);
    }

    public static /* synthetic */ String $r8$lambda$q2v7Dd39UbYcvmQ5e42BuBjC0mQ(WaterfallLoader waterfallLoader) {
        StringBuilder sb = new StringBuilder(String.format("(%s) Polling completed (waterfallId - %s, ad unit count - %s)", waterfallLoader.adsFormat, waterfallLoader.waterfallId, Integer.valueOf(waterfallLoader.adUnitResultQueue.size())));
        Iterator<Waterfall.Result.AdUnit> it = waterfallLoader.adUnitResultQueue.iterator();
        while (it.hasNext()) {
            sb.append(String.format("\n> %s", GAMUtils.toString(it.next())));
        }
        return sb.toString();
    }

    public void removeAdFromCaches(InternalAd internalAd) {
        if (this.gamAdManager.removeAdFromCaches(internalAd)) {
            this.gamNetwork.cacheWaterfall(internalAd.getAdsFormat(), true);
        }
    }

    public void trackEvent(TrackEventType trackEventType) {
        trackEvent(trackEventType, null, null, null);
    }

    public void trackEvent(TrackEventType trackEventType, InternalAd internalAd) {
        trackEvent(trackEventType, internalAd.getAdUnit(), internalAd, null);
    }

    public void trackEvent(TrackEventType trackEventType, Waterfall.Configuration.AdUnit adUnit, InternalAd internalAd, BMError bmError) {
        EventData networkName = new EventData().setNetworkName(this.networkParams.getNetworkKey());
        if (adUnit != null) {
            networkName.setPrice(Double.valueOf(adUnit.getPrice()));
        }
        if (internalAd != null) {
            networkName.setCustomParams(internalAd.getCustomParamsMap());
        }
        if (!TextUtils.isEmpty(this.waterfallId)) {
            networkName.setCustomParam("gam_waterfall_id", this.waterfallId);
        }
        this.gamEventTracker.trackEvent(trackEventType, this.adsFormat, networkName, bmError);
    }

    public long getSleepTimeBeforeMs(Waterfall.Configuration.AdUnit adUnit) {
        if ((adUnit.hasSleepTimeBefore() ? adUnit.getSleepTimeBefore() : null) != null) {
            return r3.getValue();
        }
        return 0L;
    }

    public long getSleepTimeAfterMs(Waterfall.Configuration.AdUnit adUnit) {
        if ((adUnit.hasSleepTimeAfter() ? adUnit.getSleepTimeAfter() : null) != null) {
            return r3.getValue();
        }
        return 0L;
    }

    public Waterfall.Result.AdUnit create(Waterfall.Configuration.AdUnit adUnit, Waterfall.Result.AdUnit.Status adUnitStatus, InternalAdLoadData internalAdLoadData, BMError bmError) {
        Waterfall.Result.AdUnit.Builder price = Waterfall.Result.AdUnit.newBuilder().setStatus(adUnitStatus).setPrice(adUnit.getPrice());
        if (adUnit.getAdUnitId() != null) {
            price.setAdUnitId(adUnit.getAdUnitId());
        }
        StringValue serverParams = adUnit.getServerParams();
        if (serverParams != null) {
            price.setServerParams(serverParams);
        }
        if (bmError != null) {
            price.setError(Waterfall.Result.AdUnit.Error.newBuilder().setCode(bmError.getCode()).setDescription(bmError.getMessage()));
        }
        return price.build();
    }

    public class AdListener implements InternalAdListener {
        public AdListener() {
        }

        @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAdListener
        public void onAdShown(InternalAd internalAd) {
            WaterfallLoader.this.removeAdFromCaches(internalAd);
            WaterfallLoader.this.trackEvent(TrackEventType.AdUnitShown, internalAd);
        }

        @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAdListener
        public void onAdExpired(InternalAd internalAd) {
            WaterfallLoader.this.trackEvent(TrackEventType.AdUnitExpired, internalAd);
        }

        @Override // io.bidmachine.ads.networks.gam_dynamic.InternalAdListener
        public void onAdDestroyed(InternalAd internalAd, boolean isAdReleased) {
            if (!isAdReleased) {
                WaterfallLoader.this.gamAdManager.unReserveAd(internalAd);
            } else {
                WaterfallLoader.this.removeAdFromCaches(internalAd);
            }
        }
    }

    public class AdLoadListener implements InternalLoadListener {
        public AdLoadListener() {
        }

        @Override // io.bidmachine.ads.networks.gam_dynamic.InternalLoadListener
        public void onAdLoadFailed(InternalAd internalAd, BMError bmError) {
            Waterfall.Configuration.AdUnit adUnit = internalAd.getAdUnit();
            WaterfallLoader.this.trackEvent(TrackEventType.AdUnitLoadFinish, adUnit, internalAd, bmError);
            WaterfallLoader.this.trackEvent(TrackEventType.AdUnitLoss, internalAd);
            WaterfallLoader.this.addAdUnitResult(adUnit, Waterfall.Result.AdUnit.Status.STATUS_ERROR, null, bmError);
            internalAd.destroy();
            WaterfallLoader waterfallLoader = WaterfallLoader.this;
            waterfallLoader.loadNextAdUnit(Long.valueOf(waterfallLoader.getSleepTimeAfterMs(adUnit)));
        }
    }
}
