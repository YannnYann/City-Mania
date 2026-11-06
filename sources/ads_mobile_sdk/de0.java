package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class de0 {
    public vh1 A;
    public xp B;
    public dw2 C;
    public final vf0 a;
    public vh1 b;
    public vh1 c;
    public e63 d;
    public vh1 e;
    public dw2 f;
    public vh1 g;
    public sh0 h;
    public dw2 i;
    public vh1 j;
    public vh1 k;
    public vh1 l;
    public vh1 m;
    public dw2 n;
    public vh1 o;
    public fo2 p;
    public tp q;
    public dw2 r;
    public wp s;
    public vp t;
    public zp u;
    public yp v;
    public vh1 w;
    public vh1 x;
    public vh1 y;
    public vh1 z;

    public de0(vf0 vf0Var, zy zyVar, i2 i2Var, ec3 ec3Var, Long l, Integer num, BaseRequest baseRequest, j53 j53Var, n03 n03Var, tn1 tn1Var, Boolean bool, md1 md1Var, pb pbVar, g33 g33Var, BannerRequest bannerRequest, Boolean bool2, lp lpVar, gj1 gj1Var) {
        this.a = vf0Var;
        a(zyVar, i2Var, ec3Var, l, num, baseRequest, j53Var, n03Var, tn1Var, g33Var, bannerRequest);
        a(bool, md1Var, pbVar, bool2, lpVar, gj1Var);
    }

    public final void a(zy zyVar, i2 i2Var, ec3 ec3Var, Long l, Integer num, BaseRequest baseRequest, j53 j53Var, n03 n03Var, tn1 tn1Var, g33 g33Var, BannerRequest bannerRequest) {
        this.b = vh1.a(i2Var);
        vh1 vh1VarA = vh1.a(zyVar);
        this.c = vh1VarA;
        this.d = new e63(this.b, vh1VarA, this.a.u1);
        vh1 vh1VarA2 = vh1.a(j53Var);
        this.e = vh1VarA2;
        vf0 vf0Var = this.a;
        nb0 nb0Var = new nb0(vf0Var.u, vf0Var.f, vf0Var.t, vf0Var.h, this.d, vh1VarA2, vf0Var.N, this.c);
        Object obj = do0.c;
        this.f = new do0(nb0Var);
        this.g = vh1.a(g33Var);
        this.h = new sh0(vh1.a(n03Var));
        this.i = new do0(new bz(this.h, new sh0(vh1.a(tn1Var))));
        this.j = vh1.a(baseRequest);
        this.k = vh1.a(l);
        this.l = vh1.a(num);
        this.m = vh1.a(ec3Var);
        this.n = new do0(new az(this.a.w0));
        vh1 vh1VarA3 = vh1.a(bannerRequest);
        this.o = vh1VarA3;
        vh1 vh1Var = this.j;
        fo2 fo2Var = new fo2(vh1Var);
        this.p = fo2Var;
        vf0 vf0Var2 = this.a;
        this.q = new tp(new do0(new ap(vf0Var2.f, vf0Var2.v4, this.f, vf0Var2.h0, this.g, vf0Var2.x, vf0Var2.W, vf0Var2.T0, this.i, vh1Var, this.e, this.k, this.l, this.b, this.c, this.m, this.n, vh1VarA3, fo2Var)));
        do0 do0Var = new do0(im0.a);
        this.r = do0Var;
        vh1 vh1Var2 = this.j;
        vh1 vh1Var3 = this.o;
        vf0 vf0Var3 = this.a;
        this.s = new wp(new do0(new fp(vh1Var2, vh1Var3, vf0Var3.J0, vf0Var3.f, vf0Var3.E, do0Var, vf0Var3.w4, this.g)));
        vh1 vh1Var4 = this.j;
        vh1 vh1Var5 = this.o;
        vf0 vf0Var4 = this.a;
        this.t = new vp(new do0(new dq(vh1Var4, vh1Var5, vf0Var4.J0, vf0Var4.f, vf0Var4.E, this.r, vf0Var4.w4, this.g)));
    }

    public final void a(Boolean bool, md1 md1Var, pb pbVar, Boolean bool2, lp lpVar, gj1 gj1Var) {
        vh1 vh1Var = this.j;
        vh1 vh1Var2 = this.o;
        vf0 vf0Var = this.a;
        jp jpVar = new jp(vh1Var, vh1Var2, vf0Var.J0, vf0Var.f, vf0Var.E, this.r, vf0Var.w4, this.g);
        Object obj = do0.c;
        sh0 sh0Var = new sh0(new up(new do0(jpVar)));
        wp wpVar = this.s;
        vp vpVar = this.t;
        vf0 vf0Var2 = this.a;
        do0 do0Var = new do0(new jo3(wpVar, vpVar, sh0Var, vf0Var2.E1, this.r, vf0Var2.x, vf0Var2.f1, this.i, this.j, this.e, this.k, this.l, this.b, this.c, this.m, this.n, this.p));
        this.u = new zp(do0Var);
        this.v = new yp(new do0(new l83(do0Var, this.i, this.j, this.e, this.k, this.l, this.b, this.c, this.m, this.n, this.p)));
        this.w = vh1.a(lpVar);
        this.x = vh1.a(bool);
        this.y = vh1.a(bool2);
        this.z = vh1.a(gj1Var);
        this.A = vh1.a(md1Var);
        this.B = new xp(new do0(new v13(this.w, this.i, this.j, this.e, this.k, this.l, this.b, this.c, this.m, this.n, this.x, this.y, this.o, this.g, this.z, this.A, vh1.a(pbVar), this.p)));
        vh1 vh1Var3 = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(4);
        tp tpVar = this.q;
        if (tpVar != null) {
            linkedHashMapA.put("FirstPartyRendererBanner", tpVar);
            zp zpVar = this.u;
            if (zpVar != null) {
                linkedHashMapA.put("ThirdPartyRendererBanner", zpVar);
                yp ypVar = this.v;
                if (ypVar != null) {
                    linkedHashMapA.put("RtbRendererBanner", ypVar);
                    xp xpVar = this.B;
                    if (xpVar != null) {
                        linkedHashMapA.put("RecursiveRendererBanner", xpVar);
                        this.C = new do0(new j8(new iu1(linkedHashMapA)));
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
