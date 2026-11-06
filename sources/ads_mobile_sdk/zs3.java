package ads_mobile_sdk;

import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class zs3 implements r41 {
    public final j92 a;

    public zs3(j92 nativeVideoViewabilityMonitor) {
        Intrinsics.checkNotNullParameter(nativeVideoViewabilityMonitor, "nativeVideoViewabilityMonitor");
        this.a = nativeVideoViewabilityMonitor;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_TRACK_ACTIVE_VIEW_UNIT;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        j92 j92Var = this.a;
        j92Var.g.getAndSet(true);
        Object objB = j92Var.b(continuation);
        if (objB != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            objB = Unit.INSTANCE;
        }
        return objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : Unit.INSTANCE;
    }
}
