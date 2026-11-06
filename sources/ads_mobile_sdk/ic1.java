package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ic1 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public ic1(ol0 ol0Var, ol0 ol0Var2) {
        this.a = ol0Var;
        this.b = ol0Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        if1 inspectorManager = (if1) this.a.get();
        jb3 javascriptEngine = (jb3) this.b.get();
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        Intrinsics.checkNotNullParameter(javascriptEngine, "javascriptEngine");
        return new ra1(inspectorManager, javascriptEngine);
    }
}
