package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class Ka implements Sa {
    private final Ja a;
    private boolean b;

    public Ka(Ja strategy, boolean z) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        this.a = strategy;
        this.b = z;
    }

    @Override // com.ironsource.L0
    public void a(C3865u0 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        this.a.a("Received load success before load");
    }

    @Override // com.ironsource.Sa
    public void b() {
        S2 s2A = this.a.i().a(true);
        this.a.a((Sa) new Na(this.a, s2A, this.b));
        s2A.a(this.a.g());
    }

    @Override // com.ironsource.Sa
    public void c() {
        Ja ja = this.a;
        ja.a((Sa) new La(ja));
    }

    @Override // com.ironsource.Sa
    public void d() {
        this.b = true;
    }

    @Override // com.ironsource.Sa
    public void f() {
        this.b = false;
    }

    public /* synthetic */ Ka(Ja ja, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(ja, (i & 2) != 0 ? false : z);
    }

    @Override // com.ironsource.L0
    public void b(IronSourceError ironSourceError) {
        this.a.a("Received load failed before load");
    }
}
