package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class tg0 {
    public vh1 A;
    public vh1 B;
    public vh1 C;
    public vh1 D;
    public dw2 E;
    public k82 F;
    public dw2 G;
    public final vf0 a;
    public dw2 b;
    public vh1 c;
    public dw2 d;
    public dw2 e;
    public vh1 f;
    public vh1 g;
    public vh1 h;
    public vh1 i;
    public pj1 j;
    public on1 k;
    public hn1 l;
    public kn1 m;
    public nn1 n;
    public sn1 o;
    public fn1 p;
    public dw2 q;
    public dw2 r;
    public oj1 s;
    public gn1 t;
    public ln1 u;
    public jn1 v;
    public dw2 w;
    public dw2 x;
    public sh0 y;
    public dw2 z;

    public final void a(tf3 tf3Var, String str, BaseRequest baseRequest, j53 j53Var, md1 md1Var) {
        mn1 mn1Var = new mn1(this.a.w0);
        Object obj = do0.c;
        this.b = new do0(mn1Var);
        vh1 vh1VarA = vh1.a(j53Var);
        this.c = vh1VarA;
        this.d = new do0(new qn1(new do0(new in1(this.a.D2, vh1VarA))));
        this.e = new do0(new qb(this.a.t));
        this.f = vh1.a(str);
        this.g = vh1.a(tf3Var);
        this.h = vh1.a(baseRequest);
        vh1 vh1VarA2 = vh1.a(md1Var);
        this.i = vh1VarA2;
        this.j = new pj1(vh1VarA2);
        vf0 vf0Var = this.a;
        on1 on1Var = new on1(vf0Var.h);
        this.k = on1Var;
        this.l = new hn1(new do0(new rl3(vf0Var.w3, vf0Var.D2, this.b, on1Var)));
        vf0 vf0Var2 = this.a;
        this.m = new kn1(vf0Var2.s2);
        this.n = new nn1(vf0Var2.x3);
        this.o = new sn1(vf0Var2.y3);
        this.p = new fn1(vf0Var2.z3);
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(7);
        hu1Var.a("configLoaderRefreshSignalRequestedListener", this.a.v3);
        hu1Var.a("InspectorAdLifecycleMonitorRequestListener", this.j);
        hu1Var.a("adUnitStatsTrackerSignalsRequestedListener", this.l);
        hu1Var.a("customTabsConnectionInitializationTask", this.m);
        hu1Var.a("nativeSingletonPreloaderAsInternalAdRequestEventListener", this.n);
        hu1Var.a("webViewProfileOptimizerAdRequestListener", this.o);
        hu1Var.a("webViewPrefetchAdRequestListener", this.p);
        iu1 iu1Var = new iu1(hu1Var.a);
        vf0 vf0Var3 = this.a;
        do0 do0Var = new do0(new fj1(vf0Var3.u, iu1Var, vf0Var3.A3));
        this.q = do0Var;
        vf0 vf0Var4 = this.a;
        this.r = new do0(new yb(vf0Var4.d0, this.f, this.g, this.h, vf0Var4.t, do0Var));
        this.s = new oj1(this.i);
        dw2 dw2Var = this.b;
        vh1 vh1Var2 = this.h;
        vf0 vf0Var5 = this.a;
        this.t = new gn1(new do0(new rc(dw2Var, vh1Var2, vf0Var5.w3, vf0Var5.h)));
        vf0 vf0Var6 = this.a;
        this.u = new ln1(vf0Var6.V3);
        this.v = new jn1(vf0Var6.s2);
    }

    public final void a(Boolean bool, n03 n03Var, tn1 tn1Var, Boolean bool2, NativeRequest nativeRequest, gj1 gj1Var) {
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(4);
        oj1 oj1Var = this.s;
        if (oj1Var != null) {
            linkedHashMapA.put("InspectorAdLifecycleMonitorLoadListener", oj1Var);
            gn1 gn1Var = this.t;
            if (gn1Var != null) {
                linkedHashMapA.put("adUnitStatsTrackerAdLoadListener", gn1Var);
                ln1 ln1Var = this.u;
                if (ln1Var != null) {
                    linkedHashMapA.put("debugSignalsAdLoadListener", ln1Var);
                    jn1 jn1Var = this.v;
                    if (jn1Var != null) {
                        linkedHashMapA.put("customTabsConnectionInitializationTaskInternalAdLoadListener", jn1Var);
                        iu1 iu1Var = new iu1(linkedHashMapA);
                        vf0 vf0Var = this.a;
                        ki1 ki1Var = new ki1(vf0Var.u, iu1Var, vf0Var.A3);
                        Object obj = do0.c;
                        do0 do0Var = new do0(ki1Var);
                        this.w = do0Var;
                        vf0 vf0Var2 = this.a;
                        this.x = new do0(new w33(vf0Var2.u, vf0Var2.h, vf0Var2.u1, vf0Var2.o1, do0Var, this.e, this.d));
                        this.y = new sh0(vh1.a(n03Var));
                        this.z = new do0(new rn1(this.y, new sh0(vh1.a(tn1Var))));
                        this.A = vh1.a(nativeRequest);
                        this.B = vh1.a(bool);
                        this.C = vh1.a(bool2);
                        vh1 vh1VarA = vh1.a(gj1Var);
                        this.D = vh1VarA;
                        vf0 vf0Var3 = this.a;
                        this.E = new do0(new bq(vf0Var3.W3, this.z, this.h, this.A, vm1.a, this.B, this.k, this.d, this.b, this.C, vh1VarA, vf0Var3.Y3, this.i, this.e));
                        vf0 vf0Var4 = this.a;
                        k82 k82Var = new k82(vf0Var4.B0);
                        this.F = k82Var;
                        ke0 ke0Var = vf0Var4.Z3;
                        dw2 dw2Var = this.z;
                        vh1 vh1Var2 = this.h;
                        vh1 vh1Var3 = this.A;
                        on1 on1Var = this.k;
                        dw2 dw2Var2 = this.d;
                        dw2 dw2Var3 = this.b;
                        vh1 vh1Var4 = this.c;
                        rj1 rj1Var = qj1.a;
                        do0 do0Var2 = new do0(new l02(this.E, new do0(new v82(ke0Var, dw2Var, vh1Var2, vh1Var3, on1Var, dw2Var2, dw2Var3, vh1Var4, rj1Var, this.B, this.i, this.C, this.D, k82Var, this.e)), this.a.a4, this.z, this.h, this.A, this.k, this.d, this.b, this.c, rj1Var, this.B, this.i, this.C, this.D, this.F, this.e));
                        vf0 vf0Var5 = this.a;
                        this.G = new do0(new ti1(this.b, this.d, this.e, this.r, new wi2(vf0Var5.u, vf0Var5.C, vf0Var5.T3, vf0Var5.h, this.x, do0Var2), this.z, this.q, vf0Var5.t, this.w));
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

    public tg0(vf0 vf0Var, tf3 tf3Var, String str, BaseRequest baseRequest, j53 j53Var, Boolean bool, n03 n03Var, tn1 tn1Var, md1 md1Var, Boolean bool2, NativeRequest nativeRequest, gj1 gj1Var) {
        this.a = vf0Var;
        a(tf3Var, str, baseRequest, j53Var, md1Var);
        a(bool, n03Var, tn1Var, bool2, nativeRequest, gj1Var);
    }
}
