package com.vungle.ads.internal.downloader;

import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.PathProvider;
import com.vungle.ads.internal.util.v;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class u {
    public final com.vungle.ads.internal.executor.a a;
    public final PathProvider b;
    public final ReentrantLock c;
    public final AtomicBoolean d;
    public volatile boolean e;
    public final LinkedHashSet f;
    public volatile i g;
    public volatile i h;
    public final HashMap i;

    public u(com.vungle.ads.internal.executor.a executors, PathProvider pathProvider) {
        Intrinsics.checkNotNullParameter(executors, "executors");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        this.a = executors;
        this.b = pathProvider;
        this.c = new ReentrantLock();
        this.d = new AtomicBoolean(false);
        this.f = new LinkedHashSet();
        this.i = new HashMap();
    }

    public static String a(String url) {
        Object objM2760constructorimpl;
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            Result.Companion companion = Result.Companion;
            String path = new URI(url).getPath();
            Intrinsics.checkNotNullExpressionValue(path, "URI(url).path");
            List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) StringsKt__StringsKt.trim(path, '/'), new char[]{'/'}, false, 0, 6, (Object) null);
            objM2760constructorimpl = Result.m2760constructorimpl(listSplit$default.size() >= 2 ? CollectionsKt___CollectionsKt.joinToString$default(CollectionsKt___CollectionsKt.takeLast(listSplit$default, 2), "_", null, null, 0, null, null, 62, null) : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        return (String) (Result.m2765isFailureimpl(objM2760constructorimpl) ? null : objM2760constructorimpl);
    }

    public final void b(Map vmTemplates) {
        String canonicalPath;
        File file;
        String dirCanonical;
        Intrinsics.checkNotNullParameter(vmTemplates, "vmTemplates");
        if (vmTemplates.isEmpty() || this.e) {
            return;
        }
        File vmDir = this.b.getVmDir();
        try {
            canonicalPath = vmDir.getCanonicalPath();
        } catch (IOException unused) {
            canonicalPath = null;
        }
        Iterator it = CollectionsKt___CollectionsKt.take(CollectionsKt___CollectionsKt.sortedWith(vmTemplates.entrySet(), new r()), 10).iterator();
        while (it.hasNext()) {
            String url = (String) ((Map.Entry) it.next()).getKey();
            if (this.e) {
                return;
            }
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(vmDir, "vmDir");
            String strA = a(url);
            if (strA == null) {
                file = null;
            } else {
                file = new File(vmDir, strA);
                if (canonicalPath == null) {
                    try {
                        dirCanonical = vmDir.getCanonicalPath();
                    } catch (IOException e) {
                        boolean z = v.a;
                        com.vungle.ads.internal.util.u.b("TemplateDownloadManager", "Failed to resolve canonical path for template: " + strA + ", error: " + e.getMessage());
                    }
                } else {
                    dirCanonical = canonicalPath;
                }
                String canonicalPath2 = file.getCanonicalPath();
                Intrinsics.checkNotNullExpressionValue(canonicalPath2, "file.canonicalPath");
                Intrinsics.checkNotNullExpressionValue(dirCanonical, "dirCanonical");
                if (!StringsKt__StringsJVMKt.startsWith$default(canonicalPath2, dirCanonical, false, 2, null)) {
                    boolean z2 = v.a;
                    com.vungle.ads.internal.util.u.b("TemplateDownloadManager", "Template file path escapes vmDir: " + strA);
                    file = null;
                }
            }
            if (file != null) {
                boolean z3 = v.a;
                com.vungle.ads.internal.util.u.a("TemplateDownloadManager", "Pre-downloading template: " + url);
                String absolutePath = file.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "templateFile.absolutePath");
                a(url, absolutePath, k.LOWEST, null, new p(this), new s(url));
            }
        }
    }

    public final void a(Set fileNames) {
        Intrinsics.checkNotNullParameter(fileNames, "fileNames");
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            this.f.addAll(fileNames);
        } finally {
            reentrantLock.unlock();
        }
    }

    public static void a(u uVar, String url, String localPath, com.vungle.ads.internal.util.t tVar, com.vungle.ads.internal.load.d callback) {
        k priority = k.CRITICAL;
        uVar.getClass();
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(localPath, "localPath");
        Intrinsics.checkNotNullParameter(priority, "priority");
        Intrinsics.checkNotNullParameter(callback, "callback");
        uVar.a(url, localPath, priority, tVar, new q(uVar), callback);
    }

    public final void a(String str, String str2, k kVar, com.vungle.ads.internal.util.t tVar, Function0 function0, Function1 function1) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        boolean z4 = v.a;
        com.vungle.ads.internal.util.u.a("TemplateDownloadManager", "Requesting template: " + str);
        if (this.e) {
            Result.Companion companion = Result.Companion;
            function1.invoke(Result.m2759boximpl(Result.m2760constructorimpl(ResultKt.createFailure(new Exception("TemplateDownloadManager is stopped")))));
            return;
        }
        File file = new File(str2);
        String fileName = file.getName();
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            if (this.e) {
                z = false;
                z2 = false;
                z3 = true;
            } else {
                LinkedHashSet linkedHashSet = this.f;
                Intrinsics.checkNotNullExpressionValue(fileName, "fileName");
                linkedHashSet.add(fileName);
                if (file.exists()) {
                    z2 = false;
                    z = true;
                } else {
                    List list = (List) this.i.get(str);
                    if (list != null) {
                        list.add(function1);
                        z = false;
                        z2 = false;
                    } else {
                        this.i.put(str, CollectionsKt__CollectionsKt.mutableListOf(function1));
                        z = false;
                        z2 = true;
                    }
                }
            }
            if (z3) {
                Result.Companion companion2 = Result.Companion;
                function1.invoke(Result.m2759boximpl(Result.m2760constructorimpl(ResultKt.createFailure(new Exception("TemplateDownloadManager is stopped")))));
                return;
            }
            if (z) {
                AnalyticsClient.INSTANCE.c(Sdk.SDKMetric.SDKMetricType.VM_TEMPLATE_CACHE_HIT, 1L, tVar, str);
                com.vungle.ads.internal.util.u.a("TemplateDownloadManager", "Template cache hit: " + str);
                function1.invoke(Result.m2759boximpl(Result.m2760constructorimpl(file)));
                return;
            }
            if (z2) {
                com.vungle.ads.internal.util.u.a("TemplateDownloadManager", "Starting template download: " + str);
                i iVar = (i) function0.invoke();
                if (iVar == null) {
                    ReentrantLock reentrantLock2 = this.c;
                    reentrantLock2.lock();
                    try {
                        List listEmptyList = (List) this.i.remove(str);
                        if (listEmptyList == null) {
                            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                        } else {
                            Intrinsics.checkNotNullExpressionValue(listEmptyList, "inFlight.remove(url) ?: …(Result<File>) -> Unit>()");
                        }
                        Pair pair = TuplesKt.to(listEmptyList, Boolean.valueOf(this.e));
                        reentrantLock2.unlock();
                        List list2 = (List) pair.component1();
                        Result.Companion companion3 = Result.Companion;
                        Object objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(new Exception("TemplateDownloadManager is stopped")));
                        Iterator it = list2.iterator();
                        while (it.hasNext()) {
                            ((Function1) it.next()).invoke(Result.m2759boximpl(objM2760constructorimpl));
                        }
                        return;
                    } finally {
                        reentrantLock2.unlock();
                    }
                }
                File file2 = new File(com.iab.omid.library.vungle.d.a(str2, ".tmp"));
                try {
                    String absolutePath = file2.getAbsolutePath();
                    Intrinsics.checkNotNullExpressionValue(absolutePath, "tmpFile.absolutePath");
                    iVar.a(new l(kVar, new com.vungle.ads.internal.model.b("vmURL", str, absolutePath, true)), new t(this, file2, str2, str));
                } catch (Exception e) {
                    reentrantLock = this.c;
                    reentrantLock.lock();
                    try {
                        List listEmptyList2 = (List) this.i.remove(str);
                        if (listEmptyList2 == null) {
                            listEmptyList2 = CollectionsKt__CollectionsKt.emptyList();
                        } else {
                            Intrinsics.checkNotNullExpressionValue(listEmptyList2, "inFlight.remove(url) ?: …(Result<File>) -> Unit>()");
                        }
                        Pair pair2 = TuplesKt.to(listEmptyList2, Boolean.valueOf(this.e));
                        reentrantLock.unlock();
                        List list3 = (List) pair2.component1();
                        boolean zBooleanValue = ((Boolean) pair2.component2()).booleanValue();
                        boolean z5 = v.a;
                        com.vungle.ads.internal.util.u.b("TemplateDownloadManager", "Failed to start template download: " + str + ", error: " + e.getMessage());
                        if (zBooleanValue) {
                            return;
                        }
                        Result.Companion companion4 = Result.Companion;
                        Object objM2760constructorimpl2 = Result.m2760constructorimpl(ResultKt.createFailure(e));
                        Iterator it2 = list3.iterator();
                        while (it2.hasNext()) {
                            ((Function1) it2.next()).invoke(Result.m2759boximpl(objM2760constructorimpl2));
                        }
                    } finally {
                        reentrantLock.unlock();
                    }
                }
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void a(Map map) {
        if (map == null || map.isEmpty() || this.e) {
            return;
        }
        if (!this.d.compareAndSet(false, true)) {
            boolean z = v.a;
            com.vungle.ads.internal.util.u.a("TemplateDownloadManager", "Initial template cleanup already performed this session, skipping");
            return;
        }
        File[] fileArrListFiles = this.b.getVmDir().listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            if (this.e) {
                return;
            }
            String name = file.getName();
            Intrinsics.checkNotNullExpressionValue(name, "file.name");
            if (StringsKt__StringsJVMKt.endsWith$default(name, ".html", false, 2, null) && StringsKt__StringsKt.contains$default((CharSequence) name, '_', false, 2, (Object) null) && file.isFile()) {
                ReentrantLock reentrantLock = this.c;
                reentrantLock.lock();
                try {
                    if (!this.f.contains(file.getName())) {
                        try {
                            if (file.delete()) {
                                boolean z2 = v.a;
                                com.vungle.ads.internal.util.u.a("TemplateDownloadManager", "Removed expired template: " + file.getName());
                            } else {
                                boolean z3 = v.a;
                                com.vungle.ads.internal.util.u.b("TemplateDownloadManager", "Failed to delete expired template: " + file.getName());
                            }
                        } catch (Exception e) {
                            boolean z4 = v.a;
                            com.vungle.ads.internal.util.u.b("TemplateDownloadManager", "Error deleting expired template: " + file.getName() + ", error: " + e.getMessage());
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                    reentrantLock.unlock();
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            }
        }
    }

    public final void a() {
        ReentrantLock reentrantLock = this.c;
        reentrantLock.lock();
        try {
            i iVar = this.g;
            if (iVar != null) {
                iVar.a();
            }
            i iVar2 = this.h;
            if (iVar2 != null) {
                iVar2.a();
            }
            this.g = null;
            this.h = null;
            Collection collectionValues = this.i.values();
            Intrinsics.checkNotNullExpressionValue(collectionValues, "inFlight.values");
            List listFlatten = CollectionsKt__IterablesKt.flatten(collectionValues);
            this.i.clear();
            this.f.clear();
            this.e = true;
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            Result.Companion companion = Result.Companion;
            Object objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(new Exception("TemplateDownloadManager is stopped")));
            Iterator it = listFlatten.iterator();
            while (it.hasNext()) {
                ((Function1) it.next()).invoke(Result.m2759boximpl(objM2760constructorimpl));
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
