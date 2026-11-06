package io.bidmachine;

import android.content.Context;
import io.bidmachine.AdListener;
import io.bidmachine.AdRequest;
import io.bidmachine.IAd;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.models.AdObject;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.models.AuctionResult;
import io.bidmachine.rendering.model.ClickData;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.util.SystemComponent;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.Tag;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BidMachineAd<SelfType extends IAd, AdRequestType extends AdRequest<AdRequestType, ?, UnifiedAdRequestParamsType>, AdObjectType extends AdObject<AdObjectParamsType, UnifiedAdRequestParamsType, ?>, AdObjectParamsType extends AdObjectParams, UnifiedAdRequestParamsType extends UnifiedAdRequestParams, AdListenerType extends AdListener<SelfType>> implements IAd<SelfType, AdRequestType> {
    AdRequestType adRequest;
    private final AdsType adsType;
    private final ContextProvider contextProvider;
    private AdListenerType listener;
    protected RendererConfiguration rendererConfiguration;
    private final Tag tag = new Tag("BidMachineAd");
    private d currentState = d.Idle;
    private final AdRequest.AdRequestListener<AdRequestType> adRequestListener = new a();
    private final AdRequest.e internalAdRequestListener = new b();
    final AdProcessCallback adProcessCallback = new c();
    final BidMachineTrackingObject trackingObject = new BidMachineTrackingObject();
    protected final AtomicBoolean isFinishTracked = new AtomicBoolean(false);
    protected final AtomicBoolean isCloseTracked = new AtomicBoolean(false);

    public class a implements AdRequest.AdRequestListener {
        public a() {
        }

        @Override // io.bidmachine.AdRequest.AdRequestListener
        public void onRequestExpired(AdRequest adRequest) {
            BidMachineAd bidMachineAd = BidMachineAd.this;
            if (adRequest == bidMachineAd.adRequest) {
                bidMachineAd.adProcessCallback.processExpired();
            }
        }

        @Override // io.bidmachine.AdRequest.AdRequestListener
        public void onRequestFailed(AdRequest adRequest, BMError bMError) {
            BidMachineAd bidMachineAd = BidMachineAd.this;
            if (adRequest == bidMachineAd.adRequest) {
                bidMachineAd.processRequestFail(bMError);
            }
        }

        @Override // io.bidmachine.AdRequest.AdRequestListener
        public void onRequestSuccess(AdRequest adRequest, AuctionResult auctionResult) {
            BidMachineAd bidMachineAd = BidMachineAd.this;
            if (adRequest == bidMachineAd.adRequest) {
                bidMachineAd.processRequestSuccess(adRequest);
            }
        }
    }

    public class b implements AdRequest.e {
        public b() {
        }

        @Override // io.bidmachine.AdRequest.e
        public void a(AdRequest adRequest) {
            BidMachineAd bidMachineAd = BidMachineAd.this;
            if (adRequest == bidMachineAd.adRequest) {
                bidMachineAd.destroy();
            }
        }
    }

    public class c extends SimpleAdProcessCallback {
        public AdCridThreadHandler a;

        public class a implements Runnable {
            public a() {
            }

            public final /* synthetic */ void a(AdListener adListener) {
                BidMachineAd.this.log("notify AdLoaded");
                adListener.onAdLoaded(BidMachineAd.this);
            }

            @Override // java.lang.Runnable
            public void run() {
                Utils.ifNotNull(BidMachineAd.this.listener, new Executable() { // from class: io.bidmachine.BidMachineAd$c$a$$ExternalSyntheticLambda0
                    @Override // io.bidmachine.Executable
                    public final void execute(Object obj) {
                        this.f$0.a((AdListener) obj);
                    }
                });
            }
        }

        public class b implements Runnable {
            public b() {
            }

            public final /* synthetic */ void a(AdListener adListener) {
                BidMachineAd.this.log("notify AdImpression");
                adListener.onAdImpression(BidMachineAd.this);
            }

            @Override // java.lang.Runnable
            public void run() {
                Utils.ifNotNull(BidMachineAd.this.listener, new Executable() { // from class: io.bidmachine.BidMachineAd$c$b$$ExternalSyntheticLambda0
                    @Override // io.bidmachine.Executable
                    public final void execute(Object obj) {
                        this.f$0.a((AdListener) obj);
                    }
                });
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.BidMachineAd$c$c, reason: collision with other inner class name */
        public class RunnableC1100c implements Runnable {
            public RunnableC1100c() {
            }

            public final /* synthetic */ void a(AdListener adListener) {
                BidMachineAd.this.log("notify AdClicked");
                adListener.onAdClicked(BidMachineAd.this);
            }

            @Override // java.lang.Runnable
            public void run() {
                Utils.ifNotNull(BidMachineAd.this.listener, new Executable() { // from class: io.bidmachine.BidMachineAd$c$c$$ExternalSyntheticLambda0
                    @Override // io.bidmachine.Executable
                    public final void execute(Object obj) {
                        this.f$0.a((AdListener) obj);
                    }
                });
            }
        }

        public class d implements Runnable {
            public d() {
            }

            public final /* synthetic */ void a(AdListener adListener) {
                if (adListener instanceof AdRewardedListener) {
                    BidMachineAd.this.log("notify AdRewarded");
                    ((AdRewardedListener) adListener).onAdRewarded(BidMachineAd.this);
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                Utils.ifNotNull(BidMachineAd.this.listener, new Executable() { // from class: io.bidmachine.BidMachineAd$c$d$$ExternalSyntheticLambda0
                    @Override // io.bidmachine.Executable
                    public final void execute(Object obj) {
                        this.f$0.a((AdListener) obj);
                    }
                });
            }
        }

        public class e implements Runnable {
            public e() {
            }

            public final /* synthetic */ void a(AdListener adListener) {
                BidMachineAd.this.log("notify AdExpired");
                adListener.onAdExpired(BidMachineAd.this);
            }

            @Override // java.lang.Runnable
            public void run() {
                Utils.ifNotNull(BidMachineAd.this.listener, new Executable() { // from class: io.bidmachine.BidMachineAd$c$e$$ExternalSyntheticLambda0
                    @Override // io.bidmachine.Executable
                    public final void execute(Object obj) {
                        this.f$0.a((AdListener) obj);
                    }
                });
            }
        }

        public c() {
        }

        public final /* synthetic */ void a(AdResponse adResponse) {
            Utils.ifNotNull(this.a, new BidMachineAd$c$$ExternalSyntheticLambda0());
            if (adResponse.isCridMonitoringEnabled) {
                this.a = new AdCridThreadHandler(adResponse.getAuctionResult().getCreativeId());
            }
        }

        public final /* synthetic */ void b(final BMError bMError) {
            Utils.ifNotNull(BidMachineAd.this.listener, new Executable() { // from class: io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda5
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    this.f$0.b(bMError, (AdListener) obj);
                }
            });
        }

        @Override // io.bidmachine.SimpleAdProcessCallback, io.bidmachine.AdProcessCallback
        public void processClickVerified(SystemComponent systemComponent, ClickData clickData) {
            if (BidMachineAd.this.currentState.ordinal() > d.Success.ordinal()) {
                return;
            }
            BidMachineAd.this.log("processClickVerified");
            Utils.onUiThread(new RunnableC1100c());
        }

        @Override // io.bidmachine.SimpleAdProcessCallback, io.bidmachine.AdProcessCallback
        public void processClosed() {
            if (BidMachineAd.this.currentState.ordinal() <= d.Success.ordinal() && BidMachineAd.this.isCloseTracked.compareAndSet(false, true)) {
                BidMachineAd.this.log("processClosed (" + BidMachineAd.this.isFinishTracked.get() + ")");
                Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.a();
                    }
                });
            }
        }

        @Override // io.bidmachine.SimpleAdProcessCallback, io.bidmachine.AdProcessCallback
        public void processDestroy() {
            BidMachineAd.this.log("destroy requested");
            BidMachineAd.this.currentState = d.Destroyed;
            AdResponse adResponse = BidMachineAd.this.getAdResponse();
            if (adResponse != null) {
                adResponse.removeCallback(this);
            }
            BidMachineAd.this.destroyAdRequest();
            Utils.ifNotNull(this.a, new BidMachineAd$c$$ExternalSyntheticLambda0());
            this.a = null;
        }

        @Override // io.bidmachine.SimpleAdProcessCallback, io.bidmachine.AdProcessCallback
        public void processExpired() {
            if (BidMachineAd.this.currentState.ordinal() > d.Success.ordinal()) {
                return;
            }
            BidMachineAd.this.log("processExpired");
            BidMachineAd.this.currentState = d.Expired;
            Utils.onUiThread(new e());
            Utils.ifNotNull(this.a, new BidMachineAd$c$$ExternalSyntheticLambda0());
            this.a = null;
        }

        @Override // io.bidmachine.SimpleAdProcessCallback, io.bidmachine.AdProcessCallback
        public void processFillAd() {
            if (BidMachineAd.this.currentState.ordinal() > d.Success.ordinal()) {
                return;
            }
            BidMachineAd.this.log("processFillAd");
        }

        @Override // io.bidmachine.SimpleAdProcessCallback, io.bidmachine.AdProcessCallback
        public void processFinished() {
            if (BidMachineAd.this.currentState.ordinal() <= d.Success.ordinal() && BidMachineAd.this.isFinishTracked.compareAndSet(false, true)) {
                BidMachineAd.this.log("processFinished");
                Utils.onUiThread(new d());
            }
        }

        @Override // io.bidmachine.SimpleAdProcessCallback, io.bidmachine.AdProcessCallback
        public void processLoadFail(final BMError bMError) {
            BidMachineAd.this.log("processLoadFail - " + bMError);
            BidMachineAd.this.currentState = d.Failed;
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(bMError);
                }
            });
        }

        @Override // io.bidmachine.SimpleAdProcessCallback, io.bidmachine.AdProcessCallback
        public void processLoadSuccess() {
            if (BidMachineAd.this.currentState.ordinal() > d.Loading.ordinal()) {
                return;
            }
            BidMachineAd.this.log("processLoadSuccess");
            BidMachineAd.this.currentState = d.Success;
            Utils.onUiThread(new a());
            Utils.ifNotNull(BidMachineAd.this.getAdResponse(), new Executable() { // from class: io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda2
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    this.f$0.a((AdResponse) obj);
                }
            });
        }

        @Override // io.bidmachine.SimpleAdProcessCallback, io.bidmachine.AdProcessCallback
        public void processShowFail(final BMError bMError) {
            BidMachineAd.this.log("processShowFail - " + bMError);
            Utils.onUiThread(new Runnable() { // from class: io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.b(bMError);
                }
            });
        }

        @Override // io.bidmachine.SimpleAdProcessCallback, io.bidmachine.AdProcessCallback
        public void processShown() {
            if (BidMachineAd.this.currentState.ordinal() > d.Success.ordinal()) {
                return;
            }
            BidMachineAd.this.log("processShown");
            Utils.onUiThread(new b());
        }

        public final /* synthetic */ void b(BMError bMError, AdListener adListener) {
            BidMachineAd.this.log("notify AdShowFailed");
            adListener.onAdShowFailed(BidMachineAd.this, bMError);
        }

        public final /* synthetic */ void a(final BMError bMError) {
            Utils.ifNotNull(BidMachineAd.this.listener, new Executable() { // from class: io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda6
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    this.f$0.a(bMError, (AdListener) obj);
                }
            });
        }

        public final /* synthetic */ void a(BMError bMError, AdListener adListener) {
            BidMachineAd.this.log("notify AdLoadFailed");
            adListener.onAdLoadFailed(BidMachineAd.this, bMError);
        }

        public final /* synthetic */ void a() {
            Utils.ifNotNull(BidMachineAd.this.listener, new Executable() { // from class: io.bidmachine.BidMachineAd$c$$ExternalSyntheticLambda7
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    this.f$0.a((AdListener) obj);
                }
            });
            if (BidMachineAd.this.isDuplicateShowDisabled()) {
                BidMachineAd.this.log("duplicate showing is disabled, starting destroy internally");
                BidMachineAd.this.destroy();
            }
        }

        public final /* synthetic */ void a(AdListener adListener) {
            if (adListener instanceof AdFullScreenListener) {
                BidMachineAd.this.log("notify AdClosed");
                BidMachineAd bidMachineAd = BidMachineAd.this;
                ((AdFullScreenListener) adListener).onAdClosed(bidMachineAd, bidMachineAd.isFinishTracked.get());
            }
        }
    }

    public enum d {
        Idle,
        Requesting,
        Loading,
        Success,
        Failed,
        Destroyed,
        Expired
    }

    public static /* synthetic */ String $r8$lambda$SV873FyWFexSXfkJwv8ZwaozPw0(BidMachineAd bidMachineAd, String str) {
        StringBuilder sb = new StringBuilder(bidMachineAd.adsType.name());
        AuctionResult auctionResult = bidMachineAd.getAuctionResult();
        if (auctionResult != null) {
            sb.append(" (");
            sb.append(auctionResult.getNetworkKey());
            sb.append(")");
        }
        return String.format("%s - %s", sb, str);
    }

    public BidMachineAd(Context context, AdsType adsType) {
        this.contextProvider = new SimpleContextProvider(context);
        this.adsType = adsType;
    }

    private void attachRequest(AdRequestType adrequesttype) {
        if (adrequesttype != null) {
            adrequesttype.addListener(this.adRequestListener);
            adrequesttype.addInternalListener(this.internalAdRequestListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroyAdRequest() {
        AdRequestType adrequesttype = this.adRequest;
        this.adRequest = null;
        if (adrequesttype != null) {
            detachRequest(adrequesttype);
            adrequesttype.destroy();
        }
    }

    private void detachRequest(AdRequestType adrequesttype) {
        if (adrequesttype != null) {
            adrequesttype.removeListener(this.adRequestListener);
            adrequesttype.removeInternalListener(this.internalAdRequestListener);
        }
    }

    private boolean isNetworkAvailableDuringShow() {
        return m.a() || Utils.isNetworkAvailable(getContext());
    }

    private void processRequest(AdRequestType adrequesttype) {
        log("process request start");
        if (getAuctionResult() != null) {
            processRequestSuccess(adrequesttype);
        } else {
            this.currentState = d.Requesting;
            adrequesttype.request(getContext());
        }
    }

    private void trackEvent(TrackEventType trackEventType, BMError bMError) {
        this.trackingObject.eventFinish(trackEventType, false, getAdsType(), getAdResponse(), bMError);
    }

    @Override // io.bidmachine.IAd
    public boolean canShow() {
        return isLoaded() && isCanShowAd() && isNetworkAvailableDuringShow();
    }

    public abstract AdObjectType createAdObject(ContextProvider contextProvider, AdRequestType adrequesttype, NetworkAdapter networkAdapter, AdObjectParams adObjectParams, AdProcessCallback adProcessCallback);

    @Override // io.bidmachine.IAd
    public void destroy() {
        this.adProcessCallback.processDestroy();
        this.trackingObject.clear();
    }

    public final AdResponse getAdResponse() {
        AdRequestType adrequesttype = this.adRequest;
        if (adrequesttype != null) {
            return adrequesttype.getAdResponse();
        }
        return null;
    }

    public AdsType getAdsType() {
        return this.adsType;
    }

    @Override // io.bidmachine.IAd
    public AuctionResult getAuctionResult() {
        AdRequestType adrequesttype = this.adRequest;
        if (adrequesttype != null) {
            return adrequesttype.getAuctionResult();
        }
        return null;
    }

    public Context getContext() {
        return this.contextProvider.getApplicationContext();
    }

    public ContextProvider getContextProvider() {
        return this.contextProvider;
    }

    public final AdObjectType getLoadedAdObject() {
        AdResponse adResponse = getAdResponse();
        if (adResponse == null) {
            return null;
        }
        try {
            return (AdObjectType) adResponse.getAdObject();
        } catch (Throwable unused) {
            return null;
        }
    }

    public boolean isCanShowAd() {
        AdResponse adResponse = getAdResponse();
        return (adResponse == null || adResponse.wasShown()) ? false : true;
    }

    @Override // io.bidmachine.IAd
    public boolean isDestroyed() {
        return this.currentState == d.Destroyed;
    }

    public abstract boolean isDuplicateShowDisabled();

    @Override // io.bidmachine.IAd
    public boolean isExpired() {
        return this.currentState == d.Expired;
    }

    @Override // io.bidmachine.IAd
    public boolean isLoaded() {
        return getLoadedAdObject() != null && this.currentState == d.Success;
    }

    @Override // io.bidmachine.IAd
    public boolean isLoading() {
        d dVar = this.currentState;
        return dVar == d.Requesting || dVar == d.Loading;
    }

    @Override // io.bidmachine.IAd
    public SelfType load(AdRequestType adrequesttype) {
        log("load requested");
        this.trackingObject.eventStart(TrackEventType.Load);
        if (!k.b().s()) {
            processRequestFail(BMError.internal("BidMachine not initialized"));
            return this;
        }
        if (this.currentState != d.Idle) {
            log("request process abort because it's already processing");
            return this;
        }
        if (adrequesttype == null) {
            processRequestFail(BMError.notFound("AdRequest"));
            return this;
        }
        detachRequest(this.adRequest);
        this.adRequest = adrequesttype;
        attachRequest(adrequesttype);
        processRequest(adrequesttype);
        return this;
    }

    public final void log(final String str) {
        Logger.d(this.tag, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.BidMachineAd$$ExternalSyntheticLambda0
            @Override // io.bidmachine.utils.lazy.LazyValue
            public final Object get() {
                return BidMachineAd.$r8$lambda$SV873FyWFexSXfkJwv8ZwaozPw0(this.f$0, str);
            }
        });
    }

    public AdObjectType prepareShow() {
        return (AdObjectType) prepareShow(isDuplicateShowDisabled());
    }

    public void processPrepareShow() {
        trackEvent(TrackEventType.ImpressionOpportunity, null);
    }

    public void processRequestFail(BMError bMError) {
        if (this.currentState.ordinal() > d.Loading.ordinal()) {
            return;
        }
        trackEvent(TrackEventType.Load, bMError);
        this.adProcessCallback.processLoadFail(bMError);
    }

    public void processRequestSuccess(AdRequestType adrequesttype) {
        int iOrdinal = this.currentState.ordinal();
        d dVar = d.Loading;
        if (iOrdinal > dVar.ordinal()) {
            return;
        }
        this.currentState = dVar;
        AdResponse adResponse = adrequesttype.getAdResponse();
        this.trackingObject.setAdResponse(adResponse);
        if (adResponse == null) {
            processRequestFail(BMError.incorrectContent("AdResponse is null"));
        } else {
            log("start loading");
            adResponse.loadAdObject(this.contextProvider, adrequesttype, this, this.adProcessCallback);
        }
    }

    public void processShowFail(BMError bMError) {
        trackEvent(TrackEventType.Show, bMError);
        this.adProcessCallback.processShowFail(bMError);
    }

    public SelfType setListener(AdListenerType adlistenertype) {
        this.listener = adlistenertype;
        return this;
    }

    @Override // io.bidmachine.IAd
    public SelfType setRendererConfiguration(RendererConfiguration rendererConfiguration) {
        this.rendererConfiguration = rendererConfiguration;
        return this;
    }

    public String toString() {
        return this.tag + ", state - " + this.currentState + ", auctionResult - " + getAuctionResult();
    }

    private AdObjectType prepareShow(boolean z) {
        processPrepareShow();
        if (!isNetworkAvailableDuringShow()) {
            processShowFail(BMError.NoConnection);
            return null;
        }
        if (isDestroyed()) {
            processShowFail(BMError.Destroyed);
            return null;
        }
        if (isExpired()) {
            processShowFail(BMError.Expired);
            return null;
        }
        if (!isLoaded()) {
            processShowFail(BMError.internal("Ad not loaded"));
            return null;
        }
        if (!z || isCanShowAd()) {
            return (AdObjectType) getLoadedAdObject();
        }
        processShowFail(BMError.ResponseDuplicated);
        return null;
    }
}
