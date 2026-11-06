package io.bidmachine.util.download;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: DownloadManagerImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
@DebugMetadata(c = "io.bidmachine.util.download.DownloadManagerImpl", f = "DownloadManagerImpl.kt", l = {76}, m = "getHeadCallData-2Ivn440")
public final class DownloadManagerImpl$getHeadCallData$1 extends ContinuationImpl {
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ DownloadManagerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadManagerImpl$getHeadCallData$1(DownloadManagerImpl downloadManagerImpl, Continuation<? super DownloadManagerImpl$getHeadCallData$1> continuation) {
        super(continuation);
        this.this$0 = downloadManagerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objMo2739getHeadCallData2Ivn440 = this.this$0.mo2739getHeadCallData2Ivn440(null, null, this);
        return objMo2739getHeadCallData2Ivn440 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo2739getHeadCallData2Ivn440 : Result.m2759boximpl(objMo2739getHeadCallData2Ivn440);
    }
}
