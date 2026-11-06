package ads_mobile_sdk;

import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class xn2 extends Lambda implements Function0 {
    public final /* synthetic */ ao2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xn2(ao2 ao2Var) {
        super(0);
        this.a = ao2Var;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        g83 g83Var = this.a.e;
        s11 s11Var = s11.CUI_NAME_USER_CLOSED_PIP_AD;
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        ao2 ao2Var = this.a;
        ks3 ks3Var = ao2Var.f;
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                ao2Var.a();
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
                ao2Var.a();
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
