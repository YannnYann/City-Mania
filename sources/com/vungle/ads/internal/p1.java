package com.vungle.ads.internal;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class p1 extends k2 {
    public boolean e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p1(Sdk.SDKMetric.SDKMetricType metricType) {
        super(metricType);
        Intrinsics.checkNotNullParameter(metricType, "metricType");
    }

    @Override // com.vungle.ads.internal.k2
    public final void d() {
        if (this.d == null) {
            super.d();
        }
    }

    @Override // com.vungle.ads.internal.k2
    public final void e() {
        if (this.c == null) {
            super.e();
        }
    }

    public final boolean f() {
        return this.e;
    }

    public final void g() {
        this.e = true;
    }
}
