package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class La implements Sa {
    private final Ja a;

    public La(Ja strategy) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        this.a = strategy;
    }

    @Override // com.ironsource.L0
    public void a(C3865u0 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        this.a.a("Received load success on a destroyed ad");
    }

    @Override // com.ironsource.Sa
    public void b() {
        this.a.a("Loading a destroyed ad");
    }

    @Override // com.ironsource.Sa
    public void c() {
        this.a.a("Destroying a destroyed ad");
    }

    @Override // com.ironsource.Sa
    public void d() {
        this.a.a("Pausing auto refresh on a destroyed ad");
    }

    @Override // com.ironsource.Sa
    public void f() {
        this.a.a("Resuming auto refresh on a destroyed ad");
    }

    @Override // com.ironsource.L0
    public void b(IronSourceError ironSourceError) {
        this.a.a("Received load failed on a destroyed ad");
    }
}
