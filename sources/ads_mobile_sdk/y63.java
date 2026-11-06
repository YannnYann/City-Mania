package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class y63 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;

    public y63(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, vh1 vh1Var, dw2 dw2Var4, dw2 dw2Var5, nf0 nf0Var) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = vh1Var;
        this.e = dw2Var4;
        this.f = dw2Var5;
        this.g = nf0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new x63((j53) this.a.get(), (BaseRequest) this.b.get(), (l43) this.c.get(), (Context) this.d.get(), (f0) this.e.get(), (hm0) this.f.get(), this.g);
    }
}
