package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class M2 implements J {
    private final Bg a;

    public M2(Bg viewBinder) {
        Intrinsics.checkNotNullParameter(viewBinder, "viewBinder");
        this.a = viewBinder;
    }

    @Override // com.ironsource.J
    public void a(I2 bannerAdInstance) {
        Intrinsics.checkNotNullParameter(bannerAdInstance, "bannerAdInstance");
        bannerAdInstance.a(this.a);
    }
}
