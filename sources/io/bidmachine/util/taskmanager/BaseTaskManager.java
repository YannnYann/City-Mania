package io.bidmachine.util.taskmanager;

import io.bidmachine.util.Cancelable;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BaseTaskManager.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseTaskManager implements TaskManager {
    public abstract void cancelTask(Runnable runnable) throws Throwable;

    public abstract void scheduleTask(Runnable runnable, long j) throws Throwable;

    @Override // io.bidmachine.util.taskmanager.TaskManager
    public void schedule(Runnable task, long j) throws Throwable {
        Intrinsics.checkNotNullParameter(task, "task");
        cancel(task, false);
        scheduleTask(task, j);
    }

    @Override // io.bidmachine.util.taskmanager.TaskManager
    public void cancel(Runnable task) {
        Intrinsics.checkNotNullParameter(task, "task");
        cancel(task, true);
    }

    public final void cancel(Runnable runnable, boolean z) {
        Cancelable cancelable = runnable instanceof Cancelable ? (Cancelable) runnable : null;
        if (cancelable != null) {
            try {
                cancelable.setCancel(z);
                Unit unit = Unit.INSTANCE;
            } catch (Throwable unused) {
            }
        }
        try {
            cancelTask(runnable);
            Unit unit2 = Unit.INSTANCE;
        } catch (Throwable unused2) {
        }
    }
}
