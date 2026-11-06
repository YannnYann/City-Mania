package ads_mobile_sdk;

import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class e61 implements r41 {
    public final CoroutineScope a;
    public final j12 b;
    public final j92 c;

    public e61(CoroutineScope uiScope, j12 nativeAdCore, j92 nativeVideoViewabilityMonitor) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(nativeAdCore, "nativeAdCore");
        Intrinsics.checkNotNullParameter(nativeVideoViewabilityMonitor, "nativeVideoViewabilityMonitor");
        this.a = uiScope;
        this.b = nativeAdCore;
        this.c = nativeVideoViewabilityMonitor;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_HIDE_OVERLAY;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        BuildersKt__Builders_commonKt.launch$default(this.a, null, null, new d61(this, null), 3, null);
        return Unit.INSTANCE;
    }
}
