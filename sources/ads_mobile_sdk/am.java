package ads_mobile_sdk;

import android.os.SystemClock;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
public final class am implements OnCompleteListener {
    public final /* synthetic */ bm a;
    public final /* synthetic */ CancellableContinuation b;

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task appSetIdInfoTask) {
        Intrinsics.checkNotNullParameter(appSetIdInfoTask, "appSetIdInfoTask");
        if (appSetIdInfoTask.isSuccessful()) {
            AppSetIdInfo appSetIdInfo = (AppSetIdInfo) appSetIdInfoTask.getResult();
            Duration.Companion companion = Duration.Companion;
            this.a.c.getClass();
            fu fuVar = new fu(appSetIdInfo, DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS));
            CancellableContinuation cancellableContinuation = this.b;
            Result.Companion companion2 = Result.Companion;
            cancellableContinuation.resumeWith(Result.m2760constructorimpl(new q01(fuVar)));
            return;
        }
        if (appSetIdInfoTask.isCanceled()) {
            ((as3) this.a.b).a("AppSet Id task was cancelled", (Throwable) new CancellationException("AppSet Id task was cancelled"));
            CancellableContinuation cancellableContinuation2 = this.b;
            Result.Companion companion3 = Result.Companion;
            cancellableContinuation2.resumeWith(Result.m2760constructorimpl(new m01("Gms Task for getting AppSetId was cancelled", kk1.a)));
            return;
        }
        Exception exception = appSetIdInfoTask.getException();
        if (exception == null) {
            exception = new Exception("AppSet Id task wasn't successful or cancelled, but had no exception.");
        }
        ((as3) this.a.b).a("Task failed while getting AppSet Id", (Throwable) exception);
        CancellableContinuation cancellableContinuation3 = this.b;
        Result.Companion companion4 = Result.Companion;
        cancellableContinuation3.resumeWith(Result.m2760constructorimpl(new j01(exception, null, null, 6)));
    }

    public am(bm bmVar, CancellableContinuationImpl cancellableContinuationImpl) {
        this.a = bmVar;
        this.b = cancellableContinuationImpl;
    }
}
