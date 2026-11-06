package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class pk2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;

    public pk2(dw2 dw2Var, ol0 ol0Var, dw2 dw2Var2, dw2 dw2Var3, jr0 jr0Var, ol0 ol0Var2, dw2 dw2Var4) {
        this.a = dw2Var;
        this.b = ol0Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = jr0Var;
        this.f = ol0Var2;
        this.g = dw2Var4;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new ok2((al2) this.a.get(), (im2) this.b.get(), (BaseRequest) this.c.get(), (j53) this.d.get(), ((Integer) this.e.get()).intValue(), (ur3) this.f.get(), (cl2) this.g.get());
    }
}
