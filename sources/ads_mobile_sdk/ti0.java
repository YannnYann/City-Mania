package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class ti0 {
    public final vf0 a;
    public dw2 b;
    public vh1 c;
    public vh1 d;
    public sh0 e;
    public dw2 f;
    public vh1 g;
    public e63 h;
    public vh1 i;
    public dw2 j;
    public vh1 k;
    public vh1 l;
    public vh1 m;
    public fo2 n;
    public w73 o;
    public dw2 p;
    public z73 q;
    public dw2 r;
    public b83 s;
    public a83 t;
    public vh1 u;
    public vh1 v;
    public vh1 w;
    public x73 x;
    public dw2 y;

    public ti0(vf0 vf0Var, zy zyVar, i2 i2Var, ec3 ec3Var, Long l, Integer num, BaseRequest baseRequest, j53 j53Var, n03 n03Var, tn1 tn1Var, Boolean bool, md1 md1Var, pb pbVar, q73 q73Var) {
        this.a = vf0Var;
        a(zyVar, i2Var, ec3Var, l, num, baseRequest, j53Var, n03Var, tn1Var);
        a(bool, md1Var, pbVar, q73Var);
    }

    public final void a(zy zyVar, i2 i2Var, ec3 ec3Var, Long l, Integer num, BaseRequest baseRequest, j53 j53Var, n03 n03Var, tn1 tn1Var) {
        az azVar = new az(this.a.w0);
        Object obj = do0.c;
        this.b = new do0(azVar);
        this.c = vh1.a(i2Var);
        this.d = vh1.a(ec3Var);
        this.e = new sh0(vh1.a(n03Var));
        this.f = new do0(new bz(this.e, new sh0(vh1.a(tn1Var))));
        vh1 vh1VarA = vh1.a(zyVar);
        this.g = vh1VarA;
        this.h = new e63(this.c, vh1VarA, this.a.u1);
        vh1 vh1VarA2 = vh1.a(j53Var);
        this.i = vh1VarA2;
        vf0 vf0Var = this.a;
        this.j = new do0(new nb0(vf0Var.u, vf0Var.f, vf0Var.t, vf0Var.h, this.h, vh1VarA2, vf0Var.N, this.g));
        this.k = vh1.a(baseRequest);
        this.l = vh1.a(l);
        vh1 vh1VarA3 = vh1.a(num);
        this.m = vh1VarA3;
        vh1 vh1Var = this.k;
        fo2 fo2Var = new fo2(vh1Var);
        this.n = fo2Var;
        dw2 dw2Var = this.b;
        vh1 vh1Var2 = this.c;
        vh1 vh1Var3 = this.d;
        dw2 dw2Var2 = this.f;
        vf0 vf0Var2 = this.a;
        this.o = new w73(new do0(new w63(dw2Var, vh1Var2, vh1Var3, dw2Var2, vf0Var2.J4, this.j, vf0Var2.h0, this.g, vh1Var, this.l, vh1VarA3, this.i, vf0Var2.x, vf0Var2.T0, vf0Var2.W, fo2Var)));
        do0 do0Var = new do0(im0.a);
        this.p = do0Var;
        vh1 vh1Var4 = this.i;
        vh1 vh1Var5 = this.k;
        vf0 vf0Var3 = this.a;
        this.q = new z73(new do0(new y63(vh1Var4, vh1Var5, vf0Var3.J0, vf0Var3.f, vf0Var3.E, do0Var, vf0Var3.K4)));
        vh1 vh1Var6 = this.i;
        vh1 vh1Var7 = this.k;
        vf0 vf0Var4 = this.a;
        y73 y73Var = new y73(new do0(new f83(vh1Var6, vh1Var7, vf0Var4.J0, vf0Var4.f, vf0Var4.E, this.p, vf0Var4.K4)));
        vh1 vh1Var8 = mj0.a;
        z73 z73Var = this.q;
        vf0 vf0Var5 = this.a;
        this.r = new do0(new jo3(z73Var, y73Var, vh1Var8, vf0Var5.E1, this.p, vf0Var5.x, vf0Var5.f1, this.f, this.k, this.i, this.l, this.m, this.c, this.g, this.d, this.b, this.n));
    }

    public final void a(Boolean bool, md1 md1Var, pb pbVar, q73 q73Var) {
        dw2 dw2Var = this.r;
        this.s = new b83(dw2Var);
        l83 l83Var = new l83(dw2Var, this.f, this.k, this.i, this.l, this.m, this.c, this.g, this.d, this.b, this.n);
        Object obj = do0.c;
        this.t = new a83(new do0(l83Var));
        this.u = vh1.a(q73Var);
        this.v = vh1.a(bool);
        this.w = vh1.a(md1Var);
        this.x = new x73(new do0(new e23(this.u, this.f, this.k, this.i, this.l, this.m, this.c, this.g, this.d, this.b, this.v, this.w, vh1.a(pbVar), this.n)));
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(4);
        w73 w73Var = this.o;
        if (w73Var != null) {
            linkedHashMapA.put("FirstPartyRenderer", w73Var);
            b83 b83Var = this.s;
            if (b83Var != null) {
                linkedHashMapA.put("ThirdPartyRenderer", b83Var);
                a83 a83Var = this.t;
                if (a83Var != null) {
                    linkedHashMapA.put("RtbRendererRewarded", a83Var);
                    x73 x73Var = this.x;
                    if (x73Var != null) {
                        linkedHashMapA.put("RecursiveRenderer", x73Var);
                        this.y = new do0(new j8(new iu1(linkedHashMapA)));
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
}
