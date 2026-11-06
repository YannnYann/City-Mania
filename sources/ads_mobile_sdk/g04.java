package ads_mobile_sdk;

import android.util.Log;
import android.webkit.WebView;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public final class g04 {
    public final WebView a;
    public final h04 b;

    public final void a() {
        try {
            if (!WebViewFeature.isFeatureSupported(WebViewFeature.WEB_MESSAGE_LISTENER)) {
                this.b.b();
                return;
            }
            try {
                WebViewCompat.removeWebMessageListener(this.a, this.b.a());
                WebViewCompat.addWebMessageListener(this.a, this.b.a(), new HashSet(Arrays.asList("*")), new f04(this));
            } catch (Exception e) {
                Log.e("OMIDLIB", "Error adding WebView listener", e);
                this.b.b();
            }
        } catch (NoClassDefFoundError unused) {
            this.b.b();
        }
    }

    public g04(WebView webView, h04 h04Var) {
        ig2.a(webView, "WebView is null");
        this.a = webView;
        this.b = h04Var;
    }
}
