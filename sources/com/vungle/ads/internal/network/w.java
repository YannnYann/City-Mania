package com.vungle.ads.internal.network;

import androidx.core.util.Consumer;
import com.vungle.ads.UserAgentError;
import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.k2;

/* JADX INFO: loaded from: classes4.dex */
public final class w implements Consumer {
    public final /* synthetic */ VungleApiClient a;
    public final /* synthetic */ k2 b;

    public w(VungleApiClient vungleApiClient, k2 k2Var) {
        this.a = vungleApiClient;
        this.b = k2Var;
    }

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) throws Throwable {
        String str;
        String property = (String) obj;
        if ((property == null || property.length() == 0) && ((str = this.a.i) == null || str.length() == 0)) {
            ((com.vungle.ads.internal.platform.c) this.a.b).getClass();
            property = System.getProperty("http.agent");
        }
        if (property == null || property.length() == 0) {
            boolean z = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.b("VungleApiClient", "All UA sources failed, logging USER_AGENT_ERROR");
            new UserAgentError().logErrorNoReturnValue$vungle_ads_release();
        } else {
            this.b.d();
            AnalyticsClient.a(AnalyticsClient.INSTANCE, this.b, (com.vungle.ads.internal.util.t) null, 6);
            this.a.i = property;
        }
    }
}
