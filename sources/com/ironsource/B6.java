package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class B6 implements F6 {
    private final A6 a;

    public B6(A6 strategy) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        this.a = strategy;
    }

    @Override // com.ironsource.F6
    public void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.a.a("show called before load success");
    }

    @Override // com.ironsource.F6
    public void b(C3871u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.a("load success before load called");
    }

    @Override // com.ironsource.F6
    public void c(C3871u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.a("load success with better ad before load called");
    }

    @Override // com.ironsource.F6
    public void loadAd() {
        C3871u6 c3871u6A = this.a.b().a(true, this.a.c());
        this.a.a(new D6(this.a, c3871u6A, true));
        c3871u6A.a(this.a);
    }

    @Override // com.ironsource.F6
    public void a(C3871u6 adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.a.a("ad expired before load called");
    }

    @Override // com.ironsource.F6
    public void b(C3871u6 adUnit, IronSourceError ironSourceError) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.a.a("load failed before load called");
    }

    @Override // com.ironsource.F6
    public void a(C3871u6 adUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.a("ad display success before load called");
    }

    @Override // com.ironsource.F6
    public void a(C3871u6 adUnit, IronSourceError ironSourceError) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.a.a("ad display failed before load called");
    }
}
