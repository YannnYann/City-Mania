package com.google.android.libraries.ads.mobile.sdk.banner;

import android.app.Activity;
import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.common.Ad;

/* JADX INFO: loaded from: classes3.dex */
public interface BannerAd extends Ad {
    AdSize getAdSize();

    View getView();

    View getView(Activity activity);

    void setAdEventCallback(BannerAdEventCallback bannerAdEventCallback);
}
