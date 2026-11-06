package ads_mobile_sdk;

import com.google.android.gms.ads.rewarded.RewardItem;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class zo3 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ gp3 b;
    public final /* synthetic */ RewardItem c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zo3(gp3 gp3Var, RewardItem rewardItem, Continuation continuation) {
        super(2, continuation);
        this.b = gp3Var;
        this.c = rewardItem;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zo3(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new zo3(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            f73 f73Var = this.b.d;
            yo3 yo3Var = new yo3(this.c);
            this.a = 1;
            if (f73Var.a(yo3Var, this) == coroutine_suspended) {
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
