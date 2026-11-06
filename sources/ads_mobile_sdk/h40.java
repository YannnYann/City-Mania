package ads_mobile_sdk;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class h40 extends SuspendLambda implements Function2 {
    public Function2 a;
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ f40 d;
    public final /* synthetic */ Function2 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h40(f40 f40Var, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.d = f40Var;
        this.e = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        h40 h40Var = new h40(this.d, this.e, continuation);
        h40Var.c = obj;
        return h40Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((h40) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Mutex mutex;
        Function2 function2;
        Mutex mutex2;
        Throwable th;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScopeKt.ensureActive((CoroutineScope) this.c);
                mutex = this.d.a;
                function2 = this.e;
                this.c = mutex;
                this.a = function2;
                this.b = 1;
                if (IntrinsicsKt__IntrinsicsJvmKt.wrapWithContinuationImpl(g40.a, mutex, this) != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    Continuation continuationIntercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(this);
                    Result.Companion companion = Result.Companion;
                    continuationIntercepted.resumeWith(Result.m2760constructorimpl(Unit.INSTANCE));
                }
                Object coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (coroutine_suspended2 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(this);
                }
                if (coroutine_suspended2 != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    coroutine_suspended2 = Unit.INSTANCE;
                }
                if (coroutine_suspended2 != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = (Mutex) this.c;
                try {
                    ResultKt.throwOnFailure(obj);
                    Mutex.DefaultImpls.unlock$default(mutex2, null, 1, null);
                    return obj;
                } catch (Throwable th2) {
                    th = th2;
                    Mutex.DefaultImpls.unlock$default(mutex2, null, 1, null);
                    throw th;
                }
            }
            function2 = this.a;
            Mutex mutex3 = (Mutex) this.c;
            ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            this.c = mutex;
            this.a = null;
            this.b = 2;
            Object objCoroutineScope = CoroutineScopeKt.coroutineScope(function2, this);
            if (objCoroutineScope != coroutine_suspended) {
                mutex2 = mutex;
                obj = objCoroutineScope;
                Mutex.DefaultImpls.unlock$default(mutex2, null, 1, null);
                return obj;
            }
            return coroutine_suspended;
        } catch (Throwable th3) {
            mutex2 = mutex;
            th = th3;
            Mutex.DefaultImpls.unlock$default(mutex2, null, 1, null);
            throw th;
        }
    }
}
