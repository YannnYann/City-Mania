package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRequest;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes.dex */
public final class gl0 implements jr0 {
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

    public gl0(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, ol0 ol0Var, je0 je0Var, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6, dw2 dw2Var7, dw2 dw2Var8, dw2 dw2Var9, dw2 dw2Var10, dw2 dw2Var11, dw2 dw2Var12, dw2 dw2Var13, dw2 dw2Var14, dw2 dw2Var15, dw2 dw2Var16) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = ol0Var;
        this.f = je0Var;
        this.g = dw2Var4;
        this.h = dw2Var5;
        this.i = dw2Var6;
        this.j = dw2Var7;
        this.k = dw2Var8;
        this.l = dw2Var9;
        this.m = dw2Var10;
        this.n = dw2Var11;
        this.o = dw2Var12;
        this.p = dw2Var13;
        this.q = dw2Var14;
        this.r = dw2Var15;
        this.s = dw2Var16;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new fl0((Context) this.a.get(), (CoroutineContext) this.b.get(), (CoroutineContext) this.c.get(), (CoroutineScope) this.d.get(), (CoroutineScope) this.e.get(), this.f, (e33) this.g.get(), (ao0) this.h.get(), (BannerAdRequest) this.i.get(), (ks3) this.j.get(), (ex0) this.k.get(), (g83) this.l.get(), (String) this.m.get(), (j53) this.n.get(), (ja1) this.o.get(), ((Boolean) this.p.get()).booleanValue(), (md1) this.q.get(), (SharedFlow) this.r.get(), (qn) this.s.get());
    }
}
