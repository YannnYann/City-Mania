package com.ironsource;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class H6 implements M6 {
    private final G6 a;
    private final C3871u6 b;
    private final boolean c;

    public H6(G6 strategy, C3871u6 c3871u6, boolean z) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        this.a = strategy;
        this.b = c3871u6;
        this.c = z;
    }

    @Override // com.ironsource.M6
    public void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.a.d().c(new IronSourceError(LevelPlayAdError.ERROR_CODE_SHOW_BEFORE_LOAD_SUCCESS_CALLBACK, this.c ? "Show called on expired ad" : "Show called before load success"));
    }

    @Override // com.ironsource.M6
    public void b(IronSourceError ironSourceError) {
        this.a.a(this.c ? "load failed on expired ad" : "load failed before load called");
    }

    @Override // com.ironsource.M6
    public void c(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.a(this.c ? "load success on expired ad" : "load success before load called");
    }

    @Override // com.ironsource.M6
    public void loadAd() {
        C3871u6 c3871u6A = this.a.b().a(true, this.a.c());
        G6 g6 = this.a;
        g6.a(new L6(g6, c3871u6A));
        c3871u6A.a(this.a);
    }

    @Override // com.ironsource.M6
    public void b(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.a(this.c ? "load with better ad on expired ad" : "load success with better ad before load success");
    }

    @Override // com.ironsource.M6
    public void c(IronSourceError ironSourceError) {
        this.a.a(this.c ? "show failed on expired ad" : "show failed before load called");
    }

    public /* synthetic */ H6(G6 g6, C3871u6 c3871u6, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(g6, c3871u6, (i & 4) != 0 ? false : z);
    }

    @Override // com.ironsource.M6
    public void a() {
        this.a.a(this.c ? "ad expired on expired ad" : "ad expired before load called");
    }

    @Override // com.ironsource.M6
    public void a(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.a(this.c ? "show success on expired ad" : "show success before load called");
    }
}
