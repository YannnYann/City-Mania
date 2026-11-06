package ads_mobile_sdk;

import android.content.Context;
import com.google.gson.Gson;

/* JADX INFO: loaded from: classes.dex */
public final class wh2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public wh2(dw2 dw2Var, ol0 ol0Var, dw2 dw2Var2, dw2 dw2Var3, vh1 vh1Var) {
        z41 z41Var = y41.a;
        this.a = dw2Var;
        this.b = ol0Var;
        this.c = dw2Var2;
        this.d = z41Var;
        this.e = dw2Var3;
        this.f = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new vh2((sh2) this.a.get(), (ur3) this.b.get(), (ex0) this.c.get(), (Gson) this.d.get(), (k32) this.e.get(), (Context) this.f.get());
    }
}
