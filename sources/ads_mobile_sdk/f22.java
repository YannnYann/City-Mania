package ads_mobile_sdk;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: loaded from: classes.dex */
public final class f22 extends WebViewClient {
    public final /* synthetic */ h22 a;

    public f22(h22 h22Var) {
        this.a = h22Var;
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        this.a.a(webView, renderProcessGoneDetail);
        return true;
    }
}
