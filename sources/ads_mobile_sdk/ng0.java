package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ng0 implements cn1 {
    public ui3 A;
    public gn1 A0;
    public sh0 B;
    public ln1 B0;
    public vh1 C;
    public jn1 C0;
    public zh3 D;
    public dw2 D0;
    public bi3 E;
    public dw2 E0;
    public ai3 F;
    public sh0 F0;
    public pn1 G;
    public dw2 G0;
    public wh3 H;
    public vh1 H0;
    public ci3 I;
    public vh1 I0;
    public fi3 J;
    public dw2 J0;
    public uh3 K;
    public k82 K0;
    public gi3 L;
    public dw2 L0;
    public hi3 M;
    public dw2 M0;
    public ii3 N;
    public ji3 O;
    public li3 P;
    public pi3 Q;
    public si3 R;
    public vi3 S;
    public mi3 T;
    public wi3 U;
    public xi3 V;
    public zi3 W;
    public aj3 X;
    public ij3 Y;
    public vh3 Z;
    public final vf0 a;
    public hj3 a0;
    public dw2 b;
    public yh3 b0;
    public vh1 c;
    public cj3 c0;
    public dw2 d;
    public dw2 d0;
    public dw2 e;
    public dj3 e0;
    public vh1 f;
    public fj3 f0;
    public vh1 g;
    public di3 g0;
    public vh1 h;
    public vh1 h0;
    public zm1 i;
    public ej3 i0;
    public on1 j;
    public gj3 j0;
    public hn1 k;
    public qi3 k0;
    public kn1 l;
    public ti3 l0;
    public nn1 m;
    public ei3 m0;
    public sn1 n;
    public ni3 n0;
    public fn1 o;
    public ki3 o0;
    public vh1 p;
    public yi3 p0;
    public dw2 q;
    public bj3 q0;
    public dw2 r;
    public m91 r0;
    public sh0 s;
    public ek3 s0;
    public dw2 t;
    public ad3 t0;
    public vh1 u;
    public yc3 u0;
    public y82 v;
    public wc3 v0;
    public ox w;
    public dw2 w0;
    public xh3 x;
    public dw2 x0;
    public oi3 y;
    public dw2 y0;
    public ri3 z;
    public ym1 z0;

    public final void a(j53 j53Var, BaseRequest baseRequest, md1 md1Var, Boolean bool, pb pbVar, NativeRequest nativeRequest, Integer num) {
        mn1 mn1Var = new mn1(this.a.w0);
        Object obj = do0.c;
        this.b = new do0(mn1Var);
        vh1 vh1VarA = vh1.a(j53Var);
        this.c = vh1VarA;
        do0 do0Var = new do0(new in1(this.a.D2, vh1VarA));
        this.d = do0Var;
        this.e = new do0(new qn1(do0Var));
        this.f = vh1.a(pbVar);
        this.g = vh1.a(baseRequest);
        vh1 vh1VarA2 = vh1.a(md1Var);
        this.h = vh1VarA2;
        this.i = new zm1(vh1VarA2);
        vf0 vf0Var = this.a;
        on1 on1Var = new on1(vf0Var.h);
        this.j = on1Var;
        this.k = new hn1(new do0(new rl3(vf0Var.w3, vf0Var.D2, this.b, on1Var)));
        vf0 vf0Var2 = this.a;
        this.l = new kn1(vf0Var2.s2);
        this.m = new nn1(vf0Var2.x3);
        this.n = new sn1(vf0Var2.y3);
        this.o = new fn1(vf0Var2.z3);
        vh1 vh1VarA3 = vh1.a(num);
        this.p = vh1VarA3;
        vf0 vf0Var3 = this.a;
        this.q = new do0(new pk2(vf0Var3.A1, vf0Var3.A0, this.g, this.c, vh1VarA3, vf0Var3.F, vf0Var3.s));
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(8);
        hu1Var.a("configLoaderRefreshSignalRequestedListener", this.a.v3);
        hu1Var.a("InspectorAdLifecycleMonitorRequestListener", this.i);
        hu1Var.a("adUnitStatsTrackerSignalsRequestedListener", this.k);
        hu1Var.a("customTabsConnectionInitializationTask", this.l);
        hu1Var.a("nativeSingletonPreloaderAsInternalAdRequestEventListener", this.m);
        hu1Var.a("webViewProfileOptimizerAdRequestListener", this.n);
        hu1Var.a("webViewPrefetchAdRequestListener", this.o);
        hu1Var.a("persistentCacheRefillRequestListener", this.q);
        iu1 iu1Var = new iu1(hu1Var.a);
        vf0 vf0Var4 = this.a;
        this.r = new do0(new fj1(vf0Var4.u, iu1Var, vf0Var4.A3));
        sh0 sh0Var = new sh0(vh1.a(bool));
        this.s = sh0Var;
        vf0 vf0Var5 = this.a;
        this.t = new do0(new la2(vf0Var5.d0, vf0Var5.Q, vf0Var5.I, vf0Var5.A, vf0Var5.t, vf0Var5.h, this.r, sh0Var, vf0Var5.F));
        vh1 vh1VarA4 = vh1.a(nativeRequest);
        this.u = vh1VarA4;
        vf0 vf0Var6 = this.a;
        ol0 ol0Var = vf0Var6.u;
        dw2 dw2Var = vf0Var6.t;
        this.v = new y82(new e32(ol0Var, vh1VarA4, dw2Var, vf0Var6.Z1, this.g, vf0Var6.U, this.p), dw2Var);
    }

    public final void b() {
        vf0 vf0Var = this.a;
        dw2 dw2Var = vf0Var.D3;
        dw2 dw2Var2 = vf0Var.t;
        this.L = new gi3(dw2Var, dw2Var2);
        this.M = new hi3(vf0Var.V2, dw2Var2);
        this.N = new ii3(vf0Var.X2, dw2Var2);
        this.O = new ji3(new zv(this.c, vf0Var.H0, this.g, vf0Var.S1), dw2Var2);
        this.P = new li3(vf0Var.E3, dw2Var2);
        dw2 dw2VarA = jk3.a(new ar0(dw2Var2));
        vf0 vf0Var2 = this.a;
        dw2 dw2Var3 = vf0Var2.t;
        this.Q = new pi3(dw2VarA, dw2Var3);
        this.R = new si3(vf0Var2.F3, dw2Var3);
        this.S = new vi3(dw2Var3, new qw1(vf0Var2.e0));
        this.T = new mi3(new gn0(vf0Var2.f, vf0Var2.H), dw2Var3);
        this.U = new wi3(vf0Var2.G3, dw2Var3);
        this.V = new xi3(vf0Var2.l2, dw2Var3);
        this.W = new zi3(vf0Var2.H3, dw2Var3);
        this.X = new aj3(vf0Var2.I3, dw2Var3);
        this.Y = new ij3(vf0Var2.p2, dw2Var3);
        dw2 dw2VarA2 = jk3.a(new xn3(vf0Var2.y1));
        vf0 vf0Var3 = this.a;
        dw2 dw2Var4 = vf0Var3.t;
        this.Z = new vh3(dw2VarA2, dw2Var4);
        this.a0 = new hj3(vf0Var3.J3, dw2Var4);
        this.b0 = new yh3(vf0Var3.h2, dw2Var4);
        e13 e13Var = new e13(vf0Var3.w3, this.g, vf0Var3.e0, this.d);
        Object obj = do0.c;
        this.c0 = new cj3(new do0(e13Var), this.a.t);
        this.d0 = new do0(new q43(this.b));
    }

    public final void a(Boolean bool, Boolean bool2) {
        vf0 vf0Var = this.a;
        dw2 dw2Var = vf0Var.S2;
        dw2 dw2Var2 = vf0Var.t;
        this.w = new ox(dw2Var, dw2Var2);
        this.x = new xh3(vf0Var.P2, dw2Var2);
        this.y = new oi3(new iq0(vf0Var.Q), dw2Var2);
        vh1 vh1Var = vf0Var.f;
        dw2 dw2Var3 = vf0Var.w1;
        this.z = new ri3(new c61(vh1Var, dw2Var2, dw2Var3), dw2Var2);
        this.A = new ui3(new tp1(vh1Var, dw2Var2, dw2Var3), dw2Var2);
        this.B = new sh0(this.u);
        this.C = vh1.a(bool);
        vh1 vh1VarA = vh1.a(bool2);
        vf0 vf0Var2 = this.a;
        z8 z8Var = new z8(vf0Var2.h, this.g, this.B, vf0Var2.J0, vf0Var2.f, this.c, this.C, vf0Var2.t, vf0Var2.B3, vh1VarA, this.s);
        Object obj = do0.c;
        do0 do0Var = new do0(z8Var);
        vf0 vf0Var3 = this.a;
        dw2 dw2Var4 = vf0Var3.t;
        this.D = new zh3(do0Var, dw2Var4);
        this.E = new bi3(new vb(vf0Var3.V), dw2Var4);
        vh1 vh1Var2 = mj0.a;
        sh0 sh0Var = this.B;
        vh1 vh1Var3 = this.c;
        this.F = new ai3(new nb(sh0Var, vh1Var2, vh1Var3, vf0Var3.f, dw2Var4, vf0Var3.u2), dw2Var4);
        this.G = new pn1(vh1Var3);
        this.H = new wh3(this.g);
        int i = sc3.$r8$clinit;
        List listB = ud0.b(1);
        List listB2 = ud0.b(1);
        pn1 pn1Var = this.G;
        boolean z = rc3.c;
        if (!z && pn1Var == null) {
            throw new AssertionError("Codegen error? Null provider");
        }
        listB.add(pn1Var);
        wh3 wh3Var = this.H;
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
        dw2 dw2Var5 = vf0Var4.t;
        this.I = new ci3(ecVar, dw2Var5);
        this.J = new fi3(vf0Var4.C3, dw2Var5);
        this.K = new uh3(vf0Var4.j2, dw2Var5);
    }

    public final void a(m13 m13Var, IconRequest iconRequest) {
        dw2 dw2Var = this.d0;
        vf0 vf0Var = this.a;
        dw2 dw2Var2 = vf0Var.t;
        this.e0 = new dj3(dw2Var, dw2Var2);
        this.f0 = new fj3(vf0Var.n2, dw2Var2);
        this.g0 = new di3(vf0Var.K3, dw2Var2);
        this.h0 = mj0.a;
        vh1 vh1VarA = vh1.a(m13Var);
        vf0 vf0Var2 = this.a;
        dw2 dw2Var3 = vf0Var2.t;
        vh1 vh1Var = vf0Var2.f;
        dw2 dw2Var4 = vf0Var2.h;
        dw2 dw2Var5 = vf0Var2.H0;
        dw2 dw2Var6 = vf0Var2.E;
        dw2 dw2Var7 = vf0Var2.E1;
        ol0 ol0Var = vf0Var2.u;
        dw2 dw2Var8 = vf0Var2.G;
        ol0 ol0Var2 = vf0Var2.f1;
        vh1 vh1Var2 = this.g;
        this.i0 = new ej3(new k93(dw2Var3, this.B, this.h0, new c93(dw2Var3, vh1Var, dw2Var4, dw2Var5, dw2Var6, dw2Var7, ol0Var, dw2Var8, ol0Var2, vh1Var2, vh1VarA), this.c, vh1Var2), dw2Var3);
        this.j0 = new gj3(vf0Var2.L3, dw2Var3);
        this.k0 = new qi3(vf0Var2.M3, dw2Var3);
        this.l0 = new ti3(new yg1(vf0Var2.P0), dw2Var3);
        this.m0 = new ei3(vf0Var2.N3, dw2Var3);
        this.n0 = new ni3(new yn0(vh1Var), dw2Var3);
        this.o0 = new ki3(vf0Var2.O3, dw2Var3);
        zi2 zi2Var = new zi2(vh1VarA);
        Object obj = do0.c;
        do0 do0Var = new do0(zi2Var);
        vf0 vf0Var3 = this.a;
        dw2 dw2Var9 = vf0Var3.t;
        this.p0 = new yi3(do0Var, dw2Var9);
        this.q0 = new bj3(new hn2(vf0Var3.f, vf0Var3.u2, dw2Var9, vf0Var3.w1), dw2Var9);
        this.r0 = new m91(new n91(vh1.a(iconRequest)), this.a.t);
        int i = sc3.$r8$clinit;
        rc3 rc3Var = new rc3(43, 0);
        rc3Var.a(this.v);
        rc3Var.a(this.w);
        rc3Var.a(this.x);
        rc3Var.a(this.y);
        rc3Var.a(this.z);
        rc3Var.a(this.A);
        rc3Var.a(this.D);
        rc3Var.a(this.E);
        rc3Var.a(this.F);
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
        rc3Var.a(this.W);
        rc3Var.a(this.X);
        rc3Var.a(this.Y);
        rc3Var.a(this.Z);
        rc3Var.a(this.a0);
        rc3Var.a(this.b0);
        rc3Var.a(this.c0);
        rc3Var.a(this.e0);
        rc3Var.a(this.f0);
        rc3Var.a(this.g0);
        rc3Var.a(this.i0);
        rc3Var.a(this.j0);
        rc3Var.a(this.k0);
        rc3Var.a(this.l0);
        rc3Var.a(this.m0);
        rc3Var.a(this.n0);
        rc3Var.a(this.o0);
        rc3Var.a(this.p0);
        rc3Var.a(this.q0);
        rc3Var.a(this.r0);
        sc3 sc3VarA = rc3Var.a();
        vf0 vf0Var4 = this.a;
        this.s0 = new ek3(sc3VarA, vf0Var4.x, vf0Var4.u, vf0Var4.t, this.g, this.r);
    }

    public final void a(n03 n03Var, tn1 tn1Var, Boolean bool) {
        vf0 vf0Var = this.a;
        this.t0 = new ad3(vf0Var.Q);
        dw2 dw2Var = vf0Var.w1;
        this.u0 = new yc3(dw2Var);
        this.v0 = new wc3(dw2Var);
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(6);
        ad3 ad3Var = this.t0;
        if (ad3Var != null) {
            linkedHashMapA.put("setCookie", ad3Var);
            dw2 dw2Var2 = this.a.P3;
            if (dw2Var2 != null) {
                linkedHashMapA.put("setInspectorGesture", dw2Var2);
                dw2 dw2Var3 = this.a.Q3;
                if (dw2Var3 != null) {
                    linkedHashMapA.put("setInspectorServerData", dw2Var3);
                    dw2 dw2Var4 = this.a.R3;
                    if (dw2Var4 != null) {
                        linkedHashMapA.put("setTestMode", dw2Var4);
                        yc3 yc3Var = this.u0;
                        if (yc3Var != null) {
                            linkedHashMapA.put("setZenithTotalInflightAdLimit", yc3Var);
                            wc3 wc3Var = this.v0;
                            if (wc3Var != null) {
                                linkedHashMapA.put("setServingGdprApplies", wc3Var);
                                l lVar = new l(new iu1(linkedHashMapA));
                                Object obj = do0.c;
                                this.w0 = new do0(lVar);
                                sh0 sh0Var = new sh0(this.u);
                                vf0 vf0Var2 = this.a;
                                do0 do0Var = new do0(new k43(vf0Var2.t, vf0Var2.Q, vf0Var2.F, vf0Var2.S3, sh0Var, vf0Var2.u3, vf0Var2.d0, vf0Var2.K, vf0Var2.f));
                                vf0 vf0Var3 = this.a;
                                this.x0 = new do0(new cb2(vf0Var3.d0, this.t, this.s0, this.g, this.c, this.r, this.w0, do0Var, vf0Var3.T3, vf0Var3.U3, vf0Var3.t, vf0Var3.w0, vf0Var3.F, vf0Var3.M2, vf0Var3.u));
                                sh0 sh0Var2 = new sh0(this.p);
                                vh1 vh1Var2 = this.g;
                                dw2 dw2Var5 = this.r;
                                dw2 dw2Var6 = this.w0;
                                vf0 vf0Var4 = this.a;
                                this.y0 = new do0(new an1(this.g, this.c, this.x0, new do0(new sm2(vh1Var2, dw2Var5, dw2Var6, vf0Var4.A0, vf0Var4.n1, this.c, this.x0, vf0Var4.t, vf0Var4.F, sh0Var2)), this.a.A0));
                                this.z0 = new ym1(this.h);
                                dw2 dw2Var7 = this.b;
                                vh1 vh1Var3 = this.g;
                                vf0 vf0Var5 = this.a;
                                this.A0 = new gn1(new do0(new rc(dw2Var7, vh1Var3, vf0Var5.w3, vf0Var5.h)));
                                vf0 vf0Var6 = this.a;
                                this.B0 = new ln1(vf0Var6.V3);
                                this.C0 = new jn1(vf0Var6.s2);
                                LinkedHashMap linkedHashMapA2 = ud0.a(6);
                                ym1 ym1Var = this.z0;
                                if (ym1Var != null) {
                                    linkedHashMapA2.put("InspectorAdLifecycleMonitorLoadListener", ym1Var);
                                    gn1 gn1Var = this.A0;
                                    if (gn1Var != null) {
                                        linkedHashMapA2.put("adUnitStatsTrackerAdLoadListener", gn1Var);
                                        ln1 ln1Var = this.B0;
                                        if (ln1Var != null) {
                                            linkedHashMapA2.put("debugSignalsAdLoadListener", ln1Var);
                                            jn1 jn1Var = this.C0;
                                            if (jn1Var != null) {
                                                linkedHashMapA2.put("customTabsConnectionInitializationTaskInternalAdLoadListener", jn1Var);
                                                dw2 dw2Var8 = this.x0;
                                                if (dw2Var8 != null) {
                                                    linkedHashMapA2.put("NetworkTransactionRequesterLoadListener", dw2Var8);
                                                    dw2 dw2Var9 = this.q;
                                                    if (dw2Var9 != null) {
                                                        iu1 iu1VarA = wd0.a(linkedHashMapA2, "persistentCacheRefillListener", dw2Var9, linkedHashMapA2);
                                                        vf0 vf0Var7 = this.a;
                                                        do0 do0Var2 = new do0(new ki1(vf0Var7.u, iu1VarA, vf0Var7.A3));
                                                        this.D0 = do0Var2;
                                                        vf0 vf0Var8 = this.a;
                                                        this.E0 = new do0(new w33(vf0Var8.u, vf0Var8.h, vf0Var8.u1, vf0Var8.o1, do0Var2, this.f, this.e));
                                                        this.F0 = new sh0(vh1.a(n03Var));
                                                        this.G0 = new do0(new rn1(this.F0, new sh0(vh1.a(tn1Var))));
                                                        this.H0 = vh1.a(bool);
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
                                    throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
                                }
                                throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
                            }
                            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
                        }
                        throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
                    }
                    throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
                }
                throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
            }
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
    }

    public final void a(gj1 gj1Var) {
        vh1 vh1VarA = vh1.a(gj1Var);
        this.I0 = vh1VarA;
        vf0 vf0Var = this.a;
        bq bqVar = new bq(vf0Var.W3, this.G0, this.g, this.u, vm1.a, this.C, this.j, this.e, this.b, this.H0, vh1VarA, vf0Var.Y3, this.h, this.f);
        Object obj = do0.c;
        this.J0 = new do0(bqVar);
        vf0 vf0Var2 = this.a;
        k82 k82Var = new k82(vf0Var2.B0);
        this.K0 = k82Var;
        do0 do0Var = new do0(new l02(this.J0, new do0(new v82(vf0Var2.Z3, this.G0, this.g, this.u, this.j, this.e, this.b, this.c, this.p, this.C, this.h, this.H0, this.I0, k82Var, this.f)), this.a.a4, this.G0, this.g, this.u, this.j, this.e, this.b, this.c, this.p, this.C, this.h, this.H0, this.I0, this.K0, this.f));
        vf0 vf0Var3 = this.a;
        this.L0 = new do0(new ti1(this.b, this.e, this.f, this.y0, new wi2(vf0Var3.u, vf0Var3.C, vf0Var3.T3, vf0Var3.h, this.E0, do0Var), this.G0, this.r, vf0Var3.t, this.D0));
        this.M0 = new do0(new lj1(this.b, this.e, this.G0, this.r, this.x0, this.a.t));
    }

    public ng0(vf0 vf0Var, j53 j53Var, BaseRequest baseRequest, n03 n03Var, tn1 tn1Var, md1 md1Var, Boolean bool, m13 m13Var, Boolean bool2, Boolean bool3, pb pbVar, NativeRequest nativeRequest, IconRequest iconRequest, Integer num, Boolean bool4, gj1 gj1Var) {
        this.a = vf0Var;
        a(j53Var, baseRequest, md1Var, bool3, pbVar, nativeRequest, num);
        a(bool, bool2);
        b();
        a(m13Var, iconRequest);
        a(n03Var, tn1Var, bool4);
        a(gj1Var);
    }

    @Override // ads_mobile_sdk.cn1
    public final hj1 a() {
        return (hj1) this.M0.get();
    }
}
