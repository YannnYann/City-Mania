package io.bidmachine;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import io.bidmachine.AdRequest;
import io.bidmachine.core.Logger;
import io.bidmachine.core.VisibilitySource;
import io.bidmachine.models.AdObject;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.unified.UnifiedAd;
import io.bidmachine.unified.UnifiedAdCallback;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.unified.UnifiedFullscreenAd;
import io.bidmachine.util.Error;
import io.bidmachine.util.viewabilityhandler.ViewabilityHandler;
import io.bidmachine.util.viewabilityhandler.ViewabilityHandlerListener;
import io.bidmachine.util.viewabilitytracker.model.ActionEvent;
import io.bidmachine.util.visibilitytracking.VisibilityParams;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.lazy.LazyValue;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AdObjectImpl<AdRequestType extends AdRequest<AdRequestType, ?, UnifiedAdRequestParamsType>, AdObjectParamsType extends AdObjectParams, UnifiedAdType extends UnifiedAd<UnifiedAdCallbackType, UnifiedAdRequestParamsType>, UnifiedAdCallbackType extends UnifiedAdCallback, UnifiedAdRequestParamsType extends UnifiedAdRequestParams> implements AdObject<AdObjectParamsType, UnifiedAdRequestParamsType, UnifiedAdCallbackType> {
    private final AdObjectParamsType adObjectParams;
    private final AdProcessCallback adProcessCallback;
    private final AdRequestType adRequest;
    private final ContextProvider contextProvider;
    private final UnifiedAdType unifiedAd;
    private final UnifiedAdCallbackType unifiedAdCallback;
    private final ViewabilityHandler viewabilityHandler;

    public final class a implements ViewabilityHandlerListener {
        public a() {
        }

        @Override // io.bidmachine.util.viewabilityhandler.ViewabilityHandlerListener
        public void onViewabilityChanged(boolean z) {
            AdObjectImpl.this.getUnifiedAd().onViewabilityChanged(z);
        }

        @Override // io.bidmachine.util.viewabilityhandler.ViewabilityHandlerListener
        public void onViewabilityError(ActionEvent actionEvent, Error error) {
            AdObjectImpl.this.getAdProcessCallback().onVisibilityTrackerViewabilityEvent(actionEvent, new BMError(108, error.getMessage()));
        }

        @Override // io.bidmachine.util.viewabilityhandler.ViewabilityHandlerListener
        public void onViewabilityEvent(ActionEvent actionEvent) {
            AdObjectImpl.this.getAdProcessCallback().onVisibilityTrackerViewabilityEvent(actionEvent, null);
        }

        @Override // io.bidmachine.util.viewabilityhandler.ViewabilityHandlerListener
        public void onViewabilityTracked() {
        }
    }

    public AdObjectImpl(ContextProvider contextProvider, AdProcessCallback adProcessCallback, AdRequestType adrequesttype, AdObjectParamsType adobjectparamstype, UnifiedAdType unifiedadtype) {
        this.contextProvider = contextProvider;
        this.adProcessCallback = adProcessCallback;
        this.adRequest = adrequesttype;
        this.adObjectParams = adobjectparamstype;
        this.unifiedAd = unifiedadtype;
        this.unifiedAdCallback = createUnifiedCallback(adProcessCallback);
        this.viewabilityHandler = new ViewabilityHandler(adobjectparamstype.viewabilityTrackerParams, VisibilityParams.Companion.getDefault(), new a());
    }

    @Override // io.bidmachine.models.AdObject
    public abstract /* synthetic */ UnifiedAdCallback createUnifiedCallback(AdProcessCallback adProcessCallback);

    public Activity getActivity() {
        return this.contextProvider.getActivity();
    }

    public AdProcessCallback getAdProcessCallback() {
        return this.adProcessCallback;
    }

    public AdRequestType getAdRequest() {
        return this.adRequest;
    }

    public Context getApplicationContext() {
        return this.contextProvider.getApplicationContext();
    }

    @Override // io.bidmachine.models.AdObject
    public Map<String, Object> getCustomParams() {
        return getUnifiedAd().getCustomParams();
    }

    @Override // io.bidmachine.models.AdObject
    public AdObjectParamsType getParams() {
        return this.adObjectParams;
    }

    public UnifiedAdType getUnifiedAd() {
        return this.unifiedAd;
    }

    public UnifiedAdCallbackType getUnifiedAdCallback() {
        return this.unifiedAdCallback;
    }

    @Override // io.bidmachine.models.AdObject
    public void hide() {
    }

    @Override // io.bidmachine.models.AdObject
    public void load(ContextProvider contextProvider, UnifiedAdRequestParamsType unifiedadrequestparamstype, NetworkAdUnit networkAdUnit) throws Throwable {
        this.unifiedAd.load(contextProvider, this.unifiedAdCallback, unifiedadrequestparamstype, this.adObjectParams.getMediationParams(), networkAdUnit);
    }

    @Override // io.bidmachine.models.AdObject
    public Boolean onClicked() {
        getUnifiedAd().onClicked();
        return null;
    }

    @Override // io.bidmachine.models.AdObject
    public void onClosed(boolean z) {
        UnifiedAd unifiedAd = getUnifiedAd();
        if (unifiedAd instanceof UnifiedFullscreenAd) {
            ((UnifiedFullscreenAd) unifiedAd).onClosed(z);
        }
    }

    @Override // io.bidmachine.models.AdObject
    public void onDestroy() {
        getUnifiedAd().onDestroy();
        this.viewabilityHandler.destroy();
    }

    @Override // io.bidmachine.models.AdObject
    public void onExpired() {
        getUnifiedAd().onExpired();
    }

    @Override // io.bidmachine.models.AdObject
    public void onFinished() {
        UnifiedAd unifiedAd = getUnifiedAd();
        if (unifiedAd instanceof UnifiedFullscreenAd) {
            ((UnifiedFullscreenAd) unifiedAd).onFinished();
        }
    }

    @Override // io.bidmachine.models.AdObject
    public void onShowFailed() {
        getUnifiedAd().onShowFailed();
    }

    @Override // io.bidmachine.models.AdObject
    public void onShown() {
        getUnifiedAd().onShown();
    }

    public void startViewabilityTracker(View view) {
        final AdResponse adResponse = getAdRequest().getAdResponse();
        VisibilitySource visibilitySource = adResponse != null ? adResponse.getVisibilitySource() : null;
        if (visibilitySource == VisibilitySource.BidMachine || visibilitySource == VisibilitySource.All) {
            this.viewabilityHandler.start(view);
            if (this.adObjectParams.viewabilityTrackerParams == null) {
                Logger.e(this.adRequest.getAdsType(), new LazyValue() { // from class: io.bidmachine.AdObjectImpl$$ExternalSyntheticLambda0
                    @Override // io.bidmachine.utils.lazy.LazyValue
                    public final Object get() {
                        return String.format("Can't start viewability tracker! Check ad settings! (%s)", adResponse);
                    }
                });
            }
        }
    }

    public void stopViewabilityTracker() {
        this.viewabilityHandler.stop();
    }
}
