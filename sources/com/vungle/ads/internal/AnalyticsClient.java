package com.vungle.ads.internal;

import android.os.Build;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.protos.Sdk;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class AnalyticsClient {
    public static VungleApiClient e;
    public static com.vungle.ads.internal.executor.j f;
    public static boolean g;
    public static final AnalyticsClient INSTANCE = new AnalyticsClient();
    public static final LinkedBlockingQueue a = new LinkedBlockingQueue();
    public static final LinkedBlockingQueue b = new LinkedBlockingQueue();
    public static final LinkedBlockingQueue c = new LinkedBlockingQueue();
    public static final LinkedBlockingQueue d = new LinkedBlockingQueue();
    public static int h = 2;
    public static boolean i = true;
    public static final AtomicBoolean j = new AtomicBoolean(false);

    private AnalyticsClient() {
    }

    public static void a(AnalyticsClient analyticsClient, p1 p1Var, com.vungle.ads.internal.util.t tVar) throws Throwable {
        analyticsClient.a(p1Var, tVar, p1Var.b);
    }

    public static final void b(Sdk.SDKError.Reason reason, String message, com.vungle.ads.internal.util.t tVar) {
        Intrinsics.checkNotNullParameter(reason, "$reason");
        Intrinsics.checkNotNullParameter(message, "$message");
        AnalyticsClient analyticsClient = INSTANCE;
        synchronized (analyticsClient) {
            if (h != 1) {
                try {
                    Sdk.SDKError.Builder builderA = a(reason, message, tVar);
                    LinkedBlockingQueue linkedBlockingQueue = a;
                    linkedBlockingQueue.put(builderA);
                    boolean z = com.vungle.ads.internal.util.v.a;
                    com.vungle.ads.internal.util.u.a("AnalyticsClient", new y(reason, message, builderA));
                    if (linkedBlockingQueue.size() >= 20) {
                        analyticsClient.report();
                    }
                } catch (Exception e2) {
                    boolean z2 = com.vungle.ads.internal.util.v.a;
                    com.vungle.ads.internal.util.u.a("AnalyticsClient", "Cannot logError", e2);
                }
            }
        }
    }

    private final synchronized void report() {
        VungleApiClient vungleApiClient;
        VungleApiClient vungleApiClient2;
        try {
            if (h != 1) {
                LinkedBlockingQueue linkedBlockingQueue = a;
                if (linkedBlockingQueue.size() > 0) {
                    boolean z = com.vungle.ads.internal.util.v.a;
                    StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Sending ");
                    sbA.append(linkedBlockingQueue.size());
                    sbA.append(" errors");
                    com.vungle.ads.internal.util.u.a("AnalyticsClient", sbA.toString());
                    LinkedBlockingQueue linkedBlockingQueue2 = new LinkedBlockingQueue();
                    linkedBlockingQueue.drainTo(linkedBlockingQueue2);
                    if (!linkedBlockingQueue2.isEmpty() && (vungleApiClient2 = e) != null) {
                        vungleApiClient2.a(linkedBlockingQueue2, new w(linkedBlockingQueue2));
                    }
                }
            }
            if (g) {
                LinkedBlockingQueue linkedBlockingQueue3 = b;
                if (linkedBlockingQueue3.size() > 0) {
                    boolean z2 = com.vungle.ads.internal.util.v.a;
                    StringBuilder sbA2 = com.iab.omid.library.vungle.internal.l.a("Sending ");
                    sbA2.append(linkedBlockingQueue3.size());
                    sbA2.append(" metrics");
                    com.vungle.ads.internal.util.u.a("AnalyticsClient", sbA2.toString());
                    LinkedBlockingQueue linkedBlockingQueue4 = new LinkedBlockingQueue();
                    linkedBlockingQueue3.drainTo(linkedBlockingQueue4);
                    if (!linkedBlockingQueue4.isEmpty() && (vungleApiClient = e) != null) {
                        vungleApiClient.a(linkedBlockingQueue4, new x(linkedBlockingQueue4));
                    }
                }
            }
        } finally {
        }
    }

    public final synchronized void c(final Sdk.SDKError.Reason reason, final String message, final com.vungle.ads.internal.util.t tVar) {
        com.vungle.ads.internal.executor.j jVar;
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(message, "message");
        try {
            jVar = f;
        } catch (Exception e2) {
            boolean z = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.a("AnalyticsClient", "Cannot logError " + reason + ", " + message + ", " + tVar, e2);
        }
        if (jVar != null) {
            jVar.execute(new Runnable() { // from class: com.vungle.ads.internal.AnalyticsClient$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    AnalyticsClient.b(reason, message, tVar);
                }
            });
        } else {
            c.put(a(reason, message, tVar));
        }
    }

    public final synchronized void a(VungleApiClient vungleApiClient, final com.vungle.ads.internal.executor.j executor, int i2, boolean z) {
        try {
            Intrinsics.checkNotNullParameter(vungleApiClient, "vungleApiClient");
            Intrinsics.checkNotNullParameter(executor, "executor");
            h = s.a(i2);
            g = z;
            if (i2 == t.a(3)) {
                boolean z2 = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.v.a = true;
            } else if (i2 == t.a(2) || i2 == t.a(1)) {
                boolean z3 = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.v.a = false;
            }
            e = vungleApiClient;
            if (j.getAndSet(true)) {
                boolean z4 = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.u.a("AnalyticsClient", "AnalyticsClient already initialized");
                return;
            }
            f = executor;
            try {
                LinkedBlockingQueue linkedBlockingQueue = c;
                if (!linkedBlockingQueue.isEmpty()) {
                    linkedBlockingQueue.drainTo(a);
                }
            } catch (Exception e2) {
                boolean z5 = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.u.a("AnalyticsClient", "Failed to add pendingErrors to errors queue.", e2);
            }
            try {
                LinkedBlockingQueue linkedBlockingQueue2 = d;
                if (!linkedBlockingQueue2.isEmpty()) {
                    linkedBlockingQueue2.drainTo(b);
                }
            } catch (Exception e3) {
                boolean z6 = com.vungle.ads.internal.util.v.a;
                com.vungle.ads.internal.util.u.a("AnalyticsClient", "Failed to add pendingMetrics to metrics queue.", e3);
            }
            if (i) {
                Executors.newSingleThreadScheduledExecutor().scheduleWithFixedDelay(new Runnable() { // from class: com.vungle.ads.internal.AnalyticsClient$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnalyticsClient.a(executor);
                    }
                }, 5000L, 5000L, TimeUnit.MILLISECONDS);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c(Sdk.SDKMetric.SDKMetricType metricType, long j2, com.vungle.ads.internal.util.t tVar, String str) {
        final Sdk.SDKMetric.SDKMetricType sDKMetricType;
        final long j3;
        final com.vungle.ads.internal.util.t tVar2;
        final String str2;
        com.vungle.ads.internal.executor.j jVar;
        Intrinsics.checkNotNullParameter(metricType, "metricType");
        try {
            jVar = f;
        } catch (Exception e2) {
            e = e2;
            sDKMetricType = metricType;
            j3 = j2;
            tVar2 = tVar;
            str2 = str;
        }
        if (jVar == null) {
            d.put(a(metricType, j2, tVar, str));
            return;
        }
        sDKMetricType = metricType;
        j3 = j2;
        tVar2 = tVar;
        str2 = str;
        try {
            jVar.execute(new Runnable() { // from class: com.vungle.ads.internal.AnalyticsClient$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AnalyticsClient.b(sDKMetricType, j3, tVar2, str2);
                }
            });
        } catch (Exception e3) {
            e = e3;
            boolean z = com.vungle.ads.internal.util.v.a;
            com.vungle.ads.internal.util.u.a("AnalyticsClient", "Cannot logMetric " + sDKMetricType + ", " + j3 + ", " + tVar2 + ", " + str2, e);
        }
    }

    public static final void b(Sdk.SDKMetric.SDKMetricType metricType, long j2, com.vungle.ads.internal.util.t tVar, String str) {
        Intrinsics.checkNotNullParameter(metricType, "$metricType");
        AnalyticsClient analyticsClient = INSTANCE;
        synchronized (analyticsClient) {
            if (g) {
                try {
                    Sdk.SDKMetric.Builder builderA = a(metricType, j2, tVar, str);
                    LinkedBlockingQueue linkedBlockingQueue = b;
                    linkedBlockingQueue.put(builderA);
                    boolean z = com.vungle.ads.internal.util.v.a;
                    com.vungle.ads.internal.util.u.a("AnalyticsClient", new z(metricType, j2, tVar, builderA));
                    if (linkedBlockingQueue.size() >= 20) {
                        analyticsClient.report();
                    }
                } catch (Exception e2) {
                    boolean z2 = com.vungle.ads.internal.util.v.a;
                    com.vungle.ads.internal.util.u.a("AnalyticsClient", "Cannot logMetrics", e2);
                }
            }
        }
    }

    public static final void a(com.vungle.ads.internal.executor.j executor) {
        Intrinsics.checkNotNullParameter(executor, "$executor");
        executor.execute(new Runnable() { // from class: com.vungle.ads.internal.AnalyticsClient$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                AnalyticsClient.a();
            }
        });
    }

    public static final void a() {
        INSTANCE.report();
    }

    public static String a(com.vungle.ads.internal.util.t tVar) {
        Long lA;
        String strE;
        Long lA2;
        String str = null;
        String strK = ((tVar == null || (lA2 = tVar.a()) == null || lA2.longValue() != 3) && (tVar == null || (lA = tVar.a()) == null || lA.longValue() != 4)) ? null : "csb";
        if (strK == null) {
            if (tVar == null || (strK = tVar.j()) == null || StringsKt__StringsKt.isBlank(strK)) {
                strK = null;
            }
            if (strK == null) {
                if (tVar == null || (strK = tVar.k()) == null || StringsKt__StringsKt.isBlank(strK)) {
                    strK = null;
                }
                if (strK == null) {
                    if (tVar != null && (strE = tVar.e()) != null && !StringsKt__StringsKt.isBlank(strE)) {
                        str = strE;
                    }
                    return str == null ? com.vungle.ads.internal.network.f0.d() : str;
                }
            }
        }
        return strK;
    }

    public static Sdk.SDKError.Builder a(Sdk.SDKError.Reason reason, String str, com.vungle.ads.internal.util.t tVar) {
        String strL;
        String strG;
        String strH;
        String strC;
        String strM;
        String string;
        String strI;
        Long lA;
        Boolean boolB;
        Boolean boolF;
        String strE;
        h hVarD;
        Sdk.SDKError.Builder builderNewBuilder = Sdk.SDKError.newBuilder();
        String str2 = Build.MANUFACTURER;
        Sdk.SDKError.Builder at = builderNewBuilder.setOs(Intrinsics.areEqual("Amazon", str2) ? "amazon" : "android").setOsVersion(String.valueOf(Build.VERSION.SDK_INT)).setMake(str2).setModel(Build.MODEL).setReason(reason).setMessage(str).setAt(System.currentTimeMillis());
        String str3 = "";
        if (tVar == null || (strL = tVar.l()) == null) {
            strL = "";
        }
        Sdk.SDKError.Builder placementReferenceId = at.setPlacementReferenceId(strL);
        if (tVar == null || (strG = tVar.g()) == null) {
            strG = "";
        }
        Sdk.SDKError.Builder creativeId = placementReferenceId.setCreativeId(strG);
        if (tVar == null || (strH = tVar.h()) == null) {
            strH = "";
        }
        Sdk.SDKError.Builder eventId = creativeId.setEventId(strH);
        if (tVar == null || (strC = tVar.c()) == null) {
            strC = "";
        }
        Sdk.SDKError.Builder adSource = eventId.setAdSource(strC);
        if (tVar == null || (strM = tVar.m()) == null) {
            strM = "";
        }
        Sdk.SDKError.Builder mediationName = adSource.setVmVersion(strM).setMediationName(a(tVar));
        com.vungle.ads.internal.util.d dVar = com.vungle.ads.internal.util.d.f;
        Sdk.SDKError.Builder appState = mediationName.setAppState(com.vungle.ads.internal.util.a.a() ? 0L : 2L);
        if (tVar == null || (hVarD = tVar.d()) == null || (string = hVarD.toString()) == null) {
            string = "";
        }
        Sdk.SDKError.Builder adState = appState.setAdState(string);
        if (tVar == null || (strI = tVar.i()) == null) {
            strI = "";
        }
        Sdk.SDKError.Builder experiments = adState.setExperiments(strI);
        if (tVar != null && (strE = tVar.e()) != null) {
            str3 = strE;
        }
        Sdk.SDKError.Builder adapterAdFormat = experiments.setAdapterAdFormat(str3);
        if (tVar != null && (boolF = tVar.f()) != null) {
            adapterAdFormat.setIsAdoEnabled(boolF.booleanValue());
        }
        if (tVar != null && (boolB = tVar.b()) != null) {
            adapterAdFormat.setIsAdPodding(boolB.booleanValue());
        }
        if (tVar != null && (lA = tVar.a()) != null) {
            adapterAdFormat.setAdLoadType(lA.longValue());
        }
        Intrinsics.checkNotNullExpressionValue(adapterAdFormat, "newBuilder()\n           …dType(it) }\n            }");
        return adapterAdFormat;
    }

    public static /* synthetic */ void a(AnalyticsClient analyticsClient, Sdk.SDKMetric.SDKMetricType sDKMetricType, long j2, com.vungle.ads.internal.util.t tVar, String str, int i2) {
        if ((i2 & 2) != 0) {
            j2 = 0;
        }
        analyticsClient.c(sDKMetricType, j2, (i2 & 4) != 0 ? null : tVar, (i2 & 8) != 0 ? null : str);
    }

    public static Sdk.SDKMetric.Builder a(Sdk.SDKMetric.SDKMetricType sDKMetricType, long j2, com.vungle.ads.internal.util.t tVar, String str) {
        String strL;
        String strG;
        String strH;
        String strC;
        String strM;
        String string;
        String strI;
        Long lA;
        Boolean boolB;
        Boolean boolF;
        String strE;
        h hVarD;
        Sdk.SDKMetric.Builder value = Sdk.SDKMetric.newBuilder().setType(sDKMetricType).setValue(j2);
        String str2 = Build.MANUFACTURER;
        Sdk.SDKMetric.Builder osVersion = value.setMake(str2).setModel(Build.MODEL).setOs(Intrinsics.areEqual("Amazon", str2) ? "amazon" : "android").setOsVersion(String.valueOf(Build.VERSION.SDK_INT));
        String str3 = "";
        if (tVar == null || (strL = tVar.l()) == null) {
            strL = "";
        }
        Sdk.SDKMetric.Builder placementReferenceId = osVersion.setPlacementReferenceId(strL);
        if (tVar == null || (strG = tVar.g()) == null) {
            strG = "";
        }
        Sdk.SDKMetric.Builder creativeId = placementReferenceId.setCreativeId(strG);
        if (tVar == null || (strH = tVar.h()) == null) {
            strH = "";
        }
        Sdk.SDKMetric.Builder eventId = creativeId.setEventId(strH);
        if (str == null) {
            str = "";
        }
        Sdk.SDKMetric.Builder mediationName = eventId.setMeta(str).setMediationName(a(tVar));
        if (tVar == null || (strC = tVar.c()) == null) {
            strC = "";
        }
        Sdk.SDKMetric.Builder adSource = mediationName.setAdSource(strC);
        if (tVar == null || (strM = tVar.m()) == null) {
            strM = "";
        }
        Sdk.SDKMetric.Builder vmVersion = adSource.setVmVersion(strM);
        com.vungle.ads.internal.util.d dVar = com.vungle.ads.internal.util.d.f;
        Sdk.SDKMetric.Builder appState = vmVersion.setAppState(com.vungle.ads.internal.util.a.a() ? 0L : 2L);
        if (tVar == null || (hVarD = tVar.d()) == null || (string = hVarD.toString()) == null) {
            string = "";
        }
        Sdk.SDKMetric.Builder adState = appState.setAdState(string);
        if (tVar == null || (strI = tVar.i()) == null) {
            strI = "";
        }
        Sdk.SDKMetric.Builder experiments = adState.setExperiments(strI);
        if (tVar != null && (strE = tVar.e()) != null) {
            str3 = strE;
        }
        Sdk.SDKMetric.Builder adapterAdFormat = experiments.setAdapterAdFormat(str3);
        if (tVar != null && (boolF = tVar.f()) != null) {
            adapterAdFormat.setIsAdoEnabled(boolF.booleanValue());
        }
        if (tVar != null && (boolB = tVar.b()) != null) {
            adapterAdFormat.setIsAdPodding(boolB.booleanValue());
        }
        if (tVar != null && (lA = tVar.a()) != null) {
            adapterAdFormat.setAdLoadType(lA.longValue());
        }
        Intrinsics.checkNotNullExpressionValue(adapterAdFormat, "newBuilder()\n           …dType(it) }\n            }");
        return adapterAdFormat;
    }

    public static void a(AnalyticsClient analyticsClient, j2 singleValueMetric, com.vungle.ads.internal.util.t tVar, int i2) throws Throwable {
        AnalyticsClient analyticsClient2;
        com.vungle.ads.internal.util.t tVar2 = (i2 & 2) != 0 ? null : tVar;
        String strA = (i2 & 4) != 0 ? singleValueMetric.a() : null;
        synchronized (analyticsClient) {
            try {
                Intrinsics.checkNotNullParameter(singleValueMetric, "singleValueMetric");
                analyticsClient2 = analyticsClient;
                try {
                    analyticsClient2.c(singleValueMetric.b(), singleValueMetric.c(), tVar2, strA);
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
                analyticsClient2 = analyticsClient;
            }
        }
    }

    public final synchronized void a(j2 singleValueMetric, com.vungle.ads.internal.util.t tVar, String str) throws Throwable {
        try {
            try {
                Intrinsics.checkNotNullParameter(singleValueMetric, "singleValueMetric");
                c(singleValueMetric.b(), singleValueMetric.c(), tVar, str);
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    public static void a(AnalyticsClient analyticsClient, k2 timeIntervalMetric, com.vungle.ads.internal.util.t tVar, int i2) throws Throwable {
        AnalyticsClient analyticsClient2;
        com.vungle.ads.internal.util.t tVar2 = (i2 & 2) != 0 ? null : tVar;
        String strA = (i2 & 4) != 0 ? timeIntervalMetric.a() : null;
        synchronized (analyticsClient) {
            try {
                Intrinsics.checkNotNullParameter(timeIntervalMetric, "timeIntervalMetric");
                analyticsClient2 = analyticsClient;
                try {
                    analyticsClient2.c(timeIntervalMetric.b(), timeIntervalMetric.c(), tVar2, strA);
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
                analyticsClient2 = analyticsClient;
            }
        }
    }

    public final synchronized void a(k2 timeIntervalMetric, com.vungle.ads.internal.util.t tVar, String str) throws Throwable {
        try {
            try {
                Intrinsics.checkNotNullParameter(timeIntervalMetric, "timeIntervalMetric");
                c(timeIntervalMetric.b(), timeIntervalMetric.c(), tVar, str);
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    public final synchronized void a(p1 timeIntervalMetric, com.vungle.ads.internal.util.t tVar, String str) throws Throwable {
        try {
            try {
                Intrinsics.checkNotNullParameter(timeIntervalMetric, "oneShotTimeIntervalMetric");
                if (!timeIntervalMetric.f()) {
                    synchronized (this) {
                        try {
                            Intrinsics.checkNotNullParameter(timeIntervalMetric, "timeIntervalMetric");
                            try {
                                c(timeIntervalMetric.b(), timeIntervalMetric.c(), tVar, str);
                                timeIntervalMetric.g();
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }
}
