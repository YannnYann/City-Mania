package com.unity3d.ads.core.domain;

import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.adplayer.WebViewBridge;
import com.unity3d.ads.adplayer.WebViewContainer;
import com.unity3d.ads.core.data.model.AdObject;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;

/* JADX INFO: compiled from: GetAdPlayer.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface GetAdPlayer {
    AdPlayer invoke(WebViewBridge webViewBridge, WebViewContainer webViewContainer, AdObject adObject, DiagnosticEventRequestOuterClass.DiagnosticAdType diagnosticAdType);
}
