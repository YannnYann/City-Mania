package ads_mobile_sdk;

import android.webkit.WebView;

/* JADX INFO: loaded from: classes.dex */
public final class v61 extends r9 {
    public v61(WebView webView, String str) {
        super(str);
        if (webView != null) {
            bz3.a(webView);
        }
        if (webView != null && !webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        a(webView);
    }
}
