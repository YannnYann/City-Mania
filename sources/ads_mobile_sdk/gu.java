package ads_mobile_sdk;

import android.os.SystemClock;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class gu {
    public final tx a;
    public final long b;

    public gu(tx clock, long j) {
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = clock;
        this.b = j;
    }

    public /* synthetic */ gu(tx txVar, long j, int i) {
        this(txVar, j);
    }

    public final boolean a() {
        Duration.Companion companion = Duration.Companion;
        this.a.getClass();
        return Duration.m2871compareToLRDsOJo(DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS), this.b) >= 0;
    }
}
