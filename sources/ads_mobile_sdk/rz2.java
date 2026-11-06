package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes.dex */
public final class rz2 implements jr0 {
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

    public rz2(dw2 dw2Var, ol0 ol0Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6, dw2 dw2Var7, dw2 dw2Var8, dw2 dw2Var9, dw2 dw2Var10, qe0 qe0Var, dw2 dw2Var11, dw2 dw2Var12, dw2 dw2Var13) {
        this.a = dw2Var;
        this.b = ol0Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = dw2Var5;
        this.g = dw2Var6;
        this.h = dw2Var7;
        this.i = dw2Var8;
        this.j = dw2Var9;
        this.k = dw2Var10;
        this.l = qe0Var;
        this.m = dw2Var11;
        this.n = dw2Var12;
        this.o = dw2Var13;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new qz2((CoroutineScope) this.a.get(), (CoroutineScope) this.b.get(), (NativeAdRequest) this.c.get(), (ks3) this.d.get(), (ex0) this.e.get(), (g83) this.f.get(), (String) this.g.get(), (j53) this.h.get(), (ja1) this.i.get(), ((Boolean) this.j.get()).booleanValue(), (md1) this.k.get(), this.l, ((Integer) this.m.get()).intValue(), (SharedFlow) this.n.get(), (qn) this.o.get());
    }
}
