package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes.dex */
public final class h12 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;

    public h12(vh1 vh1Var, ol0 ol0Var, dw2 dw2Var, h52 h52Var, dw2 dw2Var2, dw2 dw2Var3, ol0 ol0Var2) {
        this.a = vh1Var;
        this.b = ol0Var;
        this.c = dw2Var;
        this.d = h52Var;
        this.e = dw2Var2;
        this.f = dw2Var3;
        this.g = ol0Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new g12((Context) this.a.get(), (CoroutineContext) this.b.get(), (v42) this.c.get(), (g52) this.d.get(), (NativeRequest) this.e.get(), (ex0) this.f.get(), (ur3) this.g.get());
    }
}
