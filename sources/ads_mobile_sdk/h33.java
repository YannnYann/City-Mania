package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class h33 implements g33 {
    public g33 a;

    public h33(e33 refreshListener) {
        Intrinsics.checkNotNullParameter(refreshListener, "refreshListener");
        this.a = refreshListener;
    }

    @Override // ads_mobile_sdk.g33
    public final void f() {
        this.a = null;
    }

    @Override // ads_mobile_sdk.g33
    public final Object b(Continuation continuation) {
        g33 g33Var = this.a;
        if (g33Var == null) {
            return Unit.INSTANCE;
        }
        Object objB = g33Var.b(continuation);
        return objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.g33
    public final Object a(boolean z, Continuation continuation) {
        g33 g33Var = this.a;
        if (g33Var == null) {
            return Unit.INSTANCE;
        }
        Object objA = g33Var.a(z, continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
    }

    @Override // ads_mobile_sdk.g33
    public final Object c(boolean z, Continuation continuation) {
        g33 g33Var = this.a;
        if (g33Var == null) {
            return Unit.INSTANCE;
        }
        Object objC = g33Var.c(z, continuation);
        return objC == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objC : Unit.INSTANCE;
    }
}
