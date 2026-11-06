package com.vungle.ads.internal.load;

import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.model.i0;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;

/* JADX INFO: loaded from: classes4.dex */
public final class f {
    public final /* synthetic */ i a;
    public final /* synthetic */ i0 b;

    public f(i iVar, i0 i0Var) {
        this.a = iVar;
        this.b = i0Var;
    }

    public final void a() throws Throwable {
        this.a.y.d();
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        i iVar = this.a;
        AnalyticsClient.a(analyticsClient, iVar.y, iVar.z, 4);
        boolean z = v.a;
        u.b("BaseAdLoader", "fail to load ad");
        this.a.i();
        a aVar = this.a.k;
        if (aVar != null) {
            aVar.onSuccess(this.b);
        }
    }

    public final void b() throws Throwable {
        this.a.y.d();
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        i iVar = this.a;
        AnalyticsClient.a(analyticsClient, iVar.y, iVar.z, 4);
        this.a.i();
        a aVar = this.a.k;
        if (aVar != null) {
            aVar.onSuccess(this.b);
        }
    }
}
