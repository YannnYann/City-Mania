package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class wf2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;

    public wf2(dw2 dw2Var, ol0 ol0Var, vh1 vh1Var, vh1 vh1Var2, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5) {
        this.a = dw2Var;
        this.b = ol0Var;
        this.c = vh1Var;
        this.d = vh1Var2;
        this.e = dw2Var2;
        this.f = dw2Var3;
        this.g = dw2Var4;
        this.h = dw2Var5;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new vf2((CoroutineContext) this.a.get(), (CoroutineScope) this.b.get(), (JsonObject) this.c.get(), (i2) this.d.get(), (kd2) this.e.get(), (s02) this.f.get(), (ex0) this.g.get(), (s93) this.h.get());
    }
}
