package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class jj0 implements x1 {
    public dw2 A;
    public dw2 B;
    public dw2 C;
    public dw2 D;
    public dw2 E;
    public vh1 F;
    public vh1 G;
    public dw2 H;
    public dw2 I;
    public dw2 J;
    public dw2 K;
    public dw2 L;
    public iu1 M;
    public dw2 N;
    public dw2 O;
    public dw2 P;
    public dw2 Q;
    public vh1 R;
    public dw2 S;
    public dw2 T;
    public dw2 U;
    public aq3 V;
    public dw2 W;
    public dw2 X;
    public final vf0 a;
    public dw2 b;
    public vh1 c;
    public vh1 d;
    public sh0 e;
    public sh0 f;
    public sh0 g;
    public dw2 h;
    public vh1 i;
    public e63 j;
    public vh1 k;
    public vh1 l;
    public vh1 m;
    public dw2 n;
    public vh1 o;
    public ol0 p;
    public vh1 q;
    public dw2 r;
    public v12 s;
    public sc3 t;
    public dw2 u;
    public dw2 v;
    public vh1 w;
    public e53 x;
    public dw2 y;
    public dw2 z;

    public jj0(vf0 vf0Var, BaseRequest baseRequest, j53 j53Var, Integer num, i2 i2Var, zy zyVar, ec3 ec3Var, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, eo2 eo2Var, t91 t91Var, p12 p12Var, s02 s02Var) {
        this.a = vf0Var;
        a(j53Var, num, i2Var, zyVar, ec3Var, n03Var, tn1Var, m33Var, zbVar, eo2Var);
        a(baseRequest, t91Var, p12Var, s02Var);
        g();
    }

    @Override // ads_mobile_sdk.x1
    public final zh1 a() {
        return (InternalNativeAd) this.T.get();
    }

    public final void g() {
        m62 m62Var = new m62(this.a.t, this.H, this.q);
        Object obj = do0.c;
        this.O = new do0(m62Var);
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(1);
        dw2 dw2Var = this.O;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA, "NativeMediaViewFullyVisibleEventListener", dw2Var, linkedHashMapA);
        vf0 vf0Var = this.a;
        this.P = new do0(new yu1(vf0Var.x, iu1VarA, vf0Var.A3));
        LinkedHashMap linkedHashMapA2 = ud0.a(2);
        dw2 dw2Var2 = this.N;
        if (dw2Var2 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA2.put("AdVisibilityChangedEventEmitter", dw2Var2);
        dw2 dw2Var3 = this.P;
        if (dw2Var3 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA2 = wd0.a(linkedHashMapA2, "MediaViewFullyVisibleEventEmitter", dw2Var3, linkedHashMapA2);
        vf0 vf0Var2 = this.a;
        do0 do0Var = new do0(new kd(vf0Var2.x, iu1VarA2, vf0Var2.A3));
        vf0 vf0Var3 = this.a;
        this.Q = new do0(new c42(new do0(new a42(vf0Var3.f, vf0Var3.x, do0Var, vf0Var3.u2, vf0Var3.h, vf0Var3.t, vf0Var3.E, this.c)), this.L, this.O));
        this.R = mj0.a;
        vf0 vf0Var4 = this.a;
        this.S = new do0(new t93(vf0Var4.z, this.c, vf0Var4.U, vf0Var4.I, this.q, vf0Var4.t));
        vf0 vf0Var5 = this.a;
        do0 do0Var2 = new do0(new uk0(vf0Var5.f, vf0Var5.u, vf0Var5.b3, vf0Var5.t, this.w, this.c, this.h));
        vf0 vf0Var6 = this.a;
        dw2 dw2Var4 = vf0Var6.t;
        this.T = new do0(new rm1(vf0Var6.x, this.b, this.c, this.d, this.h, this.i, this.p, this.v, this.F, this.H, this.J, this.Q, this.I, this.R, vf0Var6.f0, this.S, vf0Var6.F, this.o, dw2Var4, this.w, new w12(dw2Var4, do0Var2)));
        vf0 vf0Var7 = this.a;
        this.U = new do0(new g73(vf0Var7.u, iu1.b, vf0Var7.A3));
        this.V = new aq3(new do0(new cr3(this.F, this.a.x)));
        LinkedHashMap linkedHashMapA3 = ud0.a(1);
        aq3 aq3Var = this.V;
        if (aq3Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA3.put("provideThirdPartyVideoEventListener", aq3Var);
        iu1 iu1Var = new iu1(linkedHashMapA3);
        vf0 vf0Var8 = this.a;
        this.W = new do0(new sq3(vf0Var8.u, iu1Var, vf0Var8.A3));
        this.X = new do0(new hp3(this.a.u, this.c, this.p, this.U, this.W, new sh0(this.G)));
        vf0 vf0Var9 = this.a;
        new do0(new af2(vf0Var9.O, this.c, vf0Var9.t, vf0Var9.w));
    }

    public final void a(BaseRequest baseRequest, t91 t91Var, p12 p12Var, s02 s02Var) {
        vh1 vh1VarA = vh1.a(t91Var);
        vf0 vf0Var = this.a;
        mt3 mt3Var = new mt3(vf0Var.G, vf0Var.o1, vf0Var.V, this.j, this.k, this.l, this.c, this.h, this.m, vf0Var.h, this.n, vf0Var.N4, this.o, this.p, vf0Var.D2, this.t, vf0Var.t, vh1VarA);
        Object obj = do0.c;
        this.u = new do0(mt3Var);
        vf0 vf0Var2 = this.a;
        this.v = new do0(new gm0(vf0Var2.u, vf0Var2.t, this.h, vf0Var2.G));
        vh1 vh1VarA2 = vh1.a(baseRequest);
        this.w = vh1VarA2;
        vf0 vf0Var3 = this.a;
        this.x = new e53(vf0Var3.U3, vh1VarA2, this.q);
        this.y = new do0(new tc(vf0Var3.w3, vh1VarA2));
        vf0 vf0Var4 = this.a;
        dw2 dw2VarA = jk3.a(new q61(vf0Var4.f, vf0Var4.t));
        vf0 vf0Var5 = this.a;
        this.z = new do0(new no2(vf0Var5.f, this.c, vf0Var5.O4, vf0Var5.t, vf0Var5.G, dw2VarA, vf0Var5.F, vf0Var5.u, vf0Var5.E));
        vf0 vf0Var6 = this.a;
        this.A = new do0(new l4(vf0Var6.e0, this.q, vf0Var6.f0));
        vf0 vf0Var7 = this.a;
        this.B = new do0(new sq2(vf0Var7.x1, vf0Var7.u, this.q, vf0Var7.t, vf0Var7.G));
        vh1 vh1Var = mj0.a;
        vh1 vh1Var2 = this.l;
        vf0 vf0Var8 = this.a;
        this.C = new do0(new yj2(vh1Var2, vf0Var8.A0, vf0Var8.A1, this.w, this.q, vh1Var, vf0Var8.s, vf0Var8.F));
        vf0 vf0Var9 = this.a;
        this.D = new do0(new q6(vf0Var9.N1, this.l, this.c, this.t, this.q, vf0Var9.t, vf0Var9.E, vf0Var9.T));
        this.E = new do0(new a10(this.c, this.a.D2));
        vh1 vh1Var3 = iu1.b;
        hu1 hu1Var = new hu1(11);
        hu1Var.a("TrackingPingMonitorAsAdEventListener", this.u);
        hu1Var.a("DelegatingAdEventListener", this.v);
        hu1Var.a("RequestThrottlerV2AdMonitor", this.x);
        hu1Var.a("AdStatsTrackerListener", this.y);
        hu1Var.a("CustomTabsConnectionInitializationTask", this.a.s2);
        hu1Var.a("PlayPrewarmListener", this.z);
        hu1Var.a("AdLifecycleTrackerListener", this.A);
        hu1Var.a("PreloadAdCloseListener", this.B);
        hu1Var.a("PersistentCacheAdMonitor", this.C);
        hu1Var.a("AdQualityDataHandler", this.D);
        hu1Var.a("ConsentFormActionMonitor", this.E);
        iu1 iu1Var = new iu1(hu1Var.a);
        ol0 ol0Var = this.p;
        vf0 vf0Var10 = this.a;
        ol0.a(ol0Var, new do0(new w3(vf0Var10.u, iu1Var, this.c, vf0Var10.A3)));
        this.F = vh1.a(s02Var);
        vh1 vh1VarA3 = vh1.a(p12Var);
        this.G = vh1VarA3;
        vf0 vf0Var11 = this.a;
        this.H = new do0(new wp3(vf0Var11.u, vf0Var11.x, vh1VarA3, this.p, this.c, vf0Var11.b1));
        do0 do0Var = new do0(new il1(this.F));
        this.I = do0Var;
        vf0 vf0Var12 = this.a;
        this.J = new do0(new u32(vf0Var12.x, vf0Var12.u, this.F, vf0Var12.t, do0Var, vf0Var12.Z1, this.w, yp3.a));
        vh1 vh1Var4 = this.w;
        vf0 vf0Var13 = this.a;
        this.K = new do0(new hs0(vh1Var4, vf0Var13.v0, this.c, vf0Var13.u));
        this.L = new do0(new y32(this.H));
        LinkedHashMap linkedHashMapA = ud0.a(2);
        dw2 dw2Var = this.K;
        if (dw2Var != null) {
            linkedHashMapA.put("FirebaseAnalyticsAdEventListener", dw2Var);
            dw2 dw2Var2 = this.L;
            if (dw2Var2 != null) {
                iu1 iu1VarA = wd0.a(linkedHashMapA, "NativeAdViewVisibilityChangedEventListener", dw2Var2, linkedHashMapA);
                this.M = iu1VarA;
                vf0 vf0Var14 = this.a;
                this.N = new do0(new wd(vf0Var14.x, iu1VarA, vf0Var14.A3));
                return;
            }
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
    }

    public final void a(j53 j53Var, Integer num, i2 i2Var, zy zyVar, ec3 ec3Var, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, eo2 eo2Var) {
        sy syVar = ry.a;
        Object obj = do0.c;
        this.b = new do0(syVar);
        this.c = vh1.a(i2Var);
        this.d = vh1.a(zyVar);
        this.e = new sh0(vh1.a(n03Var));
        this.f = new sh0(vh1.a(tn1Var));
        this.g = new sh0(vh1.a(m33Var));
        this.h = new do0(new uy(this.e, this.f, this.g, new sh0(vh1.a(zbVar))));
        vh1 vh1Var = mj0.a;
        this.i = vh1Var;
        this.j = new e63(this.c, this.d, this.a.u1);
        this.k = vh1Var;
        this.l = vh1.a(ec3Var);
        this.m = vh1.a(num);
        this.n = new do0(cc3.a);
        this.o = vh1.a(eo2Var);
        this.p = new ol0();
        vh1 vh1VarA = vh1.a(j53Var);
        this.q = vh1VarA;
        this.r = new do0(new ty(vh1VarA));
        this.s = new v12(vh1Var);
        int i = sc3.$r8$clinit;
        List listB = ud0.b(1);
        List listB2 = ud0.b(1);
        dw2 dw2Var = this.r;
        boolean z = rc3.c;
        if (!z && dw2Var == null) {
            throw new AssertionError("Codegen error? Null provider");
        }
        listB.add(dw2Var);
        v12 v12Var = this.s;
        if (!z && v12Var == null) {
            throw new AssertionError("Codegen error? Null provider");
        }
        listB2.add(v12Var);
        if (!z && ud0.a(listB)) {
            throw new AssertionError("Codegen error?  Duplicates in the provider list");
        }
        if (!z && ud0.a(listB2)) {
            throw new AssertionError("Codegen error?  Duplicates in the provider list");
        }
        this.t = new sc3(listB, listB2);
    }

    @Override // ads_mobile_sdk.x1
    public final no3 f() {
        return (no3) this.X.get();
    }
}
