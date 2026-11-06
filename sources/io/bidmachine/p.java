package io.bidmachine;

import io.bidmachine.utils.task.BackgroundTaskManager;
import io.bidmachine.utils.task.TaskManager;

/* JADX INFO: loaded from: classes4.dex */
public abstract class p {
    public static volatile TaskManager a;

    public static TaskManager a() {
        TaskManager backgroundTaskManager;
        TaskManager taskManager = a;
        if (taskManager != null) {
            return taskManager;
        }
        synchronized (p.class) {
            try {
                backgroundTaskManager = a;
                if (backgroundTaskManager == null) {
                    backgroundTaskManager = new BackgroundTaskManager();
                    a = backgroundTaskManager;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return backgroundTaskManager;
    }
}
