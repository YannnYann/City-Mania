package ads_mobile_sdk;

import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import com.unity3d.ads.core.domain.WebViewScreenCapture;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class h22 extends r9 {
    public WebView e;
    public Long f;
    public final Map g;
    public final String h;

    public h22(String str, String str2, Map map) {
        super(str);
        this.f = null;
        this.g = map;
        this.h = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        Log.w("NativeBridge", "WebView renderer gone: " + renderProcessGoneDetail.toString() + " for WebView: " + webView);
        if (((WebView) this.b.get()) == webView) {
            Log.w("NativeBridge", "Deallocating the Native bridge as it is unusable. No further events will be generated for this session.");
            this.b = new uy3(null);
        }
        if (webView != null) {
            webView.destroy();
        }
    }

    @Override // ads_mobile_sdk.r9
    public final void b() {
        this.b.clear();
        new Handler().postDelayed(new g22(this), Math.max(4000 - (this.f == null ? 4000L : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.f.longValue(), TimeUnit.NANOSECONDS)), WebViewScreenCapture.CACHE_TTL_MS));
        this.e = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009b  */
    @Override // ads_mobile_sdk.r9
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c() {
        /*
            r4 = this;
            ads_mobile_sdk.wh1 r0 = ads_mobile_sdk.wh1.b
            android.content.Context r1 = r0.a
            android.webkit.WebView r2 = new android.webkit.WebView
            r2.<init>(r1)
            r4.e = r2
            android.webkit.WebSettings r2 = r2.getSettings()
            r3 = 1
            r2.setJavaScriptEnabled(r3)
            android.webkit.WebView r2 = r4.e
            android.webkit.WebSettings r2 = r2.getSettings()
            r3 = 0
            r2.setAllowContentAccess(r3)
            android.webkit.WebView r2 = r4.e
            android.webkit.WebSettings r2 = r2.getSettings()
            r2.setAllowFileAccess(r3)
            android.webkit.WebView r2 = r4.e
            java.lang.String r3 = "WEB_MESSAGE_LISTENER"
            boolean r3 = androidx.webkit.WebViewFeature.isFeatureSupported(r3)     // Catch: java.lang.Exception -> L48 java.lang.NoClassDefFoundError -> L50
            if (r3 == 0) goto L50
            android.content.Context r0 = r0.a     // Catch: java.lang.Exception -> L48 java.lang.NoClassDefFoundError -> L50
            ads_mobile_sdk.do r0 = ads_mobile_sdk.Cdo.a(r0)     // Catch: java.lang.Exception -> L48 java.lang.NoClassDefFoundError -> L50
            java.util.List r0 = r0.a()     // Catch: java.lang.Exception -> L48 java.lang.NoClassDefFoundError -> L50
            java.util.ArrayList r0 = (java.util.ArrayList) r0     // Catch: java.lang.Exception -> L48 java.lang.NoClassDefFoundError -> L50
            int r0 = r0.size()     // Catch: java.lang.Exception -> L48 java.lang.NoClassDefFoundError -> L50
            if (r0 <= 0) goto L50
            ads_mobile_sdk.go r0 = new ads_mobile_sdk.go     // Catch: java.lang.Exception -> L48 java.lang.NoClassDefFoundError -> L50
            r0.<init>(r2)     // Catch: java.lang.Exception -> L48 java.lang.NoClassDefFoundError -> L50
            goto L66
        L48:
            r0 = move-exception
            java.lang.String r2 = "Error during initialization of AttestationMessageListener"
            java.lang.String r3 = "OMIDLIB"
            android.util.Log.e(r3, r2, r0)
        L50:
            ads_mobile_sdk.do r0 = ads_mobile_sdk.Cdo.a(r1)
            java.util.List r0 = r0.a()
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            int r0 = r0.size()
            if (r0 <= 0) goto L66
            ads_mobile_sdk.e22 r0 = new ads_mobile_sdk.e22
            r0.<init>(r4)
            goto L6b
        L66:
            ads_mobile_sdk.f22 r0 = new ads_mobile_sdk.f22
            r0.<init>(r4)
        L6b:
            android.webkit.WebView r1 = r4.e
            r1.setWebViewClient(r0)
            android.webkit.WebView r0 = r4.e
            ads_mobile_sdk.uy3 r1 = new ads_mobile_sdk.uy3
            r1.<init>(r0)
            r4.b = r1
            android.webkit.WebView r0 = r4.e
            java.lang.String r1 = r4.h
            ads_mobile_sdk.qd2.a(r0, r1)
            java.util.Map r0 = r4.g
            java.util.Set r0 = r0.keySet()
            java.util.Iterator r0 = r0.iterator()
            boolean r1 = r0.hasNext()
            if (r1 != 0) goto L9b
            long r0 = java.lang.System.nanoTime()
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
            r4.f = r0
            return
        L9b:
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            java.util.Map r1 = r4.g
            java.lang.Object r0 = r1.get(r0)
            r0.getClass()
            java.lang.ClassCastException r0 = new java.lang.ClassCastException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.h22.c():void");
    }

    @Override // ads_mobile_sdk.r9
    public final void a(p9 p9Var, n9 n9Var) {
        JSONObject jSONObject = new JSONObject();
        Map mapUnmodifiableMap = Collections.unmodifiableMap(n9Var.d);
        Iterator it = mapUnmodifiableMap.keySet().iterator();
        if (!it.hasNext()) {
            a(p9Var, n9Var, jSONObject);
        } else {
            mapUnmodifiableMap.get((String) it.next()).getClass();
            throw new ClassCastException();
        }
    }
}
