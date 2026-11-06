package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.sf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3842sf {
    private final String a;
    private final String b;

    public C3842sf(String identifier, String baseConst) {
        Intrinsics.checkNotNullParameter(identifier, "identifier");
        Intrinsics.checkNotNullParameter(baseConst, "baseConst");
        this.a = identifier;
        this.b = baseConst;
    }

    public final String a() {
        return this.a + "_" + this.b;
    }
}
