package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class c93 implements jr0 {
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

    public c93(dw2 dw2Var, vh1 vh1Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, ol0 ol0Var, dw2 dw2Var6, ol0 ol0Var2, vh1 vh1Var2, dw2 dw2Var7) {
        this.a = dw2Var;
        this.b = vh1Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = dw2Var5;
        this.g = ol0Var;
        this.h = dw2Var6;
        this.i = ol0Var2;
        this.j = vh1Var2;
        this.k = dw2Var7;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new b93((ex0) this.a.get(), (Context) this.b.get(), (tx) this.c.get(), (pn) this.d.get(), (f0) this.e.get(), (rv1) this.f.get(), (CoroutineScope) this.g.get(), (g83) this.h.get(), (hf) this.i.get(), (BaseRequest) this.j.get(), (m13) this.k.get());
    }
}
