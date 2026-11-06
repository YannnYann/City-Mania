package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class pw1 implements rh3 {
    public final qn a;

    public pw1(qn appState) {
        Intrinsics.checkNotNullParameter(appState, "appState");
        this.a = appState;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.MEMORY;
    }

    @Override // ads_mobile_sdk.rh3
    public final Object s(Continuation continuation) {
        Runtime runtime = Runtime.getRuntime();
        return new q01(new ow1(runtime.freeMemory(), runtime.maxMemory(), runtime.totalMemory(), ((rs1) this.a.a).c));
    }
}
