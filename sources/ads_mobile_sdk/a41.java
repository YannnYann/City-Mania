package ads_mobile_sdk;

import android.net.Uri;
import android.webkit.WebResourceRequest;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class a41 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ g41 b;
    public final /* synthetic */ Uri c;
    public final /* synthetic */ WebResourceRequest d;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new a41(this.c, this.d, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((a41) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            s93 s93Var = this.b.u;
            if (s93Var != null) {
                String string = this.c.toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                w90 w90Var = w90.AD_RESOURCE_CREATIVE;
                Map<String, String> requestHeaders = this.d.getRequestHeaders();
                if (requestHeaders == null) {
                    requestHeaders = MapsKt__MapsKt.emptyMap();
                }
                this.a = 1;
                if (s93.a(s93Var, string, w90Var, requestHeaders, this) == coroutine_suspended) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a41(Uri uri, WebResourceRequest webResourceRequest, g41 g41Var, Continuation continuation) {
        super(2, continuation);
        this.b = g41Var;
        this.c = uri;
        this.d = webResourceRequest;
    }
}
