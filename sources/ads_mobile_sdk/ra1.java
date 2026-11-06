package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ra1 implements lm0 {
    public final /* synthetic */ jb3 a;
    public final /* synthetic */ if1 b;

    public ra1(if1 if1Var, jb3 jb3Var) {
        this.a = jb3Var;
        this.b = if1Var;
    }

    @Override // ads_mobile_sdk.lm0
    public final Unit a() {
        jb3 jb3Var = this.a;
        if1 debugModeProvider = this.b;
        jb3Var.getClass();
        Intrinsics.checkNotNullParameter(debugModeProvider, "debugModeProvider");
        return Unit.INSTANCE;
    }
}
