package com.vungle.ads.internal;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e1 {
    public Sdk.SDKMetric.SDKMetricType a;
    public String b;

    public e1(Sdk.SDKMetric.SDKMetricType metricType) {
        Intrinsics.checkNotNullParameter(metricType, "metricType");
        this.a = metricType;
    }

    public final void a(Sdk.SDKMetric.SDKMetricType sDKMetricType) {
        Intrinsics.checkNotNullParameter(sDKMetricType, "<set-?>");
        this.a = sDKMetricType;
    }

    public final Sdk.SDKMetric.SDKMetricType b() {
        return this.a;
    }

    public final String a() {
        return this.b;
    }

    public final void a(String str) {
        this.b = str;
    }
}
