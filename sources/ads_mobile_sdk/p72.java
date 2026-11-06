package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class p72 implements ai1 {
    public final n72 a;

    public p72(n72 nativeOnePointFiveOverlayFactory) {
        Intrinsics.checkNotNullParameter(nativeOnePointFiveOverlayFactory, "nativeOnePointFiveOverlayFactory");
        this.a = nativeOnePointFiveOverlayFactory;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object a(Continuation continuation) {
        n72 n72Var = this.a;
        n72Var.getClass();
        Object objB = n72.b(n72Var, continuation);
        return objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : Unit.INSTANCE;
    }
}
