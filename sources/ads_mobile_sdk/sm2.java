package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.gson.Gson;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final class sm2 implements jr0 {
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
    public final dw2 k;

    public sm2(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, ol0 ol0Var, dw2 dw2Var3, vh1 vh1Var2, dw2 dw2Var4, dw2 dw2Var5, ol0 ol0Var2, dw2 dw2Var6) {
        z41 z41Var = y41.a;
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = ol0Var;
        this.e = dw2Var3;
        this.f = vh1Var2;
        this.g = dw2Var4;
        this.h = z41Var;
        this.i = dw2Var5;
        this.j = ol0Var2;
        this.k = dw2Var6;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new rm2((BaseRequest) this.a.get(), (ej1) this.b.get(), (k) this.c.get(), (im2) this.d.get(), (v8) this.e.get(), (j53) this.f.get(), (bb2) this.g.get(), (Gson) this.h.get(), (ex0) this.i.get(), (ur3) this.j.get(), (Optional) this.k.get());
    }
}
