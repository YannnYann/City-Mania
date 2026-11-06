package ads_mobile_sdk;

import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class iw3 implements r41 {
    public final j92 a;

    public iw3(j92 nativeVideoViewabilityMonitor) {
        Intrinsics.checkNotNullParameter(nativeVideoViewabilityMonitor, "nativeVideoViewabilityMonitor");
        this.a = nativeVideoViewabilityMonitor;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_UNTRACK_ACTIVE_VIEW_UNIT;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        this.a.g.getAndSet(false);
        return Unit.INSTANCE;
    }
}
