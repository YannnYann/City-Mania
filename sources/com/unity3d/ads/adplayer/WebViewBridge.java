package com.unity3d.ads.adplayer;

import com.unity3d.ads.adplayer.model.WebViewEvent;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: compiled from: WebViewBridge.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface WebViewBridge {
    Map<String, Function0<ExposedFunction>> getExposedFunctions();

    SharedFlow<Invocation> getOnInvocation();

    void handleCallback(String str, String str2, String str3);

    void handleInvocation(String str);

    Object request(String str, String str2, Object[] objArr, Continuation<? super Object[]> continuation);

    Object sendEvent(WebViewEvent webViewEvent, Continuation<? super Unit> continuation);

    void setExposedFunctions(Map<String, ? extends Function0<? extends ExposedFunction>> map);
}
