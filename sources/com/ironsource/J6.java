package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class J6 implements M6 {
    private final G6 a;
    private final C3871u6 b;
    private final C3871u6 c;

    public J6(G6 strategy, C3871u6 currentAdUnit, C3871u6 progressiveAdUnit) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        Intrinsics.checkNotNullParameter(currentAdUnit, "currentAdUnit");
        Intrinsics.checkNotNullParameter(progressiveAdUnit, "progressiveAdUnit");
        this.a = strategy;
        this.b = currentAdUnit;
        this.c = progressiveAdUnit;
    }

    @Override // com.ironsource.M6
    public void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.a.d().c(new IronSourceError(LevelPlayAdError.ERROR_CODE_SHOW_WHILE_LOAD, "Show called while progressive loading another ad"));
    }

    @Override // com.ironsource.M6
    public void b(IronSourceError ironSourceError) {
        G6 g6 = this.a;
        g6.a(new H6(g6, this.b, false, 4, null));
    }

    @Override // com.ironsource.M6
    public void c(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        G6 g6 = this.a;
        g6.a(new I6(g6, this.b, this.c, adInfo));
    }

    @Override // com.ironsource.M6
    public void loadAd() {
        G6 g6 = this.a;
        g6.a(new L6(g6, this.c));
    }

    @Override // com.ironsource.M6
    public void b(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.a("load success with better ad before progressive load success");
    }

    @Override // com.ironsource.M6
    public void a() {
        this.a.a("ad expired before progressive load success");
    }

    @Override // com.ironsource.M6
    public void a(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.a("show success before progressive load success");
    }

    @Override // com.ironsource.M6
    public void c(IronSourceError ironSourceError) {
        this.a.a("show failed before progressive load success");
    }
}
