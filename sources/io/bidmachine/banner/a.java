package io.bidmachine.banner;

import android.content.Context;
import io.bidmachine.AdProcessCallback;
import io.bidmachine.AdsType;
import io.bidmachine.BannerAdSize;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.ViewAd;
import io.bidmachine.ViewAdObject;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.unified.UnifiedBannerAd;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends ViewAd {
    public a(Context context) {
        super(context, AdsType.Banner);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BannerAdSize a() {
        ViewAdObject viewAdObject = (ViewAdObject) getLoadedAdObject();
        if (viewAdObject == null) {
            return null;
        }
        int width = viewAdObject.getWidth();
        int height = viewAdObject.getHeight();
        return ((BannerRequest) viewAdObject.getAdRequest()).getBannerAdSize().isAdaptive() ? BannerAdSize.adaptive(width, height) : BannerAdSize.firstFixedOrNull(width, height);
    }

    @Override // io.bidmachine.BidMachineAd
    public ViewAdObject createAdObject(ContextProvider contextProvider, BannerRequest bannerRequest, NetworkAdapter networkAdapter, AdObjectParams adObjectParams, AdProcessCallback adProcessCallback) {
        UnifiedBannerAd unifiedBannerAdCreateBanner = networkAdapter.createBanner();
        if (unifiedBannerAdCreateBanner == null) {
            return null;
        }
        ViewAdObject viewAdObject = new ViewAdObject(contextProvider, adProcessCallback, bannerRequest, adObjectParams, unifiedBannerAdCreateBanner);
        BannerAdSize bannerAdSize = bannerRequest.getBannerAdSize();
        if (!bannerAdSize.isAdaptive()) {
            viewAdObject.setWidth(bannerAdSize.getWidth());
            viewAdObject.setHeight(bannerAdSize.getHeight());
            return viewAdObject;
        }
        viewAdObject.setWidthMeasureMode(ViewAdObject.MeasureMode.Match);
        viewAdObject.setWidth(adObjectParams.getWidth());
        viewAdObject.setHeight(adObjectParams.getHeight());
        return viewAdObject;
    }
}
