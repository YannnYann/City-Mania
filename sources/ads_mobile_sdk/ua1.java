package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ua1 implements lm0 {
    public final /* synthetic */ oz3 a;
    public final /* synthetic */ if1 b;

    public ua1(if1 if1Var, oz3 oz3Var) {
        this.a = oz3Var;
        this.b = if1Var;
    }

    @Override // ads_mobile_sdk.lm0
    public final Unit a() {
        oz3 oz3Var = this.a;
        if1 debugModeProvider = this.b;
        oz3Var.getClass();
        Intrinsics.checkNotNullParameter(debugModeProvider, "debugModeProvider");
        oz3Var.r = debugModeProvider;
        return Unit.INSTANCE;
    }
}
