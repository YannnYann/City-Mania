package io.bidmachine.util;

import android.app.Activity;
import android.view.Window;
import io.bidmachine.util.taskmanager.TaskManager;
import io.bidmachine.util.taskmanager.handler.UIHandlerTaskManager;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UiUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class UiUtils {
    public static final UiUtils INSTANCE = new UiUtils();
    public static final TaskManager TASK_MANAGER = new UIHandlerTaskManager();

    public static final boolean onUiThread(Runnable runnable) {
        if (runnable == null) {
            return false;
        }
        return TASK_MANAGER.executeSafely(runnable);
    }

    public static final boolean onUiThread(Runnable runnable, long j) {
        if (runnable == null) {
            return false;
        }
        return TASK_MANAGER.scheduleSafely(runnable, j);
    }

    public final <I> void onUiThreadWithArgSafely(final I i, final Executable<I> executable) {
        if (executable == null) {
            return;
        }
        onUiThread(new Runnable() { // from class: io.bidmachine.util.UiUtils$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                UiUtils.onUiThreadWithArgSafely$lambda$1(executable, i);
            }
        });
    }

    public static final void onUiThreadWithArgSafely$lambda$1(Executable executable, Object obj) {
        try {
            executable.execute(obj);
            Unit unit = Unit.INSTANCE;
        } catch (Throwable unused) {
        }
    }

    public static final void cancelOnUiThread(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        TASK_MANAGER.cancel(runnable);
    }

    public static final Unit setWindowBackgroundColor(Window window, int i) {
        return UiUtilsKt.setWindowBackgroundColor(window, i);
    }

    public static final void finishActivityWithoutAnimation(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        UiUtilsKt.finishActivityWithoutAnimation(activity);
    }

    public static final void prepareFullscreen(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        UiUtilsKt.prepareFullscreen(activity);
    }

    public static final void applyFullscreen(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        UiUtilsKt.applyFullscreen(activity);
    }
}
