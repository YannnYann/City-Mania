package com.unity3d.ads.adplayer;

import android.view.InputEvent;
import android.webkit.WebView;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.StateFlow;
import org.json.JSONArray;

/* JADX INFO: compiled from: WebViewContainer.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface WebViewContainer {
    Object addJavascriptInterface(WebViewBridge webViewBridge, String str, Continuation<? super Unit> continuation);

    Object destroy(Continuation<? super Unit> continuation);

    Object evaluateJavascript(HandlerType handlerType, JSONArray jSONArray, Continuation<? super Unit> continuation);

    StateFlow<InputEvent> getLastInputEvent();

    WebView getWebView();

    StateFlow<Boolean> isRenderProcessGone();

    Object loadUrl(String str, Continuation<? super Unit> continuation);
}
