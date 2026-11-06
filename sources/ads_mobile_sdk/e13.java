package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.AppStats;

/* JADX INFO: loaded from: classes.dex */
public final class e13 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public e13(dw2 dw2Var, vh1 vh1Var, dw2 dw2Var2, dw2 dw2Var3) {
        this.a = dw2Var;
        this.b = vh1Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new d13((pc) this.a.get(), (BaseRequest) this.b.get(), (qn) this.c.get(), (AppStats) this.d.get());
    }
}
