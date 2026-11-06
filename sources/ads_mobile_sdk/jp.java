package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;

/* JADX INFO: loaded from: classes.dex */
public final class jp implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;

    public jp(vh1 vh1Var, vh1 vh1Var2, dw2 dw2Var, vh1 vh1Var3, dw2 dw2Var2, dw2 dw2Var3, df0 df0Var, vh1 vh1Var4) {
        this.a = vh1Var;
        this.b = vh1Var2;
        this.c = dw2Var;
        this.d = vh1Var3;
        this.e = dw2Var2;
        this.f = dw2Var3;
        this.g = df0Var;
        this.h = vh1Var4;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new ip((BaseRequest) this.a.get(), (BannerRequest) this.b.get(), (l43) this.c.get(), (Context) this.d.get(), (f0) this.e.get(), (hm0) this.f.get(), this.g, (g33) this.h.get());
    }
}
