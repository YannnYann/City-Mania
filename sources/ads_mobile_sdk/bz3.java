package ads_mobile_sdk;

import android.net.Uri;
import android.os.Build;
import android.webkit.WebView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class bz3 {
    public static boolean a(String str) {
        if (str != null && str.startsWith("omid-native")) {
            try {
                Uri uri = Uri.parse(str);
                if ("omid-native".equals(uri.getScheme())) {
                    xf2.a(uri);
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static void a(WebView webView) {
        if (Build.VERSION.SDK_INT < 26 || ((ArrayList) Cdo.a(wh1.b.a).a()).size() <= 0) {
            return;
        }
        webView.setWebViewClient(new cz3(webView.getWebViewClient()));
    }
}
