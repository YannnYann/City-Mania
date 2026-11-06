package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ue1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ OnAdInspectorClosedListener a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ue1(Continuation continuation, OnAdInspectorClosedListener onAdInspectorClosedListener) {
        super(2, continuation);
        this.a = onAdInspectorClosedListener;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ue1(continuation, this.a);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new ue1((Continuation) obj2, this.a).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        this.a.onAdInspectorClosed(if1.N);
        return Unit.INSTANCE;
    }
}
