package com.google.android.libraries.ads.mobile.sdk.banner;

import com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.common.OnAppEventListener;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface BannerAdEventCallback extends AdEventCallback, OnAppEventListener {
    @Override // com.google.android.libraries.ads.mobile.sdk.common.OnAppEventListener
    default void onAppEvent(String name, String str) {
        Intrinsics.checkNotNullParameter(name, "name");
    }
}
