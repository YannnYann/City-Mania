package ads_mobile_sdk;

import androidx.webkit.Profile;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes.dex */
public final class a14 extends SuspendLambda implements Function2 {
    public r14 a;
    public int b;
    public final /* synthetic */ r14 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a14(r14 r14Var, Continuation continuation) {
        super(2, continuation);
        this.c = r14Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new a14(this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new a14(this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        r14 r14Var;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.c.i.getClass();
                if (!rz3.a()) {
                    xs3.a("MultiProfile is not supported", null, 6);
                    return Unit.INSTANCE;
                }
                String str = this.c.g() ? "GMA_WEBVIEW_PROFILE" : "Default";
                r14 r14Var2 = this.c;
                CoroutineContext coroutineContext = r14Var2.d;
                z04 z04Var = new z04(this.c, str, null);
                this.a = r14Var2;
                this.b = 1;
                obj = BuildersKt.withContext(coroutineContext, z04Var, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                r14Var = r14Var2;
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                r14Var = this.a;
                ResultKt.throwOnFailure(obj);
            }
            r14Var.m = (Profile) obj;
        } catch (Throwable th) {
            xs3.a("Failed to initialize Profile: " + th.getMessage(), null, 6);
        }
        return Unit.INSTANCE;
    }
}
