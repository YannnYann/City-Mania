package ads_mobile_sdk;

import com.google.gson.Gson;

/* JADX INFO: loaded from: classes.dex */
public final class od1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public od1(ol0 ol0Var, dw2 dw2Var, dw2 dw2Var2) {
        z41 z41Var = y41.a;
        this.a = ol0Var;
        this.b = dw2Var;
        this.c = z41Var;
        this.d = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new nd1((if1) this.a.get(), (tx) this.b.get(), (Gson) this.c.get(), (ex0) this.d.get());
    }
}
