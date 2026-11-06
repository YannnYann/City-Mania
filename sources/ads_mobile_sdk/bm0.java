package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.OnAppEventListener;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class bm0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ fm0 a;
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bm0(Continuation continuation, fm0 fm0Var, String str, String str2) {
        super(2, continuation);
        this.a = fm0Var;
        this.b = str;
        this.c = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new bm0(continuation, this.a, this.b, this.c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((bm0) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        OnAppEventListener onAppEventListener;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        fm0 fm0Var = this.a;
        synchronized (fm0Var) {
            onAppEventListener = fm0Var.e;
        }
        if (onAppEventListener != null) {
            onAppEventListener.onAppEvent(this.b, this.c);
        }
        return Unit.INSTANCE;
    }
}
