package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial.SwipeableInterstitialRequest;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class sv0 implements jr0 {
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

    public sv0(dw2 dw2Var, ol0 ol0Var, dw2 dw2Var2, vh1 vh1Var, dw2 dw2Var3, vh1 vh1Var2, vh1 vh1Var3, dw2 dw2Var4, dw2 dw2Var5, e63 e63Var, dw2 dw2Var6, dw2 dw2Var7, dw2 dw2Var8) {
        this.a = dw2Var;
        this.b = ol0Var;
        this.c = dw2Var2;
        this.d = vh1Var;
        this.e = dw2Var3;
        this.f = vh1Var2;
        this.g = vh1Var3;
        this.h = dw2Var4;
        this.i = dw2Var5;
        this.j = e63Var;
        this.k = dw2Var6;
        this.l = dw2Var7;
        this.m = dw2Var8;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new rv0((CoroutineScope) this.a.get(), (CoroutineScope) this.b.get(), (String) this.c.get(), (h41) this.d.get(), (rb) this.e.get(), (i2) this.f.get(), (SwipeableInterstitialRequest) this.g.get(), (f0) this.h.get(), (g83) this.i.get(), (d63) this.j.get(), (tx) this.k.get(), (ex0) this.l.get(), (c24) this.m.get());
    }
}
