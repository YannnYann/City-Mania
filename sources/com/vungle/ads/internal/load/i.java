package com.vungle.ads.internal.load;

import android.content.Context;
import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.j2;
import com.vungle.ads.internal.k2;
import com.vungle.ads.internal.model.i0;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.presenter.f0;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.task.r;
import com.vungle.ads.internal.util.PathProvider;
import com.vungle.ads.internal.util.t;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class i {
    public long A;
    public final Context a;
    public final VungleApiClient b;
    public final com.vungle.ads.internal.executor.a c;
    public final com.vungle.ads.internal.omsdk.c d;
    public final com.vungle.ads.internal.downloader.n e;
    public final PathProvider f;
    public final b g;
    public final Lazy h;
    public final AtomicLong i;
    public final AtomicLong j;
    public a k;
    public final AtomicBoolean l;
    public AtomicBoolean m;
    public AtomicBoolean n;
    public final ArrayList o;
    public i0 p;
    public AtomicBoolean q;
    public AtomicBoolean r;
    public final k2 s;
    public j2 t;
    public j2 u;
    public k2 v;
    public k2 w;
    public k2 x;
    public k2 y;
    public t z;

    public i(Context context, VungleApiClient vungleApiClient, com.vungle.ads.internal.executor.d sdkExecutors, com.vungle.ads.internal.omsdk.c omInjector, com.vungle.ads.internal.downloader.n downloader, PathProvider pathProvider, b adRequest) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(vungleApiClient, "vungleApiClient");
        Intrinsics.checkNotNullParameter(sdkExecutors, "sdkExecutors");
        Intrinsics.checkNotNullParameter(omInjector, "omInjector");
        Intrinsics.checkNotNullParameter(downloader, "downloader");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        this.a = context;
        this.b = vungleApiClient;
        this.c = sdkExecutors;
        this.d = omInjector;
        this.e = downloader;
        this.f = pathProvider;
        this.g = adRequest;
        this.h = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new h(context));
        this.i = new AtomicLong(0L);
        this.j = new AtomicLong(0L);
        this.l = new AtomicBoolean(false);
        this.m = new AtomicBoolean(false);
        this.n = new AtomicBoolean(false);
        this.o = new ArrayList();
        this.q = new AtomicBoolean(true);
        this.r = new AtomicBoolean(true);
        this.s = new k2(Sdk.SDKMetric.SDKMetricType.AD_REQUEST_TO_RESPONSE_DURATION_MS);
        this.t = new j2(Sdk.SDKMetric.SDKMetricType.ASSET_FILE_SIZE);
        this.u = new j2(Sdk.SDKMetric.SDKMetricType.TEMPLATE_HTML_SIZE);
        this.v = new k2(Sdk.SDKMetric.SDKMetricType.ASSET_DOWNLOAD_DURATION_MS);
        this.w = new k2(Sdk.SDKMetric.SDKMetricType.AD_REQUIRED_DOWNLOAD_DURATION_MS);
        this.x = new k2(Sdk.SDKMetric.SDKMetricType.AD_OPTIONAL_DOWNLOAD_DURATION_MS);
        this.y = new k2(Sdk.SDKMetric.SDKMetricType.AD_PRELOAD_TO_READY_DURATION_MS);
    }

    public static final void i(i this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.s.e();
        this$0.k();
    }

    public final VungleApiClient h() {
        return this.b;
    }

    public abstract void i();

    public final void j() {
        i0 i0Var = this.p;
        if (i0Var == null || this.n.get() || !this.m.compareAndSet(false, true)) {
            return;
        }
        if (i0Var.E()) {
            this.y.e();
            String strValueOf = String.valueOf(i0Var.p());
            boolean z = v.a;
            u.c("BaseAdLoader", "start preloading");
            long jCurrentTimeMillis = System.currentTimeMillis() - this.A;
            ReentrantLock reentrantLock = f0.a;
            f0.a(this.a, i0Var, this.g.d(), strValueOf, i0Var.u(), new f(this, i0Var), Long.valueOf(jCurrentTimeMillis));
        } else {
            i();
            a aVar = this.k;
            if (aVar != null) {
                aVar.onSuccess(i0Var);
            }
        }
        ((r) ((com.vungle.ads.internal.task.g) LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new g(this.a)).getValue())).a(com.vungle.ads.internal.task.j.a());
    }

    public abstract void k();

    public static final void a(i iVar, b bVar) throws Throwable {
        iVar.getClass();
        boolean z = v.a;
        u.a("BaseAdLoader", "All download completed " + bVar);
        i0 i0Var = iVar.p;
        if (i0Var != null) {
            i0Var.f = true;
        }
        iVar.j();
        iVar.v.d();
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        AnalyticsClient.a(analyticsClient, iVar.v, iVar.z, 4);
        iVar.x.d();
        AnalyticsClient.a(analyticsClient, iVar.x, iVar.z, 4);
    }

    public static final void h(i iVar) throws Throwable {
        iVar.w.d();
        AnalyticsClient.a(AnalyticsClient.INSTANCE, iVar.w, iVar.z, 4);
        iVar.j();
    }

    public final b b() {
        return this.g;
    }

    public final i0 c() {
        return this.p;
    }

    public final Context d() {
        return this.a;
    }

    public final t e() {
        return this.z;
    }

    public final PathProvider f() {
        return this.f;
    }

    public final com.vungle.ads.internal.executor.a g() {
        return this.c;
    }

    public static final boolean a(i iVar, com.vungle.ads.internal.model.b bVar, i0 i0Var) {
        iVar.getClass();
        if (i0Var != null && bVar.e() && bVar.c.length() != 0) {
            File file = new File(bVar.c);
            if (file.exists() && file.length() == bVar.f) {
                File fileB = iVar.f.b(i0Var.h());
                if (fileB != null && fileB.isDirectory()) {
                    com.vungle.ads.internal.util.n nVar = com.vungle.ads.internal.util.o.a;
                    return true;
                }
                boolean z = v.a;
                u.b("BaseAdLoader", "Unable to access Destination Directory");
            }
        }
        return false;
    }

    public final void a(t tVar) {
        this.z = tVar;
    }

    public final void a(com.vungle.ads.internal.r adLoaderCallback) {
        Intrinsics.checkNotNullParameter(adLoaderCallback, "adLoaderCallback");
        this.k = adLoaderCallback;
        this.A = System.currentTimeMillis();
        ((com.vungle.ads.internal.executor.d) this.c).b().execute(new Runnable() { // from class: com.vungle.ads.internal.load.i$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                i.i(this.f$0);
            }
        });
    }

    public final void a() {
        this.l.set(true);
        ((com.vungle.ads.internal.downloader.i) this.e).a();
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00a3 A[EDGE_INSN: B:54:0x00a3->B:40:0x00a3 BREAK  A[LOOP:1: B:35:0x0090->B:56:?], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(com.vungle.ads.VungleError r8) {
        /*
            r7 = this;
            java.lang.String r0 = "error"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.util.concurrent.atomic.AtomicBoolean r0 = r7.m
            boolean r0 = r0.get()
            if (r0 != 0) goto Lb7
            java.util.concurrent.atomic.AtomicBoolean r0 = r7.n
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r1, r2)
            if (r0 == 0) goto Lb7
            com.vungle.ads.internal.model.i0 r0 = r7.p
            if (r0 == 0) goto Lb0
            boolean r0 = r0.y()
            if (r0 != r2) goto Lb0
            java.util.ArrayList r0 = r7.o
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            java.util.Iterator r0 = r0.iterator()
        L31:
            boolean r5 = r0.hasNext()
            if (r5 == 0) goto L4c
            java.lang.Object r5 = r0.next()
            r6 = r5
            com.vungle.ads.internal.model.b r6 = (com.vungle.ads.internal.model.b) r6
            boolean r6 = r6.g()
            if (r6 == 0) goto L48
            r3.add(r5)
            goto L31
        L48:
            r4.add(r5)
            goto L31
        L4c:
            kotlin.Pair r0 = new kotlin.Pair
            r0.<init>(r3, r4)
            java.lang.Object r3 = r0.component1()
            java.util.List r3 = (java.util.List) r3
            java.lang.Object r0 = r0.component2()
            java.util.List r0 = (java.util.List) r0
            boolean r4 = r3 instanceof java.util.Collection
            if (r4 == 0) goto L68
            boolean r4 = r3.isEmpty()
            if (r4 == 0) goto L68
            goto L80
        L68:
            java.util.Iterator r3 = r3.iterator()
        L6c:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L80
            java.lang.Object r4 = r3.next()
            com.vungle.ads.internal.model.b r4 = (com.vungle.ads.internal.model.b) r4
            boolean r4 = r4.e()
            if (r4 == 0) goto L6c
            r3 = r2
            goto L81
        L80:
            r3 = r1
        L81:
            boolean r4 = r0 instanceof java.util.Collection
            if (r4 == 0) goto L8c
            boolean r4 = r0.isEmpty()
            if (r4 == 0) goto L8c
            goto La3
        L8c:
            java.util.Iterator r0 = r0.iterator()
        L90:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto La3
            java.lang.Object r4 = r0.next()
            com.vungle.ads.internal.model.b r4 = (com.vungle.ads.internal.model.b) r4
            boolean r4 = r4.e()
            if (r4 != 0) goto L90
            r2 = r1
        La3:
            if (r3 == 0) goto Lb0
            if (r2 == 0) goto Lb0
            java.util.concurrent.atomic.AtomicBoolean r8 = r7.n
            r8.set(r1)
            r7.j()
            return
        Lb0:
            com.vungle.ads.internal.load.a r0 = r7.k
            if (r0 == 0) goto Lb7
            r0.onFailure(r8)
        Lb7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.load.i.a(com.vungle.ads.VungleError):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:94:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(com.vungle.ads.internal.model.i0 r11, com.vungle.ads.internal.j2 r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 747
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.load.i.a(com.vungle.ads.internal.model.i0, com.vungle.ads.internal.j2):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x012f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.vungle.ads.VungleError a(com.vungle.ads.internal.model.i0 r6) {
        /*
            Method dump skipped, instruction units count: 562
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.load.i.a(com.vungle.ads.internal.model.i0):com.vungle.ads.VungleError");
    }
}
