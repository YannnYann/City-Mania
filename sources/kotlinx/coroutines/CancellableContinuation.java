package kotlinx.coroutines;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: CancellableContinuation.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface CancellableContinuation<T> extends Continuation<T> {
    boolean cancel(Throwable th);

    void completeResume(Object obj);

    void invokeOnCancellation(Function1<? super Throwable, Unit> function1);

    boolean isActive();

    boolean isCompleted();

    <R extends T> void resume(R r, Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> function3);

    void resumeUndispatched(CoroutineDispatcher coroutineDispatcher, T t);

    <R extends T> Object tryResume(R r, Object obj, Function3<? super Throwable, ? super R, ? super CoroutineContext, Unit> function3);

    Object tryResumeWithException(Throwable th);

    /* JADX INFO: compiled from: CancellableContinuation.kt */
    public static final class DefaultImpls {
        public static /* synthetic */ boolean cancel$default(CancellableContinuation cancellableContinuation, Throwable th, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i & 1) != 0) {
                th = null;
            }
            return cancellableContinuation.cancel(th);
        }
    }
}
