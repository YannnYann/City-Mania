package ads_mobile_sdk;

import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.chromium.net.UrlResponseInfo;

/* JADX INFO: loaded from: classes.dex */
public final class q60 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ f81 b;
    public final /* synthetic */ UrlResponseInfo c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q60(f81 f81Var, UrlResponseInfo urlResponseInfo, Continuation continuation) {
        super(2, continuation);
        this.b = f81Var;
        this.c = urlResponseInfo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new q60(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new q60(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            g9 g9Var = this.b.f;
            if (g9Var != null) {
                Map<String, List<String>> allHeaders = this.c.getAllHeaders();
                Intrinsics.checkNotNullExpressionValue(allHeaders, "getAllHeaders(...)");
                this.a = 1;
                if (((ej1) g9Var).a(allHeaders, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
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
