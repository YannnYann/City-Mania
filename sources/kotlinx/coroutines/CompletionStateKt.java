package kotlinx.coroutines;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: CompletionState.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class CompletionStateKt {
    public static final <T> Object toState(Object obj) {
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(obj);
        return thM2763exceptionOrNullimpl == null ? obj : new CompletedExceptionally(thM2763exceptionOrNullimpl, false, 2, null);
    }

    public static final <T> Object toState(Object obj, CancellableContinuation<?> cancellableContinuation) {
        Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(obj);
        return thM2763exceptionOrNullimpl == null ? obj : new CompletedExceptionally(thM2763exceptionOrNullimpl, false, 2, null);
    }

    public static final <T> Object recoverResult(Object obj, Continuation<? super T> continuation) {
        if (obj instanceof CompletedExceptionally) {
            Result.Companion companion = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(((CompletedExceptionally) obj).cause));
        }
        return Result.m2760constructorimpl(obj);
    }
}
