package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class ry2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ wy2 a;
    public final /* synthetic */ v01 b;
    public final /* synthetic */ ResponseInfo c;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ry2(this.c, this.a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ry2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        ei1 ei1Var = this.a.y;
        if (ei1Var != null) {
            ei1Var.a(px2.a((i01) this.b, this.c));
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ry2(ResponseInfo responseInfo, wy2 wy2Var, v01 v01Var, Continuation continuation) {
        super(2, continuation);
        this.a = wy2Var;
        this.b = v01Var;
        this.c = responseInfo;
    }
}
