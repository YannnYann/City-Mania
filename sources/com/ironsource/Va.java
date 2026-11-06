package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Va implements Ya {
    private final Ta a;

    public Va(Ta strategy) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        this.a = strategy;
    }

    @Override // com.ironsource.Ya
    public void a(C3865u0 adUnitCallback) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        this.a.a("Received load success on a destroyed ad");
    }

    @Override // com.ironsource.Ya
    public void b() {
        this.a.a("Loading a destroyed ad");
    }

    @Override // com.ironsource.Ya
    public void c() {
        this.a.a("Destroying a destroyed ad");
    }

    @Override // com.ironsource.Ya
    public void b(IronSourceError ironSourceError) {
        this.a.a("Received load failed on a destroyed ad");
    }
}
