package ads_mobile_sdk;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ql3 implements gj1 {
    public final pc a;
    public final String b;
    public final long c;

    public ql3(pc adUnitStatsTracker, vn appStatsTracker, String requestId, long j) {
        Intrinsics.checkNotNullParameter(adUnitStatsTracker, "adUnitStatsTracker");
        Intrinsics.checkNotNullParameter(appStatsTracker, "appStatsTracker");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        this.a = adUnitStatsTracker;
        this.b = requestId;
        this.c = j;
    }

    @Override // ads_mobile_sdk.gj1
    public final Object c(Continuation continuation) {
        pc pcVar = this.a;
        String requestId = this.b;
        long j = this.c;
        pcVar.getClass();
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        ConcurrentHashMap concurrentHashMap = pcVar.c;
        Duration.Companion companion = Duration.Companion;
        concurrentHashMap.put(requestId, Duration.m2870boximpl(DurationKt.toDuration(j, DurationUnit.MILLISECONDS)));
        return Unit.INSTANCE;
    }
}
