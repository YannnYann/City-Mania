package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class hg0 {
    public vh1 A;
    public vh1 B;
    public vh1 C;
    public dw2 D;
    public final vf0 a;
    public dw2 b;
    public dw2 c;
    public dw2 d;
    public vh1 e;
    public vh1 f;
    public vh1 g;
    public vh1 h;
    public pj1 i;
    public on1 j;
    public hn1 k;
    public kn1 l;
    public nn1 m;
    public sn1 n;
    public fn1 o;
    public dw2 p;
    public dw2 q;
    public oj1 r;
    public gn1 s;
    public ln1 t;
    public jn1 u;
    public dw2 v;
    public dw2 w;
    public sh0 x;
    public dw2 y;
    public vh1 z;

    public final void a(tf3 tf3Var, String str, BaseRequest baseRequest, j53 j53Var, md1 md1Var) {
        mn1 mn1Var = new mn1(this.a.w0);
        Object obj = do0.c;
        this.b = new do0(mn1Var);
        this.c = new do0(new qn1(new do0(new in1(this.a.D2, vh1.a(j53Var)))));
        this.d = new do0(new qb(this.a.t));
        this.e = vh1.a(str);
        this.f = vh1.a(tf3Var);
        this.g = vh1.a(baseRequest);
        vh1 vh1VarA = vh1.a(md1Var);
        this.h = vh1VarA;
        this.i = new pj1(vh1VarA);
        vf0 vf0Var = this.a;
        on1 on1Var = new on1(vf0Var.h);
        this.j = on1Var;
        this.k = new hn1(new do0(new rl3(vf0Var.w3, vf0Var.D2, this.b, on1Var)));
        vf0 vf0Var2 = this.a;
        this.l = new kn1(vf0Var2.s2);
        this.m = new nn1(vf0Var2.x3);
        this.n = new sn1(vf0Var2.y3);
        this.o = new fn1(vf0Var2.z3);
        vh1 vh1Var = iu1.b;
        hu1 hu1Var = new hu1(7);
        hu1Var.a("configLoaderRefreshSignalRequestedListener", this.a.v3);
        hu1Var.a("InspectorAdLifecycleMonitorRequestListener", this.i);
        hu1Var.a("adUnitStatsTrackerSignalsRequestedListener", this.k);
        hu1Var.a("customTabsConnectionInitializationTask", this.l);
        hu1Var.a("nativeSingletonPreloaderAsInternalAdRequestEventListener", this.m);
        hu1Var.a("webViewProfileOptimizerAdRequestListener", this.n);
        hu1Var.a("webViewPrefetchAdRequestListener", this.o);
        iu1 iu1Var = new iu1(hu1Var.a);
        vf0 vf0Var3 = this.a;
        do0 do0Var = new do0(new fj1(vf0Var3.u, iu1Var, vf0Var3.A3));
        this.p = do0Var;
        vf0 vf0Var4 = this.a;
        this.q = new do0(new yb(vf0Var4.d0, this.e, this.f, this.g, vf0Var4.t, do0Var));
        this.r = new oj1(this.h);
        dw2 dw2Var = this.b;
        vh1 vh1Var2 = this.g;
        vf0 vf0Var5 = this.a;
        this.s = new gn1(new do0(new rc(dw2Var, vh1Var2, vf0Var5.w3, vf0Var5.h)));
        vf0 vf0Var6 = this.a;
        this.t = new ln1(vf0Var6.V3);
        this.u = new jn1(vf0Var6.s2);
    }

    public final void a(Boolean bool, n03 n03Var, tn1 tn1Var, g33 g33Var, BannerRequest bannerRequest, gj1 gj1Var, Boolean bool2) {
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(4);
        oj1 oj1Var = this.r;
        if (oj1Var != null) {
            linkedHashMapA.put("InspectorAdLifecycleMonitorLoadListener", oj1Var);
            gn1 gn1Var = this.s;
            if (gn1Var != null) {
                linkedHashMapA.put("adUnitStatsTrackerAdLoadListener", gn1Var);
                ln1 ln1Var = this.t;
                if (ln1Var != null) {
                    linkedHashMapA.put("debugSignalsAdLoadListener", ln1Var);
                    jn1 jn1Var = this.u;
                    if (jn1Var != null) {
                        linkedHashMapA.put("customTabsConnectionInitializationTaskInternalAdLoadListener", jn1Var);
                        iu1 iu1Var = new iu1(linkedHashMapA);
                        vf0 vf0Var = this.a;
                        ki1 ki1Var = new ki1(vf0Var.u, iu1Var, vf0Var.A3);
                        Object obj = do0.c;
                        do0 do0Var = new do0(ki1Var);
                        this.v = do0Var;
                        vf0 vf0Var2 = this.a;
                        this.w = new do0(new w33(vf0Var2.u, vf0Var2.h, vf0Var2.u1, vf0Var2.o1, do0Var, this.d, this.c));
                        this.x = new sh0(vh1.a(n03Var));
                        this.y = new do0(new rn1(this.x, new sh0(vh1.a(tn1Var))));
                        this.z = vh1.a(bannerRequest);
                        this.A = vh1.a(g33Var);
                        this.B = vh1.a(bool);
                        this.C = vh1.a(bool2);
                        vh1 vh1VarA = vh1.a(gj1Var);
                        vf0 vf0Var3 = this.a;
                        do0 do0Var2 = new do0(new bq(vf0Var3.W3, this.y, this.g, this.z, this.A, this.B, this.j, this.c, this.b, this.C, vh1VarA, vf0Var3.Y3, this.h, this.d));
                        vf0 vf0Var4 = this.a;
                        this.D = new do0(new ti1(this.b, this.c, this.d, this.q, new wi2(vf0Var4.u, vf0Var4.C, vf0Var4.T3, vf0Var4.h, this.w, do0Var2), this.y, this.p, vf0Var4.t, this.v));
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

    public hg0(vf0 vf0Var, tf3 tf3Var, String str, BaseRequest baseRequest, j53 j53Var, Boolean bool, n03 n03Var, tn1 tn1Var, md1 md1Var, g33 g33Var, BannerRequest bannerRequest, gj1 gj1Var, Boolean bool2) {
        this.a = vf0Var;
        a(tf3Var, str, baseRequest, j53Var, md1Var);
        a(bool, n03Var, tn1Var, g33Var, bannerRequest, gj1Var, bool2);
    }
}
