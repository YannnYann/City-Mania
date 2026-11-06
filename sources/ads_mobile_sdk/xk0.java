package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xk0 implements rh3 {
    public final qn a;

    public xk0(qn appState) {
        Intrinsics.checkNotNullParameter(appState, "appState");
        this.a = appState;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.DEBUG_SIGNAL;
    }

    @Override // ads_mobile_sdk.rh3
    public final Object s(Continuation continuation) {
        Object obj = this.a.g.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        return new q01(new wk0((String) obj, this.a.h.get()));
    }
}
