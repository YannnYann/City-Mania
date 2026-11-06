package com.vungle.ads.internal.network;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class c0 {
    public static String a(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return e0.d.replace(value, "_");
    }
}
