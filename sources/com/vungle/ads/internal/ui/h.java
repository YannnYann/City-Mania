package com.vungle.ads.internal.ui;

import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.model.s3;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.Lazy;

/* JADX INFO: loaded from: classes4.dex */
public final class h implements com.vungle.ads.internal.ui.view.f {
    public final /* synthetic */ l a;
    public final /* synthetic */ Lazy b;

    public h(l lVar, Lazy lazy) {
        this.a = lVar;
        this.b = lazy;
    }

    @Override // com.vungle.ads.internal.ui.view.f
    public final void close() {
        com.vungle.ads.internal.presenter.r rVar = this.a.a;
        Long l = (rVar == null || rVar.j) ? null : 1L;
        if (l != null) {
            AnalyticsClient.a(AnalyticsClient.INSTANCE, Sdk.SDKMetric.SDKMetricType.AD_CLOSED_BEFORE_IMPRESSION, l.longValue(), this.a.f, null, 8);
        }
        s3 s3Var = this.a.b;
        if (s3Var != null) {
            l.a(this.b).b(s3Var);
        }
        this.a.finish();
    }
}
