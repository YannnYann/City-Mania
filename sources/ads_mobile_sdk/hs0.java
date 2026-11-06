package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class hs0 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public hs0(dw2 dw2Var, dw2 dw2Var2, vh1 vh1Var, ol0 ol0Var) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = vh1Var;
        this.d = ol0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new gs0((BaseRequest) this.a.get(), (ls0) this.b.get(), (i2) this.c.get(), (CoroutineScope) this.d.get());
    }
}
