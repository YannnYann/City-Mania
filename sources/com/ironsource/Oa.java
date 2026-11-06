package com.ironsource;

import com.ironsource.AbstractC3719m3;
import com.ironsource.mediationsdk.logger.IronSourceError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class Oa implements Sa {
    private final Ja a;
    private final S2 b;

    public Oa(Ja strategy, S2 currentAdUnit) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        Intrinsics.checkNotNullParameter(currentAdUnit, "currentAdUnit");
        this.a = strategy;
        this.b = currentAdUnit;
    }

    @Override // com.ironsource.L0
    public void a(C3865u0 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        this.a.a("Received load success while paused");
    }

    @Override // com.ironsource.Sa
    public void b() {
        this.a.a("Loading a loaded ad");
    }

    @Override // com.ironsource.Sa
    public void c() {
        this.b.a(true);
        Ja ja = this.a;
        ja.a((Sa) new La(ja));
    }

    @Override // com.ironsource.Sa
    public void d() {
    }

    @Override // com.ironsource.Sa
    public void f() {
        Ja.a(this.a, this.b, (AbstractC3719m3) new AbstractC3719m3.a(AbstractC3719m3.b.c.a), false, 4, (Object) null);
    }

    @Override // com.ironsource.L0
    public void b(IronSourceError ironSourceError) {
        this.a.a("Received load failed while paused");
    }
}
