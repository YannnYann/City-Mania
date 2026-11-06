package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.chromium.net.CronetEngine;

/* JADX INFO: loaded from: classes.dex */
public final class g70 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ k70 b;
    public final /* synthetic */ f81 c;
    public final /* synthetic */ CronetEngine d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ boolean f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g70(k70 k70Var, f81 f81Var, CronetEngine cronetEngine, boolean z, boolean z2, Continuation continuation) {
        super(2, continuation);
        this.b = k70Var;
        this.c = f81Var;
        this.d = cronetEngine;
        this.e = z;
        this.f = z2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new g70(this.b, this.c, this.d, this.e, this.f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((g70) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        k70 k70Var = this.b;
        f81 f81Var = this.c;
        CronetEngine cronetEngine = this.d;
        boolean z = this.e;
        boolean z2 = this.f;
        this.a = 1;
        Object objA = k70Var.a(f81Var, cronetEngine, z, z2, this);
        return objA == coroutine_suspended ? coroutine_suspended : objA;
    }
}
