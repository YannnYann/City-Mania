package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class L6 implements M6 {
    private final G6 a;
    private final C3871u6 b;

    public L6(G6 strategy, C3871u6 adUnit) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        this.a = strategy;
        this.b = adUnit;
    }

    @Override // com.ironsource.M6
    public void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.a.d().c(new IronSourceError(LevelPlayAdError.ERROR_CODE_SHOW_BEFORE_LOAD_SUCCESS_CALLBACK, "Show called before load success"));
    }

    @Override // com.ironsource.M6
    public void b(IronSourceError ironSourceError) {
        G6 g6 = this.a;
        g6.a(new H6(g6, this.b, false, 4, null));
        this.a.d().b(ironSourceError);
    }

    @Override // com.ironsource.M6
    public void c(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        G6 g6 = this.a;
        g6.a(new K6(g6, this.b));
        this.a.d().b(adInfo);
    }

    @Override // com.ironsource.M6
    public void loadAd() {
        this.a.d().b(new IronSourceError(LevelPlayAdError.ERROR_CODE_LOAD_FAILED_ALREADY_CALLED, "Load called before load success"));
    }

    @Override // com.ironsource.M6
    public void b(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.a("load success with better ad while loading");
    }

    @Override // com.ironsource.M6
    public void c(IronSourceError ironSourceError) {
        this.a.a("show failed while loading");
    }

    @Override // com.ironsource.M6
    public void a() {
        this.a.a("ad expired while loading");
    }

    @Override // com.ironsource.M6
    public void a(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.a("show success while loading");
    }
}
