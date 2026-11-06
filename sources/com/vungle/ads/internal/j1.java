package com.vungle.ads.internal;

import android.view.View;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class j1 implements z0 {
    public final /* synthetic */ o1 a;

    public j1(o1 o1Var) {
        this.a = o1Var;
    }

    @Override // com.vungle.ads.internal.z0
    public final void onImpression(View view) throws Throwable {
        boolean z = com.vungle.ads.internal.util.v.a;
        com.vungle.ads.internal.util.u.a("NativeAdInternal", "ImpressionTracker checked the native ad view become visible.");
        o1 o1Var = this.a;
        o1Var.getClass();
        o1.a(o1Var, "checkpoint.0");
        o1Var.a(11, (Map) null);
        o1 o1Var2 = this.a;
        long j = o1Var2.r.get() ? 3L : 2L;
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        j2 j2Var = new j2(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY);
        j2Var.c = Long.valueOf(j);
        AnalyticsClient.a(analyticsClient, j2Var, o1Var2.m, 4);
        com.vungle.ads.internal.util.u.a("NativeAdInternal", "Log metric AD_VISIBILITY: " + j);
    }

    @Override // com.vungle.ads.internal.z0
    public final void onViewInvisible(View view) throws Throwable {
        if (this.a.r.getAndSet(true)) {
            return;
        }
        boolean z = com.vungle.ads.internal.util.v.a;
        com.vungle.ads.internal.util.u.a("NativeAdInternal", "ImpressionTracker checked the native ad view invisible on play, log AD_VISIBILITY_INVISIBLE.");
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        j2 j2Var = new j2(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY);
        j2Var.c = 1L;
        AnalyticsClient.a(analyticsClient, j2Var, this.a.m, 4);
    }
}
