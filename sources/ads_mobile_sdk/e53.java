package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class e53 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public e53(dw2 dw2Var, vh1 vh1Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = vh1Var;
        this.c = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new d53((b53) this.a.get(), (BaseRequest) this.b.get(), (j53) this.c.get());
    }
}
