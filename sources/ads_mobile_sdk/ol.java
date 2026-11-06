package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class ol implements jr0 {
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

    public ol(oe0 oe0Var, dw2 dw2Var, vh1 vh1Var, on1 on1Var, dw2 dw2Var2, dw2 dw2Var3, vh1 vh1Var2, vh1 vh1Var3, vh1 vh1Var4, dw2 dw2Var4, dw2 dw2Var5) {
        this.a = oe0Var;
        this.b = dw2Var;
        this.c = vh1Var;
        this.d = on1Var;
        this.e = dw2Var2;
        this.f = dw2Var3;
        this.g = vh1Var2;
        this.h = vh1Var3;
        this.i = vh1Var4;
        this.j = dw2Var4;
        this.k = dw2Var5;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new nl(this.a, (ks3) this.b.get(), (BaseRequest) this.c.get(), ((Long) this.d.get()).longValue(), ((Integer) this.e.get()).intValue(), (String) this.f.get(), (j53) this.g.get(), ((Boolean) this.h.get()).booleanValue(), (md1) this.i.get(), (bl) this.j.get(), (pb) this.k.get());
    }
}
