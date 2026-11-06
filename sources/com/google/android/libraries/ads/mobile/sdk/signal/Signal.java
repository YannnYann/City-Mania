package com.google.android.libraries.ads.mobile.sdk.signal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Signal {
    public final String a;

    public Signal(String signalString) {
        Intrinsics.checkNotNullParameter(signalString, "signalString");
        this.a = signalString;
    }

    public final String getSignalString() {
        return this.a;
    }
}
