package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class hj0 implements x1 {
    public dw2 A;
    public dw2 B;
    public dw2 C;
    public dw2 D;
    public dw2 E;
    public dw2 F;
    public dw2 G;
    public dw2 H;
    public dw2 I;
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
    public sc3 s;
    public dw2 t;
    public dw2 u;
    public vh1 v;
    public e53 w;
    public dw2 x;
    public dw2 y;
    public dw2 z;

    public hj0(vf0 vf0Var, BaseRequest baseRequest, j53 j53Var, Integer num, i2 i2Var, zy zyVar, ec3 ec3Var, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, eo2 eo2Var, t91 t91Var, np3 np3Var) {
        this.a = vf0Var;
        a(j53Var, num, i2Var, zyVar, ec3Var, n03Var, tn1Var, m33Var, zbVar, eo2Var, t91Var);
        a(baseRequest, np3Var);
    }

    @Override // ads_mobile_sdk.x1
    public final zh1 a() {
        return (pk1) this.I.get();
    }

    public final void a(BaseRequest baseRequest, np3 np3Var) {
        vf0 vf0Var = this.a;
        gm0 gm0Var = new gm0(vf0Var.u, vf0Var.t, this.h, vf0Var.G);
        Object obj = do0.c;
        this.u = new do0(gm0Var);
        vh1 vh1VarA = vh1.a(baseRequest);
        this.v = vh1VarA;
        vf0 vf0Var2 = this.a;
        this.w = new e53(vf0Var2.U3, vh1VarA, this.q);
        this.x = new do0(new tc(vf0Var2.w3, vh1VarA));
        vf0 vf0Var3 = this.a;
        dw2 dw2VarA = jk3.a(new q61(vf0Var3.f, vf0Var3.t));
        vf0 vf0Var4 = this.a;
        this.y = new do0(new no2(vf0Var4.f, this.c, vf0Var4.O4, vf0Var4.t, vf0Var4.G, dw2VarA, vf0Var4.F, vf0Var4.u, vf0Var4.E));
        vf0 vf0Var5 = this.a;
        this.z = new do0(new l4(vf0Var5.e0, this.q, vf0Var5.f0));
        vf0 vf0Var6 = this.a;
        this.A = new do0(new sq2(vf0Var6.x1, vf0Var6.u, this.q, vf0Var6.t, vf0Var6.G));
        vh1 vh1Var = mj0.a;
        vh1 vh1Var2 = this.l;
        vf0 vf0Var7 = this.a;
        this.B = new do0(new yj2(vh1Var2, vf0Var7.A0, vf0Var7.A1, this.v, this.q, vh1Var, vf0Var7.s, vf0Var7.F));
        vf0 vf0Var8 = this.a;
        this.C = new do0(new q6(vf0Var8.N1, this.l, this.c, this.s, this.q, vf0Var8.t, vf0Var8.E, vf0Var8.T));
        this.D = new do0(new a10(this.c, this.a.D2));
        vh1 vh1Var3 = iu1.b;
        hu1 hu1Var = new hu1(11);
        hu1Var.a("TrackingPingMonitorAsAdEventListener", this.t);
        hu1Var.a("DelegatingAdEventListener", this.u);
        hu1Var.a("RequestThrottlerV2AdMonitor", this.w);
        hu1Var.a("AdStatsTrackerListener", this.x);
        hu1Var.a("CustomTabsConnectionInitializationTask", this.a.s2);
        hu1Var.a("PlayPrewarmListener", this.y);
        hu1Var.a("AdLifecycleTrackerListener", this.z);
        hu1Var.a("PreloadAdCloseListener", this.A);
        hu1Var.a("PersistentCacheAdMonitor", this.B);
        hu1Var.a("AdQualityDataHandler", this.C);
        hu1Var.a("ConsentFormActionMonitor", this.D);
        iu1 iu1Var = new iu1(hu1Var.a);
        ol0 ol0Var = this.p;
        vf0 vf0Var9 = this.a;
        ol0.a(ol0Var, new do0(new w3(vf0Var9.u, iu1Var, this.c, vf0Var9.A3)));
        vf0 vf0Var10 = this.a;
        ol0 ol0Var2 = vf0Var10.u;
        vh1 vh1Var4 = iu1.b;
        this.E = new do0(new g73(ol0Var2, vh1Var4, vf0Var10.A3));
        vf0 vf0Var11 = this.a;
        this.F = new do0(new hp3(this.a.u, this.c, this.p, this.E, new do0(new sq3(vf0Var11.u, vh1Var4, vf0Var11.A3)), vh1Var));
        vh1 vh1VarA2 = vh1.a(np3Var);
        vf0 vf0Var12 = this.a;
        this.G = new do0(new mp3(vf0Var12.u, this.p, this.F, vh1VarA2, vf0Var12.E));
        vf0 vf0Var13 = this.a;
        do0 do0Var = new do0(new t93(vf0Var13.z, this.c, vf0Var13.U, vf0Var13.I, this.q, vf0Var13.t));
        this.H = do0Var;
        this.I = new do0(new sk1(this.b, this.c, this.d, this.h, this.i, this.p, this.u, this.G, this.a.f0, do0Var, this.o, this.v));
        vf0 vf0Var14 = this.a;
        new do0(new af2(vf0Var14.O, this.c, vf0Var14.t, vf0Var14.w));
    }

    public final void a(j53 j53Var, Integer num, i2 i2Var, zy zyVar, ec3 ec3Var, n03 n03Var, tn1 tn1Var, m33 m33Var, zb zbVar, eo2 eo2Var, t91 t91Var) {
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
        int i = sc3.$r8$clinit;
        List listB = ud0.b(1);
        List listB2 = ud0.b(0);
        dw2 dw2Var = this.r;
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
        this.s = new sc3(listB, listB2);
        vh1 vh1VarA2 = vh1.a(t91Var);
        vf0 vf0Var = this.a;
        this.t = new do0(new mt3(vf0Var.G, vf0Var.o1, vf0Var.V, this.j, this.k, this.l, this.c, this.h, this.m, vf0Var.h, this.n, vf0Var.N4, this.o, this.p, vf0Var.D2, this.s, vf0Var.t, vh1VarA2));
    }

    @Override // ads_mobile_sdk.x1
    public final no3 f() {
        return (no3) this.F.get();
    }
}
