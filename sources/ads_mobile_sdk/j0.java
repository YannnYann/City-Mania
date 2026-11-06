package ads_mobile_sdk;

import com.ironsource.C3522b4;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes.dex */
public final class j0 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ k0 b;
    public final /* synthetic */ int c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j0(k0 k0Var, int i, Continuation continuation) {
        super(2, continuation);
        this.b = k0Var;
        this.c = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new j0(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new j0(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ex0 ex0Var = this.b.b;
            ex0Var.getClass();
            Duration.Companion companion = Duration.Companion;
            long jM2906unboximpl = ((Duration) ex0Var.a("gads:ad_activity_delegate_map_retain_duration", wm2.a(60, DurationUnit.SECONDS, "gads:ad_activity_delegate_map_retain_duration", C3522b4.i.W), yr.l)).m2906unboximpl();
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
        this.b.d.remove(Boxing.boxInt(this.c));
        return Unit.INSTANCE;
    }
}
