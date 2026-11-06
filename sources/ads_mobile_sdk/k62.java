package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class k62 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public k62(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2, z62 z62Var, dw2 dw2Var3, dw2 dw2Var4) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
        this.d = z62Var;
        this.e = dw2Var3;
        this.f = dw2Var4;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new j62((Context) this.a.get(), (CoroutineScope) this.b.get(), (iz3) this.c.get(), (n62) this.d.get(), (ex0) this.e.get(), (NativeRequest) this.f.get());
    }
}
