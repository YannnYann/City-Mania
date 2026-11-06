package ads_mobile_sdk;

import java.util.List;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g83 {
    public final f0 a;
    public final ur3 b;
    public final tx c;

    public g83(f0 activityTracker, ur3 traceLogger, tx clock) {
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = activityTracker;
        this.b = traceLogger;
        this.c = clock;
    }

    public static tu2 a(g83 g83Var, s11 cuiName, List tags, ks3 traceMetaSet) {
        g83Var.getClass();
        Intrinsics.checkNotNullParameter(cuiName, "cuiName");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        tx clock = g83Var.c;
        ur3 traceLogger = g83Var.b;
        Intrinsics.checkNotNullParameter(cuiName, "cuiName");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        su2 su2Var = new su2();
        UUID uuidRandomUUID = UUID.randomUUID();
        Intrinsics.checkNotNullExpressionValue(uuidRandomUUID, "randomUUID(...)");
        tu2 trace = new tu2(cuiName, tags, uuidRandomUUID, traceMetaSet, su2Var, clock, traceLogger, 0, null, true, 1280);
        Intrinsics.checkNotNullParameter(trace, "trace");
        su2Var.a.set(trace);
        hs3.a(hs3.b(), null);
        hs3.a(hs3.b(), trace);
        trace.k.x = g83Var.a.i() ? w11.PROCESS_STATE_BACKGROUND : w11.PROCESS_STATE_FOREGROUND;
        return trace;
    }
}
