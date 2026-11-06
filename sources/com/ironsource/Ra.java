package com.ironsource;

import com.ironsource.AbstractC3719m3;
import com.ironsource.mediationsdk.logger.IronSourceError;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class Ra implements Sa {
    private final Ja a;
    private final S2 b;
    private final S2 c;
    private final long d;
    private final boolean e;

    public Ra(Ja strategy, S2 currentAdUnit, S2 reloadingAdUnit, long j, boolean z) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        Intrinsics.checkNotNullParameter(currentAdUnit, "currentAdUnit");
        Intrinsics.checkNotNullParameter(reloadingAdUnit, "reloadingAdUnit");
        this.a = strategy;
        this.b = currentAdUnit;
        this.c = reloadingAdUnit;
        this.d = j;
        this.e = z;
    }

    @Override // com.ironsource.L0
    public void a(C3865u0 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        this.a.a(adUnitCallback, this.c, this.b, (AbstractC3719m3) new AbstractC3719m3.c(this.a.o().a() - this.d, AbstractC3719m3.d.C1046d.a), false, Long.valueOf(this.d));
    }

    @Override // com.ironsource.Sa
    public void b() {
        this.a.a("Loading an ad while reloading after timer finished");
    }

    @Override // com.ironsource.Sa
    public void c() {
        this.b.a(true);
        this.c.a(true);
        Ja ja = this.a;
        ja.a((Sa) new La(ja));
    }

    @Override // com.ironsource.Sa
    public void d() {
        Ja ja = this.a;
        ja.a((Sa) new Oa(ja, this.b));
    }

    @Override // com.ironsource.Sa
    public void f() {
    }

    @Override // com.ironsource.L0
    public void b(IronSourceError ironSourceError) {
        this.a.a(ironSourceError, this.b, (AbstractC3719m3) new AbstractC3719m3.c(this.a.o().a() - this.d, AbstractC3719m3.d.c.a), this.e, false, Long.valueOf(this.d));
    }

    public /* synthetic */ Ra(Ja ja, S2 s2, S2 s22, long j, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(ja, s2, s22, j, (i & 16) != 0 ? true : z);
    }
}
