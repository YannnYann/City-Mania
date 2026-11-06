package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class n23 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ e33 b;
    public final /* synthetic */ dz2 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n23(e33 e33Var, dz2 dz2Var, Continuation continuation) {
        super(2, continuation);
        this.b = e33Var;
        this.c = dz2Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new n23(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new n23(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            wy2 wy2Var = this.b.d;
            if (wy2Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adLoader");
                wy2Var = null;
            }
            j01 j01Var = new j01(this.c, kk1.k, null, 4);
            this.a = 1;
            if (wy2Var.a(j01Var, (ResponseInfo) null, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
