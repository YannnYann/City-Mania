package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class Ta implements Fa {
    private final C3770p0 a;
    private final C3557d3 b;
    private final U2 c;
    private Ga d;
    private Ya e;
    private S2 f;
    private final L0 g;
    private final InterfaceC3955z0 h;
    private final V2 i;

    public static final class a implements V2 {
        public a() {
        }

        public void a() {
            Ga gaM = Ta.this.m();
            if (gaM != null) {
                gaM.onAdLeftApplication();
            }
        }

        public void b() {
            Ga gaM = Ta.this.m();
            if (gaM != null) {
                gaM.k();
            }
        }

        public void c() {
            Ga gaM = Ta.this.m();
            if (gaM != null) {
                gaM.i();
            }
        }

        @Override // com.ironsource.J0
        public void e() {
            Ga gaM = Ta.this.m();
            if (gaM != null) {
                gaM.onAdClicked();
            }
        }

        @Override // com.ironsource.V2
        public /* bridge */ /* synthetic */ Unit g() {
            a();
            return Unit.INSTANCE;
        }

        @Override // com.ironsource.V2
        public /* bridge */ /* synthetic */ Unit h() {
            c();
            return Unit.INSTANCE;
        }

        @Override // com.ironsource.V2
        public /* bridge */ /* synthetic */ Unit j() {
            b();
            return Unit.INSTANCE;
        }
    }

    public static final class b implements L0 {
        public b() {
        }

        @Override // com.ironsource.L0
        public void a(C3865u0 adUnitCallback) {
            Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
            Ta.this.l().a(adUnitCallback);
        }

        @Override // com.ironsource.L0
        public void b(IronSourceError ironSourceError) {
            Ta.this.l().b(ironSourceError);
        }
    }

    public static final class c implements InterfaceC3955z0 {
        public c() {
        }

        @Override // com.ironsource.InterfaceC3955z0
        public void a(LevelPlayAdInfo adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            Ga gaM = Ta.this.m();
            if (gaM != null) {
                gaM.onAdDisplayed(adInfo);
            }
        }

        @Override // com.ironsource.InterfaceC3955z0
        public void c(IronSourceError ironSourceError) {
            Ga gaM = Ta.this.m();
            if (gaM != null) {
                gaM.d(ironSourceError);
            }
        }
    }

    public Ta(C3770p0 adTools, C3557d3 bannerContainer, U2 bannerAdUnitFactory) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(bannerContainer, "bannerContainer");
        Intrinsics.checkNotNullParameter(bannerAdUnitFactory, "bannerAdUnitFactory");
        this.a = adTools;
        this.b = bannerContainer;
        this.c = bannerAdUnitFactory;
        this.e = new Ua(this);
        this.g = new b();
        this.h = new c();
        this.i = new a();
    }

    public final C3770p0 a() {
        return this.a;
    }

    public final void b(Ga ga) {
        this.d = ga;
    }

    @Override // com.ironsource.Fa
    public void c() {
        this.e.c();
    }

    @Override // com.ironsource.Fa
    public void d() {
    }

    public final V2 e() {
        return this.i;
    }

    @Override // com.ironsource.Fa
    public void f() {
    }

    public final L0 g() {
        return this.g;
    }

    public final InterfaceC3955z0 h() {
        return this.h;
    }

    public final U2 i() {
        return this.c;
    }

    public final C3557d3 j() {
        return this.b;
    }

    public final S2 k() {
        return this.f;
    }

    public final Ya l() {
        return this.e;
    }

    public final Ga m() {
        return this.d;
    }

    public final void a(Ya ya) {
        Intrinsics.checkNotNullParameter(ya, "<set-?>");
        this.e = ya;
    }

    @Override // com.ironsource.Fa
    public void b() {
        this.e.b();
    }

    public final void a(S2 s2) {
        this.f = s2;
    }

    public final void a(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.a.f().h().f("Banner Single Ad Unit Strategy - " + message);
    }

    public final void a(C3865u0 adUnitCallback, S2 adUnit) {
        Ga ga;
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        adUnit.a(this.b.getViewBinder(), this.h);
        LevelPlayAdInfo levelPlayAdInfoC = adUnitCallback.c();
        if (levelPlayAdInfoC == null || (ga = this.d) == null) {
            return;
        }
        ga.onAdLoaded(levelPlayAdInfoC);
    }

    public final void a(IronSourceError ironSourceError) {
        Ga ga = this.d;
        if (ga != null) {
            ga.a(ironSourceError);
        }
    }

    @Override // com.ironsource.Fa
    public void a(Ga listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.d = listener;
    }
}
