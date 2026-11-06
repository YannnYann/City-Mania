package ads_mobile_sdk;

import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class k13 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;

    public k13(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, vh1 vh1Var, dw2 dw2Var4) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = vh1Var;
        this.e = dw2Var4;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new j13((xf) this.a.get(), (yw1) this.b.get(), (Map) this.c.get(), (Context) this.d.get(), (ts3) this.e.get());
    }
}
