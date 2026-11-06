package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Mc extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Mc(Exception e) {
        super("Missing Headers", e);
        Intrinsics.checkNotNullParameter(e, "e");
    }
}
