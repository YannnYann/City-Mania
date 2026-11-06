package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class bj0 implements sf3 {
    public fi3 A;
    public uh3 B;
    public gi3 C;
    public hi3 D;
    public ii3 E;
    public ji3 F;
    public li3 G;
    public pi3 H;
    public si3 I;
    public qw1 J;
    public vi3 K;
    public mi3 L;
    public wi3 M;
    public xi3 N;
    public zi3 O;
    public aj3 P;
    public ij3 Q;
    public vh3 R;
    public hj3 S;
    public yh3 T;
    public cj3 U;
    public dj3 V;
    public fj3 W;
    public di3 X;
    public sh0 Y;
    public dw2 Z;
    public final vf0 a;
    public ej3 a0;
    public dw2 b;
    public gj3 b0;
    public vh1 c;
    public qi3 c0;
    public dg3 d;
    public ti3 d0;
    public dw2 e;
    public ei3 e0;
    public dw2 f;
    public ni3 f0;
    public dw2 g;
    public ki3 g0;
    public jg3 h;
    public yi3 h0;
    public ig3 i;
    public bj3 i0;
    public kg3 j;
    public rn3 j0;
    public xh3 k;
    public sc3 k0;
    public oi3 l;
    public hn1 l0;
    public ri3 m;
    public kn1 m0;
    public ui3 n;
    public nn1 n0;
    public vh1 o;
    public sn1 o0;
    public vh1 p;
    public fn1 p0;
    public vh1 q;
    public ek3 q0;
    public vh1 r;
    public dw2 r0;
    public vh1 s;
    public dw2 s0;
    public zh3 t;
    public bi3 u;
    public sh0 v;
    public ai3 w;
    public pn1 x;
    public wh3 y;
    public ci3 z;

    public final void a(SignalRequest signalRequest, BaseRequest baseRequest, Boolean bool, Boolean bool2) {
        mn1 mn1Var = new mn1(this.a.w0);
        Object obj = do0.c;
        this.b = new do0(mn1Var);
        vh1 vh1VarA = vh1.a(signalRequest);
        this.c = vh1VarA;
        dg3 dg3Var = new dg3(vh1VarA);
        this.d = dg3Var;
        do0 do0Var = new do0(new in1(this.a.D2, dg3Var));
        this.e = do0Var;
        this.f = new do0(new qn1(do0Var));
        vh1 vh1Var = mj0.a;
        this.g = new do0(new rn1(vh1Var, vh1Var));
        vf0 vf0Var = this.a;
        dw2 dw2Var = vf0Var.t;
        dw2 dw2Var2 = vf0Var.V1;
        vh1 vh1Var2 = this.c;
        this.h = new jg3(new gg3(dw2Var, dw2Var2, vh1Var2), dw2Var);
        this.i = new ig3(new ha3(vh1Var2), dw2Var);
        this.j = new kg3(vf0Var.S2, dw2Var, vh1Var2);
        this.k = new xh3(vf0Var.P2, dw2Var);
        this.l = new oi3(new iq0(vf0Var.Q), dw2Var);
        vh1 vh1Var3 = vf0Var.f;
        dw2 dw2Var3 = vf0Var.w1;
        this.m = new ri3(new c61(vh1Var3, dw2Var, dw2Var3), dw2Var);
        this.n = new ui3(new tp1(vh1Var3, dw2Var, dw2Var3), dw2Var);
        this.o = vh1.a(baseRequest);
        this.p = vh1Var;
        this.q = vh1.a(bool);
        this.r = vh1.a(bool2);
        this.s = vh1Var;
    }

    public final void b() {
        vf0 vf0Var = this.a;
        dw2 dw2Var = vf0Var.t;
        this.K = new vi3(dw2Var, this.J);
        this.L = new mi3(new gn0(vf0Var.f, vf0Var.H), dw2Var);
        this.M = new wi3(vf0Var.G3, dw2Var);
        this.N = new xi3(vf0Var.l2, dw2Var);
        this.O = new zi3(vf0Var.H3, dw2Var);
        this.P = new aj3(vf0Var.I3, dw2Var);
        this.Q = new ij3(vf0Var.p2, dw2Var);
        dw2 dw2VarA = jk3.a(new xn3(vf0Var.y1));
        vf0 vf0Var2 = this.a;
        dw2 dw2Var2 = vf0Var2.t;
        this.R = new vh3(dw2VarA, dw2Var2);
        this.S = new hj3(vf0Var2.J3, dw2Var2);
        this.T = new yh3(vf0Var2.h2, dw2Var2);
        e13 e13Var = new e13(vf0Var2.w3, this.o, vf0Var2.e0, this.e);
        Object obj = do0.c;
        this.U = new cj3(new do0(e13Var), this.a.t);
        do0 do0Var = new do0(new q43(this.b));
        vf0 vf0Var3 = this.a;
        dw2 dw2Var3 = vf0Var3.t;
        this.V = new dj3(do0Var, dw2Var3);
        this.W = new fj3(vf0Var3.n2, dw2Var3);
        this.X = new di3(vf0Var3.K3, dw2Var3);
        this.Y = new sh0(this.c);
        do0 do0Var2 = new do0(n13.a);
        this.Z = do0Var2;
        vf0 vf0Var4 = this.a;
        dw2 dw2Var4 = vf0Var4.t;
        vh1 vh1Var = vf0Var4.f;
        dw2 dw2Var5 = vf0Var4.h;
        dw2 dw2Var6 = vf0Var4.H0;
        dw2 dw2Var7 = vf0Var4.E;
        dw2 dw2Var8 = vf0Var4.E1;
        ol0 ol0Var = vf0Var4.u;
        dw2 dw2Var9 = vf0Var4.G;
        ol0 ol0Var2 = vf0Var4.f1;
        vh1 vh1Var2 = this.o;
        this.a0 = new ej3(new k93(dw2Var4, this.p, this.Y, new c93(dw2Var4, vh1Var, dw2Var5, dw2Var6, dw2Var7, dw2Var8, ol0Var, dw2Var9, ol0Var2, vh1Var2, do0Var2), this.d, vh1Var2), dw2Var4);
        this.b0 = new gj3(vf0Var4.L3, dw2Var4);
        this.c0 = new qi3(vf0Var4.M3, dw2Var4);
    }

    public final void c() {
        vf0 vf0Var = this.a;
        yg1 yg1Var = new yg1(vf0Var.P0);
        dw2 dw2Var = vf0Var.t;
        this.d0 = new ti3(yg1Var, dw2Var);
        this.e0 = new ei3(vf0Var.N3, dw2Var);
        this.f0 = new ni3(new yn0(vf0Var.f), dw2Var);
        this.g0 = new ki3(vf0Var.O3, dw2Var);
        zi2 zi2Var = new zi2(this.Z);
        Object obj = do0.c;
        do0 do0Var = new do0(zi2Var);
        vf0 vf0Var2 = this.a;
        dw2 dw2Var2 = vf0Var2.t;
        this.h0 = new yi3(do0Var, dw2Var2);
        this.i0 = new bj3(new hn2(vf0Var2.f, vf0Var2.u2, dw2Var2, vf0Var2.w1), dw2Var2);
        this.j0 = new rn3(new sn3(this.v), dw2Var2);
        int i = sc3.$r8$clinit;
        rc3 rc3Var = new rc3(44, 0);
        rc3Var.a(this.h);
        rc3Var.a(this.i);
        rc3Var.a(this.j);
        rc3Var.a(this.k);
        rc3Var.a(this.l);
        rc3Var.a(this.m);
        rc3Var.a(this.n);
        rc3Var.a(this.t);
        rc3Var.a(this.u);
        rc3Var.a(this.w);
        rc3Var.a(this.z);
        rc3Var.a(this.A);
        rc3Var.a(this.B);
        rc3Var.a(this.C);
        rc3Var.a(this.D);
        rc3Var.a(this.E);
        rc3Var.a(this.F);
        rc3Var.a(this.G);
        rc3Var.a(this.H);
        rc3Var.a(this.I);
        rc3Var.a(this.K);
        rc3Var.a(this.L);
        rc3Var.a(this.M);
        rc3Var.a(this.N);
        rc3Var.a(this.O);
        rc3Var.a(this.P);
        rc3Var.a(this.Q);
        rc3Var.a(this.R);
        rc3Var.a(this.S);
        rc3Var.a(this.T);
        rc3Var.a(this.U);
        rc3Var.a(this.V);
        rc3Var.a(this.W);
        rc3Var.a(this.X);
        rc3Var.a(this.a0);
        rc3Var.a(this.b0);
        rc3Var.a(this.c0);
        rc3Var.a(this.d0);
        rc3Var.a(this.e0);
        rc3Var.a(this.f0);
        rc3Var.a(this.g0);
        rc3Var.a(this.h0);
        rc3Var.a(this.i0);
        rc3Var.a(this.j0);
        this.k0 = rc3Var.a();
        vf0 vf0Var3 = this.a;
        this.l0 = new hn1(new do0(new rl3(vf0Var3.w3, vf0Var3.D2, this.b, new on1(vf0Var3.h))));
        vf0 vf0Var4 = this.a;
        this.m0 = new kn1(vf0Var4.s2);
        this.n0 = new nn1(vf0Var4.x3);
        this.o0 = new sn1(vf0Var4.y3);
        this.p0 = new fn1(vf0Var4.z3);
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(6);
        om omVar = this.a.v3;
        if (omVar == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("configLoaderRefreshSignalRequestedListener", omVar);
        hn1 hn1Var = this.l0;
        if (hn1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("adUnitStatsTrackerSignalsRequestedListener", hn1Var);
        kn1 kn1Var = this.m0;
        if (kn1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("customTabsConnectionInitializationTask", kn1Var);
        nn1 nn1Var = this.n0;
        if (nn1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("nativeSingletonPreloaderAsInternalAdRequestEventListener", nn1Var);
        sn1 sn1Var = this.o0;
        if (sn1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("webViewProfileOptimizerAdRequestListener", sn1Var);
        fn1 fn1Var = this.p0;
        if (fn1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("webViewPrefetchAdRequestListener", fn1Var);
        iu1 iu1Var = new iu1(linkedHashMapA);
        vf0 vf0Var5 = this.a;
        do0 do0Var2 = new do0(new fj1(vf0Var5.u, iu1Var, vf0Var5.A3));
        sc3 sc3Var = this.k0;
        vf0 vf0Var6 = this.a;
        dw2 dw2Var3 = vf0Var6.x;
        ol0 ol0Var = vf0Var6.u;
        dw2 dw2Var4 = vf0Var6.t;
        this.q0 = new ek3(sc3Var, dw2Var3, ol0Var, dw2Var4, this.o, do0Var2);
        this.r0 = new do0(new k43(dw2Var4, vf0Var6.Q, vf0Var6.F, vf0Var6.S3, mj0.a, vf0Var6.u3, vf0Var6.d0, vf0Var6.K, vf0Var6.f));
    }

    public final void d() {
        vf0 vf0Var = this.a;
        fh3 fh3Var = new fh3(vf0Var.c4, vf0Var.C, this.b, this.f, this.c, vf0Var.G, this.g, vf0Var.i4, this.q0, vf0Var.d0, vf0Var.w0, vf0Var.t, this.r0, vf0Var.F);
        Object obj = do0.c;
        this.s0 = new do0(fh3Var);
    }

    public final void a(SwipeableInterstitialRequest swipeableInterstitialRequest) {
        vf0 vf0Var = this.a;
        z8 z8Var = new z8(vf0Var.h, this.o, this.p, vf0Var.J0, vf0Var.f, this.d, this.q, vf0Var.t, vf0Var.B3, this.r, this.s);
        Object obj = do0.c;
        do0 do0Var = new do0(z8Var);
        vf0 vf0Var2 = this.a;
        dw2 dw2Var = vf0Var2.t;
        this.t = new zh3(do0Var, dw2Var);
        this.u = new bi3(new vb(vf0Var2.V), dw2Var);
        sh0 sh0Var = new sh0(vh1.a(swipeableInterstitialRequest));
        this.v = sh0Var;
        vh1 vh1Var = this.p;
        dg3 dg3Var = this.d;
        vf0 vf0Var3 = this.a;
        vh1 vh1Var2 = vf0Var3.f;
        dw2 dw2Var2 = vf0Var3.t;
        this.w = new ai3(new nb(vh1Var, sh0Var, dg3Var, vh1Var2, dw2Var2, vf0Var3.u2), dw2Var2);
        this.x = new pn1(dg3Var);
        this.y = new wh3(this.o);
        int i = sc3.$r8$clinit;
        List listB = ud0.b(1);
        List listB2 = ud0.b(1);
        pn1 pn1Var = this.x;
        boolean z = rc3.c;
        if (!z && pn1Var == null) {
            throw new AssertionError("Codegen error? Null provider");
        }
        listB.add(pn1Var);
        wh3 wh3Var = this.y;
        if (!z && wh3Var == null) {
            throw new AssertionError("Codegen error? Null provider");
        }
        listB2.add(wh3Var);
        if (!z && ud0.a(listB)) {
            throw new AssertionError("Codegen error?  Duplicates in the provider list");
        }
        if (!z && ud0.a(listB2)) {
            throw new AssertionError("Codegen error?  Duplicates in the provider list");
        }
        ec ecVar = new ec(new sc3(listB, listB2));
        vf0 vf0Var4 = this.a;
        dw2 dw2Var3 = vf0Var4.t;
        this.z = new ci3(ecVar, dw2Var3);
        this.A = new fi3(vf0Var4.C3, dw2Var3);
        this.B = new uh3(vf0Var4.j2, dw2Var3);
        this.C = new gi3(vf0Var4.D3, dw2Var3);
        this.D = new hi3(vf0Var4.V2, dw2Var3);
        this.E = new ii3(vf0Var4.X2, dw2Var3);
        this.F = new ji3(new zv(this.d, vf0Var4.H0, this.o, vf0Var4.S1), dw2Var3);
        this.G = new li3(vf0Var4.E3, dw2Var3);
        dw2 dw2VarA = jk3.a(new ar0(dw2Var3));
        vf0 vf0Var5 = this.a;
        dw2 dw2Var4 = vf0Var5.t;
        this.H = new pi3(dw2VarA, dw2Var4);
        this.I = new si3(vf0Var5.F3, dw2Var4);
        this.J = new qw1(vf0Var5.e0);
    }

    public bj0(vf0 vf0Var, SignalRequest signalRequest, BaseRequest baseRequest, Boolean bool, Boolean bool2, SwipeableInterstitialRequest swipeableInterstitialRequest) {
        this.a = vf0Var;
        a(signalRequest, baseRequest, bool, bool2);
        a(swipeableInterstitialRequest);
        b();
        c();
        d();
    }

    @Override // ads_mobile_sdk.sf3
    public final eh3 a() {
        return (eh3) this.s0.get();
    }
}
