package kotlinx.coroutines.internal;

import _COROUTINE.ArtificialStackFrames;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;

/* JADX INFO: compiled from: StackTraceRecovery.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class StackTraceRecoveryKt {
    public static final StackTraceElement ARTIFICIAL_FRAME = new ArtificialStackFrames().coroutineBoundary();
    public static final String baseContinuationImplClassName;
    public static final String stackTraceRecoveryClassName;

    public static final <E extends Throwable> E recoverStackTrace(E e) {
        return e;
    }

    static {
        Object objM2760constructorimpl;
        Object objM2760constructorimpl2;
        try {
            Result.Companion companion = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(BaseContinuationImpl.class.getCanonicalName());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m2763exceptionOrNullimpl(objM2760constructorimpl) != null) {
            objM2760constructorimpl = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        baseContinuationImplClassName = (String) objM2760constructorimpl;
        try {
            objM2760constructorimpl2 = Result.m2760constructorimpl(StackTraceRecoveryKt.class.getCanonicalName());
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.Companion;
            objM2760constructorimpl2 = Result.m2760constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m2763exceptionOrNullimpl(objM2760constructorimpl2) != null) {
            objM2760constructorimpl2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        stackTraceRecoveryClassName = (String) objM2760constructorimpl2;
    }
}
