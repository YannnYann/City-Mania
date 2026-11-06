package com.vungle.ads.internal.downloader;

import com.vungle.ads.internal.util.v;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class t implements e {
    public final /* synthetic */ u a;
    public final /* synthetic */ File b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;

    public t(u uVar, File file, String str, String str2) {
        this.a = uVar;
        this.b = file;
        this.c = str;
        this.d = str2;
    }

    @Override // com.vungle.ads.internal.downloader.e
    public final void a(File file, l downloadRequest) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(downloadRequest, "downloadRequest");
        ReentrantLock reentrantLock = this.a.c;
        u uVar = this.a;
        String str = this.d;
        reentrantLock.lock();
        try {
            List listEmptyList = (List) uVar.i.remove(str);
            if (listEmptyList == null) {
                listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            } else {
                Intrinsics.checkNotNullExpressionValue(listEmptyList, "inFlight.remove(url) ?: …(Result<File>) -> Unit>()");
            }
            Pair pair = TuplesKt.to(listEmptyList, Boolean.valueOf(uVar.e));
            reentrantLock.unlock();
            List<Function1> list = (List) pair.component1();
            if (((Boolean) pair.component2()).booleanValue()) {
                this.b.delete();
                return;
            }
            File file2 = new File(this.c);
            if (this.b.renameTo(file2)) {
                boolean z = v.a;
                StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Template download succeeded: ");
                sbA.append(this.d);
                com.vungle.ads.internal.util.u.a("TemplateDownloadManager", sbA.toString());
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((Function1) it.next()).invoke(Result.m2759boximpl(Result.m2760constructorimpl(file2)));
                }
                return;
            }
            this.b.delete();
            if (file2.exists()) {
                boolean z2 = v.a;
                StringBuilder sbA2 = com.iab.omid.library.vungle.internal.l.a("Template download succeeded: ");
                sbA2.append(this.d);
                com.vungle.ads.internal.util.u.a("TemplateDownloadManager", sbA2.toString());
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    ((Function1) it2.next()).invoke(Result.m2759boximpl(Result.m2760constructorimpl(file2)));
                }
                return;
            }
            boolean z3 = v.a;
            StringBuilder sbA3 = com.iab.omid.library.vungle.internal.l.a("Template download failed to promote: ");
            sbA3.append(this.d);
            com.vungle.ads.internal.util.u.b("TemplateDownloadManager", sbA3.toString());
            String str2 = this.d;
            for (Function1 function1 : list) {
                Result.Companion companion = Result.Companion;
                function1.invoke(Result.m2759boximpl(Result.m2760constructorimpl(ResultKt.createFailure(new Exception(com.iab.omid.library.vungle.d.a("Failed to promote template: ", str2))))));
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // com.vungle.ads.internal.downloader.e
    public final void a(c cVar, l downloadRequest) {
        Intrinsics.checkNotNullParameter(downloadRequest, "downloadRequest");
        ReentrantLock reentrantLock = this.a.c;
        u uVar = this.a;
        String str = this.d;
        reentrantLock.lock();
        try {
            List listEmptyList = (List) uVar.i.remove(str);
            if (listEmptyList == null) {
                listEmptyList = CollectionsKt__CollectionsKt.emptyList();
            } else {
                Intrinsics.checkNotNullExpressionValue(listEmptyList, "inFlight.remove(url) ?: …(Result<File>) -> Unit>()");
            }
            Pair pair = TuplesKt.to(listEmptyList, Boolean.valueOf(uVar.e));
            reentrantLock.unlock();
            List list = (List) pair.component1();
            boolean zBooleanValue = ((Boolean) pair.component2()).booleanValue();
            this.b.delete();
            if (zBooleanValue) {
                return;
            }
            boolean z = v.a;
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Template download failed: ");
            sbA.append(this.d);
            sbA.append(", error: ");
            sbA.append(cVar.a().getMessage());
            com.vungle.ads.internal.util.u.b("TemplateDownloadManager", sbA.toString());
            Result.Companion companion = Result.Companion;
            Object objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(new o(this.d, cVar)));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((Function1) it.next()).invoke(Result.m2759boximpl(objM2760constructorimpl));
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
