package com.google.android.libraries.ads.mobile.sdk.common;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface AdEventCallback {
    default void onAdClicked() {
    }

    default void onAdDismissedFullScreenContent() {
    }

    default void onAdFailedToShowFullScreenContent(FullScreenContentError fullScreenContentError) {
        Intrinsics.checkNotNullParameter(fullScreenContentError, "fullScreenContentError");
    }

    default void onAdImpression() {
    }

    default void onAdPaid(AdValue value) {
        Intrinsics.checkNotNullParameter(value, "value");
    }

    default void onAdShowedFullScreenContent() {
    }
}
