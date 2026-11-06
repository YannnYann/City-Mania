package com.vungle.ads.internal;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes4.dex */
public final class w implements v {
    public final /* synthetic */ BlockingQueue a;

    public w(LinkedBlockingQueue linkedBlockingQueue) {
        this.a = linkedBlockingQueue;
    }

    @Override // com.vungle.ads.internal.v
    public final void a() {
        boolean z = com.vungle.ads.internal.util.v.a;
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Failed to send ");
        sbA.append(this.a.size());
        sbA.append(" errors");
        com.vungle.ads.internal.util.u.a("AnalyticsClient", sbA.toString());
        AnalyticsClient.INSTANCE.getClass();
        AnalyticsClient.a.addAll(this.a);
    }

    @Override // com.vungle.ads.internal.v
    public final void onSuccess() {
        boolean z = com.vungle.ads.internal.util.v.a;
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Sent ");
        sbA.append(this.a.size());
        sbA.append(" errors");
        com.vungle.ads.internal.util.u.a("AnalyticsClient", sbA.toString());
    }
}
