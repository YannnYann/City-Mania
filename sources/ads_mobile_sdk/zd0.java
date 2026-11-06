package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class zd0 {
    public final vf0 a;
    public vh1 b;
    public vh1 c;
    public e63 d;
    public vh1 e;
    public dw2 f;
    public sh0 g;
    public dw2 h;
    public vh1 i;
    public vh1 j;
    public vh1 k;
    public vh1 l;
    public dw2 m;
    public fo2 n;
    public hl o;
    public dw2 p;
    public jl q;
    public dw2 r;
    public ml s;
    public ll t;
    public vh1 u;
    public vh1 v;
    public vh1 w;
    public kl x;
    public dw2 y;

    public zd0(vf0 vf0Var, zy zyVar, i2 i2Var, ec3 ec3Var, Long l, Integer num, BaseRequest baseRequest, j53 j53Var, n03 n03Var, tn1 tn1Var, Boolean bool, md1 md1Var, pb pbVar, bl blVar) {
        this.a = vf0Var;
        a(zyVar, i2Var, ec3Var, l, num, baseRequest, j53Var, n03Var, tn1Var);
        a(bool, md1Var, pbVar, blVar);
    }

    public final void a(zy zyVar, i2 i2Var, ec3 ec3Var, Long l, Integer num, BaseRequest baseRequest, j53 j53Var, n03 n03Var, tn1 tn1Var) {
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
        this.g = new sh0(vh1.a(n03Var));
        this.h = new do0(new bz(this.g, new sh0(vh1.a(tn1Var))));
        this.i = vh1.a(baseRequest);
        this.j = vh1.a(l);
        this.k = vh1.a(num);
        this.l = vh1.a(ec3Var);
        do0 do0Var = new do0(new az(this.a.w0));
        this.m = do0Var;
        vh1 vh1Var = this.i;
        fo2 fo2Var = new fo2(vh1Var);
        this.n = fo2Var;
        vf0 vf0Var2 = this.a;
        this.o = new hl(new do0(new uk(vf0Var2.F4, this.f, vf0Var2.h0, vf0Var2.x, vf0Var2.T0, this.h, vh1Var, this.e, this.j, this.k, this.b, this.c, this.l, do0Var, vf0Var2.W, fo2Var)));
        do0 do0Var2 = new do0(im0.a);
        this.p = do0Var2;
        vh1 vh1Var2 = this.i;
        vf0 vf0Var3 = this.a;
        this.q = new jl(new do0(new yk(vh1Var2, vf0Var3.J0, vf0Var3.f, vf0Var3.E, do0Var2, vf0Var3.G4)));
        vh1 vh1Var3 = this.i;
        vf0 vf0Var4 = this.a;
        il ilVar = new il(new do0(new ql(vh1Var3, vf0Var4.J0, vf0Var4.f, vf0Var4.E, this.p, vf0Var4.G4)));
        vh1 vh1Var4 = mj0.a;
        jl jlVar = this.q;
        vf0 vf0Var5 = this.a;
        this.r = new do0(new jo3(jlVar, ilVar, vh1Var4, vf0Var5.E1, this.p, vf0Var5.x, vf0Var5.f1, this.h, this.i, this.e, this.j, this.k, this.b, this.c, this.l, this.m, this.n));
    }

    public final void a(Boolean bool, md1 md1Var, pb pbVar, bl blVar) {
        dw2 dw2Var = this.r;
        this.s = new ml(dw2Var);
        l83 l83Var = new l83(dw2Var, this.h, this.i, this.e, this.j, this.k, this.b, this.c, this.l, this.m, this.n);
        Object obj = do0.c;
        this.t = new ll(new do0(l83Var));
        this.u = vh1.a(blVar);
        this.v = vh1.a(bool);
        this.w = vh1.a(md1Var);
        this.x = new kl(new do0(new r13(this.u, this.h, this.i, this.e, this.j, this.k, this.b, this.c, this.l, this.m, this.v, this.w, vh1.a(pbVar), this.n)));
        vh1 vh1Var = iu1.b;
        LinkedHashMap linkedHashMapA = ud0.a(4);
        hl hlVar = this.o;
        if (hlVar != null) {
            linkedHashMapA.put("FirstPartyRendererAppOpenInterstitial", hlVar);
            ml mlVar = this.s;
            if (mlVar != null) {
                linkedHashMapA.put("ThirdPartyRendererAppOpenInterstitial", mlVar);
                ll llVar = this.t;
                if (llVar != null) {
                    linkedHashMapA.put("RtbRendererAppOpenInterstitial", llVar);
                    kl klVar = this.x;
                    if (klVar != null) {
                        linkedHashMapA.put("RecursiveRendererAppOpenInterstitial", klVar);
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
