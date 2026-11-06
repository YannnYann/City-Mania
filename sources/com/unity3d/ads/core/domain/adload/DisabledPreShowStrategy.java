package com.unity3d.ads.core.domain.adload;

import com.unity3d.ads.adplayer.WebViewContainer;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase;
import gatewayprotocol.v1.AdResponseOuterClass;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DisabledPreShowStrategy.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class DisabledPreShowStrategy implements PreShowWebViewStrategy {
    private final AndroidGetWebViewContainerUseCase getWebViewContainer;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.adload.DisabledPreShowStrategy$acquireForShow$1, reason: invalid class name */
    /* JADX INFO: compiled from: DisabledPreShowStrategy.kt */
    @DebugMetadata(c = "com.unity3d.ads.core.domain.adload.DisabledPreShowStrategy", f = "DisabledPreShowStrategy.kt", l = {18}, m = "acquireForShow")
    public static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DisabledPreShowStrategy.this.acquireForShow(null, null, this);
        }
    }

    public DisabledPreShowStrategy(AndroidGetWebViewContainerUseCase getWebViewContainer) {
        Intrinsics.checkNotNullParameter(getWebViewContainer, "getWebViewContainer");
        this.getWebViewContainer = getWebViewContainer;
    }

    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object onLoadSuccess(AdObject adObject, String str, AdResponseOuterClass.AdResponse adResponse, CoroutineScope coroutineScope, Function2<? super WebViewContainer, ? super Continuation<? super PreloadedWebView>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object acquireForShow(kotlinx.coroutines.CoroutineScope r5, com.unity3d.ads.core.data.model.AdObject r6, kotlin.coroutines.Continuation<? super com.unity3d.ads.core.domain.adload.WebViewContainerResult> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.unity3d.ads.core.domain.adload.DisabledPreShowStrategy.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r7
            com.unity3d.ads.core.domain.adload.DisabledPreShowStrategy$acquireForShow$1 r0 = (com.unity3d.ads.core.domain.adload.DisabledPreShowStrategy.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.adload.DisabledPreShowStrategy$acquireForShow$1 r0 = new com.unity3d.ads.core.domain.adload.DisabledPreShowStrategy$acquireForShow$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)
            goto L3f
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase r7 = r4.getWebViewContainer
            r0.label = r3
            java.lang.Object r7 = r7.invoke(r5, r6, r0)
            if (r7 != r1) goto L3f
            return r1
        L3f:
            com.unity3d.ads.adplayer.AndroidWebViewContainer r7 = (com.unity3d.ads.adplayer.AndroidWebViewContainer) r7
            com.unity3d.ads.core.domain.adload.WebViewContainerResult$OnDemand r5 = new com.unity3d.ads.core.domain.adload.WebViewContainerResult$OnDemand
            r5.<init>(r7)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.adload.DisabledPreShowStrategy.acquireForShow(kotlinx.coroutines.CoroutineScope, com.unity3d.ads.core.data.model.AdObject, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object onShowComplete(AdObject adObject, Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }

    @Override // com.unity3d.ads.core.domain.adload.PreShowWebViewStrategy
    public Object onAdExpired(AdObject adObject, Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }
}
