package io.bidmachine.rendering.utils;

import io.bidmachine.rendering.utils.taskmanager.TaskManager;
import io.bidmachine.rendering.utils.taskmanager.UITaskManager;

/* JADX INFO: loaded from: classes5.dex */
public class UiUtils {
    public static final TaskManager a = new UITaskManager();

    public static void cancelOnUiThread(Runnable runnable) {
        a.cancel(runnable);
    }

    public static void onUiThread(Runnable runnable) {
        a.execute(runnable);
    }

    public static void onUiThread(Runnable runnable, long delayMs) {
        a.schedule(runnable, delayMs);
    }
}
