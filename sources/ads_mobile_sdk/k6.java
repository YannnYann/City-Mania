package ads_mobile_sdk;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class k6 {
    public final ex0 a;
    public final tx b;
    public final g83 c;
    public final ConcurrentHashMap d;
    public final ConcurrentHashMap e;

    public k6(ex0 flags, g83 rootTraceCreator, tx clock) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        this.a = flags;
        this.b = clock;
        this.c = rootTraceCreator;
        this.d = new ConcurrentHashMap();
        this.e = new ConcurrentHashMap();
    }
}
