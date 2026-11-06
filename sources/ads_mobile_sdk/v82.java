package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;

/* JADX INFO: loaded from: classes.dex */
public final class v82 implements jr0 {
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

    public v82(ke0 ke0Var, dw2 dw2Var, vh1 vh1Var, dw2 dw2Var2, on1 on1Var, dw2 dw2Var3, dw2 dw2Var4, vh1 vh1Var2, jr0 jr0Var, dw2 dw2Var5, vh1 vh1Var3, dw2 dw2Var6, dw2 dw2Var7, k82 k82Var, dw2 dw2Var8) {
        this.a = ke0Var;
        this.b = dw2Var;
        this.c = vh1Var;
        this.d = dw2Var2;
        this.e = on1Var;
        this.f = dw2Var3;
        this.g = dw2Var4;
        this.h = vh1Var2;
        this.i = jr0Var;
        this.j = dw2Var5;
        this.k = vh1Var3;
        this.l = dw2Var6;
        this.m = dw2Var7;
        this.n = k82Var;
        this.o = dw2Var8;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new u82(this.a, (ks3) this.b.get(), (BaseRequest) this.c.get(), (NativeRequest) this.d.get(), ((Long) this.e.get()).longValue(), ((Integer) this.f.get()).intValue(), (String) this.g.get(), (j53) this.h.get(), ((Integer) this.i.get()).intValue(), ((Boolean) this.j.get()).booleanValue(), (md1) this.k.get(), ((Boolean) this.l.get()).booleanValue(), (gj1) this.m.get(), (i82) this.n.get(), (pb) this.o.get());
    }
}
