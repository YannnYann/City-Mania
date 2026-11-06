package androidx.webkit.internal;

import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;

/* JADX INFO: loaded from: classes.dex */
public class WebViewRenderProcessClientFrameworkAdapter extends WebViewRenderProcessClient {
    public androidx.webkit.WebViewRenderProcessClient getFrameworkRenderProcessClient() {
        return null;
    }

    public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        WebViewRenderProcessImpl.forFrameworkObject(webViewRenderProcess);
        throw null;
    }

    public void onRenderProcessResponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        WebViewRenderProcessImpl.forFrameworkObject(webViewRenderProcess);
        throw null;
    }
}
