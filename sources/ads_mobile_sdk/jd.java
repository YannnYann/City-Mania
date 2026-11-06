package ads_mobile_sdk;

import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class jd extends kq0 implements ld, fy3 {
    public final Mutex d;
    public ey3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jd(CoroutineScope uiScope, Map listeners, ub3 serialEventQueue) {
        super(uiScope, listeners, serialEventQueue);
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        Intrinsics.checkNotNullParameter(serialEventQueue, "serialEventQueue");
        this.d = MutexKt.Mutex$default(false, 1, null);
    }

    @Override // ads_mobile_sdk.ld
    public final Object a(ey3 ey3Var, Continuation continuation) {
        return a(this, ey3Var, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object a(ads_mobile_sdk.jd r11, ads_mobile_sdk.ey3 r12, kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 262
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.jd.a(ads_mobile_sdk.jd, ads_mobile_sdk.ey3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.fy3
    public final Object c(ey3 ey3Var, Continuation continuation) {
        Object objA = a(this, ey3Var, continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }
}
