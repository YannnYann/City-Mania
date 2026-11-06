package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.AdapterVersionData;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class kf {
    public static void a(LinkedHashMap adapterStatusMap, String adapterName, AdapterVersionData adapterVersionData, ke adapterStatus, long j) {
        Intrinsics.checkNotNullParameter(adapterStatusMap, "adapterStatusMap");
        Intrinsics.checkNotNullParameter(adapterName, "adapterName");
        Intrinsics.checkNotNullParameter(adapterStatus, "adapterStatus");
        Duration.Companion companion = Duration.Companion;
        adapterStatusMap.put(adapterName, new yd(adapterStatus, adapterVersionData, DurationKt.toDuration(j, DurationUnit.MILLISECONDS)));
    }
}
