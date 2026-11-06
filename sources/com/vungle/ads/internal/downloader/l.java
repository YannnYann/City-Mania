package com.vungle.ads.internal.downloader;

import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.k2;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class l {
    public final k a;
    public final com.vungle.ads.internal.model.b b;
    public final com.vungle.ads.internal.util.t c;
    public final int d;
    public final AtomicBoolean e;
    public final AtomicInteger f;
    public final List g;
    public k2 h;

    public /* synthetic */ l(k kVar, com.vungle.ads.internal.model.b bVar) {
        this(kVar, bVar, null, 3);
    }

    public final com.vungle.ads.internal.model.b a() {
        return this.b;
    }

    public final int b() {
        return this.f.get();
    }

    public final com.vungle.ads.internal.util.t c() {
        return this.c;
    }

    public final List d() {
        List retryReasons = this.g;
        Intrinsics.checkNotNullExpressionValue(retryReasons, "retryReasons");
        return CollectionsKt___CollectionsKt.toList(retryReasons);
    }

    public final boolean e() {
        return this.e.get();
    }

    public final void f() {
        k2 k2Var = new k2(Sdk.SDKMetric.SDKMetricType.TEMPLATE_DOWNLOAD_DURATION_MS);
        this.h = k2Var;
        k2Var.e();
    }

    public final void g() throws Throwable {
        k2 k2Var = this.h;
        if (k2Var != null) {
            k2Var.d();
            AnalyticsClient.INSTANCE.a(k2Var, this.c, this.b.b);
        }
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("DownloadRequest{priority=");
        sbA.append(this.a);
        sbA.append(", url='");
        sbA.append(this.b.b);
        sbA.append("', path='");
        sbA.append(this.b.c);
        sbA.append("', cancelled=");
        sbA.append(this.e);
        sbA.append(", retryAttempt=");
        sbA.append(this.f.get());
        sbA.append(", maxRetries=");
        sbA.append(this.d);
        sbA.append(", logEntry=");
        sbA.append(this.c);
        sbA.append('}');
        return sbA.toString();
    }

    public l(k priority, com.vungle.ads.internal.model.b asset, com.vungle.ads.internal.util.t tVar, int i) {
        Intrinsics.checkNotNullParameter(priority, "priority");
        Intrinsics.checkNotNullParameter(asset, "asset");
        this.a = priority;
        this.b = asset;
        this.c = tVar;
        this.d = i;
        this.e = new AtomicBoolean(false);
        this.f = new AtomicInteger(0);
        this.g = Collections.synchronizedList(new ArrayList());
    }

    public final void a(String reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.g.add(reason);
    }
}
