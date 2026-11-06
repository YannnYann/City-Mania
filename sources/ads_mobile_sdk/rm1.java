package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import com.google.gson.Gson;
import java.util.Optional;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class rm1 implements jr0 {
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
    public final dw2 q;
    public final dw2 r;
    public final dw2 s;
    public final dw2 t;
    public final dw2 u;
    public final dw2 v;

    public rm1(dw2 dw2Var, dw2 dw2Var2, vh1 vh1Var, vh1 vh1Var2, dw2 dw2Var3, dw2 dw2Var4, ol0 ol0Var, dw2 dw2Var5, vh1 vh1Var3, dw2 dw2Var6, dw2 dw2Var7, dw2 dw2Var8, dw2 dw2Var9, dw2 dw2Var10, dw2 dw2Var11, dw2 dw2Var12, ol0 ol0Var2, vh1 vh1Var4, dw2 dw2Var13, vh1 vh1Var5, dw2 dw2Var14) {
        z41 z41Var = y41.a;
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = vh1Var;
        this.d = vh1Var2;
        this.e = dw2Var3;
        this.f = dw2Var4;
        this.g = ol0Var;
        this.h = dw2Var5;
        this.i = vh1Var3;
        this.j = dw2Var6;
        this.k = dw2Var7;
        this.l = dw2Var8;
        this.m = dw2Var9;
        this.n = dw2Var10;
        this.o = dw2Var11;
        this.p = dw2Var12;
        this.q = z41Var;
        this.r = ol0Var2;
        this.s = vh1Var4;
        this.t = dw2Var13;
        this.u = vh1Var5;
        this.v = dw2Var14;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new InternalNativeAd((CoroutineScope) this.a.get(), (String) this.b.get(), (i2) this.c.get(), (zy) this.d.get(), (ks3) this.e.get(), (Optional) this.f.get(), (v3) this.g.get(), (fm0) this.h.get(), (s02) this.i.get(), (j12) this.j.get(), (t32) this.k.get(), (b42) this.l.get(), (hl1) this.m.get(), (Optional) this.n.get(), (bn2) this.o.get(), (s93) this.p.get(), (Gson) this.q.get(), (ur3) this.r.get(), (eo2) this.s.get(), (ex0) this.t.get(), (BaseRequest) this.u.get(), (nr3) this.v.get());
    }
}
