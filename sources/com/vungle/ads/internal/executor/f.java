package com.vungle.ads.internal.executor;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class f implements h {
    public final /* synthetic */ Runnable a;
    public final /* synthetic */ Runnable b;

    public f(Runnable runnable, Runnable runnable2) {
        this.a = runnable;
        this.b = runnable2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object other) {
        Intrinsics.checkNotNullParameter(other, "other");
        Runnable runnable = this.a;
        if (runnable instanceof com.vungle.ads.internal.task.i) {
            return ((com.vungle.ads.internal.task.i) runnable).compareTo(other);
        }
        return 0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = j.b;
        Runnable runnable = this.a;
        Runnable runnable2 = this.b;
        try {
            runnable.run();
        } catch (OutOfMemoryError unused) {
            runnable2.run();
        }
    }
}
