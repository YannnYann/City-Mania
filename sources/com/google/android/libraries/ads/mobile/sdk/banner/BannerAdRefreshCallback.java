package com.google.android.libraries.ads.mobile.sdk.banner;

import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface BannerAdRefreshCallback {
    default void onAdFailedToRefresh(LoadAdError adError) {
        Intrinsics.checkNotNullParameter(adError, "adError");
    }

    default void onAdRefreshed() {
    }
}
