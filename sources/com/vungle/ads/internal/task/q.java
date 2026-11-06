package com.vungle.ads.internal.task;

import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class q implements Runnable {
    public WeakReference a;

    public q(WeakReference runner) {
        Intrinsics.checkNotNullParameter(runner, "runner");
        this.a = runner;
    }

    @Override // java.lang.Runnable
    public final void run() {
        r rVar = (r) this.a.get();
        if (rVar != null) {
            rVar.a();
        }
    }
}
