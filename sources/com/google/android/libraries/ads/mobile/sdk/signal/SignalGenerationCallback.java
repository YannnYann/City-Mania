package com.google.android.libraries.ads.mobile.sdk.signal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public interface SignalGenerationCallback {
    default void onFailure(SignalError error) {
        Intrinsics.checkNotNullParameter(error, "error");
    }

    default void onSuccess(Signal signal) {
        Intrinsics.checkNotNullParameter(signal, "signal");
    }
}
