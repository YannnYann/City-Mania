package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ap3 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ gp3 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ap3(gp3 gp3Var, Continuation continuation) {
        super(2, continuation);
        this.b = gp3Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ap3(this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new ap3(this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            gp3 gp3Var = this.b;
            f73 f73Var = gp3Var.d;
            RewardItem rewardItem = gp3Var.b.l0;
            if (rewardItem == null) {
                RewardItem.Companion.getClass();
                rewardItem = k63.b;
            }
            this.a = 1;
            if (f73Var.a(rewardItem, this) == coroutine_suspended) {
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
