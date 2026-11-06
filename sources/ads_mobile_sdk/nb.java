package ads_mobile_sdk;

import android.content.Context;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final class nb implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public nb(dw2 dw2Var, dw2 dw2Var2, jr0 jr0Var, vh1 vh1Var, dw2 dw2Var3, dw2 dw2Var4) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = jr0Var;
        this.d = vh1Var;
        this.e = dw2Var3;
        this.f = dw2Var4;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new mb((Optional) this.a.get(), (Optional) this.b.get(), (j53) this.c.get(), (Context) this.d.get(), (ex0) this.e.get(), (ao0) this.f.get());
    }
}
