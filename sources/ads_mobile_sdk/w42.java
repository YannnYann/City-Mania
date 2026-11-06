package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class w42 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;

    public w42(dw2 dw2Var, dw2 dw2Var2, ol0 ol0Var, dw2 dw2Var3, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6, dw2 dw2Var7) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = ol0Var;
        this.d = dw2Var3;
        this.e = dw2Var4;
        this.f = dw2Var5;
        this.g = dw2Var6;
        this.h = dw2Var7;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new v42((NativeRequest) this.a.get(), (xs) this.b.get(), (ur3) this.c.get(), (j62) this.d.get(), (iz3) this.e.get(), (CoroutineContext) this.f.get(), (CoroutineScope) this.g.get(), (g83) this.h.get());
    }
}
