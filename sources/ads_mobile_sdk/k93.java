package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final class k93 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public k93(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, c93 c93Var, jr0 jr0Var, vh1 vh1Var) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = c93Var;
        this.e = jr0Var;
        this.f = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new j93((ex0) this.a.get(), (Optional) this.b.get(), (Optional) this.c.get(), (b93) this.d.get(), (j53) this.e.get(), (BaseRequest) this.f.get());
    }
}
