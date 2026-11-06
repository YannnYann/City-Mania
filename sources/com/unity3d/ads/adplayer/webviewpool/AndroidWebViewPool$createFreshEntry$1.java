package com.unity3d.ads.adplayer.webviewpool;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: AndroidWebViewPool.kt */
/* JADX INFO: loaded from: classes4.dex */
@DebugMetadata(c = "com.unity3d.ads.adplayer.webviewpool.AndroidWebViewPool", f = "AndroidWebViewPool.kt", l = {Sdk.SDKError.Reason.PRIVACY_URL_ERROR_VALUE}, m = "createFreshEntry$suspendImpl")
public final class AndroidWebViewPool$createFreshEntry$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidWebViewPool this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidWebViewPool$createFreshEntry$1(AndroidWebViewPool androidWebViewPool, Continuation<? super AndroidWebViewPool$createFreshEntry$1> continuation) {
        super(continuation);
        this.this$0 = androidWebViewPool;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return AndroidWebViewPool.createFreshEntry$suspendImpl(this.this$0, this);
    }
}
