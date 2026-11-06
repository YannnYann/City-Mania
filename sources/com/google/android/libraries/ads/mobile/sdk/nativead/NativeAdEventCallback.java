package com.google.android.libraries.ads.mobile.sdk.nativead;

import com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback;

/* JADX INFO: loaded from: classes3.dex */
public interface NativeAdEventCallback extends AdEventCallback {
    default void onAdSwipeGestureClicked() {
    }

    default void onCustomMuteThisAdReported() {
    }
}
