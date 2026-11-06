package com.vungle.ads.internal;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public class k2 extends e1 {
    public Long c;
    public Long d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k2(Sdk.SDKMetric.SDKMetricType metricType) {
        super(metricType);
        Intrinsics.checkNotNullParameter(metricType, "metricType");
        Intrinsics.checkNotNullParameter(metricType, "metricType");
    }

    public final long c() {
        long jNanoTime = System.nanoTime();
        Long l = this.d;
        long jLongValue = l != null ? l.longValue() : jNanoTime;
        Long l2 = this.c;
        if (l2 != null) {
            jNanoTime = l2.longValue();
        }
        return (jLongValue - jNanoTime) / ((long) 1000000);
    }

    public void d() {
        this.d = Long.valueOf(System.nanoTime());
    }

    public void e() {
        this.c = Long.valueOf(System.nanoTime());
    }
}
