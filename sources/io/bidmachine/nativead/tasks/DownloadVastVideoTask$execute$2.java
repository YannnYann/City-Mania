package io.bidmachine.nativead.tasks;

import android.net.Uri;
import io.bidmachine.nativead.tasks.DownloadVideoTask;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes5.dex */
public final class DownloadVastVideoTask$execute$2 extends SuspendLambda implements Function2 {
    public Object a;
    public int b;
    public final /* synthetic */ DownloadVastVideoTask c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadVastVideoTask$execute$2(DownloadVastVideoTask downloadVastVideoTask, Continuation continuation) {
        super(2, continuation);
        this.c = downloadVastVideoTask;
    }

    @Override // kotlin.jvm.functions.Function2
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((DownloadVastVideoTask$execute$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DownloadVastVideoTask$execute$2(this.c, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objM2676executeIoAF18A;
        Pair pair;
        Object objM2760constructorimpl;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Object objM2675getVideoUrld1pmJ48 = this.c.m2675getVideoUrld1pmJ48();
            Pair pair2 = (Pair) (Result.m2765isFailureimpl(objM2675getVideoUrld1pmJ48) ? null : objM2675getVideoUrld1pmJ48);
            if (pair2 == null) {
                Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2675getVideoUrld1pmJ48);
                if (thM2763exceptionOrNullimpl == null) {
                    thM2763exceptionOrNullimpl = new Exception("Unknown error");
                }
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(thM2763exceptionOrNullimpl));
                return Result.m2759boximpl(objM2760constructorimpl);
            }
            DownloadVideoTask downloadVideoTask = new DownloadVideoTask(this.c.assetsHolder, this.c.repository, new DownloadVideoTask.OnLoadedListener() { // from class: io.bidmachine.nativead.tasks.DownloadVastVideoTask$execute$2$emptyListener$1
            }, (String) pair2.getFirst(), this.c.dispatchers);
            this.a = pair2;
            this.b = 1;
            objM2676executeIoAF18A = downloadVideoTask.m2676executeIoAF18A(this);
            if (objM2676executeIoAF18A == coroutine_suspended) {
                return coroutine_suspended;
            }
            pair = pair2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            pair = (Pair) this.a;
            ResultKt.throwOnFailure(obj);
            objM2676executeIoAF18A = ((Result) obj).m2768unboximpl();
        }
        Uri uri = (Uri) (Result.m2765isFailureimpl(objM2676executeIoAF18A) ? null : objM2676executeIoAF18A);
        if (uri != null) {
            objM2760constructorimpl = Result.m2760constructorimpl(new Pair(uri, pair.getSecond()));
        } else {
            Throwable thM2763exceptionOrNullimpl2 = Result.m2763exceptionOrNullimpl(objM2676executeIoAF18A);
            if (thM2763exceptionOrNullimpl2 == null) {
                thM2763exceptionOrNullimpl2 = new Exception("Unknown error");
            }
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(thM2763exceptionOrNullimpl2));
        }
        return Result.m2759boximpl(objM2760constructorimpl);
    }
}
