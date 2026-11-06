package com.vungle.ads.internal.downloader;

import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.v;

/* JADX INFO: loaded from: classes4.dex */
public final class g extends com.vungle.ads.internal.task.i {
    public final /* synthetic */ i a;
    public final /* synthetic */ l b;
    public final /* synthetic */ e c;

    public g(i iVar, l lVar, e eVar) {
        this.a = iVar;
        this.b = lVar;
        this.c = eVar;
    }

    @Override // com.vungle.ads.internal.task.i
    public final int a() {
        return this.b.a.a;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        i iVar = this.a;
        l lVar = this.b;
        e eVar = this.c;
        c cVarB = iVar.b(lVar, eVar);
        while (true) {
            if (cVarB != null) {
                if (!lVar.e.get()) {
                    if (lVar.f.get() >= lVar.d) {
                        boolean z = v.a;
                        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Max retry attempts reached (");
                        sbA.append(lVar.d);
                        sbA.append(')');
                        com.vungle.ads.internal.util.u.a("AssetDownloader", sbA.toString());
                        break;
                    }
                    if (!a.a(cVarB)) {
                        boolean z2 = v.a;
                        StringBuilder sbA2 = com.iab.omid.library.vungle.internal.l.a("Error reason ");
                        sbA2.append(cVarB.c);
                        sbA2.append(" is not retryable");
                        com.vungle.ads.internal.util.u.a("AssetDownloader", sbA2.toString());
                        break;
                    }
                    lVar.f.incrementAndGet();
                    lVar.a("Error: " + cVarB.b.getMessage() + ", Code: " + cVarB.a + ", Reason: " + cVarB.c);
                    boolean z3 = v.a;
                    StringBuilder sbA3 = com.iab.omid.library.vungle.internal.l.a("Download failed, retrying immediately. Attempt ");
                    sbA3.append(lVar.f.get());
                    sbA3.append('/');
                    sbA3.append(lVar.d);
                    sbA3.append(". URL: ");
                    sbA3.append(lVar.b.b);
                    sbA3.append(", Error: ");
                    sbA3.append(cVarB.b.getMessage());
                    com.vungle.ads.internal.util.u.c("AssetDownloader", sbA3.toString());
                    cVarB = iVar.b(lVar, eVar);
                } else {
                    boolean z4 = v.a;
                    com.vungle.ads.internal.util.u.a("AssetDownloader", "Download cancelled, not retrying");
                    break;
                }
            } else {
                break;
            }
        }
        if (cVarB != null) {
            boolean z5 = v.a;
            StringBuilder sbA4 = com.iab.omid.library.vungle.internal.l.a("Download failed after ");
            sbA4.append(lVar.f.get() + 1);
            sbA4.append(" attempts. URL: ");
            sbA4.append(lVar.b.b);
            sbA4.append(". Retry history: ");
            sbA4.append(lVar.d());
            com.vungle.ads.internal.util.u.b("AssetDownloader", sbA4.toString());
            if (lVar.f.get() > 0) {
                AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                Sdk.SDKMetric.SDKMetricType sDKMetricType = Sdk.SDKMetric.SDKMetricType.ASSET_DOWNLOAD_RETRY_STATUS;
                com.vungle.ads.internal.util.t tVar = lVar.c;
                StringBuilder sbA5 = com.iab.omid.library.vungle.internal.l.a("retryCount=");
                sbA5.append(lVar.f.get());
                sbA5.append(" url=");
                sbA5.append(lVar.b.b);
                analyticsClient.c(sDKMetricType, 2L, tVar, sbA5.toString());
            }
            if (eVar != null) {
                eVar.a(cVarB, lVar);
            }
        }
        iVar.d.remove(lVar);
    }
}
