package io.bidmachine;

import io.bidmachine.utils.task.BackgroundTaskManager;
import io.bidmachine.utils.task.CancelableTask;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public class BidTokenTaskManager {
    private static volatile BackgroundTaskManager instance;

    public static void cancel(CancelableTask cancelableTask) {
        get().cancel(cancelableTask);
    }

    public static void execute(Runnable runnable) {
        get().execute(runnable);
    }

    private static BackgroundTaskManager get() {
        BackgroundTaskManager backgroundTaskManager;
        BackgroundTaskManager backgroundTaskManager2 = instance;
        if (backgroundTaskManager2 != null) {
            return backgroundTaskManager2;
        }
        synchronized (BackgroundTaskManager.class) {
            try {
                backgroundTaskManager = instance;
                if (backgroundTaskManager == null) {
                    backgroundTaskManager = new BackgroundTaskManager();
                    instance = backgroundTaskManager;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return backgroundTaskManager;
    }

    public static void schedule(CancelableTask cancelableTask, long j, TimeUnit timeUnit) {
        get().schedule(cancelableTask, j, timeUnit);
    }
}
