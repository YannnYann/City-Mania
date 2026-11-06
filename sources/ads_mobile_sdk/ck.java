package ads_mobile_sdk;

import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ck implements r41 {
    public final v3 a;

    public ck(v3 adEventEmitter) {
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        this.a = adEventEmitter;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_APP_EVENT;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get("name");
        if (str == null) {
            f01.c("App event with no name parameter.", null);
            return Unit.INSTANCE;
        }
        Unit unitA = this.a.a(str, (String) map.get("info"), continuation);
        return unitA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? unitA : Unit.INSTANCE;
    }
}
