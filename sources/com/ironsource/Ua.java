package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Ua implements Ya {
    private final Ta a;

    public Ua(Ta strategy) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        this.a = strategy;
    }

    @Override // com.ironsource.Ya
    public void a(C3865u0 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        this.a.a("Received load success before load called");
    }

    @Override // com.ironsource.Ya
    public void b() {
        S2 s2A = this.a.i().a(true);
        this.a.a(s2A);
        Ta ta = this.a;
        ta.a(new Xa(ta, s2A));
        s2A.a(this.a.g());
    }

    @Override // com.ironsource.Ya
    public void c() {
        S2 s2K = this.a.k();
        if (s2K != null) {
            s2K.a(false);
        }
        this.a.a((S2) null);
        Ta ta = this.a;
        ta.a(new Va(ta));
    }

    @Override // com.ironsource.Ya
    public void b(IronSourceError ironSourceError) {
        this.a.a("Received load failed before load called");
    }
}
