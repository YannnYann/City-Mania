package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class pb3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public pb3(dw2 dw2Var, dw2 dw2Var2, vh1 vh1Var, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = vh1Var;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = dw2Var5;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new ob3((String) this.a.get(), (ex0) this.b.get(), (Context) this.c.get(), (o21) this.d.get(), (String) this.e.get(), (ja1) this.f.get());
    }
}
