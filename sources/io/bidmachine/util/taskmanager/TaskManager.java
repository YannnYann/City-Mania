package io.bidmachine.util.taskmanager;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TaskManager.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface TaskManager {
    void cancel(Runnable runnable);

    void schedule(Runnable runnable, long j) throws Throwable;

    default void execute(Runnable task) throws Throwable {
        Intrinsics.checkNotNullParameter(task, "task");
        schedule(task, 0L);
    }

    default boolean executeSafely(Runnable task) {
        Boolean bool;
        Intrinsics.checkNotNullParameter(task, "task");
        try {
            execute(task);
            bool = Boolean.TRUE;
        } catch (Throwable unused) {
            bool = null;
        }
        return Intrinsics.areEqual(bool, Boolean.TRUE);
    }

    default boolean scheduleSafely(Runnable task, long j) {
        Boolean bool;
        Intrinsics.checkNotNullParameter(task, "task");
        try {
            schedule(task, j);
            bool = Boolean.TRUE;
        } catch (Throwable unused) {
            bool = null;
        }
        return Intrinsics.areEqual(bool, Boolean.TRUE);
    }
}
