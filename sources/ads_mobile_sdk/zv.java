package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class zv implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public zv(jr0 jr0Var, dw2 dw2Var, vh1 vh1Var, dw2 dw2Var2) {
        this.a = jr0Var;
        this.b = dw2Var;
        this.c = vh1Var;
        this.d = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new yv((j53) this.a.get(), (pn) this.b.get(), (BaseRequest) this.c.get(), (o00) this.d.get());
    }
}
