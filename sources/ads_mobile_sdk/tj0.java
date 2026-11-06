package ads_mobile_sdk;

import android.app.Activity;
import com.google.android.libraries.ads.mobile.sdk.common.AdInspectorError;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class tj0 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ ok0 b;
    public final /* synthetic */ AdInspectorError c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tj0(ok0 ok0Var, AdInspectorError adInspectorError, Continuation continuation) {
        super(2, continuation);
        this.b = ok0Var;
        this.c = adInspectorError;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new tj0(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new tj0(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ok0 ok0Var = this.b;
            String message = this.c.getMessage();
            this.a = 1;
            if (ok0.a(ok0Var, true, message, (Activity) null, false, (Continuation) this, 12) == coroutine_suspended) {
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
