package ads_mobile_sdk;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class vx0 extends Lambda implements Function0 {
    public final /* synthetic */ yx0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vx0(yx0 yx0Var) {
        super(0);
        this.a = yx0Var;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        h41 h41Var = this.a.I;
        if (h41Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gmaWebViewContainer");
            h41Var = null;
        }
        return h41Var.a;
    }
}
