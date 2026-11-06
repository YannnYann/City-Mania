package ads_mobile_sdk;

import android.os.SystemClock;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class qc implements li1 {
    public final String a;
    public final BaseRequest b;
    public final pc c;
    public final tx d;

    public qc(String requestId, BaseRequest baseRequest, pc adUnitStatsTracker, tx clock) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(adUnitStatsTracker, "adUnitStatsTracker");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = requestId;
        this.b = baseRequest;
        this.c = adUnitStatsTracker;
        this.d = clock;
    }

    @Override // ads_mobile_sdk.li1
    public final Object a(ec3 ec3Var, i2 i2Var, ResponseInfo responseInfo, Continuation continuation) {
        pc pcVar = this.c;
        String requestId = this.a;
        String adUnitId = this.b.getAdUnitId();
        this.d.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        pcVar.getClass();
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Duration duration = (Duration) pcVar.c.get(requestId);
        if (duration != null) {
            duration.m2906unboximpl();
            if (adUnitId != null) {
                ConcurrentHashMap concurrentHashMap = pcVar.d;
                Duration.Companion companion = Duration.Companion;
                concurrentHashMap.put(adUnitId, Duration.m2870boximpl(Duration.m2896minusLRDsOJo(DurationKt.toDuration(jElapsedRealtime, DurationUnit.MILLISECONDS), duration.m2906unboximpl())));
            }
        }
        return Unit.INSTANCE;
    }
}
