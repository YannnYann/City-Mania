package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.tf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3862tf {
    private final int a;
    private final M3 b;

    public C3862tf(int i, M3 unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        this.a = i;
        this.b = unit;
    }

    public final int a() {
        return this.a;
    }

    public final M3 b() {
        return this.b;
    }

    public String toString() {
        return "ShowCountCappingConfig(maxImpressions=" + this.a + ", unit=" + this.b + ")";
    }
}
