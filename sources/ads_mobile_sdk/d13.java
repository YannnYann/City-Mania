package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.internal.signals.AppStats;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d13 implements rh3 {
    public final pc a;
    public final BaseRequest b;
    public final qn c;
    public final AppStats d;

    public d13(pc adUnitStatsTracker, BaseRequest request, qn appState, AppStats appStats) {
        Intrinsics.checkNotNullParameter(adUnitStatsTracker, "adUnitStatsTracker");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(appStats, "appStats");
        this.a = adUnitStatsTracker;
        this.b = request;
        this.c = appState;
        this.d = appStats;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.QUALITY;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    @Override // ads_mobile_sdk.rh3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object s(kotlin.coroutines.Continuation r5) {
        /*
            r4 = this;
            ads_mobile_sdk.pc r5 = r4.a
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r0 = r4.b
            java.lang.String r0 = r0.getAdUnitId()
            if (r0 == 0) goto L15
            java.util.concurrent.ConcurrentHashMap r5 = r5.b
            java.lang.Object r5 = r5.get(r0)
            java.lang.Integer r5 = (java.lang.Integer) r5
            if (r5 != 0) goto L1d
            goto L18
        L15:
            r5.getClass()
        L18:
            r5 = 0
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
        L1d:
            int r5 = r5.intValue()
            ads_mobile_sdk.pc r0 = r4.a
            com.google.android.libraries.ads.mobile.sdk.common.BaseRequest r1 = r4.b
            java.lang.String r1 = r1.getAdUnitId()
            if (r1 == 0) goto L3a
            java.util.concurrent.ConcurrentHashMap r0 = r0.d
            java.lang.Object r0 = r0.get(r1)
            kotlin.time.Duration r0 = (kotlin.time.Duration) r0
            if (r0 == 0) goto L3d
            long r0 = r0.m2906unboximpl()
            goto L3f
        L3a:
            r0.getClass()
        L3d:
            long r0 = ads_mobile_sdk.pc.e
        L3f:
            com.google.android.libraries.ads.mobile.sdk.internal.signals.AdUnitQualitySignals r2 = new com.google.android.libraries.ads.mobile.sdk.internal.signals.AdUnitQualitySignals
            java.lang.Integer r5 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r5)
            long r0 = kotlin.time.Duration.m2881getInWholeMillisecondsimpl(r0)
            java.lang.Long r0 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r0)
            r2.<init>(r5, r0)
            ads_mobile_sdk.q01 r5 = new ads_mobile_sdk.q01
            ads_mobile_sdk.c13 r0 = new ads_mobile_sdk.c13
            com.google.android.libraries.ads.mobile.sdk.internal.signals.AppStats r1 = r4.d
            ads_mobile_sdk.qn r3 = r4.c
            java.util.concurrent.atomic.AtomicInteger r3 = r3.f
            int r3 = r3.get()
            r0.<init>(r1, r3, r2)
            r5.<init>(r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.d13.s(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
