package ads_mobile_sdk;

import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes.dex */
public final class ux3 implements jr0 {
    public final dw2 a;

    public ux3(ol0 ol0Var) {
        this.a = ol0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new tx3((CoroutineContext) this.a.get());
    }
}
