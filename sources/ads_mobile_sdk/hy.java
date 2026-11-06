package ads_mobile_sdk;

import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public final class hy implements r41 {
    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_CLOSE;
    }

    @Override // ads_mobile_sdk.r41
    public final boolean i() {
        return true;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        ay0 ay0Var = r31Var.p;
        if (ay0Var != null) {
            ay0Var.a(ky.c);
        }
        return Unit.INSTANCE;
    }
}
