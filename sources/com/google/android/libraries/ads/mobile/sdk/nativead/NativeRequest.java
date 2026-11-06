package com.google.android.libraries.ads.mobile.sdk.nativead;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public interface NativeRequest extends BannerRequest {
    AdChoicesPlacement getAdChoicesPlacement();

    boolean getCustomClickGestureAllowTaps();

    NativeAd.SwipeGestureDirection getCustomClickGestureDirection();

    List getCustomFormatIds();

    boolean getCustomMuteThisAdRequested();

    NativeAd.NativeMediaAspectRatio getMediaAspectRatio();

    List getNativeAdTypes();

    boolean isImageLoadingDisabled();
}
