package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.google.gson.Gson;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class fh3 implements jr0 {
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

    public fh3(dw2 dw2Var, ol0 ol0Var, dw2 dw2Var2, dw2 dw2Var3, vh1 vh1Var, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6, dw2 dw2Var7, ol0 ol0Var2, dw2 dw2Var8, dw2 dw2Var9, dw2 dw2Var10, ol0 ol0Var3) {
        z41 z41Var = y41.a;
        this.a = dw2Var;
        this.b = ol0Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = vh1Var;
        this.f = dw2Var4;
        this.g = dw2Var5;
        this.h = dw2Var6;
        this.i = dw2Var7;
        this.j = ol0Var2;
        this.k = dw2Var8;
        this.l = dw2Var9;
        this.m = dw2Var10;
        this.n = ol0Var3;
        this.o = z41Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new eh3((CoroutineScope) this.a.get(), (CoroutineContext) this.b.get(), (String) this.c.get(), ((Integer) this.d.get()).intValue(), (SignalRequest) this.e.get(), (g83) this.f.get(), (ks3) this.g.get(), (yf3) this.h.get(), (com.google.android.libraries.ads.mobile.sdk.internal.signals.a) this.i.get(), (jb3) this.j.get(), (f13) this.k.get(), (ex0) this.l.get(), (j43) this.m.get(), (ur3) this.n.get(), (Gson) this.o.get());
    }
}
