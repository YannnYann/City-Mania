package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.gson.JsonObject;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class u32 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;

    public u32(dw2 dw2Var, ol0 ol0Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6, jr0 jr0Var) {
        this.a = dw2Var;
        this.b = ol0Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = dw2Var5;
        this.g = dw2Var6;
        this.h = jr0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new t32((CoroutineScope) this.a.get(), (CoroutineScope) this.b.get(), (s02) this.c.get(), (ex0) this.d.get(), (hl1) this.e.get(), (t22) this.f.get(), (BaseRequest) this.g.get(), (JsonObject) this.h.get());
    }
}
