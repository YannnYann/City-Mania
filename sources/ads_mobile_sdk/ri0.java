package ads_mobile_sdk;

import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ri0 implements ot0 {
    public vh1 A;
    public bv3 A0;
    public dw2 B;
    public fv3 B0;
    public sc3 C;
    public hv3 C0;
    public dw2 D;
    public ol0 D0;
    public dw2 E;
    public iv3 E0;
    public vh1 F;
    public jv3 F0;
    public e53 G;
    public lv3 G0;
    public dw2 H;
    public mv3 H0;
    public dw2 I;
    public cv3 I0;
    public dw2 J;
    public dv3 J0;
    public dw2 K;
    public ev3 K0;
    public dw2 L;
    public dw2 L0;
    public dw2 M;
    public nv3 M0;
    public dw2 N;
    public kv3 N0;
    public dw2 O;
    public gv3 O0;
    public dw2 P;
    public x50 P0;
    public dw2 Q;
    public z50 Q0;
    public dw2 R;
    public c60 R0;
    public dw2 S;
    public d60 S0;
    public dw2 T;
    public u50 T0;
    public dw2 U;
    public a60 U0;
    public dw2 V;
    public y50 V0;
    public dw2 W;
    public b60 W0;
    public dw2 X;
    public du0 X0;
    public cu0 Y;
    public xt0 Y0;
    public dw2 Z;
    public vt0 Z0;
    public final vf0 a;
    public dw2 a0;
    public ut0 a1;
    public dw2 b;
    public ez b0;
    public wt0 b1;
    public vh1 c;
    public dz c0;
    public yt0 c1;
    public vh1 d;
    public iu1 d0;
    public fv0 d1;
    public sh0 e;
    public dw2 e0;
    public gv0 e1;
    public sh0 f;
    public dw2 f0;
    public ev0 f1;
    public sh0 g;
    public vh1 g0;
    public r50 g1;
    public dw2 h;
    public dw2 h0;
    public m60 h1;
    public vh1 i;
    public dw2 i0;
    public h60 i1;
    public sh0 j;
    public dw2 j0;
    public dw2 j1;
    public dw2 k;
    public k50 k0;
    public dw2 k1;
    public vh1 l;
    public n50 l0;
    public dw2 l1;
    public sh0 m;
    public m50 m0;
    public g60 m1;
    public ol0 n;
    public l50 n0;
    public dw2 n1;
    public my1 o;
    public dw2 o0;
    public dw2 o1;
    public dw2 p;
    public o50 p0;
    public dw2 p1;
    public dw2 q;
    public q50 q0;
    public k60 q1;
    public dw2 r;
    public p50 r0;
    public f60 r1;
    public ny1 s;
    public s50 s0;
    public i60 s1;
    public e63 t;
    public t50 t0;
    public l60 t1;
    public vh1 u;
    public e60 u0;
    public j60 u1;
    public sh0 v;
    public v50 v0;
    public zt0 v1;
    public vh1 w;
    public w50 w0;
    public dw2 w1;
    public vh1 x;
    public qg2 x0;
    public dw2 y;
    public vh1 y0;
    public vh1 z;
    public av3 z0;

    public ri0(vf0 vf0Var, BaseRequest baseRequest, j53 j53Var, Integer num, i2 i2Var, zy zyVar, ec3 ec3Var, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, eo2 eo2Var, t91 t91Var, r31 r31Var, View view, h41 h41Var, mb0 mb0Var) {
        this.a = vf0Var;
        a(i2Var, zyVar, n03Var, tn1Var, m33Var, zbVar, r31Var, h41Var);
        a(baseRequest, j53Var, num, ec3Var, eo2Var, t91Var, view);
        g();
        a(mb0Var);
        h();
        i();
        j();
    }

    @Override // ads_mobile_sdk.x1
    public final zh1 a() {
        return (un1) this.a0.get();
    }

    public final void g() {
        vf0 vf0Var = this.a;
        ke2 ke2Var = new ke2(vf0Var.w, vf0Var.x, this.c, vf0Var.O, this.l, this.P, vf0Var.t);
        Object obj = do0.c;
        do0 do0Var = new do0(ke2Var);
        this.Q = do0Var;
        this.R = new do0(new e04(this.i, do0Var));
        vf0 vf0Var2 = this.a;
        this.S = new do0(new t93(vf0Var2.z, this.c, vf0Var2.U, vf0Var2.I, this.A, vf0Var2.t));
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(15);
        hu1Var.a("MraidAdEventListener", this.s);
        hu1Var.a("TrackingPingMonitorAsAdEventListener", this.D);
        hu1Var.a("DelegatingAdEventListener", this.E);
        hu1Var.a("RequestThrottlerV2AdMonitor", this.G);
        hu1Var.a("AdStatsTrackerListener", this.H);
        hu1Var.a("CustomTabsConnectionInitializationTask", this.a.s2);
        hu1Var.a("PlayPrewarmListener", this.J);
        hu1Var.a("AdLifecycleTrackerListener", this.K);
        hu1Var.a("PreloadAdCloseListener", this.L);
        hu1Var.a("PersistentCacheAdMonitor", this.M);
        hu1Var.a("AdQualityDataHandler", this.N);
        hu1Var.a("ConsentFormActionMonitor", this.O);
        hu1Var.a("WebViewLifecycleMonitor", this.R);
        hu1Var.a("SafeBrowsingLifecycleMonitor", this.S);
        hu1Var.a("OmidMonitorAsAdEventListener", this.Q);
        iu1 iu1Var = new iu1(hu1Var.a);
        ol0 ol0Var = this.n;
        vf0 vf0Var3 = this.a;
        ol0.a(ol0Var, new do0(new w3(vf0Var3.u, iu1Var, this.c, vf0Var3.A3)));
        vh1 vh1Var2 = this.c;
        vf0 vf0Var4 = this.a;
        this.T = new do0(new bp2(vh1Var2, vf0Var4.h, this.d, vf0Var4.u, vf0Var4.G, this.t, vf0Var4.t, vf0Var4.o1, this.w));
        LinkedHashMap linkedHashMapA = ud0.a(1);
        dw2 dw2Var = this.T;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA, "PostClickLifecycleMonitor", dw2Var, linkedHashMapA);
        vf0 vf0Var5 = this.a;
        this.U = new do0(new d1(vf0Var5.x, iu1VarA, vf0Var5.A3));
        do0 do0Var2 = new do0(k1.a);
        this.V = do0Var2;
        vf0 vf0Var6 = this.a;
        this.W = new do0(new ku0(vf0Var6.f, vf0Var6.x, vf0Var6.w, vf0Var6.u, vf0Var6.C, vf0Var6.t, vf0Var6.F, vf0Var6.V, vf0Var6.z, this.n, this.U, this.l, vf0Var6.G, this.h, this.A, this.d, this.c, this.Q, vf0Var6.U, do0Var2, vf0Var6.D2));
        vf0 vf0Var7 = this.a;
        do0 do0Var3 = new do0(new it0(vf0Var7.f, vf0Var7.x, vf0Var7.w, vf0Var7.u, vf0Var7.C, vf0Var7.t, vf0Var7.F, vf0Var7.z, this.n, this.U, this.l, vf0Var7.G, this.h, this.A, this.d, this.c, this.Q, vf0Var7.U, this.V));
        this.X = do0Var3;
        this.Y = new cu0(this.d, this.W, do0Var3);
        do0 do0Var4 = new do0(u4.a);
        this.Z = do0Var4;
        this.a0 = new do0(new xn1(this.b, this.c, this.d, this.h, this.j, this.n, this.E, this.Y, this.y, do0Var4, this.a.f0, this.S, this.z, this.F));
        this.b0 = new ez(this.D);
        this.c0 = new dz(this.E);
        LinkedHashMap linkedHashMapA2 = ud0.a(2);
        ez ezVar = this.b0;
        if (ezVar == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("trackingPingMonitorAsRewardedEventListener", ezVar);
        dz dzVar = this.c0;
        if (dzVar == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("provideDelegatingAdEventListenerAsRewardedEventListener", dzVar);
        iu1 iu1Var2 = new iu1(linkedHashMapA2);
        this.d0 = iu1Var2;
        vf0 vf0Var8 = this.a;
        this.e0 = new do0(new g73(vf0Var8.u, iu1Var2, vf0Var8.A3));
        vf0 vf0Var9 = this.a;
        do0 do0Var5 = new do0(new sq3(vf0Var9.u, iu1.b, vf0Var9.A3));
        this.f0 = do0Var5;
        vh1 vh1Var3 = mj0.a;
        this.g0 = vh1Var3;
        this.h0 = new do0(new hp3(this.a.u, this.c, this.n, this.e0, do0Var5, vh1Var3));
        vf0 vf0Var10 = this.a;
        this.i0 = new do0(new uk0(vf0Var10.f, vf0Var10.u, vf0Var10.b3, vf0Var10.t, this.F, this.c, this.h));
        do0 do0Var6 = new do0(new dk(this.n));
        this.j0 = do0Var6;
        this.k0 = new k50(do0Var6);
        this.l0 = new n50();
    }

    public final void h() {
        vf0 vf0Var = this.a;
        this.F0 = new jv3(vf0Var.l0);
        this.G0 = new lv3(vf0Var.A4);
        this.H0 = new mv3(vf0Var.z4);
        this.I0 = new cv3(vf0Var.N0);
        this.J0 = new dv3(vf0Var.L0);
        this.K0 = new ev3();
        i1 i1Var = new i1(this.V);
        Object obj = do0.c;
        do0 do0Var = new do0(i1Var);
        this.L0 = do0Var;
        this.M0 = new nv3(do0Var);
        this.N0 = new kv3(this.a.n0);
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(13);
        hu1Var.a("/appEvent", this.z0);
        hu1Var.a("/click", this.A0);
        hu1Var.a("/delayPageLoaded", this.B0);
        hu1Var.a("/httpTrack", this.C0);
        hu1Var.a("/open", this.E0);
        hu1Var.a("/result", this.F0);
        hu1Var.a("/video", this.G0);
        hu1Var.a("/videoMeta", this.H0);
        hu1Var.a("/close", this.I0);
        hu1Var.a("/customClose", this.J0);
        hu1Var.a("/delayPageClosed", this.K0);
        hu1Var.a("/backButton", this.M0);
        hu1Var.a("/setPersistentPair", this.N0);
        this.O0 = new gv3(new iu1(hu1Var.a));
        LinkedHashMap linkedHashMapA = ud0.a(3);
        gv3 gv3Var = this.O0;
        if (gv3Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("GmsgHandlerInstaller", gv3Var);
        linkedHashMapA.put("SetFollowUrls", pv3.a);
        linkedHashMapA.put("SetExpanded", rv3.a);
        ov3 ov3Var = new ov3(new iu1(linkedHashMapA));
        vf0 vf0Var2 = this.a;
        vh1 vh1Var2 = vf0Var2.f;
        dw2 dw2Var = vf0Var2.x;
        dw2 dw2Var2 = vf0Var2.w;
        ol0 ol0Var = vf0Var2.u;
        ol0 ol0Var2 = vf0Var2.C;
        dw2 dw2Var3 = vf0Var2.t;
        ol0 ol0Var3 = vf0Var2.F;
        dw2 dw2Var4 = vf0Var2.z;
        vh1 vh1Var3 = this.A;
        vh1 vh1Var4 = this.d;
        vh1 vh1Var5 = this.c;
        dw2 dw2Var5 = vf0Var2.E;
        ol0 ol0Var4 = this.n;
        dw2 dw2Var6 = this.Q;
        dw2 dw2Var7 = vf0Var2.U;
        ol0.a(this.D0, new do0(new bh2(vh1Var2, dw2Var3, dw2Var7, vf0Var2.V, ol0Var4, dw2Var5, this.x0, new ou3(vh1Var2, dw2Var, dw2Var2, ol0Var, ol0Var2, dw2Var3, ol0Var3, dw2Var4, vh1Var3, vh1Var4, vh1Var5, dw2Var5, ol0Var4, dw2Var6, dw2Var7, this.y0, this.h, vf0Var2.h0, ov3Var, this.V, vf0Var2.G), this.r, vh1Var3, vf0Var2.r2, vf0Var2.N4, vh1Var5, this.S, new hc2(vh1Var5, vh1Var4, vf0Var2.y1, vf0Var2.s1, dw2Var3), this.T, this.I, ol0Var3, vh1Var4, ol0Var)));
        this.P0 = new x50(this.D0);
        vf0 vf0Var3 = this.a;
        this.Q0 = new z50(vf0Var3.l0);
        this.R0 = new c60(vf0Var3.A4);
        this.S0 = new d60(vf0Var3.z4);
        this.T0 = new u50(vf0Var3.j0);
        this.U0 = new a60(vf0Var3.h3);
        this.V0 = new y50(vf0Var3.j3);
        this.W0 = new b60(vf0Var3.n0);
        this.X0 = new du0(this.d, this.W, this.X);
    }

    public final void i() {
        uo1 uo1Var = new uo1(this.X0);
        Object obj = do0.c;
        this.Y0 = new xt0(new do0(uo1Var));
        vf0 vf0Var = this.a;
        this.Z0 = new vt0(vf0Var.L0);
        this.a1 = new ut0(vf0Var.N0);
        this.b1 = new wt0();
        this.c1 = new yt0(this.L0);
        this.d1 = new fv0(new do0(new i63(this.e0, this.c)));
        this.e1 = new gv0(this.E);
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        gv0 gv0Var = this.e1;
        if (gv0Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("provideDelegatingAdEventListenerAsAdMetadataChangedListener", gv0Var);
        iu1 iu1Var = new iu1(linkedHashMapA);
        vf0 vf0Var2 = this.a;
        this.f1 = new ev0(new do0(new s4(this.Z, new do0(new p4(vf0Var2.u, iu1Var, vf0Var2.A3)))));
        hu1 hu1Var = new hu1(27);
        hu1Var.a("/appEvent", this.k0);
        hu1Var.a("/canOpenURLs", this.l0);
        hu1Var.a("/canOpenIntents", this.m0);
        hu1Var.a("/canOpenApp", this.n0);
        hu1Var.a("/click", this.p0);
        hu1Var.a("/contentHeight", this.q0);
        hu1Var.a("/delayPageLoaded", this.r0);
        hu1Var.a("/httpTrack", this.s0);
        hu1Var.a("/getLocationInfo", this.t0);
        hu1Var.a("/logScionEvent", this.u0);
        hu1Var.a("/mraid", this.v0);
        hu1Var.a("/mraidLoaded", this.w0);
        hu1Var.a("/open", this.P0);
        hu1Var.a("/result", this.Q0);
        hu1Var.a("/video", this.R0);
        hu1Var.a("/videoMeta", this.S0);
        hu1Var.a("/log", this.T0);
        hu1Var.a("/setPAIDPersonalizationEnabled", this.U0);
        hu1Var.a("/resetPAID", this.V0);
        hu1Var.a("/setPersistentPair", this.W0);
        hu1Var.a("/setInterstitialProperties", this.Y0);
        hu1Var.a("/customClose", this.Z0);
        hu1Var.a("/close", this.a1);
        hu1Var.a("/delayPageClosed", this.b1);
        hu1Var.a("/backButton", this.c1);
        hu1Var.a("/reward", this.d1);
        hu1Var.a("/adMetadata", this.f1);
        this.g1 = new r50(new iu1(hu1Var.a));
        vh1 vh1Var2 = this.c;
        vf0 vf0Var3 = this.a;
        this.h1 = new m60(vh1Var2, vf0Var3.R4);
        this.i1 = new h60(vh1Var2, vf0Var3.S4);
        this.j1 = new do0(new hs0(this.F, vf0Var3.v0, vh1Var2, vf0Var3.u));
        LinkedHashMap linkedHashMapA2 = ud0.a(1);
        dw2 dw2Var = this.j1;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA2, "FirebaseAnalyticsAdEventListener", dw2Var, linkedHashMapA2);
        vf0 vf0Var4 = this.a;
        this.k1 = new do0(new wd(vf0Var4.x, iu1VarA, vf0Var4.A3));
        this.l1 = new do0(new nd(this.n));
        LinkedHashMap linkedHashMapA3 = ud0.a(2);
        dw2 dw2Var2 = this.k1;
        if (dw2Var2 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA3.put("AdVisibilityChangedEventEmitter", dw2Var2);
        dw2 dw2Var3 = this.l1;
        if (dw2Var3 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA2 = wd0.a(linkedHashMapA3, "AdViewabilityMonitor", dw2Var3, linkedHashMapA3);
        vf0 vf0Var5 = this.a;
        do0 do0Var = new do0(new kd(vf0Var5.x, iu1VarA2, vf0Var5.A3));
        vf0 vf0Var6 = this.a;
        this.m1 = new g60(new do0(new pd(vf0Var6.f, vf0Var6.x, do0Var, vf0Var6.u2, this.u, vf0Var6.h, vf0Var6.t, this.A, vf0Var6.E, this.c)));
    }

    public final void j() {
        sh0 sh0Var = this.j;
        vf0 vf0Var = this.a;
        m04 m04Var = new m04(sh0Var, vf0Var.x, vf0Var.t);
        Object obj = do0.c;
        this.n1 = new do0(m04Var);
        vf0 vf0Var2 = this.a;
        this.o1 = new do0(new g24(vf0Var2.x, this.j, this.d, vf0Var2.z));
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(2);
        dw2 dw2Var = this.n1;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("WebViewPauseResumeListener", dw2Var);
        dw2 dw2Var2 = this.o1;
        if (dw2Var2 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA, "WebViewVisibilityChangedAfmaEventListener", dw2Var2, linkedHashMapA);
        vf0 vf0Var3 = this.a;
        this.p1 = new do0(new n24(vf0Var3.x, iu1VarA, vf0Var3.A3));
        LinkedHashMap linkedHashMapA2 = ud0.a(2);
        dw2 dw2Var3 = this.p1;
        if (dw2Var3 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("WebViewVisibilityChangedEventEmitter", dw2Var3);
        dw2 dw2Var4 = this.k;
        if (dw2Var4 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA2 = wd0.a(linkedHashMapA2, "MraidViewabilityEventListener", dw2Var4, linkedHashMapA2);
        vf0 vf0Var4 = this.a;
        do0 do0Var = new do0(new a24(vf0Var4.x, iu1VarA2, vf0Var4.A3));
        vf0 vf0Var5 = this.a;
        this.q1 = new k60(new do0(new d24(vf0Var5.f, vf0Var5.x, do0Var, vf0Var5.u2, this.j, vf0Var5.h, vf0Var5.t, this.A, vf0Var5.E, this.c)));
        this.r1 = new f60(this.n);
        vf0 vf0Var6 = this.a;
        this.s1 = new i60(vf0Var6.T4);
        this.t1 = new l60(new do0(new t24(vf0Var6.v0, vf0Var6.u, vf0Var6.U, vf0Var6.t, this.c, vf0Var6.I)));
        this.u1 = new j60(this.S);
        this.v1 = new zt0(this.d);
        hu1 hu1Var = new hu1(11);
        hu1Var.a("GmsgHandlerInstaller", this.g1);
        hu1Var.a("WriteLocalStorageGmsgHandlerModifier", this.h1);
        hu1Var.a("ClearLocalStorageGmsgHandlerModifier", this.i1);
        hu1Var.a("AdViewabilityMonitorInitializer", this.m1);
        hu1Var.a("WebViewViewabilityMonitorInitializer", this.q1);
        hu1Var.a("AdEventEmitter", this.r1);
        hu1Var.a("MraidRequestHandler", this.s1);
        hu1Var.a("WebviewFirebaseAnalyticsEventHandler", this.t1);
        hu1Var.a("SafeBrowsingClickListener", this.u1);
        hu1Var.a("SetFollowUrls", au0.a);
        hu1Var.a("CrossProcessAdConfigurator", this.v1);
        this.w1 = new do0(new n40(new iu1(hu1Var.a)));
    }

    public final void a(BaseRequest baseRequest, j53 j53Var, Integer num, ec3 ec3Var, eo2 eo2Var, t91 t91Var, View view) {
        this.t = new e63(this.c, this.d, this.a.u1);
        vh1 vh1VarA = vh1.a(view);
        this.u = vh1VarA;
        this.v = new sh0(vh1VarA);
        this.w = vh1.a(ec3Var);
        this.x = vh1.a(num);
        dc3 dc3Var = cc3.a;
        Object obj = do0.c;
        this.y = new do0(dc3Var);
        this.z = vh1.a(eo2Var);
        vh1 vh1VarA2 = vh1.a(j53Var);
        this.A = vh1VarA2;
        this.B = new do0(new ty(vh1VarA2));
        int i = sc3.$r8$clinit;
        List listB = ud0.b(1);
        List listB2 = ud0.b(0);
        dw2 dw2Var = this.B;
        boolean z = rc3.c;
        if (!z && dw2Var == null) {
            throw new AssertionError("Codegen error? Null provider");
        }
        listB.add(dw2Var);
        if (!z && ud0.a(listB)) {
            throw new AssertionError("Codegen error?  Duplicates in the provider list");
        }
        if (!z && ud0.a(listB2)) {
            throw new AssertionError("Codegen error?  Duplicates in the provider list");
        }
        this.C = new sc3(listB, listB2);
        vh1 vh1VarA3 = vh1.a(t91Var);
        vf0 vf0Var = this.a;
        this.D = new do0(new mt3(vf0Var.G, vf0Var.o1, vf0Var.V, this.t, this.v, this.w, this.c, this.h, this.x, vf0Var.h, this.y, vf0Var.N4, this.z, this.n, vf0Var.D2, this.C, vf0Var.t, vh1VarA3));
        vf0 vf0Var2 = this.a;
        this.E = new do0(new gm0(vf0Var2.u, vf0Var2.t, this.h, vf0Var2.G));
        vh1 vh1VarA4 = vh1.a(baseRequest);
        this.F = vh1VarA4;
        vf0 vf0Var3 = this.a;
        this.G = new e53(vf0Var3.U3, vh1VarA4, this.A);
        this.H = new do0(new tc(vf0Var3.w3, vh1VarA4));
        vf0 vf0Var4 = this.a;
        dw2 dw2VarA = jk3.a(new q61(vf0Var4.f, vf0Var4.t));
        this.I = dw2VarA;
        vf0 vf0Var5 = this.a;
        this.J = new do0(new no2(vf0Var5.f, this.c, vf0Var5.O4, vf0Var5.t, vf0Var5.G, dw2VarA, vf0Var5.F, vf0Var5.u, vf0Var5.E));
        vf0 vf0Var6 = this.a;
        this.K = new do0(new l4(vf0Var6.e0, this.A, vf0Var6.f0));
        vf0 vf0Var7 = this.a;
        this.L = new do0(new sq2(vf0Var7.x1, vf0Var7.u, this.A, vf0Var7.t, vf0Var7.G));
        vh1 vh1Var = mj0.a;
        vh1 vh1Var2 = this.w;
        vf0 vf0Var8 = this.a;
        this.M = new do0(new yj2(vh1Var2, vf0Var8.A0, vf0Var8.A1, this.F, this.A, vh1Var, vf0Var8.s, vf0Var8.F));
        vf0 vf0Var9 = this.a;
        this.N = new do0(new q6(vf0Var9.N1, this.w, this.c, this.C, this.A, vf0Var9.t, vf0Var9.E, vf0Var9.T));
        this.O = new do0(new a10(this.c, this.a.D2));
        vf0 vf0Var10 = this.a;
        this.P = new do0(new af2(vf0Var10.O, this.c, vf0Var10.t, vf0Var10.w));
    }

    public final void a(mb0 mb0Var) {
        vf0 vf0Var = this.a;
        this.m0 = new m50(vf0Var.D4);
        this.n0 = new l50(vf0Var.d3);
        ew ewVar = new ew(vf0Var.V, this.n, this.t, vf0Var.N4, this.c);
        Object obj = do0.c;
        do0 do0Var = new do0(ewVar);
        this.o0 = do0Var;
        this.p0 = new o50(do0Var);
        vf0 vf0Var2 = this.a;
        this.q0 = new q50(vf0Var2.P4);
        this.r0 = new p50(vf0Var2.B4);
        this.s0 = new s50(vf0Var2.l3);
        this.t0 = new t50(vf0Var2.C4);
        this.u0 = new e60(new do0(new lt1(vf0Var2.v0, this.c)));
        vf0 vf0Var3 = this.a;
        dw2 dw2Var = vf0Var3.M4;
        dw2 dw2Var2 = vf0Var3.x;
        gz1 gz1Var = new gz1(dw2Var, dw2Var2);
        dw2 dw2Var3 = vf0Var3.N;
        ol0 ol0Var = vf0Var3.u;
        dw2 dw2Var4 = vf0Var3.I;
        dw2 dw2Var5 = vf0Var3.E;
        this.v0 = new v50(new do0(new ey1(gz1Var, this.r, vf0Var3.Q4, new nz1(dw2Var3, dw2Var, dw2Var2, ol0Var, dw2Var4, dw2Var5, vf0Var3.G, this.h), new pz1(this.q), dw2Var5, this.S)));
        vf0 vf0Var4 = this.a;
        this.w0 = new w50(new do0(new ky1(vf0Var4.f, vf0Var4.E, vf0Var4.M4, vf0Var4.z, vf0Var4.x, vf0Var4.N)));
        vf0 vf0Var5 = this.a;
        this.x0 = new qg2(vf0Var5.f, vf0Var5.x, vf0Var5.w, vf0Var5.u, vf0Var5.C, vf0Var5.t, vf0Var5.F, vf0Var5.z, this.m, this.A, this.d, this.c, vf0Var5.E, this.n, this.Q, vf0Var5.U, this.V);
        this.y0 = vh1.a(mb0Var);
        this.z0 = new av3(this.j0);
        this.A0 = new bv3(this.o0);
        vf0 vf0Var6 = this.a;
        this.B0 = new fv3(vf0Var6.B4);
        this.C0 = new hv3(vf0Var6.l3);
        ol0 ol0Var2 = new ol0();
        this.D0 = ol0Var2;
        this.E0 = new iv3(ol0Var2);
    }

    public final void a(i2 i2Var, zy zyVar, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, r31 r31Var, h41 h41Var) {
        sy syVar = ry.a;
        Object obj = do0.c;
        this.b = new do0(syVar);
        this.c = vh1.a(i2Var);
        this.d = vh1.a(zyVar);
        this.e = new sh0(vh1.a(n03Var));
        this.f = new sh0(vh1.a(tn1Var));
        this.g = new sh0(vh1.a(m33Var));
        this.h = new do0(new uy(this.e, this.f, this.g, new sh0(vh1.a(zbVar))));
        vh1 vh1VarA = vh1.a(r31Var);
        this.i = vh1VarA;
        sh0 sh0Var = new sh0(vh1VarA);
        this.j = sh0Var;
        vf0 vf0Var = this.a;
        this.k = new do0(new uz1(vf0Var.M4, sh0Var, vf0Var.x));
        vh1 vh1VarA2 = vh1.a(h41Var);
        this.l = vh1VarA2;
        this.m = new sh0(vh1VarA2);
        ol0 ol0Var = new ol0();
        this.n = ol0Var;
        this.o = new my1(ol0Var);
        this.p = new do0(new nu0(this.i, this.a.x));
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(2);
        my1 my1Var = this.o;
        if (my1Var != null) {
            linkedHashMapA.put("AdEventListener", my1Var);
            dw2 dw2Var = this.p;
            if (dw2Var != null) {
                iu1 iu1VarA = wd0.a(linkedHashMapA, "FirstPartyFullscreenMraidEventListener", dw2Var, linkedHashMapA);
                vf0 vf0Var2 = this.a;
                do0 do0Var = new do0(new ay1(vf0Var2.u, iu1VarA, vf0Var2.A3));
                this.q = do0Var;
                vf0 vf0Var3 = this.a;
                do0 do0Var2 = new do0(new cz1(vf0Var3.M4, vf0Var3.x, vf0Var3.u, this.k, this.m, vf0Var3.E, do0Var));
                this.r = do0Var2;
                this.s = new ny1(new do0(new hx1(do0Var2)));
                return;
            }
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
    }

    @Override // ads_mobile_sdk.x1
    public final no3 f() {
        return (no3) this.h0.get();
    }

    @Override // ads_mobile_sdk.x1
    public final ze2 e() {
        return (ze2) this.P.get();
    }

    @Override // ads_mobile_sdk.ot0
    public final tk0 b() {
        return (tk0) this.i0.get();
    }

    @Override // ads_mobile_sdk.ot0
    public final m40 c() {
        return (m40) this.w1.get();
    }
}
