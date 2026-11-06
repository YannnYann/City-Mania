package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sa1 implements lm0 {
    public final /* synthetic */ gl2 a;
    public final /* synthetic */ im2 b;

    public sa1(gl2 gl2Var, im2 im2Var) {
        this.a = gl2Var;
        this.b = im2Var;
    }

    @Override // ads_mobile_sdk.lm0
    public final Unit a() {
        gl2 gl2Var = this.a;
        im2 manager = this.b;
        gl2Var.getClass();
        Intrinsics.checkNotNullParameter(manager, "manager");
        gl2Var.g = manager;
        return Unit.INSTANCE;
    }
}
