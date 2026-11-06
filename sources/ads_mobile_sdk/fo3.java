package ads_mobile_sdk;

import com.google.android.gms.ads.AdError;
import com.google.android.libraries.ads.mobile.sdk.common.MediationAdError;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final class fo3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ jf a;
    public final /* synthetic */ io3 b;
    public final /* synthetic */ CancellableContinuation c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fo3(jf jfVar, io3 io3Var, CancellableContinuation cancellableContinuation, Continuation continuation) {
        super(2, continuation);
        this.a = jfVar;
        this.b = io3Var;
        this.c = cancellableContinuation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new fo3(this.a, this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((fo3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        try {
            jf jfVar = this.a;
            if (jfVar instanceof qv1) {
                io3 io3Var = this.b;
                io3Var.l.a(io3Var.h, io3Var.f, jfVar, new do3(io3Var, atomicBoolean, this.c));
            } else if (jfVar instanceof u83) {
                io3 io3Var2 = this.b;
                io3Var2.m.a(io3Var2.h, io3Var2.f, jfVar, new do3(io3Var2, atomicBoolean, this.c));
            } else if (jfVar instanceof rc2) {
                rf rfVar = (rf) this.b.n.get();
                io3 io3Var3 = this.b;
                rfVar.a(io3Var3.h, io3Var3.f, this.a, new do3(io3Var3, atomicBoolean, this.c));
            }
        } catch (Throwable th) {
            if (atomicBoolean.getAndSet(true)) {
                return Unit.INSTANCE;
            }
            CancellableContinuation cancellableContinuation = this.c;
            int value = kk1.a.d().getValue();
            String message = th.getMessage();
            if (message == null) {
                message = th.toString();
            }
            cancellableContinuation.resumeWith(Result.m2760constructorimpl(new l01(new MediationAdError(value, message, AdError.GOOGLE_MOBILE_ADS_DOMAIN))));
        }
        return Unit.INSTANCE;
    }
}
