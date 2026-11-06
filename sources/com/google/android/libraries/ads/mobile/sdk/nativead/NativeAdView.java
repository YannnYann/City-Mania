package com.google.android.libraries.ads.mobile.sdk.nativead;

import ads_mobile_sdk.f01;
import ads_mobile_sdk.l12;
import ads_mobile_sdk.m32;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.common.BaseAdAssetViewContainer;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class NativeAdView extends BaseAdAssetViewContainer {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAdView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final View getAdvertiserView() {
        return getNativeAdViewContainer().b("3005");
    }

    public final View getBodyView() {
        return getNativeAdViewContainer().b("3004");
    }

    public final View getCreativeSummaryView() {
        return getNativeAdViewContainer().b(NativeAdAssetNames.ASSET_CREATIVE_SUMMARY);
    }

    public final MediaView getMediaView() {
        View viewB = getNativeAdViewContainer().b("3010");
        if (viewB instanceof MediaView) {
            return (MediaView) viewB;
        }
        return null;
    }

    public final View getPriceView() {
        return getNativeAdViewContainer().b("3007");
    }

    public final View getStoreView() {
        return getNativeAdViewContainer().b("3006");
    }

    public final void registerNativeAd(NativeAd ad, MediaView mediaView) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        getNativeAdViewContainer().a(mediaView, "3010");
        if (mediaView != null) {
            mediaView.a(new m32(this));
        }
        if (ad instanceof l12) {
            getNativeAdViewContainer().a(((l12) ad).b);
        } else {
            f01.c("Internal Error: Cannot display Native Ad", null);
        }
    }

    public final void setAdvertiserView(View view) {
        getNativeAdViewContainer().a(view, "3005");
    }

    public final void setBodyView(View view) {
        getNativeAdViewContainer().a(view, "3004");
    }

    public final void setCreativeSummaryView(View view) {
        getNativeAdViewContainer().a(view, NativeAdAssetNames.ASSET_CREATIVE_SUMMARY);
    }

    public final void setPriceView(View view) {
        getNativeAdViewContainer().a(view, "3007");
    }

    public final void setStoreView(View view) {
        getNativeAdViewContainer().a(view, "3006");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeAdView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
    }
}
