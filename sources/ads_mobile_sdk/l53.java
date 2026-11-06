package ads_mobile_sdk;

import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class l53 implements r41 {
    public final fi2 a;

    public l53(fi2 paidLifecycleWrapper) {
        Intrinsics.checkNotNullParameter(paidLifecycleWrapper, "paidLifecycleWrapper");
        this.a = paidLifecycleWrapper;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_RESET_PAID;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        this.a.a();
        this.a.b();
        return Unit.INSTANCE;
    }
}
