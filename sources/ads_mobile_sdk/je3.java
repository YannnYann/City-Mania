package ads_mobile_sdk;

import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes.dex */
public final class je3 implements r41 {
    public final CoroutineContext a;
    public final j12 b;

    public je3(CoroutineContext uiContext, j12 nativeAdCore) {
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(nativeAdCore, "nativeAdCore");
        this.a = uiContext;
        this.b = nativeAdCore;
    }

    @Override // ads_mobile_sdk.r41
    public final u11 g() {
        return u11.GMSG_SHOW_VALIDATOR_OVERLAY;
    }

    @Override // ads_mobile_sdk.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        Object objWithContext;
        r31 r31Var2 = (r31) this.b.e.get();
        return (r31Var2 == null || (objWithContext = BuildersKt.withContext(this.a, new ie3(r31Var2, null), continuation)) != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? Unit.INSTANCE : objWithContext;
    }
}
