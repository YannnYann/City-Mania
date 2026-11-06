package io.bidmachine.utils.task;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class BackgroundTaskManager implements TaskManager {
    public static final int CORE_POOL_SIZE;
    public static final int CPU_COUNT;
    public final ScheduledThreadPoolExecutor executor = new ScheduledThreadPoolExecutor(CORE_POOL_SIZE);
    public final Map<Runnable, Future<?>> futureMap = new ConcurrentHashMap();

    public class a implements Runnable {
        public final Runnable a;

        public a(Runnable runnable) {
            this.a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            BackgroundTaskManager.this.removeFuture(this.a);
            this.a.run();
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        CPU_COUNT = iAvailableProcessors;
        CORE_POOL_SIZE = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
    }

    public void cancel(CancelableTask cancelableTask) {
        try {
            cancelableTask.setCancel(true);
            Future<?> futureRemoveFuture = removeFuture(cancelableTask);
            if (futureRemoveFuture == null) {
                return;
            }
            futureRemoveFuture.cancel(false);
        } catch (Throwable unused) {
        }
    }

    @Override // io.bidmachine.utils.task.TaskManager
    public void execute(Runnable runnable) {
        try {
            this.executor.execute(runnable);
        } catch (Throwable unused) {
        }
    }

    public final Future<?> removeFuture(Runnable runnable) {
        try {
            return this.futureMap.remove(runnable);
        } catch (Throwable unused) {
            return null;
        }
    }

    public void schedule(CancelableTask cancelableTask, long j, TimeUnit timeUnit) {
        try {
            cancelableTask.setCancel(false);
            this.futureMap.put(cancelableTask, this.executor.schedule(new a(cancelableTask), j, timeUnit));
        } catch (Throwable unused) {
        }
    }
}
