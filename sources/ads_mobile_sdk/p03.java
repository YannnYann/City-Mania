package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes.dex */
public final class p03 implements jr0 {
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

    public p03(dw2 dw2Var, ol0 ol0Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6, dw2 dw2Var7, dw2 dw2Var8, dw2 dw2Var9, dw2 dw2Var10, ne0 ne0Var, dw2 dw2Var11, dw2 dw2Var12) {
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
        this.l = ne0Var;
        this.m = dw2Var11;
        this.n = dw2Var12;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        CoroutineScope coroutineScope = (CoroutineScope) this.a.get();
        CoroutineScope coroutineScope2 = (CoroutineScope) this.b.get();
        ks3 ks3Var = (ks3) this.c.get();
        ex0 ex0Var = (ex0) this.d.get();
        g83 g83Var = (g83) this.e.get();
        String str = (String) this.f.get();
        j53 j53Var = (j53) this.g.get();
        ja1 ja1Var = (ja1) this.h.get();
        boolean zBooleanValue = ((Boolean) this.i.get()).booleanValue();
        md1 md1Var = (md1) this.j.get();
        return new o03((AdRequest) this.k.get(), (qn) this.n.get(), j53Var, ex0Var, ja1Var, md1Var, g83Var, ks3Var, str, this.l, coroutineScope, coroutineScope2, (SharedFlow) this.m.get(), zBooleanValue);
    }
}
