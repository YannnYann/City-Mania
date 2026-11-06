package ads_mobile_sdk;

import android.net.Network;
import android.net.NetworkCapabilities;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class t92 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ ca2 b;
    public final /* synthetic */ long c;
    public final /* synthetic */ Network d;
    public final /* synthetic */ NetworkCapabilities e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t92(ca2 ca2Var, long j, Network network, NetworkCapabilities networkCapabilities, Continuation continuation) {
        super(2, continuation);
        this.b = ca2Var;
        this.c = j;
        this.d = network;
        this.e = networkCapabilities;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new t92(this.b, this.c, this.d, this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((t92) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ca2 ca2Var = this.b;
            long j = this.c;
            Network network = this.d;
            NetworkCapabilities networkCapabilities = this.e;
            this.a = 1;
            if (ca2Var.a(j, network, networkCapabilities, false, this) == coroutine_suspended) {
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
