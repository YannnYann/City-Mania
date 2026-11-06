package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ri1 extends SuspendLambda implements Function2 {
    public vi2 a;
    public int b;
    public final /* synthetic */ si1 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ri1(si1 si1Var, Continuation continuation) {
        super(2, continuation);
        this.c = si1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ri1(this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new ri1(this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        vi2 vi2Var;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            si1 si1Var = this.c;
            vi2Var = si1Var.g;
            nt3 nt3Var = si1Var.f;
            this.a = vi2Var;
            this.b = 1;
            obj = nt3Var.b(this);
            if (obj != coroutine_suspended) {
            }
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        vi2Var = this.a;
        ResultKt.throwOnFailure(obj);
        v01 v01Var = (v01) obj;
        if (v01Var instanceof i01) {
            return (i01) v01Var;
        }
        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
        ec3 ec3Var = (ec3) ((q01) v01Var).b;
        this.a = null;
        this.b = 2;
        Object objA = vi2Var.a(ec3Var, this);
        return objA == coroutine_suspended ? coroutine_suspended : objA;
    }
}
