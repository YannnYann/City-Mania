package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.gson.Gson;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class cb2 implements jr0 {
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
    public final dw2 l;
    public final dw2 m;
    public final dw2 n;
    public final dw2 o;
    public final dw2 p;

    public cb2(ol0 ol0Var, dw2 dw2Var, dw2 dw2Var2, vh1 vh1Var, vh1 vh1Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6, dw2 dw2Var7, dw2 dw2Var8, dw2 dw2Var9, ol0 ol0Var2, dw2 dw2Var10, ol0 ol0Var3) {
        z41 z41Var = y41.a;
        this.a = ol0Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = vh1Var;
        this.e = vh1Var2;
        this.f = dw2Var3;
        this.g = dw2Var4;
        this.h = dw2Var5;
        this.i = dw2Var6;
        this.j = dw2Var7;
        this.k = dw2Var8;
        this.l = dw2Var9;
        this.m = ol0Var2;
        this.n = z41Var;
        this.o = dw2Var10;
        this.p = ol0Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new bb2((jb3) this.a.get(), (ka2) this.b.get(), (com.google.android.libraries.ads.mobile.sdk.internal.signals.a) this.c.get(), (BaseRequest) this.d.get(), (j53) this.e.get(), (ej1) this.f.get(), (k) this.g.get(), (j43) this.h.get(), (u43) this.i.get(), (b53) this.j.get(), (ex0) this.k.get(), (f13) this.l.get(), (ur3) this.m.get(), (Gson) this.n.get(), (n8) this.o.get(), (CoroutineScope) this.p.get());
    }
}
