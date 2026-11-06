package ads_mobile_sdk;

import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes.dex */
public final class ge3 implements r41 {
    public final CoroutineContext a;
    public final j12 b;
    public final j92 c;

    public ge3(CoroutineContext uiContext, j12 nativeAdCore, j92 nativeVideoViewabilityMonitor) {
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(nativeAdCore, "nativeAdCore");
        Intrinsics.checkNotNullParameter(nativeVideoViewabilityMonitor, "nativeVideoViewabilityMonitor");
        this.a = uiContext;
        this.b = nativeAdCore;
        this.c = nativeVideoViewabilityMonitor;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_SHOW_OVERLAY;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        Object objWithContext;
        r31 r31Var2 = (r31) this.b.d.get();
        return (r31Var2 == null || (objWithContext = BuildersKt.withContext(this.a, new fe3(this, r31Var2, null), continuation)) != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? Unit.INSTANCE : objWithContext;
    }
}
