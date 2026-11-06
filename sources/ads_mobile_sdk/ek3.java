package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.Set;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class ek3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public ek3(dw2 dw2Var, dw2 dw2Var2, ol0 ol0Var, dw2 dw2Var3, vh1 vh1Var, dw2 dw2Var4) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = ol0Var;
        this.d = dw2Var3;
        this.e = vh1Var;
        this.f = dw2Var4;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new com.google.android.libraries.ads.mobile.sdk.internal.signals.a((Set) this.a.get(), (CoroutineScope) this.b.get(), (CoroutineScope) this.c.get(), (ex0) this.d.get(), (BaseRequest) this.e.get(), (ej1) this.f.get());
    }
}
