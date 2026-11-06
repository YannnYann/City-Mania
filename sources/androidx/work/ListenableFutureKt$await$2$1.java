package androidx.work;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlinx.coroutines.CancellableContinuation;

/* JADX INFO: compiled from: ListenableFuture.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ListenableFutureKt$await$2$1 implements Runnable {
    public final /* synthetic */ CancellableContinuation<Object> $cancellableContinuation;
    public final /* synthetic */ ListenableFuture<Object> $this_await;

    public ListenableFutureKt$await$2$1(CancellableContinuation<Object> cancellableContinuation, ListenableFuture<Object> listenableFuture) {
        this.$cancellableContinuation = cancellableContinuation;
        this.$this_await = listenableFuture;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.$cancellableContinuation.resumeWith(Result.m2760constructorimpl(this.$this_await.get()));
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause == null) {
                cause = th;
            }
            if (th instanceof CancellationException) {
                this.$cancellableContinuation.cancel(cause);
                return;
            }
            CancellableContinuation<Object> cancellableContinuation = this.$cancellableContinuation;
            Result.Companion companion = Result.Companion;
            cancellableContinuation.resumeWith(Result.m2760constructorimpl(ResultKt.createFailure(cause)));
        }
    }
}
