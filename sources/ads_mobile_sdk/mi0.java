package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class mi0 implements g03 {
    public final vf0 a;
    public dw2 b;
    public dw2 c;
    public vh1 d;
    public vh1 e;
    public sh0 f;
    public dw2 g;
    public vh1 h;
    public dw2 i;

    @Override // ads_mobile_sdk.g03
    public final px2 a() {
        return (o03) this.i.get();
    }

    public final void a(AdRequest adRequest, BaseRequest baseRequest, j53 j53Var, Boolean bool, Boolean bool2) {
        vh1 vh1Var = mj0.a;
        m03 m03Var = new m03(vh1Var, vh1Var, vh1Var);
        Object obj = do0.c;
        this.b = new do0(m03Var);
        this.c = new do0(new l03(this.a.w0));
        this.d = vh1.a(j53Var);
        this.e = vh1.a(bool2);
        this.f = new sh0(vh1.a(baseRequest));
        vh1 vh1VarA = vh1.a(bool);
        vf0 vf0Var = this.a;
        this.g = new do0(new pd1(vf0Var.P0, this.d, this.f, this.c, vh1VarA, vf0Var.h, vf0Var.t, vh1Var));
        this.h = vh1.a(adRequest);
        do0 do0Var = new do0(new k03(this.a.u, new do0(i03.a)));
        vf0 vf0Var2 = this.a;
        this.i = new do0(new p03(vf0Var2.c4, vf0Var2.u, this.b, vf0Var2.t, vf0Var2.G, this.c, this.d, vf0Var2.d, this.e, this.g, this.h, vf0Var2.e4, do0Var, vf0Var2.e0));
    }

    public mi0(vf0 vf0Var, AdRequest adRequest, BaseRequest baseRequest, j53 j53Var, Boolean bool, Boolean bool2) {
        this.a = vf0Var;
        a(adRequest, baseRequest, j53Var, bool, bool2);
    }

    @Override // ads_mobile_sdk.g03
    public final md1 b() {
        return (md1) this.g.get();
    }
}
