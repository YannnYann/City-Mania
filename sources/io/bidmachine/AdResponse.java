package io.bidmachine;

import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.ExpirationHandler;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.core.VisibilitySource;
import io.bidmachine.internal.C4226j;
import io.bidmachine.models.AdObject;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.models.AuctionResult;
import io.bidmachine.protobuf.AdCacheControl;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.ProtoUtils;
import io.bidmachine.utils.Tag;
import io.bidmachine.utils.lazy.LazyValue;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public class AdResponse implements ExpirationHandler.Listener {
    private static final String CLICK_BROWSER = "clickbrowser";
    private static final String CLICK_X = "click_x";
    private static final String CLICK_Y = "click_y";
    private static final long DEF_EXPIRATION_TIME_SEC = TimeUnit.MINUTES.toSeconds(29);
    private static final String VIEWPORT_HEIGHT = "viewport_height";
    private static final String VIEWPORT_WIDTH = "viewport_width";
    private final Ad ad;
    private final AdCacheControl adCacheControl;
    private volatile AdObject adObject;
    final AdResponseAdProcessCallback adProcessCallback;
    private final AdRequestParameters adRequestParameters;
    private final AuctionResult auctionResult;
    private final String bidId;
    private final long createTimeMs;
    private final AdExtension.EventConfiguration eventConfiguration;
    private final ExpirationHandler expirationHandler;
    private final long expirationTimeMs;
    final AtomicBoolean isCached;
    final boolean isCridMonitoringEnabled;
    ExpirationHandler loadExpirationHandler;
    private final NetworkAdUnitManager networkAdUnitManager;
    final String responseId;
    private final Struct seatBidExt;
    final Tag tag;
    final BidMachineTrackingObject trackingObject;
    private final NetworkAdUnit winnerNetworkAdUnit;
    final Map<TrackEventType, List<String>> trackUrlsMap = new EnumMap(TrackEventType.class);
    private final AtomicBoolean isExpired = new AtomicBoolean(false);
    final List<WeakReference<AdRequest<?, ?, ?>>> weakAdRequestList = new CopyOnWriteArrayList();
    private volatile d status = d.Idle;

    public static /* synthetic */ void $r8$lambda$1xJcMBI_v4vGJkF6xy8tC8WLKgY(AdResponse adResponse) {
        adResponse.getClass();
        try {
            AdObject adObject = adResponse.getAdObject();
            if (adObject != null) {
                adObject.onDestroy();
            }
        } catch (Throwable th) {
            Logger.w(th);
        }
        adResponse.adObject = null;
    }

    /* JADX INFO: renamed from: $r8$lambda$1zzZ_rWiZS2xn01P00h2TJQKD-Y, reason: not valid java name */
    public static /* synthetic */ String m2418$r8$lambda$1zzZ_rWiZS2xn01P00h2TJQKDY(AdResponse adResponse) {
        adResponse.getClass();
        return String.format("destroy - %s", adResponse);
    }

    /* JADX INFO: renamed from: $r8$lambda$4DC74I9VK5QMl2t1L6-aYBLvfgQ, reason: not valid java name */
    public static /* synthetic */ String m2419$r8$lambda$4DC74I9VK5QMl2t1L6aYBLvfgQ(AdResponse adResponse) {
        adResponse.getClass();
        return String.format("onLoadStart - %s", adResponse);
    }

    public static /* synthetic */ String $r8$lambda$E6hw474R9X_A2yE2VKAo18iMTNc(AdResponse adResponse) {
        adResponse.getClass();
        return String.format("release - %s", adResponse);
    }

    /* JADX INFO: renamed from: $r8$lambda$_MEjG6HrqBjLjBb2bJN1a-X3VYw, reason: not valid java name */
    public static /* synthetic */ String m2420$r8$lambda$_MEjG6HrqBjLjBb2bJN1aX3VYw(AdResponse adResponse) {
        adResponse.getClass();
        return String.format("detachRequest - %s", adResponse);
    }

    public static /* synthetic */ String $r8$lambda$uXAZ2DJU85aoqjkcIR0qYnPfZtA(AdResponse adResponse) {
        adResponse.getClass();
        return String.format("notifyExpired - %s", adResponse);
    }

    public static /* synthetic */ String $r8$lambda$v8MX_SQL3jKXCVBfr2LnpCaryxY(AdResponse adResponse) {
        adResponse.getClass();
        return String.format("attachRequest - %s", adResponse);
    }

    public static /* synthetic */ void $r8$lambda$xpS3XpoeB3Ox956S7szOIlHa4v4(AdResponse adResponse) {
        adResponse.getClass();
        try {
            AdObject adObject = adResponse.getAdObject();
            if (adObject != null) {
                adObject.hide();
            }
        } catch (Throwable th) {
            Logger.w(th);
        }
    }

    public AdResponse(AdRequestParameters adRequestParameters, NetworkAdUnitManager networkAdUnitManager, Response response, Response.Seatbid seatbid, Response.Seatbid.Bid bid, Ad ad, NetworkAdapter networkAdapter) {
        boolean z = false;
        AdResponseAdProcessCallback adResponseAdProcessCallback = new AdResponseAdProcessCallback(this);
        this.adProcessCallback = adResponseAdProcessCallback;
        this.isCached = new AtomicBoolean(false);
        this.tag = new Tag("AdResponse");
        this.createTimeMs = System.currentTimeMillis();
        this.adRequestParameters = adRequestParameters;
        this.networkAdUnitManager = networkAdUnitManager;
        this.responseId = response.getId();
        this.seatBidExt = seatbid.getExt();
        this.bidId = bid.getId();
        this.ad = ad;
        AdExtension adExtensionFindFirstAdExtension = ProtoUtils.findFirstAdExtension(ad);
        g gVar = new g(adRequestParameters.getAdsType(), seatbid, bid, ad, networkAdapter, adExtensionFindFirstAdExtension);
        this.auctionResult = gVar;
        this.eventConfiguration = findEventConfiguration(adExtensionFindFirstAdExtension);
        this.adCacheControl = findAdCacheControl(adExtensionFindFirstAdExtension);
        long orDefault = Utils.getOrDefault(bid.getExp(), Response.Seatbid.Bid.getDefaultInstance().getExp(), DEF_EXPIRATION_TIME_SEC) * 1000;
        this.expirationTimeMs = orDefault;
        BidMachineTrackingObject bidMachineTrackingObject = new BidMachineTrackingObject(gVar.getId());
        this.trackingObject = bidMachineTrackingObject;
        bidMachineTrackingObject.setAdResponse(this);
        this.winnerNetworkAdUnit = networkAdUnitManager.findOrAddWinnerNetworkAdUnit(networkAdapter, adRequestParameters.getAdsFormat(), gVar.getNetworkParams());
        this.expirationHandler = new ExpirationHandler(orDefault, this);
        int creativeLoadingTimeout = adExtensionFindFirstAdExtension != null ? adExtensionFindFirstAdExtension.getCreativeLoadingTimeout() : 0;
        this.loadExpirationHandler = creativeLoadingTimeout > 0 ? new ExpirationHandler(creativeLoadingTimeout, new C4226j(adResponseAdProcessCallback)) : null;
        if (adExtensionFindFirstAdExtension != null && adExtensionFindFirstAdExtension.getCridMonitoringEnabled()) {
            z = true;
        }
        this.isCridMonitoringEnabled = z;
        extractTrackUrls(bid);
        subscribeExpireTracker();
    }

    private boolean canBeUsedInFuture() {
        return (wasShown() || isExpired()) ? false : true;
    }

    private void extractTrackUrls(Response.Seatbid.Bid bid) {
        ProtoUtils.addEvent(this.trackUrlsMap, TrackEventType.MediationWin, bid.getPurl());
        ProtoUtils.addEvent(this.trackUrlsMap, TrackEventType.MediationLoss, bid.getLurl());
    }

    private AdCacheControl findAdCacheControl(AdExtension adExtension) {
        AdCacheControl adCacheControl;
        if (adExtension == null || (adCacheControl = adExtension.getAdCacheControl()) == AdCacheControl.UNRECOGNIZED) {
            return null;
        }
        return adCacheControl;
    }

    private void subscribeExpireTracker() {
        this.expirationHandler.start();
    }

    public void attachAdRequest(AdRequest<?, ?, ?> adRequest) {
        if (adRequest == null) {
            return;
        }
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponse$$ExternalSyntheticLambda3
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return AdResponse.$r8$lambda$v8MX_SQL3jKXCVBfr2LnpCaryxY(this.f$0);
            }
        });
        this.weakAdRequestList.add(new WeakReference<>(adRequest));
    }

    public long calculateExpirationLeftMs() {
        return this.expirationTimeMs - (System.currentTimeMillis() - this.createTimeMs);
    }

    public boolean canCache() {
        return this.adCacheControl == AdCacheControl.AD_CACHE_CONTROL_ENABLED;
    }

    public void clearAdRequestList() {
        Iterator<WeakReference<AdRequest<?, ?, ?>>> it = this.weakAdRequestList.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.weakAdRequestList.clear();
    }

    public void clearCreativeLoadingTimeout() {
        ExpirationHandler expirationHandler = this.loadExpirationHandler;
        if (expirationHandler != null) {
            expirationHandler.stop();
        }
        this.loadExpirationHandler = null;
    }

    public Value createBidCacheExtensionValue() {
        Struct.Builder builderPutFields = Struct.newBuilder().putFields("price", Value.newBuilder().setNumberValue(this.auctionResult.getPrice()).build()).putFields("exp", Value.newBuilder().setNumberValue(calculateExpirationLeftMs()).build()).putFields("request_id", Value.newBuilder().setStringValue(this.responseId).build()).putFields("bid_id", Value.newBuilder().setStringValue(this.bidId).build());
        if (this.seatBidExt.getFieldsCount() > 0) {
            builderPutFields.putFields("seat", Value.newBuilder().setStructValue(this.seatBidExt).build());
        }
        return Value.newBuilder().setStructValue(builderPutFields).build();
    }

    public void destroy() {
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponse$$ExternalSyntheticLambda4
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return AdResponse.m2418$r8$lambda$1zzZ_rWiZS2xn01P00h2TJQKDY(this.f$0);
            }
        });
        c.a().e(this);
        clearCreativeLoadingTimeout();
        clearAdRequestList();
        unsubscribeExpireTracker();
        this.adProcessCallback.destroy();
        this.trackUrlsMap.clear();
        this.networkAdUnitManager.notifyNetworkClearAuction();
        if (this.adProcessCallback.isLoading()) {
            eventFinish(TrackEventType.Load, false, BMError.Destroyed);
        }
        if (this.adObject != null) {
            eventFinish(TrackEventType.Destroy, false);
        }
        this.trackingObject.clear();
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.AdResponse$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                AdResponse.$r8$lambda$1xJcMBI_v4vGJkF6xy8tC8WLKgY(this.f$0);
            }
        });
    }

    public void detachAdRequest(AdRequest<?, ?, ?> adRequest) {
        if (adRequest == null) {
            return;
        }
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponse$$ExternalSyntheticLambda0
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return AdResponse.m2420$r8$lambda$_MEjG6HrqBjLjBb2bJN1aX3VYw(this.f$0);
            }
        });
        ArrayList arrayList = new ArrayList();
        for (WeakReference<AdRequest<?, ?, ?>> weakReference : this.weakAdRequestList) {
            AdRequest<?, ?, ?> adRequest2 = weakReference.get();
            if (adRequest2 == null || adRequest2 == adRequest) {
                arrayList.add(weakReference);
            }
        }
        this.weakAdRequestList.removeAll(arrayList);
        if (this.weakAdRequestList.isEmpty()) {
            release();
        }
    }

    public void eventFinish(TrackEventType trackEventType, boolean z) {
        eventFinish(trackEventType, z, null, null);
    }

    public void expireAdRequests(AdRequest<?, ?, ?> adRequest) {
        Iterator<WeakReference<AdRequest<?, ?, ?>>> it = this.weakAdRequestList.iterator();
        while (it.hasNext()) {
            AdRequest<?, ?, ?> adRequest2 = it.next().get();
            if (adRequest2 != null && adRequest2 != adRequest) {
                adRequest2.processExpired();
            }
        }
    }

    public AdExtension.EventConfiguration findEventConfiguration(AdExtension adExtension) {
        AdExtension.EventConfiguration eventConfiguration;
        if (adExtension == null || (eventConfiguration = adExtension.getEventConfiguration()) == AdExtension.EventConfiguration.getDefaultInstance()) {
            return null;
        }
        return eventConfiguration;
    }

    public Ad getAd() {
        return this.ad;
    }

    public AdObject getAdObject() {
        return this.adObject;
    }

    public AdRequestParameters getAdRequestParameters() {
        return this.adRequestParameters;
    }

    public AdsType getAdsType() {
        return this.adRequestParameters.getAdsType();
    }

    public AuctionResult getAuctionResult() {
        return this.auctionResult;
    }

    public CreativeFormat getCreativeFormat() {
        return this.auctionResult.getCreativeFormat();
    }

    public AdExtension.EventConfiguration getEventConfiguration() {
        return this.eventConfiguration;
    }

    public double getPrice() {
        return this.auctionResult.getPrice();
    }

    public synchronized d getStatus() {
        return this.status;
    }

    public List<String> getTrackUrlListByEvent(TrackEventType trackEventType) {
        return this.trackUrlsMap.get(trackEventType);
    }

    public VisibilitySource getVisibilitySource() {
        return this.adProcessCallback.visibilitySource;
    }

    public NetworkAdUnit getWinnerNetworkAdUnit() {
        return this.winnerNetworkAdUnit;
    }

    public boolean isAdLoaded() {
        return getAdObject() != null && this.adProcessCallback.isLoaded();
    }

    public boolean isCached() {
        return this.isCached.get();
    }

    public boolean isExpired() {
        return this.isExpired.get();
    }

    public synchronized void loadAdObject(ContextProvider contextProvider, AdRequest adRequest, BidMachineAd bidMachineAd, AdProcessCallback adProcessCallback) {
        NetworkAdapter networkAdapterFindNetworkAdapter;
        onAdLoadStart(adRequest);
        this.adProcessCallback.appendCallback(adProcessCallback);
        if (isAdLoaded()) {
            adProcessCallback.processLoadSuccess();
            return;
        }
        if (this.adProcessCallback.onLoading()) {
            this.trackingObject.eventStart(TrackEventType.Load);
            if (isExpired()) {
                this.adProcessCallback.processLoadFail(BMError.ResponseExpired);
                return;
            }
            if (wasShown()) {
                this.adProcessCallback.processLoadFail(BMError.ResponseDuplicated);
                return;
            }
            try {
                networkAdapterFindNetworkAdapter = adRequest.getAdsType().findNetworkAdapter(this.ad);
            } catch (Throwable th) {
                Logger.w(th);
                this.adProcessCallback.processLoadFail(BMError.throwable("Exception processing response", th));
            }
            if (networkAdapterFindNetworkAdapter == null) {
                this.adProcessCallback.processLoadFail(BMError.incorrectContent("Failed to get adapter by response"));
                return;
            }
            AdObjectParams adObjectParamsCreateAdObjectParams = adRequest.getAdsType().createAdObjectParams(this.bidId, this.ad);
            if (adObjectParamsCreateAdObjectParams != null && adObjectParamsCreateAdObjectParams.isValid()) {
                AdObject adObjectCreateAdObject = bidMachineAd.createAdObject(contextProvider, adRequest, networkAdapterFindNetworkAdapter, adObjectParamsCreateAdObjectParams, this.adProcessCallback);
                if (adObjectCreateAdObject == null) {
                    this.adProcessCallback.processLoadFail(BMError.incorrectContent("Failed to create ad object by response"));
                    return;
                }
                this.adObject = adObjectCreateAdObject;
                this.trackUrlsMap.putAll(adObjectParamsCreateAdObjectParams.getTrackUrls());
                startCreativeLoadingTimeout();
                adObjectCreateAdObject.load(contextProvider, adRequest.obtainUnifiedRequestParams(contextProvider.getApplicationContext()), this.winnerNetworkAdUnit);
                return;
            }
            this.adProcessCallback.processLoadFail(BMError.incorrectContent("Failed to get parameters by response"));
        }
    }

    public void notifyExpired(boolean z) {
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponse$$ExternalSyntheticLambda1
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return AdResponse.$r8$lambda$uXAZ2DJU85aoqjkcIR0qYnPfZtA(this.f$0);
            }
        });
        this.isExpired.set(true);
        unsubscribeExpireTracker();
        expireAdRequests(null);
        if (z) {
            destroy();
        }
    }

    public void onAdLoadStart(AdRequest<?, ?, ?> adRequest) {
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponse$$ExternalSyntheticLambda2
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return AdResponse.m2419$r8$lambda$4DC74I9VK5QMl2t1L6aYBLvfgQ(this.f$0);
            }
        });
        expireAdRequests(adRequest);
    }

    @Override // io.bidmachine.ExpirationHandler.Listener
    public void onExpired() {
        this.adProcessCallback.processExpired();
    }

    public void processClickVerified(SystemComponent systemComponent, ClickData clickData) {
        String str = (systemComponent == null || systemComponent != SystemComponent.InlineInstall) ? null : "inline_install";
        if (str == null) {
            str = "default_browser";
        }
        HashMap map = new HashMap();
        map.put(CLICK_BROWSER, str);
        if (clickData != null) {
            map.put(CLICK_X, Integer.valueOf(clickData.getX()));
            map.put(CLICK_Y, Integer.valueOf(clickData.getY()));
            map.put(VIEWPORT_WIDTH, Integer.valueOf(clickData.getViewportWidth()));
            map.put(VIEWPORT_HEIGHT, Integer.valueOf(clickData.getViewportHeight()));
        }
        eventFinish(TrackEventType.Click, false, (Map<String, Object>) map);
    }

    public boolean processClicked() {
        AdObject adObject = getAdObject();
        return adObject == null || adObject.onClicked() == null;
    }

    public void processClosed(boolean z) {
        AdObject adObject = getAdObject();
        if (adObject != null) {
            adObject.onClosed(z);
        }
        eventFinish(TrackEventType.Close, false);
    }

    public void processExpired() {
        AdObject adObject = getAdObject();
        if (adObject != null) {
            adObject.onExpired();
        }
        eventFinish(TrackEventType.Expired, false);
    }

    public void processFillAd() {
        c.a().e(this);
        eventFinish(TrackEventType.FillAd, false);
    }

    public void processFinished() {
        AdObject adObject = getAdObject();
        if (adObject != null) {
            adObject.onFinished();
        }
    }

    public void processLoadFail(BMError bMError) {
        clearCreativeLoadingTimeout();
        eventFinish(TrackEventType.Load, false, bMError);
    }

    public void processLoadSuccess() {
        clearCreativeLoadingTimeout();
        eventFinish(TrackEventType.Load, false);
    }

    public void processMediationLoss() {
        c.a().e(this);
    }

    public void processShowFail(BMError bMError) {
        AdObject adObject = getAdObject();
        if (adObject != null) {
            adObject.onShowFailed();
        }
        eventFinish(TrackEventType.Show, false, bMError);
    }

    public void processShown() {
        unsubscribeExpireTracker();
        c.a().e(this);
        AdObject adObject = getAdObject();
        if (adObject != null) {
            adObject.onShown();
        }
    }

    public void release() {
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.AdResponse$$ExternalSyntheticLambda6
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return AdResponse.$r8$lambda$E6hw474R9X_A2yE2VKAo18iMTNc(this.f$0);
            }
        });
        c cVarA = c.a();
        if (!canBeUsedInFuture() || !cVarA.a(this)) {
            destroy();
            return;
        }
        clearAdRequestList();
        setStatus(d.Idle);
        Utils.onUiThread(new Runnable() { // from class: io.bidmachine.AdResponse$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                AdResponse.$r8$lambda$xpS3XpoeB3Ox956S7szOIlHa4v4(this.f$0);
            }
        });
    }

    public void removeCallback(AdProcessCallback adProcessCallback) {
        this.adProcessCallback.removeCallback(adProcessCallback);
    }

    public synchronized void setCached(boolean z) {
        this.isCached.set(z);
    }

    public synchronized void setStatus(d dVar) {
        this.status = dVar;
    }

    public void startCreativeLoadingTimeout() {
        ExpirationHandler expirationHandler = this.loadExpirationHandler;
        if (expirationHandler != null) {
            expirationHandler.start();
        }
    }

    public String toString() {
        return this.auctionResult.toString();
    }

    public void unsubscribeExpireTracker() {
        this.expirationHandler.stop();
    }

    public boolean wasShown() {
        return this.adProcessCallback.isShownTracked();
    }

    public void eventFinish(TrackEventType trackEventType, boolean z, Map<String, Object> map) {
        eventFinish(trackEventType, z, null, map);
    }

    public void eventFinish(TrackEventType trackEventType, boolean z, BMError bMError) {
        eventFinish(trackEventType, z, bMError, null);
    }

    public void eventFinish(TrackEventType trackEventType, boolean z, BMError bMError, Map<String, Object> map) {
        this.trackingObject.eventFinish(trackEventType, z, getAdsType(), this, bMError, map);
    }
}
