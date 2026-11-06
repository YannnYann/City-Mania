package com.ironsource;

import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlay;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Xf {
    private final Sf a;

    public static final class c implements Ia {
        public c() {
        }

        @Override // com.ironsource.Ia
        public void a(IronSourceError ironSourceError) {
            Xf.this.a(Yf.b, LevelPlay.AdFormat.BANNER, C3534bg.a.a(ironSourceError != null ? ironSourceError.getErrorMessage() : null));
        }

        @Override // com.ironsource.Ia
        public void d(AdInfo adInfo) {
            Xf.this.a(Yf.f, LevelPlay.AdFormat.BANNER, C3534bg.a.a(adInfo));
        }

        @Override // com.ironsource.Ia
        public void e(AdInfo adInfo) {
            Xf.this.a(Yf.j, LevelPlay.AdFormat.BANNER, C3534bg.a.a(adInfo));
        }

        @Override // com.ironsource.Ia
        public void f(AdInfo adInfo) {
            Xf.this.a(Yf.m, LevelPlay.AdFormat.BANNER, C3534bg.a.a(adInfo));
        }

        @Override // com.ironsource.Ia
        public void g(AdInfo adInfo) {
            Xf.this.a(Yf.k, LevelPlay.AdFormat.BANNER, C3534bg.a.a(adInfo));
        }

        @Override // com.ironsource.Ia
        public void h(AdInfo adInfo) {
            Xf.this.a(Yf.l, LevelPlay.AdFormat.BANNER, C3534bg.a.a(adInfo));
        }
    }

    public Xf(Sf javaScriptEvaluator) {
        Intrinsics.checkNotNullParameter(javaScriptEvaluator, "javaScriptEvaluator");
        this.a = javaScriptEvaluator;
    }

    private final void b() {
        Wf wf = Wf.a;
        wf.a((InterfaceC3638hb) null);
        wf.a((InterfaceC3858tb) null);
        wf.a((Ia) null);
    }

    private final void c() {
        com.ironsource.mediationsdk.c.c().d(false);
        Wf.a.e();
    }

    public final void d() {
        Wf wf = Wf.a;
        wf.a(new a());
        wf.a(new b());
        wf.a(new c());
    }

    public final void a() {
        b();
        c();
    }

    public static final class a implements InterfaceC3638hb {
        public a() {
        }

        @Override // com.ironsource.InterfaceC3638hb
        public void a(AdInfo adInfo) {
            Xf.this.a(Yf.a, LevelPlay.AdFormat.INTERSTITIAL, C3534bg.a.a(adInfo));
        }

        @Override // com.ironsource.InterfaceC3638hb
        public void b(AdInfo adInfo) {
            Xf.this.a(Yf.g, LevelPlay.AdFormat.INTERSTITIAL, C3534bg.a.a(adInfo));
        }

        @Override // com.ironsource.InterfaceC3638hb
        public void c(AdInfo adInfo) {
            Xf.this.a(Yf.c, LevelPlay.AdFormat.INTERSTITIAL, C3534bg.a.a(adInfo));
        }

        @Override // com.ironsource.InterfaceC3638hb
        public void d(AdInfo adInfo) {
            Xf.this.a(Yf.f, LevelPlay.AdFormat.INTERSTITIAL, C3534bg.a.a(adInfo));
        }

        @Override // com.ironsource.InterfaceC3638hb
        public void e(AdInfo adInfo) {
            Xf.this.a(Yf.d, LevelPlay.AdFormat.INTERSTITIAL, C3534bg.a.a(adInfo));
        }

        @Override // com.ironsource.InterfaceC3638hb
        public void a(IronSourceError ironSourceError) {
            Xf.this.a(Yf.b, LevelPlay.AdFormat.INTERSTITIAL, C3534bg.a.a(ironSourceError != null ? ironSourceError.getErrorMessage() : null));
        }

        @Override // com.ironsource.InterfaceC3638hb
        public void a(IronSourceError ironSourceError, AdInfo adInfo) {
            Xf.this.a(Yf.e, LevelPlay.AdFormat.INTERSTITIAL, C3534bg.a.a(ironSourceError != null ? ironSourceError.getErrorMessage() : null, adInfo));
        }
    }

    public static final class b implements InterfaceC3894vb, InterfaceC3876ub {
        public b() {
        }

        @Override // com.ironsource.InterfaceC3894vb
        public void a(AdInfo adInfo) {
            Xf.this.a(Yf.a, LevelPlay.AdFormat.REWARDED, C3534bg.a.a(adInfo));
        }

        @Override // com.ironsource.InterfaceC3858tb
        public void b(C3729md c3729md, AdInfo adInfo) {
            Xf.this.a(Yf.i, LevelPlay.AdFormat.REWARDED, C3534bg.a.a(Wf.a.a(c3729md), adInfo));
        }

        @Override // com.ironsource.InterfaceC3858tb
        public void c(AdInfo adInfo) {
            Xf.this.a(Yf.c, LevelPlay.AdFormat.REWARDED, C3534bg.a.a(adInfo));
        }

        @Override // com.ironsource.InterfaceC3876ub
        public void d(AdInfo adInfo) {
            Xf.this.a(Yf.h, LevelPlay.AdFormat.REWARDED, C3534bg.a.a(adInfo));
        }

        @Override // com.ironsource.InterfaceC3894vb
        public void a(IronSourceError ironSourceError) {
            Xf.this.a(Yf.b, LevelPlay.AdFormat.REWARDED, C3534bg.a.a(ironSourceError != null ? ironSourceError.getErrorMessage() : null));
        }

        @Override // com.ironsource.InterfaceC3858tb
        public void b(AdInfo adInfo) {
            Xf.this.a(Yf.g, LevelPlay.AdFormat.REWARDED, C3534bg.a.a(adInfo));
        }

        @Override // com.ironsource.InterfaceC3876ub
        public void a() {
            Xf.this.a(Yf.n, LevelPlay.AdFormat.REWARDED, C3534bg.a.a(new Object[0]));
        }

        @Override // com.ironsource.InterfaceC3858tb
        public void a(IronSourceError ironSourceError, AdInfo adInfo) {
            Xf.this.a(Yf.e, LevelPlay.AdFormat.REWARDED, C3534bg.a.a(ironSourceError != null ? ironSourceError.getErrorMessage() : null, adInfo));
        }

        @Override // com.ironsource.InterfaceC3858tb
        public void a(C3729md c3729md, AdInfo adInfo) {
            Xf.this.a(Yf.f, LevelPlay.AdFormat.REWARDED, C3534bg.a.a(Wf.a.a(c3729md), adInfo));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str, LevelPlay.AdFormat adFormat, List<? extends Object> list) {
        this.a.a(str, adFormat, list);
    }
}
