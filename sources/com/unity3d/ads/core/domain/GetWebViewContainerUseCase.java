package com.unity3d.ads.core.domain;

import com.unity3d.ads.adplayer.WebViewContainer;
import com.unity3d.ads.core.data.model.AdObject;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: GetWebViewContainerUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface GetWebViewContainerUseCase {
    Object invoke(CoroutineScope coroutineScope, AdObject adObject, Continuation<? super WebViewContainer> continuation);
}
