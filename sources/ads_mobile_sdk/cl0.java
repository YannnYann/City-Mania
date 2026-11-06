package ads_mobile_sdk;

import com.google.common.base.Splitter;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public abstract class cl0 {
    public static void a(int i, String label) {
        Intrinsics.checkNotNullParameter(label, "label");
        Splitter splitter = f01.a;
        f01.b(i + ": " + label, null);
    }

    public static void a(uj2 perTraceMeta, ks3 unused) {
        Intrinsics.checkNotNullParameter(perTraceMeta, "perTraceMeta");
        Intrinsics.checkNotNullParameter(unused, "unused");
        String str = perTraceMeta.m ? "successfully" : "unsuccessfully";
        Splitter splitter = f01.a;
        f01.b("Trace " + perTraceMeta.c.name() + " completed " + str + " in " + Duration.m2881getInWholeMillisecondsimpl(perTraceMeta.c()) + "ms.", null);
    }

    public static void a(s11 cuiName, UUID rootTraceId) {
        Intrinsics.checkNotNullParameter(cuiName, "cuiName");
        Intrinsics.checkNotNullParameter(rootTraceId, "rootTraceId");
        Splitter splitter = f01.a;
        f01.b("Trace " + cuiName.name() + " started.", null);
    }
}
