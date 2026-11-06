package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class bk3 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ com.google.android.libraries.ads.mobile.sdk.internal.signals.a b;
    public final /* synthetic */ sh3 c;
    public final /* synthetic */ Signals d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bk3(com.google.android.libraries.ads.mobile.sdk.internal.signals.a aVar, sh3 sh3Var, Signals signals, Continuation continuation) {
        super(2, continuation);
        this.b = aVar;
        this.c = sh3Var;
        this.d = signals;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new bk3(this.b, this.c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((bk3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            com.google.android.libraries.ads.mobile.sdk.internal.signals.a aVar = this.b;
            sh3 sh3Var = this.c;
            Signals signals = this.d;
            this.a = 1;
            if (aVar.a(sh3Var, signals, this) == coroutine_suspended) {
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
