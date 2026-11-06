package ads_mobile_sdk;

import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class yc1 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;

    public yc1(vh1 vh1Var, dw2 dw2Var, vh1 vh1Var2, vh1 vh1Var3, dw2 dw2Var2) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = vh1Var2;
        this.d = vh1Var3;
        this.e = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new xc1((xf) this.a.get(), (yw1) this.b.get(), (Map) this.c.get(), (Context) this.d.get(), (ts3) this.e.get());
    }
}
