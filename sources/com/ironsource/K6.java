package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class K6 implements M6 {
    private final G6 a;
    private final C3871u6 b;

    public K6(G6 strategy, C3871u6 adUnit) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.a = strategy;
        this.b = adUnit;
    }

    @Override // com.ironsource.M6
    public void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.b.a(activity, this.a);
    }

    @Override // com.ironsource.M6
    public void b(IronSourceError ironSourceError) {
        this.a.a("load failed after ad unit is already loaded");
    }

    @Override // com.ironsource.M6
    public void c(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.a("Ad unit is already loaded");
    }

    @Override // com.ironsource.M6
    public void loadAd() {
        G6 g6 = this.a;
        g6.a(new H6(g6, null, false, 4, null));
        this.a.loadAd();
    }

    @Override // com.ironsource.M6
    public void a() {
        G6 g6 = this.a;
        g6.a(new H6(g6, null, true));
        this.a.d().a();
    }

    @Override // com.ironsource.M6
    public void b(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.d().onAdInfoChanged(adInfo);
    }

    @Override // com.ironsource.M6
    public void c(IronSourceError ironSourceError) {
        if (!C3596f5.a.a(ironSourceError)) {
            G6 g6 = this.a;
            g6.a(new H6(g6, null, false, 4, null));
        }
        this.a.d().c(ironSourceError);
    }

    @Override // com.ironsource.M6
    public void a(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.d().a(adInfo);
        C3871u6 c3871u6A = this.a.b().a(false, this.a.c());
        G6 g6 = this.a;
        g6.a(new J6(g6, this.b, c3871u6A));
        c3871u6A.a(this.a);
    }
}
