package com.vungle.ads.internal;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends h {
    public a() {
        super("ERROR", 6, 0);
    }

    @Override // com.vungle.ads.internal.h
    public final boolean a(h adState) {
        Intrinsics.checkNotNullParameter(adState, "adState");
        return adState == h.f;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "failed";
    }
}
