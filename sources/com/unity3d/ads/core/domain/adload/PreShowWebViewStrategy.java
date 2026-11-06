package com.unity3d.ads.core.domain.adload;

import com.unity3d.ads.adplayer.WebViewContainer;
import com.unity3d.ads.core.data.model.AdObject;
import gatewayprotocol.v1.AdResponseOuterClass;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PreShowWebViewStrategy.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface PreShowWebViewStrategy {
    Object acquireForShow(CoroutineScope coroutineScope, AdObject adObject, Continuation<? super WebViewContainerResult> continuation);

    Object onAdExpired(AdObject adObject, Continuation<? super Unit> continuation);

    Object onLoadSuccess(AdObject adObject, String str, AdResponseOuterClass.AdResponse adResponse, CoroutineScope coroutineScope, Function2<? super WebViewContainer, ? super Continuation<? super PreloadedWebView>, ? extends Object> function2, Continuation<? super Unit> continuation);

    Object onShowComplete(AdObject adObject, Continuation<? super Unit> continuation);
}
