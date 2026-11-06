package io.bidmachine.iab.bridge;

import io.bidmachine.iab.mraid.MraidJsValidator;
import io.bidmachine.iab.mraid.MraidWebView;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface JsBridge extends JsProvider {
    MraidJsValidator getJsValidator();

    boolean isHandled(String url);

    void runJsCommand(MraidWebView mraidWebView, String command, Map<String, String> commandMap);
}
