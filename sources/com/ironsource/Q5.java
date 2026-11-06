package com.ironsource;

import com.ironsource.Hf;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Q5 implements Hf {
    private final ScheduledExecutorService a;

    public Q5(ScheduledExecutorService executor) {
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.a = executor;
    }

    @Override // com.ironsource.Hf
    public Hf.a a(long j, Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        final ScheduledFuture<?> scheduledFutureSchedule = this.a.schedule(runnable, j, TimeUnit.MILLISECONDS);
        return new Hf.a() { // from class: com.ironsource.Q5$$ExternalSyntheticLambda0
            @Override // com.ironsource.Hf.a
            public final void cancel() {
                Q5.a(scheduledFutureSchedule);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(ScheduledFuture scheduledFuture) {
        scheduledFuture.cancel(false);
    }
}
