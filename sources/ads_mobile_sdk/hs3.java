package ads_mobile_sdk;

import android.os.SystemClock;
import java.util.List;
import java.util.WeakHashMap;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class hs3 {
    public static final WeakHashMap a = new WeakHashMap();
    public static final ds3 b = new ds3();

    public static rr3 a(s11 cuiName, List tags, boolean z) {
        Intrinsics.checkNotNullParameter(cuiName, "cuiName");
        Intrinsics.checkNotNullParameter(tags, "tags");
        rr3 rr3Var = b().a;
        rr3 rr3VarA = rr3Var != null ? rr3Var.a(cuiName, tags, z) : b(cuiName, tags, z);
        a(b(), rr3VarA);
        return rr3VarA;
    }

    public static rr3 c() {
        return b().a;
    }

    public static fx1 b(s11 s11Var, List list, boolean z) {
        sr3.a("Attempted to start a trace " + s11Var.name() + " without a parent. Did you forget to start a root trace or propagate an existing one?");
        return ex1.a(s11Var, list, z);
    }

    public static void a(rr3 expectedTrace) {
        uj2 uj2VarE;
        s11 s11Var;
        Intrinsics.checkNotNullParameter(expectedTrace, "expectedTrace");
        gs3 gs3VarB = b();
        rr3 rr3VarA = gs3VarB.a();
        if (rr3VarA == null) {
            sr3.a("Tried to end trace " + expectedTrace.e().c.name() + " (" + expectedTrace.c() + "), but there was no active trace. If this is a test, did you forget to add a TraceThreadContextElement to your CoroutineScope?");
        }
        if (expectedTrace != rr3VarA) {
            sr3.a("Tried to end trace " + expectedTrace.e().c.name() + " (" + expectedTrace.c() + "), but that trace is not the current trace. The current trace is " + ((rr3VarA == null || (uj2VarE = rr3VarA.e()) == null || (s11Var = uj2VarE.c) == null) ? null : s11Var.name()) + " (" + (rr3VarA != null ? Integer.valueOf(rr3VarA.c()) : null) + ").");
        }
        a(gs3VarB, rr3VarA != null ? rr3VarA.d() : null);
        expectedTrace.a();
    }

    public static gs3 b() {
        ds3 ds3Var = b;
        Object gs3Var = ds3Var.get();
        if (gs3Var == null) {
            gs3Var = new gs3(null, SystemClock.currentThreadTimeMillis(), null);
            Thread threadCurrentThread = Thread.currentThread();
            WeakHashMap weakHashMap = a;
            synchronized (weakHashMap) {
            }
            ds3Var.set(gs3Var);
        }
        return (gs3) gs3Var;
    }

    public static rr3 a(gs3 gs3Var, rr3 rr3Var) {
        rr3 rr3Var2 = gs3Var.a;
        if (rr3Var2 == rr3Var) {
            return rr3Var;
        }
        long jCurrentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
        if (rr3Var2 != null) {
            Duration.Companion companion = Duration.Companion;
            rr3Var2.e.addAndGet(Duration.m2881getInWholeMillisecondsimpl(DurationKt.toDuration(jCurrentThreadTimeMillis - gs3Var.b, DurationUnit.MILLISECONDS)));
        }
        gs3Var.b = jCurrentThreadTimeMillis;
        gs3Var.a = rr3Var;
        fs3 fs3Var = gs3Var.c;
        if (fs3Var == null) {
            return rr3Var2;
        }
        fs3Var.a = rr3Var;
        return rr3Var2;
    }

    public static rr3 a() {
        rr3 rr3Var = b().a;
        if (rr3Var != null) {
            return rr3Var;
        }
        fx1 fx1VarB = b(s11.CUI_NAME_UNKNOWN, CollectionsKt__CollectionsKt.emptyList(), true);
        a(b(), fx1VarB);
        return fx1VarB;
    }
}
