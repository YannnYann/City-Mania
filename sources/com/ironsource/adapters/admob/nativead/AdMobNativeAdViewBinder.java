package com.ironsource.adapters.admob.nativead;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.libraries.ads.mobile.sdk.nativead.MediaView;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdView;
import com.ironsource.mediationsdk.ads.nativead.LevelPlayMediaView;
import com.ironsource.mediationsdk.ads.nativead.internal.NativeAdViewHolder;
import com.ironsource.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder;
import com.ironsource.mediationsdk.logger.IronLog;

/* JADX INFO: loaded from: classes3.dex */
public class AdMobNativeAdViewBinder extends AdapterNativeAdViewBinder {
    private final NativeAd mNativeAd;
    private NativeAdView mNativeAdView;

    public AdMobNativeAdViewBinder(NativeAd nativeAd) {
        this.mNativeAd = nativeAd;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinderInterface
    public void setNativeAdView(View view) {
        MediaView mediaView;
        if (view == null) {
            IronLog.INTERNAL.error("nativeAdView is null");
            return;
        }
        this.mNativeAdView = new NativeAdView(view.getContext());
        NativeAdViewHolder nativeAdViewHolder = getNativeAdViewHolder();
        this.mNativeAdView.setHeadlineView(nativeAdViewHolder.getTitleView());
        this.mNativeAdView.setAdvertiserView(nativeAdViewHolder.getAdvertiserView());
        this.mNativeAdView.setIconView(nativeAdViewHolder.getIconView());
        this.mNativeAdView.setBodyView(nativeAdViewHolder.getBodyView());
        LevelPlayMediaView mediaView2 = nativeAdViewHolder.getMediaView();
        if (mediaView2 != null) {
            mediaView = new MediaView(mediaView2.getContext());
            mediaView2.addView(mediaView);
        } else {
            mediaView = null;
        }
        this.mNativeAdView.setCallToActionView(nativeAdViewHolder.getCallToActionView());
        this.mNativeAdView.addView(view);
        this.mNativeAdView.registerNativeAd(this.mNativeAd, mediaView);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinderInterface
    public ViewGroup getNetworkNativeAdView() {
        return this.mNativeAdView;
    }
}
