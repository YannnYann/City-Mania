package io.bidmachine;

import io.bidmachine.core.Utils;
import io.bidmachine.utils.task.CancelableTask;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public class ExpirationHandler {
    private final long expirationTimeMs;
    private final c expiredTask;
    private final AtomicBoolean isExpireTrackerSubscribed;
    private final TaskScheduler taskScheduler;

    public interface Listener {
        void onExpired();
    }

    public interface TaskScheduler {
        void cancelTask(CancelableTask cancelableTask);

        void scheduleTask(CancelableTask cancelableTask, long j);
    }

    public static class b implements TaskScheduler {
        public b() {
        }

        @Override // io.bidmachine.ExpirationHandler.TaskScheduler
        public void cancelTask(CancelableTask cancelableTask) {
            cancelableTask.setCancel(true);
            Utils.cancelBackgroundThreadTask(cancelableTask);
        }

        @Override // io.bidmachine.ExpirationHandler.TaskScheduler
        public void scheduleTask(CancelableTask cancelableTask, long j) {
            cancelableTask.setCancel(false);
            Utils.onBackgroundThread(cancelableTask, j);
        }
    }

    public static class c extends CancelableTask {
        public final WeakReference a;

        public c(Listener listener) {
            this.a = new WeakReference(listener);
        }

        @Override // io.bidmachine.utils.task.CancelableTask
        public void runTask() {
            Listener listener = (Listener) this.a.get();
            if (listener != null) {
                listener.onExpired();
            }
        }
    }

    public ExpirationHandler(long j, Listener listener) {
        this(j, listener, new b());
    }

    public TaskScheduler getTaskScheduler() {
        return this.taskScheduler;
    }

    public void start() {
        if (this.expirationTimeMs <= 0 || !this.isExpireTrackerSubscribed.compareAndSet(false, true)) {
            return;
        }
        this.taskScheduler.scheduleTask(this.expiredTask, this.expirationTimeMs);
    }

    public void stop() {
        this.isExpireTrackerSubscribed.set(false);
        this.taskScheduler.cancelTask(this.expiredTask);
    }

    public ExpirationHandler(long j, Listener listener, TaskScheduler taskScheduler) {
        this.expiredTask = new c(listener);
        this.expirationTimeMs = j;
        this.taskScheduler = taskScheduler;
        this.isExpireTrackerSubscribed = new AtomicBoolean(false);
    }
}
