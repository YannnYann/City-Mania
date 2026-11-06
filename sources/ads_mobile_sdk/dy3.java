package ads_mobile_sdk;

import android.util.DisplayMetrics;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class dy3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new cy3((xf) this.a.get(), (yw1) this.b.get(), (DisplayMetrics) this.c.get(), (View) this.d.get(), (ts3) this.e.get());
    }

    public dy3(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = dw2Var4;
        this.e = dw2Var5;
    }
}
