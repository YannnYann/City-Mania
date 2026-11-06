package ads_mobile_sdk;

import android.os.SystemClock;
import com.ironsource.C3522b4;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes.dex */
public final class w extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ f0 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(f0 f0Var, Continuation continuation) {
        super(2, continuation);
        this.b = f0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new w(this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new w(this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Unit unit;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ex0 ex0Var = this.b.f;
            ex0Var.getClass();
            Duration.Companion companion = Duration.Companion;
            long jM2906unboximpl = ((Duration) ex0Var.a("gads:app_activity_tracker:notify_background_listeners_delay_ms", wm2.a(500, DurationUnit.MILLISECONDS, "gads:app_activity_tracker:notify_background_listeners_delay_ms", C3522b4.i.W), yr.j)).m2906unboximpl();
            this.a = 1;
            if (DelayKt.m2937delayVtjQ1oo(jM2906unboximpl, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        f0 f0Var = this.b;
        synchronized (f0Var) {
            try {
                if (f0Var.l && !f0Var.i()) {
                    f01.b("App is now backgrounded", null);
                    f0Var.o = true;
                    Duration.Companion companion2 = Duration.Companion;
                    f0Var.g.getClass();
                    long duration = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
                    for (ox0 ox0Var : f0Var.h) {
                        CoroutineScope coroutineScope = f0Var.e;
                        v block = new v(ox0Var, duration, null);
                        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                        Intrinsics.checkNotNullParameter(context, "context");
                        Intrinsics.checkNotNullParameter(block, "block");
                        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                    }
                }
                unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return unit;
    }
}
