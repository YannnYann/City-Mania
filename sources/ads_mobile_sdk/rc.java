package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class rc implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new qc((String) this.a.get(), (BaseRequest) this.b.get(), (pc) this.c.get(), (tx) this.d.get());
    }

    public rc(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = dw2Var4;
    }
}
