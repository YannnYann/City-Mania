package ads_mobile_sdk;

import com.google.common.util.concurrent.ListeningExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class mh3 implements jr0 {
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

    public mh3(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, vh1 vh1Var, vh1 vh1Var2, vh1 vh1Var3, sc3 sc3Var, sc3 sc3Var2, sc3 sc3Var3, dw2 dw2Var4) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = vh1Var;
        this.e = vh1Var2;
        this.f = vh1Var3;
        this.g = sc3Var;
        this.h = sc3Var2;
        this.i = sc3Var3;
        this.j = dw2Var4;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new lh3((ListeningExecutorService) this.a.get(), (a) this.b.get(), (yw1) this.c.get(), (fl3) this.d.get(), (String) this.e.get(), (xf) this.f.get(), this.g, this.h, this.i, (ts3) this.j.get());
    }
}
