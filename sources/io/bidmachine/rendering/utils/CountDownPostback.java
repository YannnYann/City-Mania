package io.bidmachine.rendering.utils;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class CountDownPostback implements Runnable {
    public final Runnable a;
    public final AtomicInteger b;

    public CountDownPostback(int i, Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        this.a = runnable;
        this.b = new AtomicInteger(i);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.b.decrementAndGet() > 0) {
            return;
        }
        this.a.run();
    }
}
