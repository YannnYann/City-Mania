package io.bidmachine.rendering.utils.taskmanager;

import io.bidmachine.util.Cancelable;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CancelableTask implements Runnable, Cancelable {
    public final AtomicBoolean a = new AtomicBoolean(false);

    public boolean isCanceled() {
        return this.a.get();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (isCanceled()) {
            return;
        }
        runTask();
    }

    public abstract void runTask();

    @Override // io.bidmachine.util.Cancelable
    public void setCancel(boolean isCancel) {
        this.a.set(isCancel);
    }
}
