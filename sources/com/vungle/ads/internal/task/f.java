package com.vungle.ads.internal.task;

import android.os.Bundle;
import android.os.Process;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class f extends i {
    public static final String e = "f";
    public final e a;
    public final d b;
    public final g c;
    public final m d;

    public f(e jobinfo, d creator, g jobRunner, m mVar) {
        Intrinsics.checkNotNullParameter(jobinfo, "jobinfo");
        Intrinsics.checkNotNullParameter(creator, "creator");
        Intrinsics.checkNotNullParameter(jobRunner, "jobRunner");
        this.a = jobinfo;
        this.b = creator;
        this.c = jobRunner;
        this.d = mVar;
    }

    @Override // com.vungle.ads.internal.task.i
    public final int a() {
        return this.a.e;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m mVar = this.d;
        if (mVar != null) {
            try {
                int iA = ((h) mVar).a(this.a);
                Process.setThreadPriority(iA);
                boolean z = v.a;
                String TAG = e;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                u.a(TAG, "Setting process thread prio = " + iA + " for " + this.a.d());
            } catch (Throwable unused) {
                boolean z2 = v.a;
                String TAG2 = e;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                u.b(TAG2, "Error on setting process thread priority");
            }
        }
        try {
            String strD = this.a.d();
            Bundle bundleC = this.a.c();
            boolean z3 = v.a;
            String TAG3 = e;
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            u.a(TAG3, "Start job " + strD + "Thread " + Thread.currentThread().getName());
            int iA2 = ((o) this.b).a(strD).a(bundleC, this.c);
            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
            u.a(TAG3, "On job finished " + strD + " with result " + iA2);
            if (iA2 == 2) {
                this.a.getClass();
            }
        } catch (Exception e2) {
            boolean z4 = v.a;
            String TAG4 = e;
            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
            u.b(TAG4, "Cannot create job" + e2.getLocalizedMessage());
        }
    }
}
