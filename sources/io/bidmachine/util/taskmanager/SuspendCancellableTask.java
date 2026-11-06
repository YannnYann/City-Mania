package io.bidmachine.util.taskmanager;

import io.bidmachine.util.Cancelable;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;

/* JADX INFO: compiled from: SuspendCancellableTask.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class SuspendCancellableTask implements Runnable, Cancelable {
    public final AtomicBoolean isCanceled = new AtomicBoolean(false);

    @Override // java.lang.Runnable
    public final void run() {
    }

    public abstract Object runTask(CoroutineContext coroutineContext, Continuation<? super Unit> continuation);

    public final Object runSuspend(CoroutineContext coroutineContext, Continuation<? super Unit> continuation) {
        if (isCanceled()) {
            return Unit.INSTANCE;
        }
        Object objRunTask = runTask(coroutineContext, continuation);
        return objRunTask == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objRunTask : Unit.INSTANCE;
    }

    public boolean isCanceled() {
        return this.isCanceled.get();
    }

    @Override // io.bidmachine.util.Cancelable
    public void setCancel(boolean z) {
        this.isCanceled.set(z);
    }
}
