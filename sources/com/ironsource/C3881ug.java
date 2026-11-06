package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ug, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3881ug {
    private final InterfaceC3851t4 a;

    public C3881ug(InterfaceC3851t4 currentTimeProvider) {
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        this.a = currentTimeProvider;
    }

    public final boolean a(long j, long j2) {
        long jA = this.a.a();
        return j2 <= 0 || j <= 0 || jA < j || jA - j > j2;
    }
}
