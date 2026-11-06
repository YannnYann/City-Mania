package ads_mobile_sdk;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
public final class gj extends SuspendLambda implements Function2 {
    public Mutex a;
    public sj b;
    public int c;
    public final /* synthetic */ sj d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gj(sj sjVar, Continuation continuation) {
        super(2, continuation);
        this.d = sjVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new gj(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new gj(this.d, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Mutex mutex;
        sj sjVar;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.c;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            sj sjVar2 = this.d;
            mutex = sjVar2.w;
            this.a = mutex;
            this.b = sjVar2;
            this.c = 1;
            if (mutex.lock(null, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            sjVar = sjVar2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            sjVar = this.b;
            mutex = this.a;
            ResultKt.throwOnFailure(obj);
        }
        try {
            Duration.Companion companion = Duration.Companion;
            sjVar.f.getClass();
            sjVar.x = DurationKt.toDuration(System.currentTimeMillis(), DurationUnit.MILLISECONDS);
            Unit unit = Unit.INSTANCE;
            mutex.unlock(null);
            sj sjVar3 = this.d;
            if (sjVar3.s != aj.a) {
                sjVar3.y.mo2951trySendJP2dKIU(unit);
            }
            return unit;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }
}
