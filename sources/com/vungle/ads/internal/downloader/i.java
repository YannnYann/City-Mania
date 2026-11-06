package com.vungle.ads.internal.downloader;

import com.vungle.ads.OutOfMemory;
import com.vungle.ads.internal.util.PathProvider;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.RealResponseBody;
import okio.GzipSource;
import okio.Okio;

/* JADX INFO: loaded from: classes4.dex */
public final class i implements n {
    public final com.vungle.ads.internal.executor.j a;
    public final PathProvider b;
    public final Lazy c;
    public final CopyOnWriteArrayList d;

    public i(com.vungle.ads.internal.executor.j downloadExecutor, PathProvider pathProvider) {
        Intrinsics.checkNotNullParameter(downloadExecutor, "downloadExecutor");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        this.a = downloadExecutor;
        this.b = pathProvider;
        this.c = LazyKt__LazyJVMKt.lazy(new h(this));
        this.d = new CopyOnWriteArrayList();
    }

    public final void a(final l lVar, final e eVar) {
        this.d.add(lVar);
        this.a.a(new g(this, lVar, eVar), new Runnable() { // from class: com.vungle.ads.internal.downloader.i$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                i.a(this.f$0, lVar, eVar);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x0252, code lost:
    
        r18.flush();
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x025a, code lost:
    
        if (r8.a() != 1) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x025c, code lost:
    
        r8.a(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0264, code lost:
    
        if (r19.body() == null) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0266, code lost:
    
        r0 = r19.body();
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x026a, code lost:
    
        if (r0 == null) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x026c, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x026f, code lost:
    
        r11.cancel();
        com.vungle.ads.internal.util.o.a((java.io.Closeable) r18);
        com.vungle.ads.internal.util.o.a(r7);
        r0 = com.vungle.ads.internal.util.v.a;
        r0 = com.iab.omid.library.vungle.internal.l.a("download status: ");
        r0.append(r8.a());
        com.vungle.ads.internal.util.u.a("AssetDownloader", r0.toString());
        r5 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:129:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0358 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0375  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03d9  */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v10 */
    /* JADX WARN: Type inference failed for: r18v11 */
    /* JADX WARN: Type inference failed for: r18v12 */
    /* JADX WARN: Type inference failed for: r18v13 */
    /* JADX WARN: Type inference failed for: r18v15, types: [java.io.Closeable, okio.BufferedSink] */
    /* JADX WARN: Type inference failed for: r18v16 */
    /* JADX WARN: Type inference failed for: r18v17 */
    /* JADX WARN: Type inference failed for: r18v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r18v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Type inference failed for: r18v6 */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Type inference failed for: r18v8 */
    /* JADX WARN: Type inference failed for: r18v9 */
    /* JADX WARN: Type inference failed for: r7v4, types: [com.vungle.ads.internal.downloader.c] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.vungle.ads.internal.downloader.c b(com.vungle.ads.internal.downloader.l r23, com.vungle.ads.internal.downloader.e r24) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1015
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.downloader.i.b(com.vungle.ads.internal.downloader.l, com.vungle.ads.internal.downloader.e):com.vungle.ads.internal.downloader.c");
    }

    public static final void a(i this$0, l lVar, e eVar) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.d.remove(lVar);
        c cVar = new c(-1, new OutOfMemory("Failed to execute download request: " + lVar.a().c()), 4);
        if (eVar != null) {
            eVar.a(cVar, lVar);
        }
    }

    public final void a() {
        for (l lVar : this.d) {
            if (lVar != null && !lVar.e.get()) {
                lVar.e.set(true);
            }
        }
        this.d.clear();
    }

    public static ResponseBody a(Response response) {
        ResponseBody responseBodyBody = response.body();
        if (!StringsKt__StringsJVMKt.equals("gzip", Response.header$default(response, "Content-Encoding", null, 2, null), true) || responseBodyBody == null) {
            return responseBodyBody;
        }
        return new RealResponseBody(Response.header$default(response, "Content-Type", null, 2, null), -1L, Okio.buffer(new GzipSource(responseBodyBody.source())));
    }
}
