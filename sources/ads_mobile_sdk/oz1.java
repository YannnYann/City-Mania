package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class oz1 {
    public final zx1 a;

    public oz1(zx1 mraidEventEmitter) {
        Intrinsics.checkNotNullParameter(mraidEventEmitter, "mraidEventEmitter");
        this.a = mraidEventEmitter;
    }

    public final Unit a(cy1 cy1Var) {
        Object objD = this.a.d(cy1Var);
        if (objD != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            objD = Unit.INSTANCE;
        }
        return (Unit) objD;
    }
}
