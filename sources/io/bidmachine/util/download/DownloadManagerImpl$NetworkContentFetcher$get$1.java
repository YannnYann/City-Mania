package io.bidmachine.util.download;

import io.bidmachine.util.download.DownloadManagerImpl;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: DownloadManagerImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
@DebugMetadata(c = "io.bidmachine.util.download.DownloadManagerImpl$NetworkContentFetcher", f = "DownloadManagerImpl.kt", l = {258}, m = "get-WS52aQU")
public final class DownloadManagerImpl$NetworkContentFetcher$get$1 extends ContinuationImpl {
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ DownloadManagerImpl.NetworkContentFetcher this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadManagerImpl$NetworkContentFetcher$get$1(DownloadManagerImpl.NetworkContentFetcher networkContentFetcher, Continuation<? super DownloadManagerImpl$NetworkContentFetcher$get$1> continuation) {
        super(continuation);
        this.this$0 = networkContentFetcher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objMo2743getWS52aQU = this.this$0.mo2743getWS52aQU(null, null, null, this);
        return objMo2743getWS52aQU == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo2743getWS52aQU : Result.m2759boximpl(objMo2743getWS52aQU);
    }
}
