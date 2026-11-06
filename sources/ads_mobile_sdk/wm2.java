package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class wm2 {
    public static Duration a(int i, DurationUnit durationUnit, String str, String str2) {
        long duration = DurationKt.toDuration(i, durationUnit);
        Intrinsics.checkNotNullParameter(str, str2);
        return Duration.m2870boximpl(duration);
    }
}
