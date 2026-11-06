package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class g8 implements jr0 {
    public final dw2 a;

    public g8(ol0 ol0Var) {
        this.a = ol0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        CoroutineScope scope = (CoroutineScope) this.a.get();
        Intrinsics.checkNotNullParameter(scope, "scope");
        return (d40) kq2.b(e40.a(scope));
    }
}
