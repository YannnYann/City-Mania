package com.google.android.libraries.ads.mobile.sdk.common;

import com.google.android.gms.common.annotation.KeepForSdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
public interface OnAppEventListener {
    default void onAppEvent(String name, String str) {
        Intrinsics.checkNotNullParameter(name, "name");
    }
}
