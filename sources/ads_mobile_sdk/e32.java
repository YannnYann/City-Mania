package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class e32 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;

    public e32(ol0 ol0Var, vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5) {
        this.a = ol0Var;
        this.b = vh1Var;
        this.c = dw2Var;
        this.d = dw2Var2;
        this.e = dw2Var3;
        this.f = dw2Var4;
        this.g = dw2Var5;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new d32((CoroutineScope) this.a.get(), (NativeRequest) this.b.get(), (ex0) this.c.get(), (t22) this.d.get(), (BaseRequest) this.e.get(), (o21) this.f.get(), ((Integer) this.g.get()).intValue());
    }
}
