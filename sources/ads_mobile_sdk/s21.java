package ads_mobile_sdk;

import android.webkit.ConsoleMessage;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class s21 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ u21 b;
    public final /* synthetic */ ConsoleMessage c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s21(u21 u21Var, ConsoleMessage consoleMessage, Continuation continuation) {
        super(2, continuation);
        this.b = u21Var;
        this.c = consoleMessage;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new s21(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new s21(this.b, this.c, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            vk0 vk0Var = this.b.b;
            if (vk0Var != null) {
                this.a = 1;
                obj = if1.a((if1) vk0Var, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
        if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        if (((Boolean) obj).booleanValue()) {
            ConsoleMessage.MessageLevel messageLevel = this.c.messageLevel();
            int i2 = messageLevel == null ? -1 : r21.a[messageLevel.ordinal()];
            cq1 cq1Var = i2 != 1 ? i2 != 2 ? i2 != 3 ? cq1.d : cq1.c : cq1.b : cq1.a;
            String strMessage = this.c.message();
            Intrinsics.checkNotNullExpressionValue(strMessage, "message(...)");
            int iLineNumber = this.c.lineNumber();
            String strSourceId = this.c.sourceId();
            Intrinsics.checkNotNullExpressionValue(strSourceId, "sourceId(...)");
            dq1.a(strMessage, iLineNumber, strSourceId, cq1Var);
        }
        return Unit.INSTANCE;
    }
}
