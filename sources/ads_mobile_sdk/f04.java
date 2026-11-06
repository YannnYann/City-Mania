package ads_mobile_sdk;

import android.net.Uri;
import android.webkit.WebView;
import androidx.webkit.JavaScriptReplyProxy;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebViewCompat;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class f04 implements WebViewCompat.WebMessageListener {
    public final /* synthetic */ g04 a;

    public f04(g04 g04Var) {
        this.a = g04Var;
    }

    @Override // androidx.webkit.WebViewCompat.WebMessageListener
    public final void onPostMessage(WebView webView, WebMessageCompat webMessageCompat, Uri uri, boolean z, JavaScriptReplyProxy javaScriptReplyProxy) {
        g04 g04Var = this.a;
        String data = webMessageCompat.getData();
        g04Var.getClass();
        try {
            JSONObject jSONObject = new JSONObject(data);
            g04Var.b.a(jSONObject.getString("method"), jSONObject.getJSONObject("data"));
        } catch (JSONException e) {
            bf2.a("Error parsing JS message", e);
        }
    }
}
