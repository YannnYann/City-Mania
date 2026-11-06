package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Wa implements Ya {
    private final Ta a;
    private final S2 b;

    public Wa(Ta strategy, S2 adUnit) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.a = strategy;
        this.b = adUnit;
    }

    @Override // com.ironsource.Ya
    public void a(C3865u0 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        this.a.a("Ad unit is already loaded");
    }

    @Override // com.ironsource.Ya
    public void b() {
        this.a.a("Loading a loaded ad");
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
        this.a.a("Ad unit is already loaded");
    }
}
