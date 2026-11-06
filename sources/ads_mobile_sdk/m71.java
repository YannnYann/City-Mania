package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes.dex */
public final class m71 extends SuspendLambda implements Function1 {
    public final /* synthetic */ Response a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m71(Response response, Continuation continuation) {
        super(1, continuation);
        this.a = response;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new m71(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new m71(this.a, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        byte[] bArrBytes;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        ResponseBody responseBodyBody = this.a.body();
        if (responseBodyBody == null || (bArrBytes = responseBodyBody.bytes()) == null) {
            bArrBytes = new byte[0];
        }
        return new p53(bArrBytes);
    }
}
