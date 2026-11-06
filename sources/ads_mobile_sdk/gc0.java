package ads_mobile_sdk;

import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gc0 implements r41 {
    public final v3 a;

    public gc0(v3 adEventEmitter) {
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        this.a = adEventEmitter;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_CUSTOM_CLICK;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get("asset");
        if (str != null && str.length() != 0) {
            Unit unitA = this.a.a(str, continuation);
            return unitA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? unitA : Unit.INSTANCE;
        }
        xs3.a("No asset name provided in custom click GMSG.", null, 6);
        return Unit.INSTANCE;
    }
}
