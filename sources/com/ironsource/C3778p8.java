package com.ironsource;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ironsource.C3522b4;
import com.ironsource.L8;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.controller.OpenUrlActivity;
import com.ironsource.sdk.controller.k;
import com.ironsource.sdk.utils.Logger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.p8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3778p8 implements L8 {
    private static final String g = "loadWithUrl | webView is not null";
    private static final String h = "p8";
    private static final String i = "file://";
    private final String a;
    private String b;
    private WebView c;
    private C3742n8 d;
    private C3653i8 e;
    private Context f;

    /* JADX INFO: renamed from: com.ironsource.p8$a */
    public class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ JSONObject b;
        final /* synthetic */ String c;

        public a(String str, JSONObject jSONObject, String str2) {
            this.a = str;
            this.b = jSONObject;
            this.c = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C3778p8.this.c != null) {
                A8.a(C3712le.q, new C3891v8().a(G5.A, C3778p8.g).a());
            }
            try {
                C3778p8.this.b(this.a);
                C3778p8.this.c.loadUrl(C3778p8.this.a(this.b.getString("urlForWebView")));
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("adViewId", C3778p8.this.a);
                C3778p8.this.d.a(this.c, jSONObject);
            } catch (Exception e) {
                C3813r4.d().a(e);
                C3778p8.this.b(this.a, e.getMessage());
                A8.a(C3712le.q, new C3891v8().a(G5.A, e.getMessage()).a());
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.p8$b */
    public class b implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        public b(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                WebView webView = C3778p8.this.c;
                if (webView != null) {
                    webView.destroy();
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("adViewId", C3778p8.this.a);
                C3742n8 c3742n8 = C3778p8.this.d;
                if (c3742n8 != null) {
                    c3742n8.a(this.a, jSONObject);
                    C3778p8.this.d.b();
                }
                C3778p8 c3778p8 = C3778p8.this;
                c3778p8.d = null;
                c3778p8.f = null;
            } catch (Exception e) {
                C3813r4.d().a(e);
                Log.e(C3778p8.h, "performCleanup | could not destroy ISNAdView webView ID: " + C3778p8.this.a);
                A8.a(C3712le.r, new C3891v8().a(G5.A, e.getMessage()).a());
                C3778p8.this.b(this.b, e.getMessage());
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.p8$c */
    public class c implements L8.a {
        final /* synthetic */ String a;

        public c(String str) {
            this.a = str;
        }

        @Override // com.ironsource.L8.a
        public void a(String str) {
            Logger.i(C3778p8.h, "ISNAdViewWebPresenter | WebViewClient | reportOnError: " + str);
            C3778p8.this.b(this.a, str);
        }

        @Override // com.ironsource.L8.a
        public void b(String str) {
            Logger.i(C3778p8.h, "ISNAdViewWebPresenter | WebViewClient | onRenderProcessGone: " + str);
            try {
                ((ViewGroup) C3778p8.this.c.getParent()).removeView(C3778p8.this.c);
            } catch (Exception e) {
                C3813r4.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
            C3778p8.this.d();
        }
    }

    /* JADX INFO: renamed from: com.ironsource.p8$d */
    public class d extends WebChromeClient {
        private d() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            WebView webView2 = new WebView(webView.getContext());
            webView2.setWebChromeClient(C3778p8.this.new d());
            webView2.setWebViewClient(new e());
            ((WebView.WebViewTransport) message.obj).setWebView(webView2);
            message.sendToTarget();
            Logger.i("onCreateWindow", "onCreateWindow");
            return true;
        }
    }

    /* JADX INFO: renamed from: com.ironsource.p8$e */
    public class e extends WebViewClient {
        private e() {
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(26)
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Logger.e(C3778p8.h, "Chromium process crashed - detail.didCrash(): " + renderProcessGoneDetail.didCrash());
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Context context = webView.getContext();
            Intent intentA = new OpenUrlActivity.e(new k.c()).a(str).b(false).a(context);
            intentA.addFlags(268435456);
            context.startActivity(intentA);
            return true;
        }
    }

    public C3778p8(InterfaceC3706l8 interfaceC3706l8, Context context, String str, C3653i8 c3653i8) {
        this.f = context;
        C3742n8 c3742n8 = new C3742n8();
        this.d = c3742n8;
        c3742n8.g(str);
        this.a = str;
        this.d.a(interfaceC3706l8);
        this.e = c3653i8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d() {
        a("", "");
    }

    public String a() {
        return this.a;
    }

    public C3742n8 b() {
        return this.d;
    }

    public C3653i8 c() {
        return this.e;
    }

    public void e(String str) {
        this.b = str;
    }

    @Override // com.ironsource.L8
    public WebView getPresentingView() {
        return this.c;
    }

    @JavascriptInterface
    public void handleMessageFromAd(String str) {
        this.d.c(str);
    }

    private String d(String str) {
        String strSubstring = str.substring(str.indexOf("/") + 1);
        return strSubstring.substring(strSubstring.indexOf("/"));
    }

    @Override // com.ironsource.L8
    public void a(JSONObject jSONObject, String str, String str2) {
        try {
            this.d.e(str);
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            Logger.i(h, "sendHandleGetViewVisibility fail with reason: " + e2.getMessage());
        }
    }

    @Override // com.ironsource.L8
    public void b(JSONObject jSONObject, String str, String str2) {
        V7.a.d(new a(str2, jSONObject, str));
    }

    @Override // com.ironsource.L8
    public void c(JSONObject jSONObject, String str, String str2) throws JSONException {
        try {
            this.d.a(jSONObject.getString("params"), str, str2);
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            Logger.i(h, "sendMessageToAd fail message: " + e2.getMessage());
            throw e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"AddJavascriptInterface"})
    public void b(String str) {
        Logger.i(h, "ISNAdViewWebPresenter | createWebView");
        WebView webView = new WebView(this.f);
        this.c = webView;
        webView.addJavascriptInterface(new C3724m8(this), C3670j8.e);
        this.c.setWebViewClient(new C3760o8(new c(str)));
        this.c.setWebChromeClient(new d());
        eh.a(this.c);
        this.d.a(this.c);
    }

    @Override // com.ironsource.L8
    public synchronized void a(String str, String str2) {
        if (this.f == null) {
            return;
        }
        Logger.i(h, "performCleanup");
        V7.a.d(new b(str, str2));
    }

    private boolean c(String str) {
        return str.startsWith(".");
    }

    @Override // com.ironsource.L8
    public void a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            b(str3, C3522b4.c.D);
            return;
        }
        Logger.i(h, "trying to perform WebView Action: " + str);
        try {
            if (str.equals(C3522b4.i.t0)) {
                this.c.onPause();
                this.d.f(str2);
            } else if (str.equals(C3522b4.i.u0)) {
                this.c.onResume();
                this.d.f(str2);
            } else {
                b(str3, C3522b4.c.C);
            }
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            b(str3, C3522b4.c.E);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str) {
        if (!c(str)) {
            return str;
        }
        return i + this.b + d(str);
    }

    public void b(String str, String str2) {
        C3742n8 c3742n8 = this.d;
        if (c3742n8 != null) {
            c3742n8.a(str, str2);
        }
    }
}
