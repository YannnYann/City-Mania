package ads_mobile_sdk;

import android.content.Context;
import android.os.Looper;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes.dex */
public final class so extends SuspendLambda implements Function2 {
    public int a;
    public /* synthetic */ Object b;

    public so(Continuation continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        so soVar = new so(continuation);
        soVar.b = obj;
        return soVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        so soVar = new so((Continuation) obj2);
        soVar.b = (ck1) obj;
        return soVar.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objWithContext;
        ck1 ck1Var;
        Object obj2;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ck1 ck1Var2 = (ck1) this.b;
            a01.a.getClass();
            CoroutineContext coroutineContext = (CoroutineContext) ((vf0) zz0.a()).w.get();
            this.b = ck1Var2;
            this.a = 1;
            if (Intrinsics.areEqual(Looper.getMainLooper(), Looper.myLooper())) {
                AdSize adSizeM = ck1Var2.m();
                Context context = ck1Var2.n.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                o53 o53Var = new o53(context, adSizeM);
                o53Var.addView(ck1Var2.n);
                objWithContext = o53Var;
            } else {
                objWithContext = BuildersKt.withContext(coroutineContext, new di1(ck1Var2, null), this);
            }
            if (objWithContext == coroutine_suspended) {
                return coroutine_suspended;
            }
            ck1Var = ck1Var2;
            obj2 = objWithContext;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ck1Var = (ck1) this.b;
            ResultKt.throwOnFailure(obj);
            obj2 = obj;
        }
        return new wo(ck1Var, (o53) obj2);
    }
}
