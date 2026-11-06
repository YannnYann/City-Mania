package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.rewarded.OnUserEarnedRewardListener;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class em0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ fm0 a;
    public final /* synthetic */ RewardItem b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public em0(Continuation continuation, fm0 fm0Var, RewardItem rewardItem) {
        super(2, continuation);
        this.a = fm0Var;
        this.b = rewardItem;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new em0(continuation, this.a, this.b);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new em0((Continuation) obj2, this.a, this.b).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        OnUserEarnedRewardListener onUserEarnedRewardListener;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        fm0 fm0Var = this.a;
        synchronized (fm0Var) {
            onUserEarnedRewardListener = fm0Var.o;
        }
        if (onUserEarnedRewardListener != null) {
            onUserEarnedRewardListener.onUserEarnedReward(this.b);
        }
        return Unit.INSTANCE;
    }
}
