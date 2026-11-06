package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.dc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3567dc implements J {
    private final Vb a;

    public C3567dc(Vb nativeAdBinder) {
        Intrinsics.checkNotNullParameter(nativeAdBinder, "nativeAdBinder");
        this.a = nativeAdBinder;
    }

    @Override // com.ironsource.J
    public void a(C3548cc nativeAdInstance) {
        Intrinsics.checkNotNullParameter(nativeAdInstance, "nativeAdInstance");
        nativeAdInstance.a(this.a);
    }
}
