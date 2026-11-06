package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class tc implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public tc(dw2 dw2Var, vh1 vh1Var) {
        this.a = dw2Var;
        this.b = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new sc((pc) this.a.get(), (BaseRequest) this.b.get());
    }
}
