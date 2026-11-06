package ads_mobile_sdk;

import android.os.SystemClock;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.AppStats;
import com.ironsource.C3522b4;
import java.util.Map;
import java.util.SortedMap;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class in1 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public in1(dw2 dw2Var, jr0 jr0Var) {
        this.a = dw2Var;
        this.b = jr0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        long jElapsedRealtime;
        AppStats appStats;
        vn appStatsTracker = (vn) this.a.get();
        j53 requestType = (j53) this.b.get();
        Intrinsics.checkNotNullParameter(appStatsTracker, "appStatsTracker");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        appStatsTracker.getClass();
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        synchronized (appStatsTracker.c) {
            try {
                if (appStatsTracker.h == null) {
                    appStatsTracker.a.getClass();
                    appStatsTracker.h = Long.valueOf(SystemClock.elapsedRealtime());
                }
                appStatsTracker.d++;
                appStatsTracker.f++;
                String strName = requestType.name();
                SortedMap sortedMap = appStatsTracker.g;
                Object obj = sortedMap.get(strName);
                if (obj == null) {
                    obj = 0;
                    sortedMap.put(strName, obj);
                }
                Integer num = (Integer) obj;
                ex0 ex0Var = appStatsTracker.b;
                ex0Var.getClass();
                Intrinsics.checkNotNullParameter("gads:enable_per_format_prior_requests_signal", C3522b4.i.W);
                Map map = ((Boolean) ex0Var.a("gads:enable_per_format_prior_requests_signal", Boolean.FALSE, yr.b)).booleanValue() ? MapsKt__MapsKt.toMap(appStatsTracker.g) : MapsKt__MapsKt.emptyMap();
                appStatsTracker.g.put(strName, Integer.valueOf(num.intValue() + 1));
                Long l = appStatsTracker.h;
                if (l != null) {
                    long jLongValue = l.longValue();
                    appStatsTracker.a.getClass();
                    jElapsedRealtime = SystemClock.elapsedRealtime() - jLongValue;
                } else {
                    jElapsedRealtime = 0;
                }
                appStats = new AppStats(String.valueOf(appStatsTracker.d), appStatsTracker.d, appStatsTracker.f, jElapsedRealtime, map, appStatsTracker.e);
            } catch (Throwable th) {
                throw th;
            }
        }
        return appStats;
    }
}
