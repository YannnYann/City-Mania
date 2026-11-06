package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class fe0 implements sf3 {
    public gi3 A;
    public hi3 B;
    public ii3 C;
    public ji3 D;
    public li3 E;
    public pi3 F;
    public si3 G;
    public qw1 H;
    public vi3 I;
    public mi3 J;
    public wi3 K;
    public xi3 L;
    public zi3 M;
    public aj3 N;
    public ij3 O;
    public vh3 P;
    public hj3 Q;
    public yh3 R;
    public cj3 S;
    public dj3 T;
    public fj3 U;
    public di3 V;
    public sh0 W;
    public dw2 X;
    public ej3 Y;
    public gj3 Z;
    public final vf0 a;
    public qi3 a0;
    public dw2 b;
    public ti3 b0;
    public vh1 c;
    public ei3 c0;
    public dg3 d;
    public ni3 d0;
    public dw2 e;
    public ki3 e0;
    public dw2 f;
    public yi3 f0;
    public dw2 g;
    public bj3 g0;
    public jg3 h;
    public sc3 h0;
    public ig3 i;
    public hn1 i0;
    public kg3 j;
    public kn1 j0;
    public xh3 k;
    public nn1 k0;
    public oi3 l;
    public sn1 l0;
    public ri3 m;
    public fn1 m0;
    public ui3 n;
    public ek3 n0;
    public vh1 o;
    public dw2 o0;
    public sh0 p;
    public vh1 q;
    public vh1 r;
    public zh3 s;
    public bi3 t;
    public ai3 u;
    public pn1 v;
    public wh3 w;
    public ci3 x;
    public fi3 y;
    public uh3 z;

    public final void b() {
        vh1 vh1Var = mj0.a;
        vf0 vf0Var = this.a;
        z8 z8Var = new z8(vf0Var.h, this.o, this.p, vf0Var.J0, vf0Var.f, this.d, this.q, vf0Var.t, vf0Var.B3, this.r, vh1Var);
        Object obj = do0.c;
        do0 do0Var = new do0(z8Var);
        vf0 vf0Var2 = this.a;
        dw2 dw2Var = vf0Var2.t;
        this.s = new zh3(do0Var, dw2Var);
        this.t = new bi3(new vb(vf0Var2.V), dw2Var);
        sh0 sh0Var = this.p;
        dg3 dg3Var = this.d;
        this.u = new ai3(new nb(sh0Var, vh1Var, dg3Var, vf0Var2.f, dw2Var, vf0Var2.u2), dw2Var);
        this.v = new pn1(dg3Var);
        this.w = new wh3(this.o);
        int i = sc3.$r8$clinit;
        List listB = ud0.b(1);
        List listB2 = ud0.b(1);
        pn1 pn1Var = this.v;
        boolean z = rc3.c;
        if (!z && pn1Var == null) {
            throw new AssertionError("Codegen error? Null provider");
        }
        listB.add(pn1Var);
        wh3 wh3Var = this.w;
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
        vf0 vf0Var3 = this.a;
        dw2 dw2Var2 = vf0Var3.t;
        this.x = new ci3(ecVar, dw2Var2);
        this.y = new fi3(vf0Var3.C3, dw2Var2);
        this.z = new uh3(vf0Var3.j2, dw2Var2);
        this.A = new gi3(vf0Var3.D3, dw2Var2);
        this.B = new hi3(vf0Var3.V2, dw2Var2);
        this.C = new ii3(vf0Var3.X2, dw2Var2);
        this.D = new ji3(new zv(this.d, vf0Var3.H0, this.o, vf0Var3.S1), dw2Var2);
        this.E = new li3(vf0Var3.E3, dw2Var2);
        dw2 dw2VarA = jk3.a(new ar0(dw2Var2));
        vf0 vf0Var4 = this.a;
        dw2 dw2Var3 = vf0Var4.t;
        this.F = new pi3(dw2VarA, dw2Var3);
        this.G = new si3(vf0Var4.F3, dw2Var3);
        this.H = new qw1(vf0Var4.e0);
    }

    public final void c() {
        vf0 vf0Var = this.a;
        dw2 dw2Var = vf0Var.t;
        this.I = new vi3(dw2Var, this.H);
        this.J = new mi3(new gn0(vf0Var.f, vf0Var.H), dw2Var);
        this.K = new wi3(vf0Var.G3, dw2Var);
        this.L = new xi3(vf0Var.l2, dw2Var);
        this.M = new zi3(vf0Var.H3, dw2Var);
        this.N = new aj3(vf0Var.I3, dw2Var);
        this.O = new ij3(vf0Var.p2, dw2Var);
        dw2 dw2VarA = jk3.a(new xn3(vf0Var.y1));
        vf0 vf0Var2 = this.a;
        dw2 dw2Var2 = vf0Var2.t;
        this.P = new vh3(dw2VarA, dw2Var2);
        this.Q = new hj3(vf0Var2.J3, dw2Var2);
        this.R = new yh3(vf0Var2.h2, dw2Var2);
        e13 e13Var = new e13(vf0Var2.w3, this.o, vf0Var2.e0, this.e);
        Object obj = do0.c;
        this.S = new cj3(new do0(e13Var), this.a.t);
        do0 do0Var = new do0(new q43(this.b));
        vf0 vf0Var3 = this.a;
        dw2 dw2Var3 = vf0Var3.t;
        this.T = new dj3(do0Var, dw2Var3);
        this.U = new fj3(vf0Var3.n2, dw2Var3);
        this.V = new di3(vf0Var3.K3, dw2Var3);
        this.W = new sh0(this.c);
        do0 do0Var2 = new do0(n13.a);
        this.X = do0Var2;
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
        this.Y = new ej3(new k93(dw2Var4, this.p, this.W, new c93(dw2Var4, vh1Var, dw2Var5, dw2Var6, dw2Var7, dw2Var8, ol0Var, dw2Var9, ol0Var2, vh1Var2, do0Var2), this.d, vh1Var2), dw2Var4);
        this.Z = new gj3(vf0Var4.L3, dw2Var4);
        this.a0 = new qi3(vf0Var4.M3, dw2Var4);
    }

    public final void d() {
        vf0 vf0Var = this.a;
        yg1 yg1Var = new yg1(vf0Var.P0);
        dw2 dw2Var = vf0Var.t;
        this.b0 = new ti3(yg1Var, dw2Var);
        this.c0 = new ei3(vf0Var.N3, dw2Var);
        this.d0 = new ni3(new yn0(vf0Var.f), dw2Var);
        this.e0 = new ki3(vf0Var.O3, dw2Var);
        zi2 zi2Var = new zi2(this.X);
        Object obj = do0.c;
        do0 do0Var = new do0(zi2Var);
        vf0 vf0Var2 = this.a;
        dw2 dw2Var2 = vf0Var2.t;
        this.f0 = new yi3(do0Var, dw2Var2);
        this.g0 = new bj3(new hn2(vf0Var2.f, vf0Var2.u2, dw2Var2, vf0Var2.w1), dw2Var2);
        int i = sc3.$r8$clinit;
        rc3 rc3Var = new rc3(43, 0);
        rc3Var.a(this.h);
        rc3Var.a(this.i);
        rc3Var.a(this.j);
        rc3Var.a(this.k);
        rc3Var.a(this.l);
        rc3Var.a(this.m);
        rc3Var.a(this.n);
        rc3Var.a(this.s);
        rc3Var.a(this.t);
        rc3Var.a(this.u);
        rc3Var.a(this.x);
        rc3Var.a(this.y);
        rc3Var.a(this.z);
        rc3Var.a(this.A);
        rc3Var.a(this.B);
        rc3Var.a(this.C);
        rc3Var.a(this.D);
        rc3Var.a(this.E);
        rc3Var.a(this.F);
        rc3Var.a(this.G);
        rc3Var.a(this.I);
        rc3Var.a(this.J);
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
        rc3Var.a(this.Y);
        rc3Var.a(this.Z);
        rc3Var.a(this.a0);
        rc3Var.a(this.b0);
        rc3Var.a(this.c0);
        rc3Var.a(this.d0);
        rc3Var.a(this.e0);
        rc3Var.a(this.f0);
        rc3Var.a(this.g0);
        this.h0 = rc3Var.a();
        vf0 vf0Var3 = this.a;
        this.i0 = new hn1(new do0(new rl3(vf0Var3.w3, vf0Var3.D2, this.b, new on1(vf0Var3.h))));
        vf0 vf0Var4 = this.a;
        this.j0 = new kn1(vf0Var4.s2);
        this.k0 = new nn1(vf0Var4.x3);
        this.l0 = new sn1(vf0Var4.y3);
        this.m0 = new fn1(vf0Var4.z3);
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(6);
        om omVar = this.a.v3;
        if (omVar == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("configLoaderRefreshSignalRequestedListener", omVar);
        hn1 hn1Var = this.i0;
        if (hn1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("adUnitStatsTrackerSignalsRequestedListener", hn1Var);
        kn1 kn1Var = this.j0;
        if (kn1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("customTabsConnectionInitializationTask", kn1Var);
        nn1 nn1Var = this.k0;
        if (nn1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("nativeSingletonPreloaderAsInternalAdRequestEventListener", nn1Var);
        sn1 sn1Var = this.l0;
        if (sn1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("webViewProfileOptimizerAdRequestListener", sn1Var);
        fn1 fn1Var = this.m0;
        if (fn1Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("webViewPrefetchAdRequestListener", fn1Var);
        iu1 iu1Var = new iu1(linkedHashMapA);
        vf0 vf0Var5 = this.a;
        do0 do0Var2 = new do0(new fj1(vf0Var5.u, iu1Var, vf0Var5.A3));
        sc3 sc3Var = this.h0;
        vf0 vf0Var6 = this.a;
        dw2 dw2Var3 = vf0Var6.x;
        ol0 ol0Var = vf0Var6.u;
        dw2 dw2Var4 = vf0Var6.t;
        this.n0 = new ek3(sc3Var, dw2Var3, ol0Var, dw2Var4, this.o, do0Var2);
        do0 do0Var3 = new do0(new k43(dw2Var4, vf0Var6.Q, vf0Var6.F, vf0Var6.S3, mj0.a, vf0Var6.u3, vf0Var6.d0, vf0Var6.K, vf0Var6.f));
        vf0 vf0Var7 = this.a;
        this.o0 = new do0(new fh3(vf0Var7.c4, vf0Var7.C, this.b, this.f, this.c, vf0Var7.G, this.g, vf0Var7.i4, this.n0, vf0Var7.d0, vf0Var7.w0, vf0Var7.t, do0Var3, vf0Var7.F));
    }

    public fe0(vf0 vf0Var, SignalRequest signalRequest, BaseRequest baseRequest, Boolean bool, Boolean bool2, BannerRequest bannerRequest) {
        this.a = vf0Var;
        a(signalRequest, baseRequest, bool, bool2, bannerRequest);
        b();
        c();
        d();
    }

    public final void a(SignalRequest signalRequest, BaseRequest baseRequest, Boolean bool, Boolean bool2, BannerRequest bannerRequest) {
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
        this.p = new sh0(vh1.a(bannerRequest));
        this.q = vh1.a(bool);
        this.r = vh1.a(bool2);
    }

    @Override // ads_mobile_sdk.sf3
    public final eh3 a() {
        return (eh3) this.o0.get();
    }
}
