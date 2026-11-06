package com.unity3d.ads.core.domain;

import com.unity3d.ads.adplayer.WebViewBridge;
import com.unity3d.ads.adplayer.WebViewContainer;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: GetWebViewBridgeUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface GetWebViewBridgeUseCase {
    WebViewBridge invoke(WebViewContainer webViewContainer, CoroutineScope coroutineScope);
}
