package io.bidmachine.ads.networks.gam_dynamic;

import io.bidmachine.core.Logger;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public class TaskExecutorImpl implements TaskExecutor {
    public static final int CORE_POOL_SIZE = Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4));
    public final ScheduledExecutorService executorService;

    public TaskExecutorImpl() {
        this(Executors.newScheduledThreadPool(CORE_POOL_SIZE));
    }

    public TaskExecutorImpl(ScheduledExecutorService executorService) {
        this.executorService = executorService;
    }

    @Override // io.bidmachine.ads.networks.gam_dynamic.TaskExecutor
    public boolean execute(Runnable task, long delayMs) {
        try {
            this.executorService.schedule(task, delayMs, TimeUnit.MILLISECONDS);
            return true;
        } catch (Throwable th) {
            Logger.w(th);
            return false;
        }
    }
}
