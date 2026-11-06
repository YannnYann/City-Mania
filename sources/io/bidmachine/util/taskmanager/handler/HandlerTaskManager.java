package io.bidmachine.util.taskmanager.handler;

import android.os.Handler;
import android.os.Looper;
import io.bidmachine.util.taskmanager.BaseTaskManager;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HandlerTaskManager.kt */
/* JADX INFO: loaded from: classes5.dex */
public class HandlerTaskManager extends BaseTaskManager {
    public final Handler handler;

    public final Handler getHandler() {
        return this.handler;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HandlerTaskManager(Looper looper) {
        this(new Handler(looper));
        Intrinsics.checkNotNullParameter(looper, "looper");
    }

    public HandlerTaskManager(Handler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.handler = handler;
    }

    @Override // io.bidmachine.util.taskmanager.BaseTaskManager
    public void scheduleTask(Runnable task, long j) throws Throwable {
        Intrinsics.checkNotNullParameter(task, "task");
        if (j > 0) {
            this.handler.postDelayed(task, j);
        } else if (isCurrentThread()) {
            task.run();
        } else {
            this.handler.post(task);
        }
    }

    @Override // io.bidmachine.util.taskmanager.BaseTaskManager
    public void cancelTask(Runnable task) throws Throwable {
        Intrinsics.checkNotNullParameter(task, "task");
        this.handler.removeCallbacks(task);
    }

    public final boolean isCurrentThread() {
        return Intrinsics.areEqual(Looper.myLooper(), this.handler.getLooper());
    }
}
