package ads_mobile_sdk;

import android.content.Context;
import com.ironsource.C3522b4;
import com.unity3d.services.core.fid.Constants;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class js0 extends Lambda implements Function0 {
    public final /* synthetic */ ls0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public js0(ls0 ls0Var) {
        super(0);
        this.a = ls0Var;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Object objInvoke;
        ex0 ex0Var;
        ls0 ls0Var = this.a;
        g83 g83Var = ls0Var.c;
        s11 s11Var = s11.CUI_NAME_INIT_FIREBASE_ANALYTICS;
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                try {
                    ex0Var = ls0Var.d;
                    ex0Var.getClass();
                    Intrinsics.checkNotNullParameter("gads:firebase_analytics_integration:enabled", C3522b4.i.W);
                } catch (Exception e) {
                    xs3.a("Exception while getting Firebase Analytics SDK instance", e, 4);
                    objInvoke = null;
                }
                if (!((Boolean) ex0Var.a("gads:firebase_analytics_integration:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                    CloseableKt.closeFinally(tu2VarA, null);
                    return null;
                }
                objInvoke = Class.forName(ls0Var.d.Q()).getMethod(Constants.GET_INSTANCE, Context.class).invoke(null, ls0Var.a);
                if (objInvoke instanceof i01) {
                    xs3.a((i01) objInvoke, false);
                }
                CloseableKt.closeFinally(tu2VarA, null);
            } catch (Throwable th) {
                try {
                    tu2VarA.b(th);
                    if (!(th instanceof v24)) {
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            tu2VarA.a(th);
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            if (!(th instanceof CancellationException)) {
                                if (th instanceof w01) {
                                    throw th;
                                }
                                throw new b01(th);
                            }
                            throw new wz0(th);
                        }
                        throw new i21(th);
                    }
                    throw th;
                } finally {
                }
            }
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt__CollectionsKt.emptyList(), true);
            try {
                try {
                    ex0 ex0Var2 = ls0Var.d;
                    ex0Var2.getClass();
                    Intrinsics.checkNotNullParameter("gads:firebase_analytics_integration:enabled", C3522b4.i.W);
                    if (!((Boolean) ex0Var2.a("gads:firebase_analytics_integration:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                        CloseableKt.closeFinally(rr3VarA, null);
                        return null;
                    }
                    objInvoke = Class.forName(ls0Var.d.Q()).getMethod(Constants.GET_INSTANCE, Context.class).invoke(null, ls0Var.a);
                } catch (Exception e2) {
                    xs3.a("Exception while getting Firebase Analytics SDK instance", e2, 4);
                    objInvoke = null;
                }
                if (objInvoke instanceof i01) {
                    xs3.a((i01) objInvoke, false);
                }
                CloseableKt.closeFinally(rr3VarA, null);
            } catch (Throwable th2) {
                try {
                    rr3VarA.b(th2);
                    if (!(th2 instanceof v24)) {
                        if (!(th2 instanceof TimeoutCancellationException) && !(th2 instanceof CancellationException)) {
                            rr3VarA.a(th2);
                        }
                        if (!(th2 instanceof TimeoutCancellationException)) {
                            if (!(th2 instanceof CancellationException)) {
                                if (th2 instanceof w01) {
                                    throw th2;
                                }
                                throw new b01(th2);
                            }
                            throw new wz0(th2);
                        }
                        throw new i21(th2);
                    }
                    throw th2;
                } finally {
                }
            }
        }
        return objInvoke;
    }
}
