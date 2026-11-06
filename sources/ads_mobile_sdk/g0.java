package ads_mobile_sdk;

import android.app.Application;
import android.content.Context;
import java.lang.ref.WeakReference;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class g0 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public g0(vh1 vh1Var, dw2 dw2Var, vh1 vh1Var2, ol0 ol0Var, dw2 dw2Var2, dw2 dw2Var3) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = vh1Var2;
        this.d = ol0Var;
        this.e = dw2Var2;
        this.f = dw2Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new f0((Context) this.a.get(), (Application) this.b.get(), (WeakReference) this.c.get(), (CoroutineScope) this.d.get(), (ex0) this.e.get(), (tx) this.f.get());
    }
}
