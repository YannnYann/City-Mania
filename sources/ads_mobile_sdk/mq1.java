package ads_mobile_sdk;

import com.ironsource.C3522b4;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt__StringsKt;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes.dex */
public final class mq1 extends SuspendLambda implements Function1 {
    public String a;
    public int b;
    public final /* synthetic */ Ref$BooleanRef c;
    public final /* synthetic */ yq1 d;
    public final /* synthetic */ String e;
    public final /* synthetic */ Ref$ObjectRef f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mq1(Ref$BooleanRef ref$BooleanRef, yq1 yq1Var, String str, Ref$ObjectRef ref$ObjectRef, Continuation continuation) {
        super(1, continuation);
        this.c = ref$BooleanRef;
        this.d = yq1Var;
        this.e = str;
        this.f = ref$ObjectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new mq1(this.c, this.d, this.e, this.f, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((mq1) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        CharSequence charSequence;
        yq1 yq1Var;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (!this.c.element) {
                eb3 eb3Var = this.d.f.s;
                eb3Var.getClass();
                Duration.Companion companion = Duration.Companion;
                long jM2906unboximpl = ((Duration) eb3Var.a("gads:sdk_core_update_delay_sec", wm2.a(120, DurationUnit.SECONDS, "gads:sdk_core_update_delay_sec", C3522b4.i.W), yr.l)).m2906unboximpl();
                this.b = 1;
                if (DelayKt.m2937delayVtjQ1oo(jM2906unboximpl, this) != coroutine_suspended) {
                }
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                String str2 = this.a;
                ResultKt.throwOnFailure(obj);
                return str2;
            }
            ResultKt.throwOnFailure(obj);
            str = (String) obj;
            if (!this.c.element && (charSequence = (CharSequence) this.f.element) != null && !StringsKt__StringsKt.isBlank(charSequence) && str != null && !StringsKt__StringsKt.isBlank(str)) {
                yq1Var = this.d;
                this.a = str;
                this.b = 3;
                if (yq1.a(yq1Var, str, this) != coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return str;
        }
        ResultKt.throwOnFailure(obj);
        yq1 yq1Var2 = this.d;
        String str3 = this.e;
        this.b = 2;
        obj = yq1.b(yq1Var2, str3, this);
        if (obj != coroutine_suspended) {
            str = (String) obj;
            if (!this.c.element) {
                yq1Var = this.d;
                this.a = str;
                this.b = 3;
                if (yq1.a(yq1Var, str, this) != coroutine_suspended) {
                }
            }
            return str;
        }
        return coroutine_suspended;
    }
}
