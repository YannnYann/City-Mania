package ads_mobile_sdk;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class go0 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public go0(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        Context context = (Context) this.a.get();
        return new vu2(context, context.getSharedPreferences("pcvmspf2", 0), do0.a(this.b), (ts3) this.c.get());
    }
}
