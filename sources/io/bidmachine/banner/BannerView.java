package io.bidmachine.banner;

import android.content.Context;
import io.bidmachine.AdView;
import io.bidmachine.BannerAdSize;
import io.bidmachine.ViewAdObject;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;

/* JADX INFO: loaded from: classes4.dex */
public class BannerView extends AdView<BannerView, a, BannerRequest, ViewAdObject<BannerRequest, UnifiedBannerAd, UnifiedBannerAdRequestParams>, BannerListener> {
    public BannerView(Context context) {
        super(context);
    }

    public BannerAdSize getAdSize() {
        a ad = getAd();
        if (ad != null) {
            return ad.a();
        }
        return null;
    }

    @Override // io.bidmachine.AdView
    public a createAd(Context context) {
        return new a(context);
    }
}
