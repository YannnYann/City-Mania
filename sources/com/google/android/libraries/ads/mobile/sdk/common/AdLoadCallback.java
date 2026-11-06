package com.google.android.libraries.ads.mobile.sdk.common;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface AdLoadCallback<AdT> {
    default void onAdFailedToLoad(LoadAdError adError) {
        Intrinsics.checkNotNullParameter(adError, "adError");
    }

    default void onAdLoaded(AdT adt) {
    }
}
