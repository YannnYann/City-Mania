package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ec1 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public ec1(ol0 ol0Var, ol0 ol0Var2) {
        this.a = ol0Var;
        this.b = ol0Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        jb3 javascriptEngine = (jb3) this.a.get();
        g30 consentManager = (g30) this.b.get();
        Intrinsics.checkNotNullParameter(javascriptEngine, "javascriptEngine");
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        return new na1(javascriptEngine, consentManager);
    }
}
