package com.vungle.ads.internal.task;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import java.lang.ref.WeakReference;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class r implements g {
    public static final Handler g = new Handler(Looper.getMainLooper());
    public static final String h = r.class.getSimpleName();
    public final d a;
    public final Executor b;
    public final m c;
    public final CopyOnWriteArrayList d;
    public final q e;
    public long f;

    public r(d creator, com.vungle.ads.internal.executor.j executor, h hVar) {
        Intrinsics.checkNotNullParameter(creator, "creator");
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.a = creator;
        this.b = executor;
        this.c = hVar;
        this.f = Long.MAX_VALUE;
        this.d = new CopyOnWriteArrayList();
        this.e = new q(new WeakReference(this));
    }

    public final synchronized void a(e jobInfo) {
        try {
            Intrinsics.checkNotNullParameter(jobInfo, "jobInfo");
            e eVarA = jobInfo.a();
            if (eVarA != null) {
                String strD = eVarA.d();
                long jB = eVarA.b();
                eVarA.g();
                if (eVarA.f()) {
                    for (p pVar : this.d) {
                        e eVarA2 = pVar.a();
                        if (Intrinsics.areEqual(eVarA2 != null ? eVarA2.d() : null, strD)) {
                            boolean z = v.a;
                            String TAG = h;
                            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                            u.a(TAG, "replacing pending job with new " + strD);
                            this.d.remove(pVar);
                        }
                    }
                }
                this.d.add(new p(SystemClock.uptimeMillis() + jB, eVarA));
                a();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a() {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            long jMin = Long.MAX_VALUE;
            for (p pVar : this.d) {
                long j = pVar.a;
                if (jUptimeMillis >= j) {
                    this.d.remove(pVar);
                    e eVar = pVar.b;
                    if (eVar != null) {
                        this.b.execute(new f(eVar, this.a, this, this.c));
                    }
                } else {
                    jMin = Math.min(jMin, j);
                }
            }
            if (jMin != Long.MAX_VALUE && jMin != this.f) {
                Handler handler = g;
                handler.removeCallbacks(this.e);
                handler.postAtTime(this.e, h, jMin);
            }
            this.f = jMin;
        } catch (Throwable th) {
            throw th;
        }
    }
}
