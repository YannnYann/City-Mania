package com.vungle.ads.internal.load;

import com.vungle.ads.AssetRequestError;
import com.vungle.ads.NativeAssetError;
import com.vungle.ads.PrivacyIconFallbackError;
import com.vungle.ads.TemplateDownloadError;
import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.model.i0;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements com.vungle.ads.internal.downloader.e {
    public final /* synthetic */ i a;

    public c(i iVar) {
        this.a = iVar;
    }

    @Override // com.vungle.ads.internal.downloader.e
    public final void a(final com.vungle.ads.internal.downloader.c cVar, final com.vungle.ads.internal.downloader.l downloadRequest) {
        Intrinsics.checkNotNullParameter(downloadRequest, "downloadRequest");
        boolean z = v.a;
        u.b("BaseAdLoader", "onError called: " + cVar);
        com.vungle.ads.internal.executor.j jVarB = ((com.vungle.ads.internal.executor.d) this.a.g()).b();
        final i iVar = this.a;
        jVarB.execute(new Runnable() { // from class: com.vungle.ads.internal.load.c$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                c.a(downloadRequest, iVar, this, cVar);
            }
        });
    }

    public static final void a(com.vungle.ads.internal.downloader.l downloadRequest, i this$0, c this$1, com.vungle.ads.internal.downloader.c cVar) {
        Intrinsics.checkNotNullParameter(downloadRequest, "$downloadRequest");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this$1, "this$1");
        com.vungle.ads.internal.model.b bVarA = downloadRequest.a();
        if (bVarA.i()) {
            File fileB = com.vungle.ads.internal.downloader.j.b(this$0.f().getVmDir());
            if (fileB != null && fileB.exists()) {
                this$1.a(fileB, downloadRequest);
                return;
            }
            new PrivacyIconFallbackError("Failed to inject default privacy icon").setLogEntry$vungle_ads_release(this$0.e()).logErrorNoReturnValue$vungle_ads_release();
        } else if (bVarA.d()) {
            File fileA = com.vungle.ads.internal.downloader.j.a(this$0.f().getVmDir());
            if (fileA != null && fileA.exists()) {
                this$1.a(fileA, downloadRequest);
                return;
            }
            new NativeAssetError("Failed to inject default AI label").setLogEntry$vungle_ads_release(this$0.e()).logErrorNoReturnValue$vungle_ads_release();
        }
        bVarA.a(com.vungle.ads.internal.model.a.DOWNLOAD_FAILED);
        this$0.q.set(false);
        if (bVarA.j()) {
            this$0.r.set(false);
        }
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Failed to download assets ");
        sbA.append(bVarA.c());
        sbA.append(". error: ");
        sbA.append(cVar);
        sbA.append(" errorType=");
        sbA.append(com.vungle.ads.internal.platform.e.a(cVar != null ? cVar.a() : null));
        sbA.append(" proxyEnabled=");
        sbA.append(com.vungle.ads.internal.platform.e.e(this$0.d()));
        sbA.append(" privateDns=");
        sbA.append(com.vungle.ads.internal.platform.e.b(this$0.d()));
        sbA.append(" network=");
        sbA.append(com.vungle.ads.internal.platform.e.a(this$0.d()));
        String string = sbA.toString();
        (bVarA.f() ? new TemplateDownloadError(string) : new AssetRequestError(string)).setLogEntry$vungle_ads_release(this$0.e()).logErrorNoReturnValue$vungle_ads_release();
        if (bVarA.j() && this$0.j.decrementAndGet() <= 0) {
            this$0.a();
            this$0.a(new AssetRequestError("Error: Failed to download required assets."));
        } else if (this$0.i.decrementAndGet() <= 0) {
            this$0.a(new AssetRequestError("Error: Failed to download assets."));
        }
    }

    @Override // com.vungle.ads.internal.downloader.e
    public final void a(final File file, final com.vungle.ads.internal.downloader.l downloadRequest) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(downloadRequest, "downloadRequest");
        com.vungle.ads.internal.executor.j jVarB = ((com.vungle.ads.internal.executor.d) this.a.g()).b();
        final i iVar = this.a;
        jVarB.execute(new Runnable() { // from class: com.vungle.ads.internal.load.c$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                c.a(file, this, downloadRequest, iVar);
            }
        });
    }

    public static final void a(File file, c this$0, com.vungle.ads.internal.downloader.l downloadRequest, i this$1) throws Throwable {
        Intrinsics.checkNotNullParameter(file, "$file");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(downloadRequest, "$downloadRequest");
        Intrinsics.checkNotNullParameter(this$1, "this$1");
        if (!file.exists()) {
            this$0.a(new com.vungle.ads.internal.downloader.c(-1, new IOException("Downloaded file not found!"), 3), downloadRequest);
            return;
        }
        com.vungle.ads.internal.model.b bVarA = downloadRequest.a();
        bVarA.a(file.length());
        bVarA.a(com.vungle.ads.internal.model.a.DOWNLOAD_SUCCESS);
        if (bVarA.f()) {
            downloadRequest.g();
            this$1.u.a(Long.valueOf(file.length()));
            AnalyticsClient.INSTANCE.a(this$1.u, this$1.e(), bVarA.c());
        } else if (bVarA.h()) {
            this$1.t.a(Long.valueOf(file.length()));
            AnalyticsClient.INSTANCE.a(this$1.t, this$1.e(), bVarA.c());
        }
        i0 i0VarC = this$1.c();
        if (i0VarC != null) {
            i0VarC.a(file, bVarA.a());
        }
        if (bVarA.f() && !i.a(this$1, bVarA, this$1.c())) {
            this$1.q.set(false);
            if (bVarA.j()) {
                this$1.r.set(false);
            }
        }
        if (bVarA.j() && this$1.j.decrementAndGet() <= 0) {
            if (this$1.r.get()) {
                i.h(this$1);
            } else {
                this$1.a();
                this$1.a(new AssetRequestError("Failed to download required assets."));
                return;
            }
        }
        if (this$1.i.decrementAndGet() <= 0) {
            if (this$1.q.get()) {
                i.a(this$1, this$1.b());
            } else {
                this$1.a(new AssetRequestError("Failed to download assets."));
            }
        }
    }
}
