package com.ironsource;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.oe, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3766oe extends ScheduledThreadPoolExecutor {
    /* JADX WARN: Multi-variable type inference failed */
    public C3766oe() {
        this(0, null, 3, 0 == true ? 1 : 0);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void afterExecute(Runnable runnable, Throwable th) {
        super.afterExecute(runnable, th);
        if (th == null && (runnable instanceof Future) && ((Future) runnable).isDone()) {
            try {
                ((Future) runnable).get();
            } catch (InterruptedException e) {
                C3813r4.d().a(e);
                Thread.currentThread().interrupt();
            } catch (CancellationException e2) {
                C3813r4.d().a(e2);
            } catch (ExecutionException e3) {
                C3813r4.d().a(e3);
            }
        }
    }

    public /* synthetic */ C3766oe(int i, ThreadFactory threadFactory, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? C3788pe.a : i, (i2 & 2) != 0 ? new ThreadFactoryC3726ma() : threadFactory);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3766oe(int i, ThreadFactory threadFactory) {
        super(i, threadFactory);
        Intrinsics.checkNotNullParameter(threadFactory, "threadFactory");
    }
}
