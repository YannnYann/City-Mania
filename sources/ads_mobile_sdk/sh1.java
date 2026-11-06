package ads_mobile_sdk;

import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class sh1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ th1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sh1(th1 th1Var, Continuation continuation) {
        super(2, continuation);
        this.a = th1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new sh1(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new sh1(this.a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        th1 th1Var = this.a;
        g83 g83Var = th1Var.g;
        s11 s11Var = s11.CUI_NAME_INSTALL_REFERRER_TASK;
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                th1Var.h.a(new rh1(th1Var));
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(tu2VarA, null);
            } catch (Throwable th) {
                try {
                    tu2VarA.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        tu2VarA.a(th);
                    }
                    if (th instanceof TimeoutCancellationException) {
                        throw new i21(th);
                    }
                    if (th instanceof CancellationException) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } finally {
                }
            }
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
            try {
                th1Var.h.a(new rh1(th1Var));
                Unit unit2 = Unit.INSTANCE;
                CloseableKt.closeFinally(rr3VarA, null);
            } catch (Throwable th2) {
                try {
                    rr3VarA.b(th2);
                    if (th2 instanceof v24) {
                        throw th2;
                    }
                    if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                        rr3VarA.a(th2);
                    }
                    if (th2 instanceof TimeoutCancellationException) {
                        throw new i21(th2);
                    }
                    if (th2 instanceof CancellationException) {
                        throw new wz0(th2);
                    }
                    if (th2 instanceof w01) {
                        throw th2;
                    }
                    throw new b01(th2);
                } finally {
                }
            }
        }
        return Unit.INSTANCE;
    }
}
