package ads_mobile_sdk;

import androidx.webkit.WebViewCompat;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class el1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ r31 a;
    public final /* synthetic */ Executor b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public el1(r31 r31Var, Executor executor, Continuation continuation) {
        super(2, continuation);
        this.a = r31Var;
        this.b = executor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new el1(this.a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new el1(this.a, this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        AtomicBoolean atomicBoolean = az3.a;
        r31 webView = this.a;
        Executor executor = this.b;
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter("https://googlemobileads.com/warmup", "url");
        Intrinsics.checkNotNullParameter(executor, "executor");
        boolean z = false;
        if (az3.e.get()) {
            try {
                WebViewCompat.prerenderUrlAsync(webView, "https://googlemobileads.com/warmup", null, executor, new xy3());
                z = true;
            } catch (Exception unused) {
                az3.e.set(false);
            }
        }
        return Boxing.boxBoolean(z);
    }
}
