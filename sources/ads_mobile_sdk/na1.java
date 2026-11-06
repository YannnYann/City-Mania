package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class na1 implements lm0 {
    public final /* synthetic */ jb3 a;
    public final /* synthetic */ g30 b;

    public na1(jb3 jb3Var, g30 g30Var) {
        this.a = jb3Var;
        this.b = g30Var;
    }

    @Override // ads_mobile_sdk.lm0
    public final Unit a() {
        jb3 jb3Var = this.a;
        g30 consentStringsProvider = this.b;
        yq1 yq1Var = (yq1) jb3Var;
        yq1Var.getClass();
        Intrinsics.checkNotNullParameter(consentStringsProvider, "consentStringsProvider");
        yq1Var.p = consentStringsProvider;
        return Unit.INSTANCE;
    }
}
