package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Xa implements Ya {
    private final Ta a;
    private final S2 b;

    public Xa(Ta strategy, S2 adUnit) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.a = strategy;
        this.b = adUnit;
    }

    @Override // com.ironsource.Ya
    public void a(C3865u0 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        this.a.a(adUnitCallback, this.b);
        Ta ta = this.a;
        ta.a(new Wa(ta, this.b));
    }

    @Override // com.ironsource.Ya
    public void b() {
        this.a.a("Loading an ad while loading");
    }

    @Override // com.ironsource.Ya
    public void c() {
        this.b.a(true);
        this.a.a((S2) null);
        Ta ta = this.a;
        ta.a(new Va(ta));
    }

    @Override // com.ironsource.Ya
    public void b(IronSourceError ironSourceError) {
        this.a.a(ironSourceError);
        this.b.a(false);
        this.a.a((S2) null);
        Ta ta = this.a;
        ta.a(new Va(ta));
    }
}
