package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final class yj2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;

    public yj2(dw2 dw2Var, ol0 ol0Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6, ol0 ol0Var2) {
        this.a = dw2Var;
        this.b = ol0Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = dw2Var5;
        this.g = dw2Var6;
        this.h = ol0Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new xj2((ec3) this.a.get(), (im2) this.b.get(), (al2) this.c.get(), (BaseRequest) this.d.get(), (j53) this.e.get(), (Optional) this.f.get(), (cl2) this.g.get(), (ur3) this.h.get());
    }
}
