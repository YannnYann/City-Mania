package com.ironsource;

import android.graphics.Rect;
import android.view.ViewTreeObserver;
import com.ironsource.Ja;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdInfo;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class Ja implements Fa {
    private final C3770p0 a;
    private final C3557d3 b;
    private final long c;
    private final long d;
    private Ga e;
    private final U2 f;
    private final Ff g;
    private final InterfaceC3851t4 h;
    private final boolean i;
    private L0 j;
    private InterfaceC3955z0 k;
    private V2 l;
    private Sa m;

    public static final class a implements V2 {
        public a() {
        }

        public void a() {
            Ja.this.m().onAdLeftApplication();
        }

        public void b() {
            Ja.this.m().k();
        }

        public void c() {
            Ja.this.m().i();
        }

        @Override // com.ironsource.J0
        public void e() {
            Ja.this.m().onAdClicked();
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
            Ja.this.l().a(adUnitCallback);
        }

        @Override // com.ironsource.L0
        public void b(IronSourceError ironSourceError) {
            Ja.this.l().b(ironSourceError);
        }
    }

    public static final class c implements InterfaceC3955z0 {
        public c() {
        }

        @Override // com.ironsource.InterfaceC3955z0
        public void a(LevelPlayAdInfo adInfo) {
            Intrinsics.checkNotNullParameter(adInfo, "adInfo");
            Ja.this.m().onAdDisplayed(adInfo);
        }

        @Override // com.ironsource.InterfaceC3955z0
        public void c(IronSourceError ironSourceError) {
            Ja.this.m().d(ironSourceError);
        }
    }

    public static final class d implements ViewTreeObserver.OnGlobalLayoutListener {
        final /* synthetic */ S2 b;
        final /* synthetic */ AbstractC3719m3 c;
        final /* synthetic */ Long d;

        public d(S2 s2, AbstractC3719m3 abstractC3719m3, Long l) {
            this.b = s2;
            this.c = abstractC3719m3;
            this.d = l;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(Ja ja, S2 s2, AbstractC3719m3 abstractC3719m3) {
            Ja.a(ja, s2, abstractC3719m3, false, 4, (Object) null);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (Ja.this.j().getViewTreeObserver().isAlive()) {
                Ja.this.j().getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
            if (Fg.a(Ja.this.j(), new Rect())) {
                C3770p0 c3770p0A = Ja.this.a();
                final Ja ja = Ja.this;
                final S2 s2 = this.b;
                final AbstractC3719m3 abstractC3719m3 = this.c;
                c3770p0A.a(new Runnable() { // from class: com.ironsource.Ja$d$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        Ja.d.a(ja, s2, abstractC3719m3);
                    }
                });
                return;
            }
            C3770p0 c3770p0A2 = Ja.this.a();
            final Ja ja2 = Ja.this;
            final S2 s22 = this.b;
            final Long l = this.d;
            c3770p0A2.a(new Runnable() { // from class: com.ironsource.Ja$d$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Ja.d.a(ja2, s22, l);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(Ja ja, S2 s2, Long l) {
            ja.a((Sa) new Ma(ja, s2, l));
        }
    }

    public Ja(C3770p0 adTools, C3557d3 bannerContainer, long j, long j2, Ga strategyListener, U2 bannerAdUnitFactory, Ff taskScheduler, InterfaceC3851t4 timeProvider, boolean z) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(bannerContainer, "bannerContainer");
        Intrinsics.checkNotNullParameter(strategyListener, "strategyListener");
        Intrinsics.checkNotNullParameter(bannerAdUnitFactory, "bannerAdUnitFactory");
        Intrinsics.checkNotNullParameter(taskScheduler, "taskScheduler");
        Intrinsics.checkNotNullParameter(timeProvider, "timeProvider");
        this.a = adTools;
        this.b = bannerContainer;
        this.c = j;
        this.d = j2;
        this.e = strategyListener;
        this.f = bannerAdUnitFactory;
        this.g = taskScheduler;
        this.h = timeProvider;
        this.i = z;
        this.j = new b();
        this.k = new c();
        this.l = new a();
        this.m = new Ka(this, false, 2, null);
    }

    public final C3770p0 a() {
        return this.a;
    }

    public final void b(Ga ga) {
        Intrinsics.checkNotNullParameter(ga, "<set-?>");
        this.e = ga;
    }

    @Override // com.ironsource.Fa
    public void c() {
        this.m.c();
    }

    @Override // com.ironsource.Fa
    public void d() {
        this.m.d();
    }

    public final V2 e() {
        return this.l;
    }

    @Override // com.ironsource.Fa
    public void f() {
        this.m.f();
    }

    public final L0 g() {
        return this.j;
    }

    public final InterfaceC3955z0 h() {
        return this.k;
    }

    public final U2 i() {
        return this.f;
    }

    public final C3557d3 j() {
        return this.b;
    }

    public final long k() {
        return this.c;
    }

    public final Sa l() {
        return this.m;
    }

    public final Ga m() {
        return this.e;
    }

    public final Ff n() {
        return this.g;
    }

    public final InterfaceC3851t4 o() {
        return this.h;
    }

    public final long p() {
        return this.d;
    }

    public final void q() {
        this.a.f().h().h("Banner view is not visible");
    }

    public final void a(L0 l0) {
        Intrinsics.checkNotNullParameter(l0, "<set-?>");
        this.j = l0;
    }

    @Override // com.ironsource.Fa
    public void b() {
        this.m.b();
    }

    public final void a(InterfaceC3955z0 interfaceC3955z0) {
        Intrinsics.checkNotNullParameter(interfaceC3955z0, "<set-?>");
        this.k = interfaceC3955z0;
    }

    public final void a(V2 v2) {
        Intrinsics.checkNotNullParameter(v2, "<set-?>");
        this.l = v2;
    }

    public final void a(Sa sa) {
        Intrinsics.checkNotNullParameter(sa, "<set-?>");
        this.m = sa;
    }

    public final void a(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.a.f().h().f("Banner Reload Strategy - " + message);
    }

    public final void a(C3865u0 adUnitCallback, S2 currentAdUnit, S2 s2, AbstractC3719m3 reloadReason, boolean z, Long l) {
        Intrinsics.checkNotNullParameter(adUnitCallback, "adUnitCallback");
        Intrinsics.checkNotNullParameter(currentAdUnit, "currentAdUnit");
        Intrinsics.checkNotNullParameter(reloadReason, "reloadReason");
        currentAdUnit.a(this.b.getViewBinder(), this.k);
        LevelPlayAdInfo levelPlayAdInfoC = adUnitCallback.c();
        if (levelPlayAdInfoC != null) {
            this.e.onAdLoaded(levelPlayAdInfoC);
        } else {
            IronLog.INTERNAL.error(C3770p0.a(this.a, "adInfo is null in handleLoadSuccess", (String) null, 2, (Object) null));
        }
        if (s2 != null) {
            s2.a(false);
        }
        if (z) {
            this.m = new Oa(this, currentAdUnit);
        } else {
            a(currentAdUnit, reloadReason, l);
        }
    }

    public final void a(IronSourceError ironSourceError, S2 currentAdUnit, AbstractC3719m3 reloadReason, boolean z, boolean z2, Long l) {
        Intrinsics.checkNotNullParameter(currentAdUnit, "currentAdUnit");
        Intrinsics.checkNotNullParameter(reloadReason, "reloadReason");
        this.e.a(ironSourceError);
        if (z2) {
            this.m = new Oa(this, currentAdUnit);
        } else if (z) {
            a(currentAdUnit, reloadReason, l);
        } else {
            a(currentAdUnit, reloadReason, this.i);
        }
    }

    public final void a(final S2 currentAdUnit, final AbstractC3719m3 reloadReason, final Long l) {
        Intrinsics.checkNotNullParameter(currentAdUnit, "currentAdUnit");
        Intrinsics.checkNotNullParameter(reloadReason, "reloadReason");
        this.a.b(new Runnable() { // from class: com.ironsource.Ja$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Ja.a(this.f$0, currentAdUnit, reloadReason, l);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(final Ja ja, final S2 s2, final AbstractC3719m3 abstractC3719m3, final Long l) {
        if (Fg.a(ja.b, new Rect())) {
            ja.a.a(new Runnable() { // from class: com.ironsource.Ja$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Ja.a(this.f$0, s2, abstractC3719m3);
                }
            });
        } else if (!ja.b.getViewTreeObserver().isAlive()) {
            ja.a.a(new Runnable() { // from class: com.ironsource.Ja$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    Ja.a(this.f$0, s2, l);
                }
            });
        } else {
            ja.b.getViewTreeObserver().addOnGlobalLayoutListener(ja.new d(s2, abstractC3719m3, l));
        }
    }

    public /* synthetic */ Ja(C3770p0 c3770p0, C3557d3 c3557d3, long j, long j2, Ga ga, U2 u2, Ff ff, InterfaceC3851t4 interfaceC3851t4, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        Ff ef;
        if ((i & 64) != 0) {
            ef = new Ef(null, null, null, 7, null);
        } else {
            ef = ff;
        }
        this(c3770p0, c3557d3, j, j2, ga, u2, ef, interfaceC3851t4, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Ja ja, S2 s2, AbstractC3719m3 abstractC3719m3) {
        a(ja, s2, abstractC3719m3, false, 4, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Ja ja, S2 s2, Long l) {
        ja.m = new Ma(ja, s2, l);
    }

    public static /* synthetic */ void a(Ja ja, S2 s2, AbstractC3719m3 abstractC3719m3, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        ja.a(s2, abstractC3719m3, z);
    }

    public final void a(S2 currentAdUnit, AbstractC3719m3 reloadReason, boolean z) {
        Intrinsics.checkNotNullParameter(currentAdUnit, "currentAdUnit");
        Intrinsics.checkNotNullParameter(reloadReason, "reloadReason");
        S2 s2A = this.f.a(false);
        Pa pa = new Pa(this, currentAdUnit, s2A, this.h.a(), z);
        a(reloadReason);
        this.m = pa;
        s2A.a(this.j);
    }

    private final void a(AbstractC3719m3 abstractC3719m3) {
        this.a.f().h().a(abstractC3719m3.c(), abstractC3719m3.b(), abstractC3719m3.a());
    }

    @Override // com.ironsource.Fa
    public void a(Ga listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.e = listener;
    }
}
