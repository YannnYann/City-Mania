package ads_mobile_sdk;

import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
public final class xs3 {
    public static final xs3 a = new xs3();

    public static void a(Exception exc) {
        List list = a2.a(exc, "t", exc).s;
        String message = exc.getMessage();
        if (message == null) {
            message = exc.getClass().getName();
        }
        Intrinsics.checkNotNull(message);
        list.add(message);
    }

    public static void a(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        rr3 rr3VarA = hs3.a();
        rr3VarA.e().m = false;
        rr3VarA.e().s.add(message);
    }

    public static Job a(CoroutineScope coroutineScope, Function2 block) {
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public static void a(i01 error, boolean z) {
        String strC;
        Intrinsics.checkNotNullParameter(error, "error");
        if (error instanceof m01) {
            strC = ((m01) error).c();
        } else if (error instanceof j01) {
            j01 j01Var = (j01) error;
            String strD = j01Var.d();
            strC = strD == null ? j01Var.c().getClass().getName() : strD;
        } else if (error instanceof u01) {
            strC = "WebView destroyed when method invoked.";
        } else if (error instanceof s01) {
            s01 s01Var = (s01) error;
            strC = s01Var.d() + ": " + s01Var.c() + " on url: " + s01Var.e();
        } else if (error instanceof l01) {
            l01 l01Var = (l01) error;
            strC = l01Var.c().getCode() + ": " + l01Var.c().getMessage();
        } else if (error instanceof k01) {
            k01 k01Var = (k01) error;
            strC = "Code: " + k01Var.c() + ", Message: " + k01Var.d();
        } else if (error instanceof p01) {
            strC = ((p01) error).c();
        } else if (error instanceof n01) {
            strC = ((n01) error).c();
        } else if (error instanceof r01) {
            strC = ((r01) error).c();
        } else if (error instanceof t01) {
            strC = "Live WebView cap reached. Too many WebViews are currently open in the application.";
        } else {
            if (!(error instanceof o01)) {
                throw new NoWhenBranchMatchedException();
            }
            strC = ((o01) error).c();
        }
        a(false, strC, error.b(), z);
    }

    public static void a(xs3 xs3Var, Exception exception) {
        xs3Var.getClass();
        Intrinsics.checkNotNullParameter(exception, "exception");
        a(true, null, exception, false);
    }

    public static void a(String message, Throwable th, int i) {
        if ((i & 2) != 0) {
            th = null;
        }
        Intrinsics.checkNotNullParameter(message, "message");
        a(true, message, th, false);
    }

    public static void a(boolean z, String str, Throwable th, boolean z2) {
        rr3 rr3VarA;
        if (z2) {
            rr3VarA = hs3.b().a;
            if (rr3VarA == null) {
                return;
            }
        } else {
            rr3VarA = hs3.a();
        }
        if (str != null) {
            rr3VarA.e().s.add(str);
        }
        rr3VarA.e().m = false;
        if (th != null) {
            if (z) {
                rr3VarA.a(th);
            } else {
                rr3VarA.b(th);
            }
        }
    }
}
