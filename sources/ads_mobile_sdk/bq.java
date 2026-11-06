package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class bq implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;
    public final dw2 i;
    public final dw2 j;
    public final dw2 k;
    public final dw2 l;
    public final dw2 m;
    public final dw2 n;

    public bq(ie0 ie0Var, dw2 dw2Var, vh1 vh1Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, on1 on1Var, dw2 dw2Var5, dw2 dw2Var6, dw2 dw2Var7, vh1 vh1Var2, dw2 dw2Var8, vh1 vh1Var3, dw2 dw2Var9) {
        this.a = ie0Var;
        this.b = dw2Var;
        this.c = vh1Var;
        this.d = dw2Var2;
        this.e = dw2Var3;
        this.f = dw2Var4;
        this.g = on1Var;
        this.h = dw2Var5;
        this.i = dw2Var6;
        this.j = dw2Var7;
        this.k = vh1Var2;
        this.l = dw2Var8;
        this.m = vh1Var3;
        this.n = dw2Var9;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new aq(this.a, (ks3) this.b.get(), (BaseRequest) this.c.get(), (BannerRequest) this.d.get(), (g33) this.e.get(), ((Boolean) this.f.get()).booleanValue(), ((Long) this.g.get()).longValue(), ((Integer) this.h.get()).intValue(), (String) this.i.get(), ((Boolean) this.j.get()).booleanValue(), (gj1) this.k.get(), (lp) this.l.get(), (md1) this.m.get(), (pb) this.n.get());
    }
}
