package ads_mobile_sdk;

import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class fj0 implements mo3 {
    public dw2 A;
    public dw2 B;
    public dw2 C;
    public dw2 D;
    public dw2 E;
    public dw2 F;
    public dw2 G;
    public vh1 H;
    public dw2 I;
    public dw2 J;
    public dw2 K;
    public vh1 L;
    public dw2 M;
    public dw2 N;
    public dw2 O;
    public dw2 P;
    public dw2 Q;
    public final vf0 a;
    public vh1 b;
    public dw2 c;
    public vh1 d;
    public vh1 e;
    public sh0 f;
    public sh0 g;
    public sh0 h;
    public dw2 i;
    public vh1 j;
    public e63 k;
    public sh0 l;
    public vh1 m;
    public vh1 n;
    public dw2 o;
    public vh1 p;
    public ol0 q;
    public vh1 r;
    public dw2 s;
    public sc3 t;
    public vh1 u;
    public dw2 v;
    public dw2 w;
    public vh1 x;
    public e53 y;
    public dw2 z;

    public fj0(vf0 vf0Var, BaseRequest baseRequest, j53 j53Var, Integer num, i2 i2Var, zy zyVar, ec3 ec3Var, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, eo2 eo2Var, t91 t91Var, g33 g33Var, View view) {
        this.a = vf0Var;
        a(j53Var, num, i2Var, zyVar, ec3Var, n03Var, tn1Var, m33Var, zbVar, eo2Var, t91Var, view);
        a(baseRequest, g33Var);
        g();
    }

    @Override // ads_mobile_sdk.x1
    public final zh1 a() {
        return (ck1) this.I.get();
    }

    public final void g() {
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(2);
        dw2 dw2Var = this.N;
        if (dw2Var == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        linkedHashMapA.put("FirebaseAnalyticsAdEventListener", dw2Var);
        dw2 dw2Var2 = this.O;
        if (dw2Var2 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA = wd0.a(linkedHashMapA, "BannerRtbVisibilityListener", dw2Var2, linkedHashMapA);
        vf0 vf0Var = this.a;
        wd wdVar = new wd(vf0Var.x, iu1VarA, vf0Var.A3);
        Object obj = do0.c;
        this.P = new do0(wdVar);
        LinkedHashMap linkedHashMapA2 = ud0.a(1);
        dw2 dw2Var3 = this.P;
        if (dw2Var3 == null) {
            throw new NullPointerException(IronSourceConstants.EVENTS_PROVIDER);
        }
        iu1 iu1VarA2 = wd0.a(linkedHashMapA2, "AdVisibilityChangedEventEmitter", dw2Var3, linkedHashMapA2);
        vf0 vf0Var2 = this.a;
        do0 do0Var = new do0(new kd(vf0Var2.x, iu1VarA2, vf0Var2.A3));
        vf0 vf0Var3 = this.a;
        this.Q = new do0(new pd(vf0Var3.f, vf0Var3.x, do0Var, vf0Var3.u2, this.b, vf0Var3.h, vf0Var3.t, this.r, vf0Var3.E, this.d));
    }

    public final void a(j53 j53Var, Integer num, i2 i2Var, zy zyVar, ec3 ec3Var, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, eo2 eo2Var, t91 t91Var, View view) {
        this.b = vh1.a(view);
        sy syVar = ry.a;
        Object obj = do0.c;
        this.c = new do0(syVar);
        this.d = vh1.a(i2Var);
        this.e = vh1.a(zyVar);
        this.f = new sh0(vh1.a(n03Var));
        this.g = new sh0(vh1.a(tn1Var));
        this.h = new sh0(vh1.a(m33Var));
        this.i = new do0(new uy(this.f, this.g, this.h, new sh0(vh1.a(zbVar))));
        this.j = mj0.a;
        this.k = new e63(this.d, this.e, this.a.u1);
        this.l = new sh0(this.b);
        this.m = vh1.a(ec3Var);
        this.n = vh1.a(num);
        this.o = new do0(cc3.a);
        this.p = vh1.a(eo2Var);
        this.q = new ol0();
        vh1 vh1VarA = vh1.a(j53Var);
        this.r = vh1VarA;
        this.s = new do0(new ty(vh1VarA));
        int i = sc3.$r8$clinit;
        List listB = ud0.b(1);
        List listB2 = ud0.b(0);
        dw2 dw2Var = this.s;
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
        this.t = new sc3(listB, listB2);
        this.u = vh1.a(t91Var);
    }

    public final void a(BaseRequest baseRequest, g33 g33Var) {
        vf0 vf0Var = this.a;
        mt3 mt3Var = new mt3(vf0Var.G, vf0Var.o1, vf0Var.V, this.k, this.l, this.m, this.d, this.i, this.n, vf0Var.h, this.o, vf0Var.N4, this.p, this.q, vf0Var.D2, this.t, vf0Var.t, this.u);
        Object obj = do0.c;
        this.v = new do0(mt3Var);
        vf0 vf0Var2 = this.a;
        this.w = new do0(new gm0(vf0Var2.u, vf0Var2.t, this.i, vf0Var2.G));
        vh1 vh1VarA = vh1.a(baseRequest);
        this.x = vh1VarA;
        vf0 vf0Var3 = this.a;
        this.y = new e53(vf0Var3.U3, vh1VarA, this.r);
        this.z = new do0(new tc(vf0Var3.w3, vh1VarA));
        vf0 vf0Var4 = this.a;
        dw2 dw2VarA = jk3.a(new q61(vf0Var4.f, vf0Var4.t));
        vf0 vf0Var5 = this.a;
        this.A = new do0(new no2(vf0Var5.f, this.d, vf0Var5.O4, vf0Var5.t, vf0Var5.G, dw2VarA, vf0Var5.F, vf0Var5.u, vf0Var5.E));
        vf0 vf0Var6 = this.a;
        this.B = new do0(new l4(vf0Var6.e0, this.r, vf0Var6.f0));
        vf0 vf0Var7 = this.a;
        this.C = new do0(new sq2(vf0Var7.x1, vf0Var7.u, this.r, vf0Var7.t, vf0Var7.G));
        vh1 vh1Var = mj0.a;
        vh1 vh1Var2 = this.m;
        vf0 vf0Var8 = this.a;
        this.D = new do0(new yj2(vh1Var2, vf0Var8.A0, vf0Var8.A1, this.x, this.r, vh1Var, vf0Var8.s, vf0Var8.F));
        vf0 vf0Var9 = this.a;
        this.E = new do0(new q6(vf0Var9.N1, this.m, this.d, this.t, this.r, vf0Var9.t, vf0Var9.E, vf0Var9.T));
        this.F = new do0(new a10(this.d, this.a.D2));
        vh1 vh1Var3 = iu1.b;
        hu1 hu1Var = new hu1(11);
        hu1Var.a("TrackingPingMonitorAsAdEventListener", this.v);
        hu1Var.a("DelegatingAdEventListener", this.w);
        hu1Var.a("RequestThrottlerV2AdMonitor", this.y);
        hu1Var.a("AdStatsTrackerListener", this.z);
        hu1Var.a("CustomTabsConnectionInitializationTask", this.a.s2);
        hu1Var.a("PlayPrewarmListener", this.A);
        hu1Var.a("AdLifecycleTrackerListener", this.B);
        hu1Var.a("PreloadAdCloseListener", this.C);
        hu1Var.a("PersistentCacheAdMonitor", this.D);
        hu1Var.a("AdQualityDataHandler", this.E);
        hu1Var.a("ConsentFormActionMonitor", this.F);
        iu1 iu1Var = new iu1(hu1Var.a);
        ol0 ol0Var = this.q;
        vf0 vf0Var10 = this.a;
        ol0.a(ol0Var, new do0(new w3(vf0Var10.u, iu1Var, this.d, vf0Var10.A3)));
        vf0 vf0Var11 = this.a;
        this.G = new do0(new t93(vf0Var11.z, this.d, vf0Var11.U, vf0Var11.I, this.r, vf0Var11.t));
        vh1 vh1VarA2 = vh1.a(g33Var);
        this.H = vh1VarA2;
        this.I = new do0(new gk1(this.b, this.c, this.d, this.e, this.i, this.j, this.q, this.w, this.a.f0, this.G, this.p, vh1VarA2, this.x));
        vf0 vf0Var12 = this.a;
        ol0 ol0Var2 = vf0Var12.u;
        vh1 vh1Var4 = iu1.b;
        this.J = new do0(new g73(ol0Var2, vh1Var4, vf0Var12.A3));
        vf0 vf0Var13 = this.a;
        do0 do0Var = new do0(new sq3(vf0Var13.u, vh1Var4, vf0Var13.A3));
        this.K = do0Var;
        this.L = vh1Var;
        this.M = new do0(new hp3(this.a.u, this.d, this.q, this.J, do0Var, vh1Var));
        vf0 vf0Var14 = this.a;
        new do0(new af2(vf0Var14.O, this.d, vf0Var14.t, vf0Var14.w));
        vh1 vh1Var5 = this.x;
        vf0 vf0Var15 = this.a;
        this.N = new do0(new hs0(vh1Var5, vf0Var15.v0, this.d, vf0Var15.u));
        this.O = new do0(new e93(this.q, this.d));
    }

    @Override // ads_mobile_sdk.x1
    public final no3 f() {
        return (no3) this.M.get();
    }
}
