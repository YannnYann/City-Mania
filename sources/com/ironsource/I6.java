package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class I6 implements M6 {
    private final G6 a;
    private final C3871u6 b;
    private final C3871u6 c;
    private LevelPlayAdInfo d;

    public I6(G6 strategy, C3871u6 currentAdUnit, C3871u6 progressiveAdUnit, LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        Intrinsics.checkNotNullParameter(currentAdUnit, "currentAdUnit");
        Intrinsics.checkNotNullParameter(progressiveAdUnit, "progressiveAdUnit");
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a = strategy;
        this.b = currentAdUnit;
        this.c = progressiveAdUnit;
        this.d = adInfo;
    }

    @Override // com.ironsource.M6
    public void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.a.d().c(new IronSourceError(LevelPlayAdError.ERROR_CODE_SHOW_BEFORE_LOAD_SUCCESS_CALLBACK, "Show called before load success"));
    }

    @Override // com.ironsource.M6
    public void b(IronSourceError ironSourceError) {
        this.a.a("load failed on progressive ad unit that already loaded");
    }

    @Override // com.ironsource.M6
    public void c(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.a("load success on progressive ad unit is already loaded");
    }

    @Override // com.ironsource.M6
    public void loadAd() {
        this.a.d().b(this.d);
        G6 g6 = this.a;
        g6.a(new K6(g6, this.c));
    }

    @Override // com.ironsource.M6
    public void b(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.d = adInfo;
    }

    @Override // com.ironsource.M6
    public void c(IronSourceError ironSourceError) {
        this.a.a("show failed on progressive ad unit that already loaded");
    }

    @Override // com.ironsource.M6
    public void a() {
        G6 g6 = this.a;
        g6.a(new H6(g6, this.b, true));
    }

    @Override // com.ironsource.M6
    public void a(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.a("show success on progressive ad unit that already loaded");
    }
}
