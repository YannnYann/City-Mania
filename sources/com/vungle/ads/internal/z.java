package com.vungle.ads.internal;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class z extends Lambda implements Function0 {
    public final /* synthetic */ Sdk.SDKMetric.SDKMetricType a;
    public final /* synthetic */ long b;
    public final /* synthetic */ com.vungle.ads.internal.util.t c;
    public final /* synthetic */ Sdk.SDKMetric.Builder d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(Sdk.SDKMetric.SDKMetricType sDKMetricType, long j, com.vungle.ads.internal.util.t tVar, Sdk.SDKMetric.Builder builder) {
        super(0);
        this.a = sDKMetricType;
        this.b = j;
        this.c = tVar;
        this.d = builder;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        String string;
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Logging Metric ");
        sbA.append(this.a);
        sbA.append(" with value ");
        sbA.append(this.b);
        sbA.append(" for placement ");
        com.vungle.ads.internal.util.t tVar = this.c;
        sbA.append(tVar != null ? tVar.l() : null);
        sbA.append(" mediation:");
        sbA.append(this.d.getMediationName());
        String meta = this.d.getMeta();
        Intrinsics.checkNotNullExpressionValue(meta, "metric.meta");
        if (meta.length() > 0) {
            StringBuilder sbA2 = com.iab.omid.library.vungle.internal.l.a(" meta:");
            sbA2.append(this.d.getMeta());
            string = sbA2.toString();
        } else {
            string = "";
        }
        sbA.append(string);
        return sbA.toString();
    }
}
