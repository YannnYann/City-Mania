package ads_mobile_sdk;

import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class dp implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public dp(dw2 dw2Var, vh1 vh1Var) {
        this.a = dw2Var;
        this.b = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new cp((CoroutineScope) this.a.get(), (g33) this.b.get());
    }
}
