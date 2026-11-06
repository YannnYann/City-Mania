package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class ql implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public ql(dw2 dw2Var, dw2 dw2Var2, vh1 vh1Var, dw2 dw2Var3, dw2 dw2Var4, if0 if0Var) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = vh1Var;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = if0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new pl((BaseRequest) this.a.get(), (l43) this.b.get(), (Context) this.c.get(), (f0) this.d.get(), (hm0) this.e.get(), this.f);
    }
}
