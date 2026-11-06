package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.gson.Gson;

/* JADX INFO: loaded from: classes.dex */
public final class yb implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;

    public yb(ol0 ol0Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5) {
        z41 z41Var = y41.a;
        this.a = ol0Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = z41Var;
        this.f = dw2Var4;
        this.g = dw2Var5;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new xb((jb3) this.a.get(), (String) this.b.get(), (tf3) this.c.get(), (BaseRequest) this.d.get(), (Gson) this.e.get(), (ex0) this.f.get(), (ej1) this.g.get());
    }
}
