package ads_mobile_sdk;

import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class xi0 implements x1 {
    public dw2 A;
    public ol0 A0;
    public sc3 B;
    public iv3 B0;
    public dw2 C;
    public jv3 C0;
    public dw2 D;
    public lv3 D0;
    public vh1 E;
    public mv3 E0;
    public e53 F;
    public cv3 F0;
    public dw2 G;
    public dv3 G0;
    public dw2 H;
    public ev3 H0;
    public dw2 I;
    public nv3 I0;
    public dw2 J;
    public kv3 J0;
    public dw2 K;
    public gv3 K0;
    public dw2 L;
    public ou3 L0;
    public dw2 M;
    public hc2 M0;
    public dw2 N;
    public x50 N0;
    public vh1 O;
    public z50 O0;
    public dw2 P;
    public c60 P0;
    public dw2 Q;
    public d60 Q0;
    public dw2 R;
    public u50 R0;
    public dw2 S;
    public a60 S0;
    public dw2 T;
    public y50 T0;
    public dw2 U;
    public b60 U0;
    public dw2 V;
    public iu1 V0;
    public dw2 W;
    public r50 W0;
    public dw2 X;
    public m60 X0;
    public vh1 Y;
    public h60 Y0;
    public dw2 Z;
    public dw2 Z0;
    public final vf0 a;
    public dw2 a0;
    public dw2 a1;
    public dw2 b;
    public dw2 b0;
    public dw2 b1;
    public vh1 c;
    public vh1 c0;
    public g60 c1;
    public vh1 d;
    public dw2 d0;
    public k60 d1;
    public sh0 e;
    public dw2 e0;
    public f60 e1;
    public sh0 f;
    public dw2 f0;
    public i60 f1;
    public sh0 g;
    public k50 g0;
    public l60 g1;
    public dw2 h;
    public n50 h0;
    public j60 h1;
    public vh1 i;
    public m50 i0;
    public dw2 i1;
    public sh0 j;
    public l50 j0;
    public dw2 k;
    public dw2 k0;
    public vh1 l;
    public o50 l0;
    public sh0 m;
    public q50 m0;
    public ol0 n;
    public p50 n0;
    public my1 o;
    public s50 o0;
    public dw2 p;
    public t50 p0;
    public dw2 q;
    public e60 q0;
    public ny1 r;
    public v50 r0;
    public e63 s;
    public w50 s0;
    public vh1 t;
    public dw2 t0;
    public sh0 u;
    public qg2 u0;
    public vh1 v;
    public vh1 v0;
    public vh1 w;
    public av3 w0;
    public dw2 x;
    public bv3 x0;
    public vh1 y;
    public fv3 y0;
    public vh1 z;
    public hv3 z0;

    @Override // ads_mobile_sdk.x1
    public final ze2 e() {
        throw null;
    }

    public xi0(vf0 vf0Var, BaseRequest baseRequest, j53 j53Var, Integer num, i2 i2Var, zy zyVar, ec3 ec3Var, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, eo2 eo2Var, t91 t91Var, r31 r31Var, View view, SwipeableInterstitialRequest swipeableInterstitialRequest, h41 h41Var, mb0 mb0Var, AdSize adSize) {
        this.a = vf0Var;
        a(i2Var, zyVar, n03Var, tn1Var, m33Var, zbVar, r31Var, h41Var);
        a(baseRequest, j53Var, num, ec3Var, eo2Var, t91Var, view, swipeableInterstitialRequest);
        a(adSize);
        a(mb0Var);
        g();
        h();
    }

    @Override // ads_mobile_sdk.x1
    public final zh1 a() {
        return (zn1) this.Z.get();
    }

    public final void g() {
        vf0 vf0Var = this.a;
        this.D0 = new lv3(vf0Var.A4);
        this.E0 = new mv3(vf0Var.z4);
        this.F0 = new cv3(vf0Var.N0);
        this.G0 = new dv3(vf0Var.L0);
        this.H0 = new ev3();
        i1 i1Var = new i1(this.t0);
        Object obj = do0.c;
        this.I0 = new nv3(new do0(i1Var));
        this.J0 = new kv3(this.a.n0);
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(13);
        hu1Var.a("/appEvent", this.w0);
        hu1Var.a("/click", this.x0);
        hu1Var.a("/delayPageLoaded", this.y0);
        hu1Var.a("/httpTrack", this.z0);
        hu1Var.a("/open", this.B0);
        hu1Var.a("/result", this.C0);
        hu1Var.a("/video", this.D0);
        hu1Var.a("/videoMeta", this.E0);
        hu1Var.a("/close", this.F0);
        hu1Var.a("/customClose", this.G0);
        hu1Var.a("/delayPageClosed", this.H0);
        hu1Var.a("/backButton", this.I0);
        hu1Var.a("/setPersistentPair", this.J0);
        this.K0 = new gv3(new iu1(hu1Var.a));
        LinkedHashMap linkedHashMapA = ud0.a(3);
        gv3 gv3Var = this.K0;
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
        vh1 vh1Var3 = this.z;
        vh1 vh1Var4 = this.d;
        vh1 vh1Var5 = this.c;
        dw2 dw2Var5 = vf0Var2.E;
        ol0 ol0Var4 = this.n;
        dw2 dw2Var6 = this.V;
        dw2 dw2Var7 = vf0Var2.U;
        vh1 vh1Var6 = this.v0;
        dw2 dw2Var8 = this.h;
        dw2 dw2Var9 = vf0Var2.h0;
        dw2 dw2Var10 = this.t0;
        dw2 dw2Var11 = vf0Var2.G;
        this.L0 = new ou3(vh1Var2, dw2Var, dw2Var2, ol0Var, ol0Var2, dw2Var3, ol0Var3, dw2Var4, vh1Var3, vh1Var4, vh1Var5, dw2Var5, ol0Var4, dw2Var6, dw2Var7, vh1Var6, dw2Var8, dw2Var9, ov3Var, dw2Var10, dw2Var11);
        this.M0 = new hc2(vh1Var5, vh1Var4, vf0Var2.y1, vf0Var2.s1, dw2Var3);
        do0 do0Var = new do0(new bp2(vh1Var5, vf0Var2.h, vh1Var4, ol0Var, dw2Var11, this.s, dw2Var3, vf0Var2.o1, this.v));
        ol0 ol0Var5 = this.A0;
        vf0 vf0Var3 = this.a;
        ol0.a(ol0Var5, new do0(new bh2(vf0Var3.f, vf0Var3.t, vf0Var3.U, vf0Var3.V, this.n, vf0Var3.E, this.u0, this.L0, this.q, this.z, vf0Var3.r2, vf0Var3.N4, this.c, this.X, this.M0, do0Var, this.H, vf0Var3.F, this.d, vf0Var3.u)));
        this.N0 = new x50(this.A0);
        this.O0 = new z50(this.a.l0);
        this.P0 = new c60(this.a.A4);
        this.Q0 = new d60(this.a.z4);
        this.R0 = new u50(this.a.j0);
        this.S0 = new a60(this.a.h3);
        this.T0 = new y50(this.a.j3);
        this.U0 = new b60(this.a.n0);
        hu1 hu1Var2 = new hu1(20);
        hu1Var2.a("/appEvent", this.g0);
        hu1Var2.a("/canOpenURLs", this.h0);
        hu1Var2.a("/canOpenIntents", this.i0);
        hu1Var2.a("/canOpenApp", this.j0);
        hu1Var2.a("/click", this.l0);
        hu1Var2.a("/contentHeight", this.m0);
        hu1Var2.a("/delayPageLoaded", this.n0);
        hu1Var2.a("/httpTrack", this.o0);
        hu1Var2.a("/getLocationInfo", this.p0);
        hu1Var2.a("/logScionEvent", this.q0);
        hu1Var2.a("/mraid", this.r0);
        hu1Var2.a("/mraidLoaded", this.s0);
        hu1Var2.a("/open", this.N0);
        hu1Var2.a("/result", this.O0);
        hu1Var2.a("/video", this.P0);
        hu1Var2.a("/videoMeta", this.Q0);
        hu1Var2.a("/log", this.R0);
        hu1Var2.a("/setPAIDPersonalizationEnabled", this.S0);
        hu1Var2.a("/resetPAID", this.T0);
        hu1Var2.a("/setPersistentPair", this.U0);
        this.V0 = new iu1(hu1Var2.a);
    }

    public final void h() {
        this.W0 = new r50(this.V0);
        vh1 vh1Var = this.c;
        vf0 vf0Var = this.a;
        this.X0 = new m60(vh1Var, vf0Var.R4);
        this.Y0 = new h60(vh1Var, vf0Var.S4);
        hs0 hs0Var = new hs0(this.E, vf0Var.v0, vh1Var, vf0Var.u);
        Object obj = do0.c;
        this.Z0 = new do0(hs0Var);
        vh1 vh1Var2 = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        dw2 dw2Var = this.Z0;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA, "FirebaseAnalyticsAdEventListener", dw2Var, linkedHashMapA);
        vf0 vf0Var2 = this.a;
        this.a1 = new do0(new wd(vf0Var2.x, iu1VarA, vf0Var2.A3));
        this.b1 = new do0(new nd(this.n));
        LinkedHashMap linkedHashMapA2 = ud0.a(3);
        dw2 dw2Var2 = this.a1;
        if (dw2Var2 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("AdVisibilityChangedEventEmitter", dw2Var2);
        dw2 dw2Var3 = this.b1;
        if (dw2Var3 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("AdViewabilityMonitor", dw2Var3);
        dw2 dw2Var4 = this.T;
        if (dw2Var4 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA2 = wd0.a(linkedHashMapA2, "SwipeableInterstitialAdCore", dw2Var4, linkedHashMapA2);
        vf0 vf0Var3 = this.a;
        do0 do0Var = new do0(new kd(vf0Var3.x, iu1VarA2, vf0Var3.A3));
        vf0 vf0Var4 = this.a;
        this.c1 = new g60(new do0(new pd(vf0Var4.f, vf0Var4.x, do0Var, vf0Var4.u2, this.t, vf0Var4.h, vf0Var4.t, this.z, vf0Var4.E, this.c)));
        this.d1 = new k60(this.S);
        this.e1 = new f60(this.n);
        vf0 vf0Var5 = this.a;
        this.f1 = new i60(vf0Var5.T4);
        this.g1 = new l60(new do0(new t24(vf0Var5.v0, vf0Var5.u, vf0Var5.U, vf0Var5.t, this.c, vf0Var5.I)));
        this.h1 = new j60(this.X);
        hu1 hu1Var = new hu1(9);
        hu1Var.a("GmsgHandlerInstaller", this.W0);
        hu1Var.a("WriteLocalStorageGmsgHandlerModifier", this.X0);
        hu1Var.a("ClearLocalStorageGmsgHandlerModifier", this.Y0);
        hu1Var.a("AdViewabilityMonitorInitializer", this.c1);
        hu1Var.a("WebViewViewabilityMonitorInitializer", this.d1);
        hu1Var.a("AdEventEmitter", this.e1);
        hu1Var.a("MraidRequestHandler", this.f1);
        hu1Var.a("WebviewFirebaseAnalyticsEventHandler", this.g1);
        hu1Var.a("SafeBrowsingClickListener", this.h1);
        this.i1 = new do0(new n40(new iu1(hu1Var.a)));
    }

    public final void a(BaseRequest baseRequest, j53 j53Var, Integer num, ec3 ec3Var, eo2 eo2Var, t91 t91Var, View view, SwipeableInterstitialRequest swipeableInterstitialRequest) {
        vh1 vh1VarA = vh1.a(view);
        this.t = vh1VarA;
        this.u = new sh0(vh1VarA);
        this.v = vh1.a(ec3Var);
        this.w = vh1.a(num);
        dc3 dc3Var = cc3.a;
        Object obj = do0.c;
        this.x = new do0(dc3Var);
        this.y = vh1.a(eo2Var);
        vh1 vh1VarA2 = vh1.a(j53Var);
        this.z = vh1VarA2;
        this.A = new do0(new ty(vh1VarA2));
        int i = sc3.$r8$clinit;
        List listB = ud0.b(1);
        List listB2 = ud0.b(0);
        dw2 dw2Var = this.A;
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
        this.B = new sc3(listB, listB2);
        vh1 vh1VarA3 = vh1.a(t91Var);
        vf0 vf0Var = this.a;
        this.C = new do0(new mt3(vf0Var.G, vf0Var.o1, vf0Var.V, this.s, this.u, this.v, this.c, this.h, this.w, vf0Var.h, this.x, vf0Var.N4, this.y, this.n, vf0Var.D2, this.B, vf0Var.t, vh1VarA3));
        vf0 vf0Var2 = this.a;
        this.D = new do0(new gm0(vf0Var2.u, vf0Var2.t, this.h, vf0Var2.G));
        vh1 vh1VarA4 = vh1.a(baseRequest);
        this.E = vh1VarA4;
        vf0 vf0Var3 = this.a;
        this.F = new e53(vf0Var3.U3, vh1VarA4, this.z);
        this.G = new do0(new tc(vf0Var3.w3, vh1VarA4));
        vf0 vf0Var4 = this.a;
        dw2 dw2VarA = jk3.a(new q61(vf0Var4.f, vf0Var4.t));
        this.H = dw2VarA;
        vf0 vf0Var5 = this.a;
        this.I = new do0(new no2(vf0Var5.f, this.c, vf0Var5.O4, vf0Var5.t, vf0Var5.G, dw2VarA, vf0Var5.F, vf0Var5.u, vf0Var5.E));
        vf0 vf0Var6 = this.a;
        this.J = new do0(new l4(vf0Var6.e0, this.z, vf0Var6.f0));
        vf0 vf0Var7 = this.a;
        this.K = new do0(new sq2(vf0Var7.x1, vf0Var7.u, this.z, vf0Var7.t, vf0Var7.G));
        vh1 vh1Var = mj0.a;
        vh1 vh1Var2 = this.v;
        vf0 vf0Var8 = this.a;
        this.L = new do0(new yj2(vh1Var2, vf0Var8.A0, vf0Var8.A1, this.E, this.z, vh1Var, vf0Var8.s, vf0Var8.F));
        vf0 vf0Var9 = this.a;
        this.M = new do0(new q6(vf0Var9.N1, this.v, this.c, this.B, this.z, vf0Var9.t, vf0Var9.E, vf0Var9.T));
        this.N = new do0(new a10(this.c, this.a.D2));
        this.O = vh1.a(swipeableInterstitialRequest);
        sh0 sh0Var = this.j;
        vf0 vf0Var10 = this.a;
        this.P = new do0(new m04(sh0Var, vf0Var10.x, vf0Var10.t));
    }

    public final void a(AdSize adSize) {
        vf0 vf0Var = this.a;
        g24 g24Var = new g24(vf0Var.x, this.j, this.d, vf0Var.z);
        Object obj = do0.c;
        this.Q = new do0(g24Var);
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(2);
        dw2 dw2Var = this.P;
        if (dw2Var != null) {
            linkedHashMapA.put("WebViewPauseResumeListener", dw2Var);
            dw2 dw2Var2 = this.Q;
            if (dw2Var2 != null) {
                iu1 iu1VarA = wd0.a(linkedHashMapA, "WebViewVisibilityChangedAfmaEventListener", dw2Var2, linkedHashMapA);
                vf0 vf0Var2 = this.a;
                this.R = new do0(new n24(vf0Var2.x, iu1VarA, vf0Var2.A3));
                LinkedHashMap linkedHashMapA2 = ud0.a(2);
                dw2 dw2Var3 = this.R;
                if (dw2Var3 != null) {
                    linkedHashMapA2.put("WebViewVisibilityChangedEventEmitter", dw2Var3);
                    dw2 dw2Var4 = this.k;
                    if (dw2Var4 != null) {
                        iu1 iu1VarA2 = wd0.a(linkedHashMapA2, "MraidViewabilityEventListener", dw2Var4, linkedHashMapA2);
                        vf0 vf0Var3 = this.a;
                        do0 do0Var = new do0(new a24(vf0Var3.x, iu1VarA2, vf0Var3.A3));
                        vf0 vf0Var4 = this.a;
                        do0 do0Var2 = new do0(new d24(vf0Var4.f, vf0Var4.x, do0Var, vf0Var4.u2, this.j, vf0Var4.h, vf0Var4.t, this.z, vf0Var4.E, this.c));
                        this.S = do0Var2;
                        vf0 vf0Var5 = this.a;
                        this.T = new do0(new sv0(vf0Var5.x, vf0Var5.u, vf0Var5.z, this.l, vf0Var5.V, this.c, this.O, vf0Var5.E, vf0Var5.G, this.s, vf0Var5.h, vf0Var5.t, do0Var2));
                        vf0 vf0Var6 = this.a;
                        do0 do0Var3 = new do0(new af2(vf0Var6.O, this.c, vf0Var6.t, vf0Var6.w));
                        this.U = do0Var3;
                        vf0 vf0Var7 = this.a;
                        do0 do0Var4 = new do0(new ke2(vf0Var7.w, vf0Var7.x, this.c, vf0Var7.O, this.l, do0Var3, vf0Var7.t));
                        this.V = do0Var4;
                        this.W = new do0(new e04(this.i, do0Var4));
                        vf0 vf0Var8 = this.a;
                        this.X = new do0(new t93(vf0Var8.z, this.c, vf0Var8.U, vf0Var8.I, this.z, vf0Var8.t));
                        hu1 hu1Var = new hu1(16);
                        hu1Var.a("MraidAdEventListener", this.r);
                        hu1Var.a("TrackingPingMonitorAsAdEventListener", this.C);
                        hu1Var.a("DelegatingAdEventListener", this.D);
                        hu1Var.a("RequestThrottlerV2AdMonitor", this.F);
                        hu1Var.a("AdStatsTrackerListener", this.G);
                        hu1Var.a("CustomTabsConnectionInitializationTask", this.a.s2);
                        hu1Var.a("PlayPrewarmListener", this.I);
                        hu1Var.a("AdLifecycleTrackerListener", this.J);
                        hu1Var.a("PreloadAdCloseListener", this.K);
                        hu1Var.a("PersistentCacheAdMonitor", this.L);
                        hu1Var.a("AdQualityDataHandler", this.M);
                        hu1Var.a("ConsentFormActionMonitor", this.N);
                        hu1Var.a("SwipeableInterstitialAdCoreAsInternalAdEventListener", this.T);
                        hu1Var.a("WebViewLifecycleMonitor", this.W);
                        hu1Var.a("SafeBrowsingLifecycleMonitor", this.X);
                        hu1Var.a("OmidMonitorAsAdEventListener", this.V);
                        iu1 iu1Var = new iu1(hu1Var.a);
                        ol0 ol0Var = this.n;
                        vf0 vf0Var9 = this.a;
                        ol0.a(ol0Var, new do0(new w3(vf0Var9.u, iu1Var, this.c, vf0Var9.A3)));
                        vh1 vh1VarA = vh1.a(adSize);
                        this.Y = vh1VarA;
                        this.Z = new do0(new do1(this.b, this.c, this.d, this.h, this.j, this.n, this.D, this.a.f0, this.X, this.y, this.t, vh1VarA, this.T, this.E));
                        vf0 vf0Var10 = this.a;
                        ol0 ol0Var2 = vf0Var10.u;
                        vh1 vh1Var2 = iu1.b;
                        this.a0 = new do0(new g73(ol0Var2, vh1Var2, vf0Var10.A3));
                        vf0 vf0Var11 = this.a;
                        do0 do0Var5 = new do0(new sq3(vf0Var11.u, vh1Var2, vf0Var11.A3));
                        this.b0 = do0Var5;
                        vh1 vh1Var3 = mj0.a;
                        this.c0 = vh1Var3;
                        this.d0 = new do0(new hp3(this.a.u, this.c, this.n, this.a0, do0Var5, vh1Var3));
                        vf0 vf0Var12 = this.a;
                        this.e0 = new do0(new uk0(vf0Var12.f, vf0Var12.u, vf0Var12.b3, vf0Var12.t, this.E, this.c, this.h));
                        do0 do0Var6 = new do0(new dk(this.n));
                        this.f0 = do0Var6;
                        this.g0 = new k50(do0Var6);
                        this.h0 = new n50();
                        this.i0 = new m50(this.a.D4);
                        this.j0 = new l50(this.a.d3);
                        return;
                    }
                    throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
                }
                throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
            }
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
    }

    public final void a(mb0 mb0Var) {
        vf0 vf0Var = this.a;
        ew ewVar = new ew(vf0Var.V, this.n, this.s, vf0Var.N4, this.c);
        Object obj = do0.c;
        do0 do0Var = new do0(ewVar);
        this.k0 = do0Var;
        this.l0 = new o50(do0Var);
        vf0 vf0Var2 = this.a;
        this.m0 = new q50(vf0Var2.P4);
        this.n0 = new p50(vf0Var2.B4);
        this.o0 = new s50(vf0Var2.l3);
        this.p0 = new t50(vf0Var2.C4);
        this.q0 = new e60(new do0(new lt1(vf0Var2.v0, this.c)));
        vf0 vf0Var3 = this.a;
        dw2 dw2Var = vf0Var3.M4;
        dw2 dw2Var2 = vf0Var3.x;
        gz1 gz1Var = new gz1(dw2Var, dw2Var2);
        dw2 dw2Var3 = vf0Var3.N;
        ol0 ol0Var = vf0Var3.u;
        dw2 dw2Var4 = vf0Var3.I;
        dw2 dw2Var5 = vf0Var3.E;
        this.r0 = new v50(new do0(new ey1(gz1Var, this.q, vf0Var3.Q4, new nz1(dw2Var3, dw2Var, dw2Var2, ol0Var, dw2Var4, dw2Var5, vf0Var3.G, this.h), new pz1(this.p), dw2Var5, this.X)));
        vf0 vf0Var4 = this.a;
        this.s0 = new w50(new do0(new ky1(vf0Var4.f, vf0Var4.E, vf0Var4.M4, vf0Var4.z, vf0Var4.x, vf0Var4.N)));
        do0 do0Var2 = new do0(k1.a);
        this.t0 = do0Var2;
        vf0 vf0Var5 = this.a;
        this.u0 = new qg2(vf0Var5.f, vf0Var5.x, vf0Var5.w, vf0Var5.u, vf0Var5.C, vf0Var5.t, vf0Var5.F, vf0Var5.z, this.m, this.z, this.d, this.c, vf0Var5.E, this.n, this.V, vf0Var5.U, do0Var2);
        this.v0 = vh1.a(mb0Var);
        this.w0 = new av3(this.f0);
        this.x0 = new bv3(this.k0);
        vf0 vf0Var6 = this.a;
        this.y0 = new fv3(vf0Var6.B4);
        this.z0 = new hv3(vf0Var6.l3);
        ol0 ol0Var2 = new ol0();
        this.A0 = ol0Var2;
        this.B0 = new iv3(ol0Var2);
        this.C0 = new jv3(vf0Var6.l0);
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
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        my1 my1Var = this.o;
        if (my1Var != null) {
            linkedHashMapA.put("AdEventListener", my1Var);
            iu1 iu1Var = new iu1(linkedHashMapA);
            vf0 vf0Var2 = this.a;
            do0 do0Var = new do0(new ay1(vf0Var2.u, iu1Var, vf0Var2.A3));
            this.p = do0Var;
            vf0 vf0Var3 = this.a;
            do0 do0Var2 = new do0(new cz1(vf0Var3.M4, vf0Var3.x, vf0Var3.u, this.k, this.m, vf0Var3.E, do0Var));
            this.q = do0Var2;
            this.r = new ny1(new do0(new hx1(do0Var2)));
            this.s = new e63(this.c, this.d, this.a.u1);
            return;
        }
        throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
    }

    @Override // ads_mobile_sdk.x1
    public final no3 f() {
        return (no3) this.d0.get();
    }
}
