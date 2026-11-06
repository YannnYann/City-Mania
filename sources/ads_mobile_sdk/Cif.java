package ads_mobile_sdk;

import android.content.Context;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: renamed from: ads_mobile_sdk.if, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public final class Cif implements jr0 {
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

    public Cif(ol0 ol0Var, dw2 dw2Var, vh1 vh1Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6, dw2 dw2Var7, dw2 dw2Var8, dw2 dw2Var9) {
        this.a = ol0Var;
        this.b = dw2Var;
        this.c = vh1Var;
        this.d = dw2Var2;
        this.e = dw2Var3;
        this.f = dw2Var4;
        this.g = dw2Var5;
        this.h = dw2Var6;
        this.i = dw2Var7;
        this.j = dw2Var8;
        this.k = dw2Var9;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new hf((CoroutineScope) this.a.get(), (CoroutineContext) this.b.get(), (Context) this.c.get(), (rv1) this.d.get(), (kf) this.e.get(), (f0) this.f.get(), (pn) this.g.get(), (tx) this.h.get(), (ex0) this.i.get(), (g83) this.j.get(), (ja1) this.k.get());
    }
}
