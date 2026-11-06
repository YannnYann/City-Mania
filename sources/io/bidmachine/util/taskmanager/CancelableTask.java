package io.bidmachine.util.taskmanager;

import io.bidmachine.util.Cancelable;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: CancelableTask.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class CancelableTask implements Runnable, Cancelable {
    public final AtomicBoolean isCanceled = new AtomicBoolean(false);

    public abstract void runTask();

    @Override // java.lang.Runnable
    public void run() {
        if (isCanceled()) {
            return;
        }
        runTask();
    }

    public boolean isCanceled() {
        return this.isCanceled.get();
    }

    public void setCancel(boolean z) {
        this.isCanceled.set(z);
    }
}
