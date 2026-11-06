package com.ironsource.sdk.controller;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.os.CountDownTimer;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.ConsoleMessage;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.ironsource.A8;
import com.ironsource.Ag;
import com.ironsource.B4;
import com.ironsource.B7;
import com.ironsource.C3458a1;
import com.ironsource.C3522b4;
import com.ironsource.C3541c5;
import com.ironsource.C3558d4;
import com.ironsource.C3577e4;
import com.ironsource.C3647i2;
import com.ironsource.C3649i4;
import com.ironsource.C3658id;
import com.ironsource.C3667j5;
import com.ironsource.C3684k4;
import com.ironsource.C3688k8;
import com.ironsource.C3690ka;
import com.ironsource.C3698l0;
import com.ironsource.C3712le;
import com.ironsource.C3730me;
import com.ironsource.C3738n4;
import com.ironsource.C3744na;
import com.ironsource.C3800q8;
import com.ironsource.C3813r4;
import com.ironsource.C3836s9;
import com.ironsource.C3848t1;
import com.ironsource.C3855t8;
import com.ironsource.C3863tg;
import com.ironsource.C3873u8;
import com.ironsource.C3891v8;
import com.ironsource.C3945y8;
import com.ironsource.D8;
import com.ironsource.EnumC3874u9;
import com.ironsource.G5;
import com.ironsource.InterfaceC3464a7;
import com.ironsource.InterfaceC3561d7;
import com.ironsource.InterfaceC3580e7;
import com.ironsource.InterfaceC3666j4;
import com.ironsource.InterfaceC3851t4;
import com.ironsource.InterfaceC3875ua;
import com.ironsource.InterfaceC3884v1;
import com.ironsource.InterfaceC3887v4;
import com.ironsource.InterfaceC3905w4;
import com.ironsource.InterfaceC3923x4;
import com.ironsource.InterfaceC3941y4;
import com.ironsource.InterfaceC3947ya;
import com.ironsource.L8;
import com.ironsource.M;
import com.ironsource.M1;
import com.ironsource.Pb;
import com.ironsource.Qe;
import com.ironsource.R6;
import com.ironsource.Sb;
import com.ironsource.V3;
import com.ironsource.V7;
import com.ironsource.Vc;
import com.ironsource.X3;
import com.ironsource.X4;
import com.ironsource.Xc;
import com.ironsource.Y3;
import com.ironsource.Y4;
import com.ironsource.Yc;
import com.ironsource.Z0;
import com.ironsource.Zc;
import com.ironsource.bh;
import com.ironsource.dh;
import com.ironsource.eh;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.controller.OpenUrlActivity;
import com.ironsource.sdk.controller.f;
import com.ironsource.sdk.controller.k;
import com.ironsource.sdk.controller.l;
import com.ironsource.sdk.controller.m;
import com.ironsource.sdk.controller.p;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import com.ironsource.sdk.utils.Logger;
import com.ironsource.sdk.utils.SDKUtils;
import com.unity3d.ironsourceads.internal.services.a;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import kotlin.jvm.functions.Function1;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class v implements com.ironsource.sdk.controller.l, Vc, DownloadListener {
    private static final String d0 = "about:blank";
    public static int e0 = 0;
    public static String f0 = "is_store";
    public static String g0 = "external_url";
    public static String h0 = "secondary_web_view";
    private static String i0 = "success";
    private static String j0 = "fail";
    private InterfaceC3905w4 A;
    private String B;
    private com.ironsource.sdk.controller.d C;
    private Ag D;
    private C3458a1 E;
    private Y4 H;
    private com.ironsource.sdk.controller.o I;
    private com.ironsource.sdk.controller.q J;
    private com.ironsource.sdk.controller.u K;
    private com.ironsource.sdk.controller.i L;
    private com.ironsource.sdk.controller.a M;
    private com.ironsource.sdk.controller.j N;
    private C3848t1 O;
    private B4 P;
    private dh Q;
    private com.ironsource.sdk.controller.c R;
    private V3 S;
    private JSONObject T;
    private l.a U;
    private l.b V;
    private C3738n4 W;
    private boolean X;
    private final boolean Y;
    private final B7 Z;
    private final V7 a;
    C3577e4 a0;
    private InterfaceC3666j4 b;
    private volatile C3744na b0;
    private Xc c0;
    private String f;
    private String g;
    private final C3667j5 h;
    private boolean i;
    private q j;
    private boolean k;
    private CountDownTimer l;
    public CountDownTimer m;
    private final p r;
    private View s;
    private FrameLayout t;
    private WebChromeClient.CustomViewCallback u;
    private FrameLayout v;
    private EnumC1059v w;
    private String x;
    private InterfaceC3941y4 y;
    private InterfaceC3923x4 z;
    private String c = v.class.getSimpleName();
    private String d = "IronSource";
    private final String e = "We're sorry, some error occurred. we will investigate it";
    private final bh n = new bh();
    private int o = 50;
    private int p = 50;
    private String q = C3522b4.e.b;
    private Object F = new Object();
    private boolean G = false;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v.this.a(1);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v.this.a(1);
        }
    }

    public class c implements Runnable {
        final /* synthetic */ C3873u8 a;

        public c(C3873u8 c3873u8) {
            this.a = c3873u8;
        }

        @Override // java.lang.Runnable
        public void run() {
            v.this.R.c("controller html - failed to download - " + this.a.b());
        }
    }

    public class d implements Runnable {
        final /* synthetic */ Context a;

        public d(Context context) {
            this.a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            v.this.f(this.a);
        }
    }

    public class e implements Runnable {
        final /* synthetic */ Context a;

        public e(Context context) {
            this.a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            v.this.g(this.a);
        }
    }

    public class f implements Runnable {
        final /* synthetic */ C3855t8.e a;
        final /* synthetic */ String b;

        public f(C3855t8.e eVar, String str) {
            this.a = eVar;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            InterfaceC3887v4 interfaceC3887v4A;
            C3855t8.e eVar = this.a;
            if ((eVar == C3855t8.e.RewardedVideo || eVar == C3855t8.e.Interstitial) && (interfaceC3887v4A = v.this.a(eVar)) != null) {
                interfaceC3887v4A.b(this.a, this.b);
            }
        }
    }

    public class h implements dh {
        public h() {
        }

        @Override // com.ironsource.dh
        public void a(String str, JSONObject jSONObject) {
            v.this.i(v.this.e(str, jSONObject.toString()));
        }
    }

    public class i implements Runnable {
        final /* synthetic */ JSONObject a;
        final /* synthetic */ WebView b;
        final /* synthetic */ int c;
        final /* synthetic */ String d;

        public i(JSONObject jSONObject, WebView webView, int i, String str) {
            this.a = jSONObject;
            this.b = webView;
            this.c = i;
            this.d = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            v.this.a(this.a, this.b);
            if (v.B()) {
                v.this.n.a(this.c, this.d);
                v.this.m("about:blank");
            } else {
                v.this.m("about:blank");
                v.this.m(this.d);
            }
        }
    }

    public class j extends CountDownTimer {
        final /* synthetic */ int a;
        final /* synthetic */ int b;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.R.c(C3522b4.c.j);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    IronLog.INTERNAL.verbose("Stopping WebView load before retry attempt $nextAttempt");
                    v.this.b0.stopLoading();
                } catch (Exception unused) {
                    IronLog.INTERNAL.verbose("Failed to stop WebView loading: $error");
                }
                j jVar = j.this;
                v.this.a(jVar.a + 1);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(long j, long j2, int i, int i2) {
            super(j, j2);
            this.a = i;
            this.b = i2;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Logger.i(v.this.c, "Loading Controller Timer Finish");
            if (this.a >= this.b) {
                v.this.b(new a());
            } else if (v.B()) {
                v.this.c(new b());
            } else {
                v.this.a(this.a + 1);
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    public class k implements t {
        public k() {
        }

        @Override // com.ironsource.sdk.controller.v.t
        public void a(String str, C3855t8.e eVar, X4 x4) {
            v.this.a(str, eVar, x4);
        }
    }

    public class l implements t {
        public l() {
        }

        @Override // com.ironsource.sdk.controller.v.t
        public void a(String str, C3855t8.e eVar, X4 x4) {
            v.this.a(str, eVar, x4);
        }
    }

    public class m implements t {
        public m() {
        }

        @Override // com.ironsource.sdk.controller.v.t
        public void a(String str, C3855t8.e eVar, X4 x4) {
            v.this.a(str, eVar, x4);
        }
    }

    public class n implements Runnable {
        final /* synthetic */ C3855t8.e a;
        final /* synthetic */ X4 b;
        final /* synthetic */ String c;

        public n(C3855t8.e eVar, X4 x4, String str) {
            this.a = eVar;
            this.b = x4;
            this.c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            X4 x4;
            C3855t8.e eVar = C3855t8.e.RewardedVideo;
            C3855t8.e eVar2 = this.a;
            if ((eVar != eVar2 && C3855t8.e.Interstitial != eVar2 && C3855t8.e.Banner != eVar2) || (x4 = this.b) == null || TextUtils.isEmpty(x4.h())) {
                return;
            }
            InterfaceC3887v4 interfaceC3887v4A = v.this.a(this.a);
            Log.d(v.this.c, "onAdProductInitFailed (message:" + this.c + ")(" + this.a + ")");
            if (interfaceC3887v4A != null) {
                interfaceC3887v4A.a(this.a, this.b.h(), this.c);
            }
        }
    }

    public class o implements Runnable {
        public o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            v.this.a(1);
        }
    }

    public class p extends WebChromeClient {
        private p() {
        }

        @Override // android.webkit.WebChromeClient
        public View getVideoLoadingProgressView() {
            FrameLayout frameLayout = new FrameLayout(v.this.b0.getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            return frameLayout;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            Logger.i("MyApplication", consoleMessage.message() + " -- From line " + consoleMessage.lineNumber() + " of " + consoleMessage.sourceId());
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            WebView webView2 = new WebView(webView.getContext());
            webView2.setWebChromeClient(this);
            webView2.setWebViewClient(new r());
            ((WebView.WebViewTransport) message.obj).setWebView(webView2);
            message.sendToTarget();
            Logger.i("onCreateWindow", "onCreateWindow");
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
            Logger.i("Test", "onHideCustomView");
            View view = v.this.s;
            if (view == null) {
                return;
            }
            view.setVisibility(8);
            v vVar = v.this;
            vVar.t.removeView(vVar.s);
            v vVar2 = v.this;
            vVar2.s = null;
            vVar2.t.setVisibility(8);
            v.this.u.onCustomViewHidden();
            v.this.b0.setVisibility(0);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            Logger.i("Test", "onShowCustomView");
            v.this.b0.setVisibility(8);
            if (v.this.s != null) {
                Logger.i("Test", "mCustomView != null");
                customViewCallback.onCustomViewHidden();
                return;
            }
            Logger.i("Test", "mCustomView == null");
            v.this.t.addView(view);
            v vVar = v.this;
            vVar.s = view;
            vVar.u = customViewCallback;
            vVar.t.setVisibility(0);
        }
    }

    public static class q {
        C3855t8.e a;
        String b;

        public q(C3855t8.e eVar, String str) {
            this.a = eVar;
            this.b = str;
        }

        public String a() {
            return this.b;
        }

        public C3855t8.e b() {
            return this.a;
        }
    }

    public class r extends WebViewClient {
        private r() {
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(26)
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Logger.e(v.this.c, "Chromium process crashed - detail.didCrash(): " + renderProcessGoneDetail.didCrash());
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Context contextQ = v.this.q();
            contextQ.startActivity(new OpenUrlActivity.e(new k.c()).a(str).b(false).a(contextQ));
            return true;
        }
    }

    public interface t {
        void a(String str, C3855t8.e eVar, X4 x4);
    }

    public static class u {
        String a;
        String b;
    }

    /* JADX INFO: renamed from: com.ironsource.sdk.controller.v$v, reason: collision with other inner class name */
    public enum EnumC1059v {
        Display,
        Gone
    }

    public class w extends WebViewClient {
        private w() {
        }

        private void a() {
            String strB = v.this.n.b();
            if (strB != null) {
                v.this.m(strB);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            Logger.i("onPageFinished", str);
            if (v.B() && v.this.n.c() && str.equals("about:blank")) {
                a();
            }
            if (str.contains("adUnit") || str.contains("index.html")) {
                v.this.D();
            }
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            Logger.i("onPageStarted", str);
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            com.ironsource.sdk.controller.c cVar;
            Logger.i("onReceivedError", str2 + " " + str);
            if (str2.contains(C3522b4.f) && (cVar = v.this.R) != null) {
                cVar.c("controller html - web-view receivedError on loading - " + str + " (errorCode: " + i + ")");
            }
            super.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(26)
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            Log.e(v.this.c, "Chromium process crashed - detail.didCrash(): " + renderProcessGoneDetail.didCrash());
            String str = renderProcessGoneDetail.didCrash() ? "Render process was observed to crash" : "Render process was killed by the system";
            com.ironsource.sdk.controller.c cVar = v.this.R;
            if (cVar != null) {
                cVar.b(str);
            }
            v.this.w();
            return true;
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            boolean zContains;
            Logger.i("shouldInterceptRequest", str);
            try {
                zContains = new URL(str).getFile().contains("mraid.js");
            } catch (MalformedURLException e) {
                C3813r4.d().a(e);
                zContains = false;
            }
            if (zContains) {
                String str2 = "file://" + v.this.B + File.separator + "mraid.js";
                try {
                    new FileInputStream(new File(str2));
                    return new WebResourceResponse("text/javascript", "UTF-8", getClass().getResourceAsStream(str2));
                } catch (FileNotFoundException e2) {
                    C3813r4.d().a(e2);
                }
            }
            return super.shouldInterceptRequest(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Logger.i("shouldOverrideUrlLoading", str);
            try {
                if (v.this.h(str)) {
                    v.this.A();
                    return true;
                }
            } catch (Exception e) {
                C3813r4.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }

    public v(Context context, Y4 y4, C3577e4 c3577e4, com.ironsource.sdk.controller.c cVar, V7 v7, int i2, C3667j5 c3667j5, String str, l.a aVar, l.b bVar, String str2, String str3) throws Throwable {
        CountDownLatch countDownLatch;
        p pVar = new p();
        this.r = pVar;
        this.R = cVar;
        boolean zV = Pb.k0().h().v();
        this.Y = Pb.k0().h().G();
        if (zV) {
            countDownLatch = new CountDownLatch(1);
            a(context, v7, countDownLatch);
        } else {
            countDownLatch = null;
        }
        this.Z = Pb.k0().a();
        if (!zV) {
            this.b0 = new C3744na(context, new InterfaceC3947ya.a());
        }
        Logger.i(this.c, "C'tor");
        this.a0 = c3577e4;
        this.a = v7;
        this.H = y4;
        if (!zV) {
            a(context, this.b0);
        }
        this.B = str;
        this.E = new C3458a1();
        this.T = new JSONObject();
        this.h = c3667j5;
        this.U = aVar;
        this.V = bVar;
        boolean zOptBoolean = SDKUtils.getNetworkConfiguration().optBoolean(C3522b4.a.i, false);
        this.X = zOptBoolean;
        if (zOptBoolean) {
            this.W = new C3738n4(new C3684k4(SDKUtils.getControllerUrl(), this.B, SDKUtils.getNetworkConfiguration().optBoolean("useWebViewUserAgent", false), new C3658id(SDKUtils.getControllerUrl())), new Function1() { // from class: com.ironsource.sdk.controller.v$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return this.f$0.d((D8) obj);
                }
            }, c3667j5, new InterfaceC3851t4.a());
        } else {
            c3667j5.a(this);
            this.C = new com.ironsource.sdk.controller.d(SDKUtils.getNetworkConfiguration(), this.B, SDKUtils.getControllerUrl(), c3667j5);
        }
        if (!zV) {
            this.b0.setWebViewClient(new w());
            this.b0.setWebChromeClient(pVar);
            eh.a(this.b0);
            a(this.b0);
            this.b0.setDownloadListener(this);
        }
        this.S = c(context);
        b(context);
        b(i2);
        this.f = str2;
        this.g = str3;
        if (zV) {
            try {
                countDownLatch.await();
                if (this.b0 == null) {
                    IronLog.INTERNAL.error("WebView initialization failed");
                    this.R.c("WebView initialization failed");
                    return;
                }
            } catch (InterruptedException e2) {
                IronLog.INTERNAL.error("WebView initialization was interrupted", e2);
                C3813r4.d().a(e2);
                Thread.currentThread().interrupt();
                this.R.c("WebView initialization was interrupted");
                return;
            }
        }
        this.b = InterfaceC3666j4.a(FeaturesManager.getInstance().getFeatureFlagHealthCheck());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean B() {
        return Pb.k0().h().h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C() {
        ViewParent parent = this.b0.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.b0);
        }
        this.b0.destroy();
    }

    @SuppressLint({"NewApi"})
    private void J() {
    }

    private void a(final Context context, V7 v7, final CountDownLatch countDownLatch) {
        v7.d(new Runnable() { // from class: com.ironsource.sdk.controller.v$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(context, countDownLatch);
            }
        });
    }

    private V3 c(Context context) {
        return new g(SDKUtils.getControllerConfigAsJSONObject(), context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] f(String str, String str2) {
        boolean z;
        JSONObject jSONObject = new JSONObject();
        boolean z2 = true;
        Map<String, String> mapG = null;
        if (TextUtils.isEmpty(str)) {
            z = true;
        } else {
            X4 x4A = this.H.a(g(str), str2);
            if (x4A != null) {
                mapG = x4A.g();
                mapG.put("demandSourceName", x4A.f());
                mapG.put("demandSourceId", x4A.h());
            }
            try {
                jSONObject.put(C3522b4.i.m, str);
            } catch (JSONException e2) {
                C3813r4.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
            }
            z = false;
            try {
                Map<String, String> initSDKParams = SDKUtils.getInitSDKParams();
                if (initSDKParams != null) {
                    jSONObject = SDKUtils.mergeJSONObjects(jSONObject, new JSONObject(initSDKParams));
                }
            } catch (Exception e3) {
                C3813r4.d().a(e3);
                IronLog.INTERNAL.error(e3.toString());
            }
        }
        if (!TextUtils.isEmpty(this.g)) {
            try {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.f), SDKUtils.encodeString(this.g));
            } catch (JSONException e4) {
                C3813r4.d().a(e4);
                IronLog.INTERNAL.error(e4.toString());
            }
        }
        if (!TextUtils.isEmpty(this.f)) {
            try {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.g), SDKUtils.encodeString(this.f));
            } catch (JSONException e5) {
                C3813r4.d().a(e5);
                IronLog.INTERNAL.error(e5.toString());
            }
            z2 = z;
        }
        if (mapG != null && !mapG.isEmpty()) {
            for (Map.Entry<String, String> entry : mapG.entrySet()) {
                if (entry.getKey().equalsIgnoreCase("sdkWebViewCache")) {
                    p(entry.getValue());
                }
                try {
                    jSONObject.put(SDKUtils.encodeString(entry.getKey()), SDKUtils.encodeString(entry.getValue()));
                } catch (JSONException e6) {
                    C3813r4.d().a(e6);
                    IronLog.INTERNAL.error(e6.toString());
                }
            }
        }
        return new Object[]{jSONObject.toString(), Boolean.valueOf(z2)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        c(new Runnable() { // from class: com.ironsource.sdk.controller.v$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.k(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(String str) {
        this.b0.a(new m.b(str, r()).a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(String str) {
        try {
            Logger.i(this.c, "load(): " + str);
            this.b0.loadUrl(str);
        } catch (Throwable th) {
            C3813r4.d().a(th);
            Logger.e(this.c, "WebViewController::load: " + th);
        }
    }

    private void n() {
        CountDownTimer countDownTimer;
        if (!Pb.k0().h().i() || (countDownTimer = this.m) == null) {
            return;
        }
        countDownTimer.cancel();
        this.m = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(String str) {
        C3730me c3730me = new C3730me(str);
        String strD = c3730me.d(C3522b4.i.S);
        String strD2 = c3730me.d("adViewId");
        int color = !C3522b4.i.T.equalsIgnoreCase(strD) ? Color.parseColor(strD) : 0;
        if (strD2 == null) {
            this.b0.setBackgroundColor(color);
            return;
        }
        WebView presentingView = C3800q8.a().a(strD2).getPresentingView();
        if (presentingView != null) {
            presentingView.setBackgroundColor(color);
        }
    }

    public void A() {
        i(f(C3522b4.h.Z));
    }

    public void D() {
        i(f(C3522b4.h.A));
    }

    public void E() {
        try {
            this.b0.onPause();
        } catch (Throwable th) {
            C3813r4.d().a(th);
            Logger.i(this.c, "WebViewController: onPause() - " + th);
        }
    }

    public void F() {
        this.D = null;
    }

    public void G() {
        this.b0.a();
        this.c0 = null;
    }

    public void H() {
        this.b0.requestFocus();
    }

    public void I() {
        try {
            this.b0.onResume();
        } catch (Throwable th) {
            C3813r4.d().a(th);
            Logger.i(this.c, "WebViewController: onResume() - " + th);
        }
    }

    public com.ironsource.sdk.controller.r b(com.ironsource.sdk.controller.s sVar) {
        return new com.ironsource.sdk.controller.r(sVar);
    }

    public void d(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            str2 = C3522b4.c.z;
        }
        i(e(C3522b4.h.a0, a("errMsg", str, "url", str2, null, null, null, null, null, false)));
    }

    @Override // com.ironsource.sdk.controller.l
    public void e() {
        i(f(C3522b4.h.t));
    }

    public void g(String str, String str2) {
        i(e(C3522b4.h.W, a(C3522b4.i.p, str2, C3522b4.i.m, str, null, null, null, null, null, false)));
    }

    @Override // com.ironsource.sdk.controller.l
    public C3855t8.c h() {
        return C3855t8.c.Web;
    }

    public void j(String str) {
        i(e(C3522b4.f.j, a("errMsg", str, null, null, null, null, null, null, null, false)));
    }

    public void l(String str) {
        i(e(C3522b4.h.w, a("action", str, null, null, null, null, null, null, null, false)));
    }

    public void o(String str) {
        this.x = str;
    }

    @Override // android.webkit.DownloadListener
    public void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
        Logger.i(this.c, str + " " + str4);
    }

    public dh p() {
        if (this.Q == null) {
            this.Q = new h();
        }
        return this.Q;
    }

    public int r() {
        return e0;
    }

    public FrameLayout s() {
        return this.v;
    }

    public String t() {
        return this.x;
    }

    public C3458a1 u() {
        return this.E;
    }

    public EnumC1059v v() {
        return this.w;
    }

    public void w() {
        if (this.j == null) {
            return;
        }
        o();
        C3855t8.e eVarB = this.j.b();
        String strA = this.j.a();
        if (r(eVarB.toString())) {
            a(eVarB, strA);
        }
    }

    public void x() {
        this.r.onHideCustomView();
    }

    public boolean y() {
        return this.s != null;
    }

    public void z() {
        i(f(C3522b4.f.h));
    }

    public class g extends V3 {
        public g(JSONObject jSONObject, Context context) {
            super(jSONObject, context);
        }

        @Override // com.ironsource.V3, com.ironsource.InterfaceC3908w7
        public void a(String str, JSONObject jSONObject) {
            v vVar = v.this;
            if (vVar.i) {
                vVar.n(str);
            }
        }

        @Override // com.ironsource.V3, com.ironsource.InterfaceC3908w7
        public void b(String str, JSONObject jSONObject) {
            if (jSONObject == null || !v.this.i) {
                return;
            }
            try {
                jSONObject.put("connectionType", str);
                v.this.d(jSONObject);
            } catch (JSONException e) {
                C3813r4.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }

        @Override // com.ironsource.V3, com.ironsource.InterfaceC3908w7
        public void a() {
            v vVar = v.this;
            if (vVar.i) {
                vVar.n("none");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Context context, CountDownLatch countDownLatch) {
        try {
            try {
                this.b0 = new C3744na(context, new InterfaceC3947ya.a());
                a(context, this.b0);
                this.b0.setWebViewClient(new w());
                this.b0.setWebChromeClient(this.r);
                eh.a(this.b0);
                a(this.b0);
                this.b0.setDownloadListener(this);
            } catch (Exception e2) {
                com.ironsource.sdk.controller.c cVar = this.R;
                if (cVar != null) {
                    cVar.c("Failed to create WebView on UI thread");
                }
                IronLog.INTERNAL.error("Failed to create WebView on UI thread", e2);
                C3813r4.d().a(e2);
            }
        } finally {
            countDownLatch.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        Xc xc = this.c0;
        if (xc != null) {
            xc.onCloseRequested();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean r(String str) {
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            Logger.d(this.c, "Trying to trigger a listener - no product was found");
            return false;
        }
        if (!str.equalsIgnoreCase(C3855t8.e.Interstitial.toString()) ? !(!str.equalsIgnoreCase(C3855t8.e.RewardedVideo.toString()) ? !str.equalsIgnoreCase(C3855t8.e.Banner.toString()) || this.A == null : this.y == null) : this.z != null) {
            z = true;
        }
        if (!z) {
            Logger.d(this.c, "Trying to trigger a listener - no listener was found for product " + str);
        }
        return z;
    }

    @Override // com.ironsource.sdk.controller.l
    public void b() {
        if (this.X) {
            this.W.b();
            return;
        }
        this.C.a(new C3891v8());
        if (this.C.k()) {
            a(1);
        }
    }

    public void c(String str, String str2) {
        String str3;
        try {
            str3 = str;
            try {
                i(e(C3522b4.h.p, a(C3522b4.i.b, str3, "path", b(str2), null, null, null, null, null, false)));
            } catch (Exception e2) {
                e = e2;
                Exception exc = e;
                C3813r4.d().a(exc);
                b(str3, str2, exc.getMessage());
            }
        } catch (Exception e3) {
            e = e3;
            str3 = str;
        }
    }

    public boolean h(String str) {
        try {
            if (!new Qe(str, C3690ka.e().d(), FeaturesManager.getInstance().getFeatureFlagClickCheck().b()).a()) {
                return false;
            }
            C3863tg.a(q(), str);
            return true;
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
            return false;
        }
    }

    public class s {

        public class a implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            public a(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                Log.d(v.this.c, "onRVShowFail(message:" + this.a + ")");
                v.this.y.b(this.b, str);
            }
        }

        public class b implements Runnable {
            final /* synthetic */ String a;

            public b(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                Log.d(v.this.c, "onInterstitialInitSuccess()");
                v.this.z.a(C3855t8.e.Interstitial, this.a, (Z0) null);
            }
        }

        public class c implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            public c(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                Log.d(v.this.c, "onInterstitialInitFail(message:" + str + ")");
                v.this.z.a(C3855t8.e.Interstitial, this.b, str);
            }
        }

        public class d implements Runnable {
            final /* synthetic */ InterfaceC3887v4 a;
            final /* synthetic */ C3855t8.e b;
            final /* synthetic */ String c;

            public d(InterfaceC3887v4 interfaceC3887v4, C3855t8.e eVar, String str) {
                this.a = interfaceC3887v4;
                this.b = eVar;
                this.c = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.a.a(this.b, this.c);
            }
        }

        public class e implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ JSONObject b;

            public e(String str, JSONObject jSONObject) {
                this.a = str;
                this.b = jSONObject;
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.z.a(this.a, this.b);
            }
        }

        public class f implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            public f(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                v.this.z.a(this.b, str);
            }
        }

        public class g implements Runnable {
            final /* synthetic */ String a;

            public g(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                Log.d(v.this.c, "onBannerInitSuccess()");
                v.this.A.a(C3855t8.e.Banner, this.a, (Z0) null);
            }
        }

        public class h implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            public h(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                Log.d(v.this.c, "onBannerInitFail(message:" + str + ")");
                v.this.A.a(C3855t8.e.Banner, this.b, str);
            }
        }

        public class i implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ C3688k8 b;

            public i(String str, C3688k8 c3688k8) {
                this.a = str;
                this.b = c3688k8;
            }

            @Override // java.lang.Runnable
            public void run() {
                Log.d(v.this.c, "onBannerLoadSuccess()");
                v.this.A.a(this.a, this.b);
            }
        }

        public class j implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            public j(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                Log.d(v.this.c, "onLoadBannerFail()");
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                v.this.A.c(this.b, str);
            }
        }

        public class k implements Runnable {
            public k() {
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.I();
            }
        }

        public class l implements Runnable {
            final /* synthetic */ String a;

            public l(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (new JSONObject(this.a).has(f.b.b)) {
                        v.this.U.a(f.a.a(this.a));
                    } else {
                        v.this.V.a(Sb.a(this.a));
                    }
                } catch (JSONException e) {
                    C3813r4.d().a(e);
                    Logger.e(v.this.c, "failed to parse received message");
                    IronLog.INTERNAL.error(e.toString());
                }
            }
        }

        public class m implements Runnable {
            final /* synthetic */ C3855t8.e a;
            final /* synthetic */ String b;
            final /* synthetic */ String c;
            final /* synthetic */ JSONObject d;

            public m(C3855t8.e eVar, String str, String str2, JSONObject jSONObject) {
                this.a = eVar;
                this.b = str;
                this.c = str2;
                this.d = jSONObject;
            }

            @Override // java.lang.Runnable
            public void run() {
                InterfaceC3887v4 interfaceC3887v4A;
                C3855t8.e eVar = this.a;
                if ((eVar == C3855t8.e.Interstitial || eVar == C3855t8.e.RewardedVideo || eVar == C3855t8.e.Banner) && (interfaceC3887v4A = v.this.a(eVar)) != null) {
                    interfaceC3887v4A.a(this.a, this.b, this.c, this.d);
                }
            }
        }

        public class n implements Runnable {
            final /* synthetic */ String a;

            public n(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Logger.i(v.this.c, "omidAPI(" + this.a + ")");
                    v.this.I.a(new C3730me(this.a).toString(), s.this.new w());
                } catch (Exception e) {
                    C3813r4.d().a(e);
                    IronLog.INTERNAL.error(e.toString());
                    Logger.i(v.this.c, "omidAPI failed with exception " + e.getMessage());
                }
            }
        }

        public class o implements Runnable {
            public o() {
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.E();
            }
        }

        public class p implements Runnable {
            public p() {
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.b0.removeJavascriptInterface(C3522b4.e);
            }
        }

        public class q implements Runnable {
            public q() {
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.b0.getSettings().setMixedContentMode(0);
            }
        }

        public class r implements Runnable {
            final /* synthetic */ int a;
            final /* synthetic */ String b;
            final /* synthetic */ Z0 c;

            public r(int i, String str, Z0 z0) {
                this.a = i;
                this.b = str;
                this.c = z0;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.a <= 0) {
                    v.this.y.c(this.b);
                } else {
                    Log.d(v.this.c, "onRVInitSuccess()");
                    v.this.y.a(C3855t8.e.RewardedVideo, this.b, this.c);
                }
            }
        }

        /* JADX INFO: renamed from: com.ironsource.sdk.controller.v$s$s, reason: collision with other inner class name */
        public class RunnableC1057s implements Runnable {
            final /* synthetic */ String a;

            public RunnableC1057s(String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    v.this.N.a(new JSONObject(this.a), s.this.new w());
                } catch (Exception e) {
                    C3813r4.d().a(e);
                    IronLog.INTERNAL.error(e.toString());
                    Logger.i(v.this.c, "fileSystemAPI failed with exception " + e.getMessage());
                }
            }
        }

        public class t implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;
            final /* synthetic */ int c;

            public t(String str, String str2, int i) {
                this.a = str;
                this.b = str2;
                this.c = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.a.equalsIgnoreCase(C3855t8.e.RewardedVideo.toString())) {
                    v.this.y.a(this.b, this.c);
                }
            }
        }

        public class u implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ int b;

            public u(String str, int i) {
                this.a = str;
                this.b = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                v.this.z.onInterstitialAdRewarded(this.a, this.b);
            }
        }

        /* JADX INFO: renamed from: com.ironsource.sdk.controller.v$s$v, reason: collision with other inner class name */
        public class RunnableC1058v implements Runnable {
            final /* synthetic */ String a;
            final /* synthetic */ String b;

            public RunnableC1058v(String str, String str2) {
                this.a = str;
                this.b = str2;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str = this.a;
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                Log.d(v.this.c, "onRVInitFail(message:" + str + ")");
                v.this.y.a(C3855t8.e.RewardedVideo, this.b, str);
            }
        }

        public s() {
        }

        private void a(JSONObject jSONObject) {
            try {
                jSONObject.put("controllerSourceData", v.this.C.f());
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                Logger.d(v.this.c, "Unable to add controller source data into controllerConfig");
            }
        }

        private void b(JSONObject jSONObject) {
            try {
                FeaturesManager featuresManager = FeaturesManager.getInstance();
                if (featuresManager.a().isEmpty()) {
                    return;
                }
                jSONObject.put(C3522b4.a.h, new JSONArray((Collection) featuresManager.a()));
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                A8.a(C3712le.p, new C3891v8().a(G5.A, e2.getMessage()).a());
                Logger.d(v.this.c, "getControllerConfig Error while adding supported features data from FeaturesManager");
            }
        }

        private void c(JSONObject jSONObject) {
            b(jSONObject);
            a(jSONObject, SDKUtils.getTesterParameters());
            if (v.this.X) {
                return;
            }
            a(jSONObject);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void m(String str) {
            try {
                Logger.i(v.this.c, "deleteFolder(" + str + ")");
                String strD = new C3730me(str).d("path");
                if (strD == null) {
                    v.this.a(str, false, C3522b4.c.g, "1");
                    return;
                }
                D8 d8 = new D8(IronSourceStorageUtils.buildAbsolutePathToDirInCache(v.this.B, strD));
                IronSourceStorageUtils.ensurePathSafety(d8, v.this.B);
                if (!d8.exists()) {
                    v.this.a(str, false, C3522b4.c.e, "1");
                } else {
                    v.this.a(str, IronSourceStorageUtils.deleteFolder(d8.getPath()), (String) null, (String) null);
                }
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                v.this.a(str, false, e2.getMessage(), (String) null);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void n(String str) {
            try {
                Logger.i(v.this.c, "deviceDataAPI(" + str + ")");
                v.this.L.a(new C3730me(str).toString(), new w());
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
                Logger.i(v.this.c, "deviceDataAPI failed with exception " + e2.getMessage());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void o(String str) {
            try {
                Logger.i(v.this.c, "dsSharedSignalsAPI(" + str + ")");
                v.this.P.a(new C3730me(str).toString(), new w());
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
                Logger.i(v.this.c, "dsSharedSignalsAPI failed with exception " + e2.getMessage());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void p(String str) {
            Logger.i(v.this.c, "getCachedFilesMap(" + str + ")");
            String strE = v.this.e(str);
            if (TextUtils.isEmpty(strE)) {
                return;
            }
            C3730me c3730me = new C3730me(str);
            if (!c3730me.a("path")) {
                v.this.a(str, false, C3522b4.c.s, (String) null);
                return;
            }
            String str2 = (String) c3730me.b("path");
            if (!IronSourceStorageUtils.isPathExist(v.this.B, str2)) {
                v.this.a(str, false, C3522b4.c.t, (String) null);
                return;
            }
            v.this.i(v.this.a(strE, IronSourceStorageUtils.getCachedFilesMap(v.this.B, str2), C3522b4.h.s, C3522b4.h.r));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0058  */
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void q(java.lang.String r5) {
            /*
                r4 = this;
                com.ironsource.sdk.controller.v r0 = com.ironsource.sdk.controller.v.this
                java.lang.String r0 = com.ironsource.sdk.controller.v.m1810$$Nest$fgetc(r0)
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "getDeviceStatus("
                r1.append(r2)
                r1.append(r5)
                java.lang.String r2 = ")"
                r1.append(r2)
                java.lang.String r1 = r1.toString()
                com.ironsource.sdk.utils.Logger.i(r0, r1)
                com.ironsource.sdk.controller.v r0 = com.ironsource.sdk.controller.v.this
                java.lang.String r0 = com.ironsource.sdk.controller.v.m1841$$Nest$me(r0, r5)
                com.ironsource.sdk.controller.v r1 = com.ironsource.sdk.controller.v.this
                java.lang.String r5 = com.ironsource.sdk.controller.v.m1839$$Nest$md(r1, r5)
                com.ironsource.sdk.controller.v r1 = com.ironsource.sdk.controller.v.this
                com.ironsource.na r2 = com.ironsource.sdk.controller.v.m1809$$Nest$fgetb0(r1)
                android.content.Context r2 = r2.getContext()
                java.lang.Object[] r1 = com.ironsource.sdk.controller.v.m1840$$Nest$md(r1, r2)
                r2 = 0
                r2 = r1[r2]
                java.lang.String r2 = (java.lang.String) r2
                r3 = 1
                r1 = r1[r3]
                java.lang.Boolean r1 = (java.lang.Boolean) r1
                boolean r1 = r1.booleanValue()
                if (r1 == 0) goto L51
                boolean r0 = android.text.TextUtils.isEmpty(r5)
                if (r0 != 0) goto L58
                r0 = r5
                goto L59
            L51:
                boolean r5 = android.text.TextUtils.isEmpty(r0)
                if (r5 != 0) goto L58
                goto L59
            L58:
                r0 = 0
            L59:
                boolean r5 = android.text.TextUtils.isEmpty(r0)
                if (r5 != 0) goto L6e
                com.ironsource.sdk.controller.v r5 = com.ironsource.sdk.controller.v.this
                java.lang.String r1 = "onGetDeviceStatusSuccess"
                java.lang.String r3 = "onGetDeviceStatusFail"
                java.lang.String r5 = com.ironsource.sdk.controller.v.m1834$$Nest$ma(r5, r0, r2, r1, r3)
                com.ironsource.sdk.controller.v r0 = com.ironsource.sdk.controller.v.this
                com.ironsource.sdk.controller.v.m1847$$Nest$mi(r0, r5)
            L6e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.sdk.controller.v.s.q(java.lang.String):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void r(String str) {
            try {
                Logger.i(v.this.c, "iabTokenAPI(" + str + ")");
                v.this.K.a(new C3730me(str).toString(), new w());
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
                Logger.i(v.this.c, "iabTokenAPI failed with exception " + e2.getMessage());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(String str) {
            try {
                InterfaceC3884v1 interfaceC3884v1A = InterfaceC3884v1.a(str);
                v vVar = v.this;
                C3848t1.a aVarA = vVar.O.a(vVar.b0.getContext(), interfaceC3884v1A);
                v.this.i(v.this.e(aVarA.f(), aVarA.i().toString()));
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
        public void s(String str) {
            try {
                Logger.i(v.this.c, "permissionsAPI(" + str + ")");
                v.this.J.a(new C3730me(str).toString(), new w());
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
                Logger.i(v.this.c, "permissionsAPI failed with exception " + e2.getMessage());
            }
        }

        @JavascriptInterface
        public void adClicked(String str) {
            Logger.i(v.this.c, "adClicked(" + str + ")");
            C3730me c3730me = new C3730me(str);
            String strD = c3730me.d(C3522b4.i.m);
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(c3730me);
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                return;
            }
            C3855t8.e eVarG = v.this.g(strD);
            InterfaceC3887v4 interfaceC3887v4A = v.this.a(eVarG);
            if (eVarG == null || interfaceC3887v4A == null) {
                return;
            }
            v.this.b(new d(interfaceC3887v4A, eVarG, strFetchDemandSourceId));
        }

        @JavascriptInterface
        public void adCredited(String str) {
            Log.d(v.this.d, "adCredited(" + str + ")");
            C3730me c3730me = new C3730me(str);
            String strD = c3730me.d(C3522b4.i.k);
            int i2 = strD != null ? Integer.parseInt(strD) : 0;
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(c3730me);
            String strD2 = c3730me.d(C3522b4.i.m);
            if (TextUtils.isEmpty(strD2)) {
                Log.d(v.this.d, "adCredited | product type is missing");
            }
            if (C3855t8.e.Interstitial.toString().equalsIgnoreCase(strD2)) {
                a(strFetchDemandSourceId, i2);
            } else if (v.this.r(strD2)) {
                v.this.b(new t(strD2, strFetchDemandSourceId, i2));
            }
        }

        @JavascriptInterface
        public void adUnitsReady(String str) {
            Logger.i(v.this.c, "adUnitsReady(" + str + ")");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(new C3730me(str));
            Z0 z0 = new Z0(str);
            if (!z0.g()) {
                v.this.a(str, false, C3522b4.c.r, (String) null);
                return;
            }
            v.this.a(str, true, (String) null, (String) null);
            String strD = z0.d();
            if (C3855t8.e.RewardedVideo.toString().equalsIgnoreCase(strD) && v.this.r(strD)) {
                v.this.b(new r(Integer.parseInt(z0.c()), strFetchDemandSourceId, z0));
            }
        }

        @JavascriptInterface
        public void adViewAPI(final String str) {
            v.this.a.a(new Runnable() { // from class: com.ironsource.sdk.controller.v$s$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.j(str);
                }
            }, V7.l);
        }

        @JavascriptInterface
        public void androidSandboxApi(final String str) {
            V7.a.b(new Runnable() { // from class: com.ironsource.sdk.controller.v$s$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.k(str);
                }
            });
        }

        @JavascriptInterface
        public void bannerViewAPI(String str) {
            Logger.i(v.this.c, "bannerViewAPI is not supported in this native version, only adview API");
        }

        @JavascriptInterface
        public void cleanAdInstance(String str) {
            C3855t8.e eVarG;
            try {
                Logger.i(v.this.c, "cleanAdInstance(" + str + ")");
                C3730me c3730me = new C3730me(str);
                String strD = c3730me.d(C3522b4.i.m);
                String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(c3730me);
                if (TextUtils.isEmpty(strFetchDemandSourceId) || (eVarG = v.this.g(strD)) == null) {
                    return;
                }
                v.this.H.b(eVarG, strFetchDemandSourceId);
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                v.this.a(str, false, e2.getMessage(), (String) null);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        @JavascriptInterface
        public void clearLastUpdateTimeData(String str) {
            try {
                ArrayList<String> arrayListA = C3690ka.e().a();
                C3730me c3730me = new C3730me(str);
                if (!arrayListA.isEmpty()) {
                    c3730me.b(C3522b4.i.x0, arrayListA.toString());
                }
                v.this.a(c3730me.toString(), true, (String) null, (String) null);
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                v.this.a(str, false, e2.getMessage(), (String) null);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        @JavascriptInterface
        public void deleteFile(final String str) {
            v.this.a.a(new Runnable() { // from class: com.ironsource.sdk.controller.v$s$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.l(str);
                }
            }, "deleteFile");
        }

        @JavascriptInterface
        public void deleteFolder(final String str) {
            v.this.a.a(new Runnable() { // from class: com.ironsource.sdk.controller.v$s$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m(str);
                }
            }, "deleteFolder");
        }

        @JavascriptInterface
        public void destroyInlineStore(String str) {
            Logger.i(v.this.c, "destroyInlineStore() called");
            try {
                a.AbstractC1069a abstractC1069aA = new com.unity3d.ironsourceads.internal.services.b().a(v.this.q(), EnumC3874u9.b.a(new C3730me(str).a(C3522b4.f.e, EnumC3874u9.c.c())));
                if (abstractC1069aA instanceof a.AbstractC1069a.C1070a) {
                    v.this.a(str, false, ((a.AbstractC1069a.C1070a) abstractC1069aA).b(), (String) null);
                } else {
                    v.this.a(str, true, (String) null, (String) null);
                }
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                v.this.a(str, false, e2.getLocalizedMessage(), (String) null);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        @JavascriptInterface
        public void deviceDataAPI(final String str) {
            v.this.a.a(new Runnable() { // from class: com.ironsource.sdk.controller.v$s$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.n(str);
                }
            }, V7.k);
        }

        @JavascriptInterface
        public void displayWebView(String str) {
            Logger.i(v.this.c, "displayWebView(" + str + ")");
            v.this.a(str, true, (String) null, (String) null);
            C3730me c3730me = new C3730me(str);
            boolean zBooleanValue = ((Boolean) c3730me.b("display")).booleanValue();
            String strD = c3730me.d(C3522b4.i.m);
            boolean zC = c3730me.c(C3522b4.i.u);
            String strD2 = c3730me.d("adViewId");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(c3730me);
            boolean zC2 = c3730me.c(C3522b4.i.z0);
            if (!zBooleanValue) {
                v.this.a(EnumC1059v.Gone);
                v.this.o();
                return;
            }
            v.this.G = c3730me.c(C3522b4.i.v);
            boolean zC3 = c3730me.c(C3522b4.i.y);
            EnumC1059v enumC1059vV = v.this.v();
            EnumC1059v enumC1059v = EnumC1059v.Display;
            if (enumC1059vV == enumC1059v) {
                Logger.i(v.this.c, "State: " + v.this.w);
                return;
            }
            v.this.a(enumC1059v);
            Logger.i(v.this.c, "State: " + v.this.w);
            Context contextQ = v.this.q();
            String strT = v.this.t();
            int iK = v.this.Z.K(contextQ);
            if (zC) {
                com.ironsource.sdk.controller.h hVar = new com.ironsource.sdk.controller.h(contextQ);
                hVar.addView(v.this.v);
                hVar.a(v.this);
                return;
            }
            Intent intent = zC3 ? new Intent(contextQ, (Class<?>) InterstitialActivity.class) : new Intent(contextQ, (Class<?>) ControllerActivity.class);
            C3855t8.e eVar = C3855t8.e.RewardedVideo;
            if (eVar.toString().equalsIgnoreCase(strD)) {
                if ("application".equals(strT)) {
                    strT = SDKUtils.translateRequestedOrientation(v.this.Z.M(contextQ));
                }
                intent.putExtra(C3522b4.i.m, eVar.toString());
                v.this.E.a(eVar.ordinal());
                v.this.E.f(strFetchDemandSourceId);
                if (v.this.r(eVar.toString())) {
                    v.this.y.c(eVar, strFetchDemandSourceId);
                }
            } else {
                C3855t8.e eVar2 = C3855t8.e.Interstitial;
                if (eVar2.toString().equalsIgnoreCase(strD)) {
                    if ("application".equals(strT)) {
                        strT = SDKUtils.translateRequestedOrientation(v.this.Z.M(contextQ));
                    }
                    intent.putExtra(C3522b4.i.m, eVar2.toString());
                }
            }
            if (strD2 != null) {
                intent.putExtra("adViewId", strD2);
            }
            intent.putExtra(C3522b4.i.z0, zC2);
            intent.setFlags(536870912);
            intent.putExtra(C3522b4.i.v, v.this.G);
            intent.putExtra(C3522b4.i.A, strT);
            intent.putExtra(C3522b4.i.B, iK);
            v vVar = v.this;
            vVar.j = new q(vVar.g(strD), strFetchDemandSourceId);
            contextQ.startActivity(intent);
        }

        @JavascriptInterface
        public void dsSharedSignalsAPI(final String str) {
            v.this.a.a(new Runnable() { // from class: com.ironsource.sdk.controller.v$s$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.o(str);
                }
            }, V7.f);
        }

        @JavascriptInterface
        public void fileSystemAPI(String str) {
            Logger.i(v.this.c, "fileSystemAPI(" + str + ")");
            v.this.a(new RunnableC1057s(str));
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x005f  */
        @android.webkit.JavascriptInterface
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void getApplicationInfo(java.lang.String r5) {
            /*
                r4 = this;
                com.ironsource.sdk.controller.v r0 = com.ironsource.sdk.controller.v.this
                java.lang.String r0 = com.ironsource.sdk.controller.v.m1810$$Nest$fgetc(r0)
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "getApplicationInfo("
                r1.append(r2)
                r1.append(r5)
                java.lang.String r2 = ")"
                r1.append(r2)
                java.lang.String r1 = r1.toString()
                com.ironsource.sdk.utils.Logger.i(r0, r1)
                com.ironsource.sdk.controller.v r0 = com.ironsource.sdk.controller.v.this
                java.lang.String r0 = com.ironsource.sdk.controller.v.m1841$$Nest$me(r0, r5)
                com.ironsource.sdk.controller.v r1 = com.ironsource.sdk.controller.v.this
                java.lang.String r1 = com.ironsource.sdk.controller.v.m1839$$Nest$md(r1, r5)
                com.ironsource.me r2 = new com.ironsource.me
                r2.<init>(r5)
                java.lang.String r5 = "productType"
                java.lang.String r5 = r2.d(r5)
                java.lang.String r2 = com.ironsource.sdk.utils.SDKUtils.fetchDemandSourceId(r2)
                com.ironsource.sdk.controller.v r3 = com.ironsource.sdk.controller.v.this
                java.lang.Object[] r5 = com.ironsource.sdk.controller.v.m1844$$Nest$mf(r3, r5, r2)
                r2 = 0
                r2 = r5[r2]
                java.lang.String r2 = (java.lang.String) r2
                r3 = 1
                r5 = r5[r3]
                java.lang.Boolean r5 = (java.lang.Boolean) r5
                boolean r5 = r5.booleanValue()
                if (r5 == 0) goto L58
                boolean r5 = android.text.TextUtils.isEmpty(r1)
                if (r5 != 0) goto L5f
                r0 = r1
                goto L60
            L58:
                boolean r5 = android.text.TextUtils.isEmpty(r0)
                if (r5 != 0) goto L5f
                goto L60
            L5f:
                r0 = 0
            L60:
                boolean r5 = android.text.TextUtils.isEmpty(r0)
                if (r5 != 0) goto L75
                com.ironsource.sdk.controller.v r5 = com.ironsource.sdk.controller.v.this
                java.lang.String r1 = "onGetApplicationInfoSuccess"
                java.lang.String r3 = "onGetApplicationInfoFail"
                java.lang.String r5 = com.ironsource.sdk.controller.v.m1834$$Nest$ma(r5, r0, r2, r1, r3)
                com.ironsource.sdk.controller.v r0 = com.ironsource.sdk.controller.v.this
                com.ironsource.sdk.controller.v.m1847$$Nest$mi(r0, r5)
            L75:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ironsource.sdk.controller.v.s.getApplicationInfo(java.lang.String):void");
        }

        @JavascriptInterface
        public void getCachedFilesMap(final String str) {
            v.this.a.a(new Runnable() { // from class: com.ironsource.sdk.controller.v$s$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.p(str);
                }
            }, V7.i);
        }

        @JavascriptInterface
        public void getConnectivityInfo(String str) {
            String strE;
            Logger.i(v.this.c, "getConnectivityInfo(" + str + ")");
            C3730me c3730me = new C3730me(str);
            String strD = c3730me.d(v.i0);
            String strD2 = c3730me.d(v.j0);
            JSONObject jSONObject = new JSONObject();
            v vVar = v.this;
            V3 v3 = vVar.S;
            if (v3 != null) {
                jSONObject = v3.a(vVar.b0.getContext());
            }
            if (jSONObject.length() > 0) {
                strE = v.this.e(strD, jSONObject.toString());
            } else {
                strE = v.this.e(strD2, v.this.a("errMsg", C3522b4.c.A, null, null, null, null, null, null, null, false));
            }
            v.this.i(strE);
        }

        @JavascriptInterface
        public void getControllerConfig(String str) {
            Logger.i(v.this.c, "getControllerConfig(" + str + ")");
            String strD = new C3730me(str).d(v.i0);
            if (TextUtils.isEmpty(strD)) {
                return;
            }
            JSONObject controllerConfigAsJSONObject = SDKUtils.getControllerConfigAsJSONObject();
            c(controllerConfigAsJSONObject);
            v.this.i(v.this.e(strD, controllerConfigAsJSONObject.toString()));
        }

        @JavascriptInterface
        public void getDemandSourceState(String str) {
            String strD;
            Logger.i(v.this.c, "getMediationState(" + str + ")");
            C3730me c3730me = new C3730me(str);
            String strD2 = c3730me.d("demandSourceName");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(c3730me);
            String strD3 = c3730me.d(C3522b4.i.m);
            if (strD3 == null || strD2 == null) {
                return;
            }
            try {
                C3855t8.e productType = SDKUtils.getProductType(strD3);
                if (productType != null) {
                    X4 x4A = v.this.H.a(productType, strFetchDemandSourceId);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(C3522b4.i.m, strD3);
                    jSONObject.put("demandSourceName", strD2);
                    jSONObject.put("demandSourceId", strFetchDemandSourceId);
                    if (x4A == null || x4A.a(-1)) {
                        strD = v.this.d(str);
                    } else {
                        strD = v.this.e(str);
                        jSONObject.put("state", x4A.j());
                    }
                    a(strD, jSONObject.toString());
                }
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                v.this.a(str, false, e2.getMessage(), (String) null);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        @JavascriptInterface
        public void getDeviceStatus(final String str) {
            v.this.a.a(new Runnable() { // from class: com.ironsource.sdk.controller.v$s$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.q(str);
                }
            }, V7.d);
        }

        @JavascriptInterface
        public void getDeviceVolume(String str) {
            Logger.i(v.this.c, "getDeviceVolume(" + str + ")");
            try {
                Context context = v.this.b0.getContext();
                float fA = C3541c5.b(context).a(context);
                C3730me c3730me = new C3730me(str);
                c3730me.b(C3522b4.j.P, String.valueOf(fA));
                v.this.a(c3730me.toString(), true, (String) null, (String) null);
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        @JavascriptInterface
        public void getInitSummery(String str) {
            Logger.i(v.this.c, "getInitSummery(" + str + ")");
            C3730me c3730me = new C3730me(str);
            c3730me.a(C3522b4.j.q0, v.this.T);
            v.this.a(c3730me.toString(), true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void getOrientation(String str) {
            A8.a(C3712le.z, new C3891v8().a(G5.y, str).a());
            String strE = v.this.e(str);
            String string = SDKUtils.getOrientation(v.this.b0.getContext()).toString();
            if (TextUtils.isEmpty(strE)) {
                return;
            }
            v.this.i(v.this.a(strE, string, C3522b4.h.X, C3522b4.h.Y));
        }

        @JavascriptInterface
        public void getUserData(String str) {
            Logger.i(v.this.c, "getUserData(" + str + ")");
            C3730me c3730me = new C3730me(str);
            if (!c3730me.a(C3522b4.i.W)) {
                v.this.a(str, false, C3522b4.c.F, (String) null);
                return;
            }
            String strE = v.this.e(str);
            String strD = c3730me.d(C3522b4.i.W);
            v.this.i(v.this.e(strE, v.this.a(strD, C3690ka.e().a(strD), null, null, null, null, null, null, null, false)));
        }

        @JavascriptInterface
        public void iabTokenAPI(final String str) {
            v.this.a.a(new Runnable() { // from class: com.ironsource.sdk.controller.v$s$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.r(str);
                }
            }, V7.e);
        }

        @JavascriptInterface
        public void initController(String str) {
            Logger.i(v.this.c, "initController(" + str + ")");
            C3730me c3730me = new C3730me(str);
            CountDownTimer countDownTimer = v.this.m;
            if (countDownTimer != null) {
                countDownTimer.cancel();
                v.this.m = null;
            }
            if (c3730me.a(C3522b4.i.q)) {
                String strD = c3730me.d(C3522b4.i.q);
                if (C3522b4.i.s.equalsIgnoreCase(strD)) {
                    v vVar = v.this;
                    vVar.i = true;
                    vVar.R.d();
                } else {
                    if (C3522b4.i.r.equalsIgnoreCase(strD)) {
                        v.this.R.c();
                        return;
                    }
                    if (!"failed".equalsIgnoreCase(strD)) {
                        Logger.i(v.this.c, "No STAGE mentioned! should not get here!");
                        return;
                    }
                    String strD2 = c3730me.d("errMsg");
                    v.this.R.c("controller js failed to initialize : " + strD2);
                }
            }
        }

        @JavascriptInterface
        public void omidAPI(String str) {
            v.this.c(new n(str));
        }

        @JavascriptInterface
        public void onAdWindowsClosed(String str) {
            Logger.i(v.this.c, "onAdWindowsClosed(" + str + ")");
            v.this.E.a();
            v.this.E.f(null);
            v.this.j = null;
            C3730me c3730me = new C3730me(str);
            String strD = c3730me.d(C3522b4.i.m);
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(c3730me);
            C3855t8.e eVarG = v.this.g(strD);
            Log.d(v.this.d, "onAdClosed() with type " + eVarG);
            if (v.this.r(strD)) {
                v.this.a(eVarG, strFetchDemandSourceId);
            }
        }

        @JavascriptInterface
        public void onCleanUpNonDisplayBannersSuccess(String str) {
            Logger.i(v.this.c, "onCleanUpNonDisplayBannersSuccess() value=" + str);
        }

        @JavascriptInterface
        public void onGetApplicationInfoFail(String str) {
            Logger.i(v.this.c, "onGetApplicationInfoFail(" + str + ")");
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onGetApplicationInfoSuccess(String str) {
            Logger.i(v.this.c, "onGetApplicationInfoSuccess(" + str + ")");
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onGetCachedFilesMapFail(String str) {
            Logger.i(v.this.c, "onGetCachedFilesMapFail(" + str + ")");
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onGetCachedFilesMapSuccess(String str) {
            Logger.i(v.this.c, "onGetCachedFilesMapSuccess(" + str + ")");
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onGetDeviceStatusFail(String str) {
            Logger.i(v.this.c, "onGetDeviceStatusFail(" + str + ")");
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onGetDeviceStatusSuccess(String str) {
            Logger.i(v.this.c, "onGetDeviceStatusSuccess(" + str + ")");
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onInitBannerFail(String str) {
            Logger.i(v.this.c, "onInitBannerFail(" + str + ")");
            C3730me c3730me = new C3730me(str);
            String strD = c3730me.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(c3730me);
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                Logger.i(v.this.c, "onInitBannerFail failed with no demand source");
                return;
            }
            Y4 y4 = v.this.H;
            C3855t8.e eVar = C3855t8.e.Banner;
            X4 x4A = y4.a(eVar, strFetchDemandSourceId);
            if (x4A != null) {
                x4A.b(3);
            }
            if (v.this.r(eVar.toString())) {
                v.this.b(new h(strD, strFetchDemandSourceId));
            }
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onInitBannerSuccess(String str) {
            Logger.i(v.this.c, "onInitBannerSuccess()");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(new C3730me(str));
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                Logger.i(v.this.c, "onInitBannerSuccess failed with no demand source");
            } else if (v.this.r(C3855t8.e.Banner.toString())) {
                v.this.b(new g(strFetchDemandSourceId));
            }
        }

        @JavascriptInterface
        public void onInitInterstitialFail(String str) {
            Logger.i(v.this.c, "onInitInterstitialFail(" + str + ")");
            C3730me c3730me = new C3730me(str);
            String strD = c3730me.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(c3730me);
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                Logger.i(v.this.c, "onInitInterstitialSuccess failed with no demand source");
                return;
            }
            Y4 y4 = v.this.H;
            C3855t8.e eVar = C3855t8.e.Interstitial;
            X4 x4A = y4.a(eVar, strFetchDemandSourceId);
            if (x4A != null) {
                x4A.b(3);
            }
            if (v.this.r(eVar.toString())) {
                v.this.b(new c(strD, strFetchDemandSourceId));
            }
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onInitInterstitialSuccess(String str) {
            Logger.i(v.this.c, "onInitInterstitialSuccess()");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(new C3730me(str));
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                Logger.i(v.this.c, "onInitInterstitialSuccess failed with no demand source");
            } else if (v.this.r(C3855t8.e.Interstitial.toString())) {
                v.this.b(new b(strFetchDemandSourceId));
            }
        }

        @JavascriptInterface
        public void onInitRewardedVideoFail(String str) {
            Logger.i(v.this.c, "onInitRewardedVideoFail(" + str + ")");
            C3730me c3730me = new C3730me(str);
            String strD = c3730me.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(c3730me);
            Y4 y4 = v.this.H;
            C3855t8.e eVar = C3855t8.e.RewardedVideo;
            X4 x4A = y4.a(eVar, strFetchDemandSourceId);
            if (x4A != null) {
                x4A.b(3);
            }
            if (v.this.r(eVar.toString())) {
                v.this.b(new RunnableC1058v(strD, strFetchDemandSourceId));
            }
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onLoadBannerFail(String str) {
            Logger.i(v.this.c, "onLoadBannerFail()");
            C3730me c3730me = new C3730me(str);
            String strD = c3730me.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(c3730me);
            v.this.a(str, true, (String) null, (String) null);
            if (!TextUtils.isEmpty(strFetchDemandSourceId) && v.this.r(C3855t8.e.Banner.toString())) {
                v.this.b(new j(strD, strFetchDemandSourceId));
            }
        }

        @JavascriptInterface
        public void onLoadBannerSuccess(String str) {
            Logger.i(v.this.c, "onLoadBannerSuccess()");
            C3730me c3730me = new C3730me(str);
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(c3730me);
            String strD = c3730me.d("adViewId");
            v.this.a(str, true, (String) null, (String) null);
            L8 l8A = C3800q8.a().a(strD);
            if (l8A == null) {
                v.this.A.c(strFetchDemandSourceId, "not found view for the current adViewId= " + strD);
                return;
            }
            if (l8A instanceof C3688k8) {
                C3688k8 c3688k8 = (C3688k8) l8A;
                if (v.this.r(C3855t8.e.Banner.toString())) {
                    v.this.b(new i(strFetchDemandSourceId, c3688k8));
                }
            }
        }

        @JavascriptInterface
        public void onLoadInterstitialFail(String str) {
            Logger.i(v.this.c, "onLoadInterstitialFail(" + str + ")");
            C3730me c3730me = new C3730me(str);
            String strD = c3730me.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(c3730me);
            v.this.a(str, true, (String) null, (String) null);
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                return;
            }
            a(strFetchDemandSourceId, false);
            if (v.this.r(C3855t8.e.Interstitial.toString())) {
                v.this.b(new f(strD, strFetchDemandSourceId));
            }
        }

        @JavascriptInterface
        public void onLoadInterstitialSuccess(String str) {
            Logger.i(v.this.c, "onLoadInterstitialSuccess(" + str + ")");
            C3730me c3730me = new C3730me(str);
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(c3730me);
            JSONObject jSONObjectA = c3730me.a();
            a(strFetchDemandSourceId, true);
            v.this.a(str, true, (String) null, (String) null);
            if (v.this.r(C3855t8.e.Interstitial.toString())) {
                v.this.b(new e(strFetchDemandSourceId, jSONObjectA));
            }
        }

        @JavascriptInterface
        public void onReceivedMessage(String str) {
            Logger.i(v.this.c, "onReceivedMessage(" + str + ")");
            V7.a.b(new l(str));
        }

        @JavascriptInterface
        public void onShowInterstitialFail(String str) {
            Logger.i(v.this.c, "onShowInterstitialFail(" + str + ")");
            C3730me c3730me = new C3730me(str);
            final String strD = c3730me.d("errMsg");
            final String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(c3730me);
            v.this.a(str, true, (String) null, (String) null);
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                return;
            }
            final boolean zR = v.this.r(C3855t8.e.Interstitial.toString());
            v.this.b(new Runnable() { // from class: com.ironsource.sdk.controller.v$s$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(zR, strD, strFetchDemandSourceId);
                }
            });
        }

        @JavascriptInterface
        public void onShowInterstitialSuccess(String str) {
            Logger.i(v.this.c, "onShowInterstitialSuccess(" + str + ")");
            v.this.a(str, true, (String) null, (String) null);
            final String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(new C3730me(str));
            if (TextUtils.isEmpty(strFetchDemandSourceId)) {
                Logger.i(v.this.c, "onShowInterstitialSuccess called with no demand");
                return;
            }
            C3458a1 c3458a1 = v.this.E;
            C3855t8.e eVar = C3855t8.e.Interstitial;
            c3458a1.a(eVar.ordinal());
            v.this.E.f(strFetchDemandSourceId);
            final boolean zR = v.this.r(eVar.toString());
            v.this.b(new Runnable() { // from class: com.ironsource.sdk.controller.v$s$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(zR, strFetchDemandSourceId);
                }
            });
        }

        @JavascriptInterface
        public void onShowRewardedVideoFail(String str) {
            Logger.i(v.this.c, "onShowRewardedVideoFail(" + str + ")");
            C3730me c3730me = new C3730me(str);
            String strD = c3730me.d("errMsg");
            String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(c3730me);
            if (v.this.r(C3855t8.e.RewardedVideo.toString())) {
                v.this.b(new a(strD, strFetchDemandSourceId));
            }
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onShowRewardedVideoSuccess(String str) {
            Logger.i(v.this.c, "onShowRewardedVideoSuccess(" + str + ")");
            v.this.a(str, true, (String) null, (String) null);
        }

        @JavascriptInterface
        public void onVideoStatusChanged(String str) {
            Log.d(v.this.c, "onVideoStatusChanged(" + str + ")");
            C3730me c3730me = new C3730me(str);
            String strD = c3730me.d(C3522b4.i.m);
            if (v.this.D == null || TextUtils.isEmpty(strD)) {
                return;
            }
            String strD2 = c3730me.d("status");
            if (C3522b4.i.d0.equalsIgnoreCase(strD2)) {
                v.this.D.onVideoStarted();
                return;
            }
            if (C3522b4.i.e0.equalsIgnoreCase(strD2)) {
                v.this.D.onVideoPaused();
                return;
            }
            if (C3522b4.i.f0.equalsIgnoreCase(strD2)) {
                v.this.D.onVideoResumed();
                return;
            }
            if (C3522b4.i.g0.equalsIgnoreCase(strD2)) {
                v.this.D.onVideoEnded();
                return;
            }
            if (C3522b4.i.h0.equalsIgnoreCase(strD2)) {
                v.this.D.onVideoStopped();
                return;
            }
            Logger.i(v.this.c, "onVideoStatusChanged: unknown status: " + strD2);
        }

        @JavascriptInterface
        public void openInlineStore(String str) {
            try {
                Logger.i(v.this.c, "openInlineStore(" + str + ")");
                C3730me c3730me = new C3730me(str);
                a.AbstractC1069a abstractC1069aA = new com.unity3d.ironsourceads.internal.services.b().a(v.this.q(), new C3836s9(c3730me.d("url"), c3730me.d(C3522b4.f.c), EnumC3874u9.b.a(c3730me.a(C3522b4.f.e, EnumC3874u9.c.c())), (!c3730me.a(C3522b4.f.d) || c3730me.e(C3522b4.f.d)) ? null : (JSONObject) c3730me.b(C3522b4.f.d)));
                if (abstractC1069aA instanceof a.AbstractC1069a.C1070a) {
                    v.this.a(str, false, ((a.AbstractC1069a.C1070a) abstractC1069aA).b(), (String) null);
                } else {
                    v.this.a(str, true, (String) null, (String) null);
                }
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                v.this.a(str, false, e2.getLocalizedMessage(), (String) null);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        @JavascriptInterface
        public void openUrl(String str) {
            try {
                Logger.i(v.this.c, "openUrl(" + str + ")");
                C3730me c3730me = new C3730me(str);
                p.c cVarA = new p.a(c3730me.d("method"), new Zc(v.this.G, 805306368)).a(c3730me.c(C3522b4.i.L0) ? v.this.b0.getContext() : v.this.q(), new Yc(c3730me.d("url"), c3730me.d(C3522b4.i.V)));
                if (cVarA instanceof p.c.a) {
                    v.this.a(str, false, ((p.c.a) cVarA).b(), (String) null);
                } else {
                    v.this.a(str, true, (String) null, (String) null);
                }
            } catch (Exception e2) {
                v.this.a(str, false, e2.getLocalizedMessage(), (String) null);
            }
        }

        @JavascriptInterface
        public void pauseControllerWebview() {
            v.this.c(new o());
        }

        @JavascriptInterface
        public void permissionsAPI(final String str) {
            v.this.a.a(new Runnable() { // from class: com.ironsource.sdk.controller.v$s$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.s(str);
                }
            }, V7.j);
        }

        @JavascriptInterface
        public void postAdEventNotification(String str) {
            Exception exc;
            String str2;
            try {
                Logger.i(v.this.c, "postAdEventNotification(" + str + ")");
                C3730me c3730me = new C3730me(str);
                String strD = c3730me.d(C3522b4.i.j0);
                try {
                    if (TextUtils.isEmpty(strD)) {
                        v.this.a(str, false, C3522b4.c.w, (String) null);
                        return;
                    }
                    String strD2 = c3730me.d(C3522b4.i.k0);
                    String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(c3730me);
                    String str3 = !TextUtils.isEmpty(strFetchDemandSourceId) ? strFetchDemandSourceId : strD2;
                    JSONObject jSONObject = (JSONObject) c3730me.b(C3522b4.i.l0);
                    String strD3 = c3730me.d(C3522b4.i.m);
                    C3855t8.e eVarG = v.this.g(strD3);
                    try {
                        if (!v.this.r(strD3)) {
                            v.this.a(str, false, C3522b4.c.v, (String) null);
                            return;
                        }
                        String strE = v.this.e(str);
                        if (TextUtils.isEmpty(strE)) {
                            str2 = str3;
                        } else {
                            str2 = str3;
                            v.this.i(v.this.a(strE, v.this.a(C3522b4.i.m, strD3, C3522b4.i.j0, strD, "demandSourceName", strD2, "demandSourceId", str2, null, false), C3522b4.h.c0, C3522b4.h.d0));
                        }
                        try {
                            v.this.b(new m(eVarG, str2, strD, jSONObject));
                            return;
                        } catch (Exception e2) {
                            e = e2;
                        }
                    } catch (Exception e3) {
                        e = e3;
                    }
                } catch (Exception e4) {
                    exc = e4;
                }
            } catch (Exception e5) {
                e = e5;
            }
            exc = e;
            C3813r4.d().a(exc);
            IronLog.INTERNAL.error(exc.toString());
        }

        @JavascriptInterface
        public void removeCloseEventHandler(String str) {
            Logger.i(v.this.c, "removeCloseEventHandler(" + str + ")");
            CountDownTimer countDownTimer = v.this.l;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            v.this.k = true;
        }

        @JavascriptInterface
        public void removeMessagingInterface(String str) {
            v.this.c(new p());
        }

        @JavascriptInterface
        public void requestToDestroyBanner(String str) {
            Logger.i(v.this.c, "onCleanUpNonDisplayBannersFail() value=" + str);
        }

        @JavascriptInterface
        public void resumeControllerWebview() {
            v.this.c(new k());
        }

        @JavascriptInterface
        public void saveFile(String str) {
            try {
                Logger.i(v.this.c, "saveFile(" + str + ")");
                C3730me c3730me = new C3730me(str);
                String strD = c3730me.d("path");
                String strD2 = c3730me.d(C3522b4.i.b);
                if (TextUtils.isEmpty(strD2)) {
                    v.this.a(str, false, C3522b4.c.g, "1");
                    return;
                }
                D8 d8 = new D8(IronSourceStorageUtils.buildAbsolutePathToDirInCache(v.this.B, strD), SDKUtils.getFileName(strD2));
                IronSourceStorageUtils.ensurePathSafety(d8, v.this.B);
                v vVar = v.this;
                if (vVar.Z.a(vVar.B) <= 0) {
                    v.this.a(str, false, C3558d4.A, (String) null);
                    return;
                }
                if (d8.exists()) {
                    v.this.a(str, false, C3558d4.z, (String) null);
                    return;
                }
                if (!X3.h(v.this.b0.getContext())) {
                    v.this.a(str, false, C3558d4.C, (String) null);
                    return;
                }
                v.this.a(str, true, (String) null, (String) null);
                v.this.h.a(d8, strD2, c3730me.a("connectionTimeout", 0), c3730me.a("readTimeout", 0));
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                v.this.a(str, false, e2.getMessage(), (String) null);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        @JavascriptInterface
        public void setBackButtonState(String str) {
            Logger.i(v.this.c, "setBackButtonState(" + str + ")");
            C3690ka.e().c(new C3730me(str).d("state"));
        }

        @JavascriptInterface
        public void setForceClose(String str) {
            Logger.i(v.this.c, "setForceClose(" + str + ")");
            C3730me c3730me = new C3730me(str);
            String strD = c3730me.d("width");
            String strD2 = c3730me.d("height");
            v.this.o = Integer.parseInt(strD);
            v.this.p = Integer.parseInt(strD2);
            v.this.q = c3730me.d(C3522b4.i.L);
        }

        @JavascriptInterface
        public void setMixedContentAlwaysAllow(String str) {
            Logger.i(v.this.c, "setMixedContentAlwaysAllow(" + str + ")");
            v.this.c(new q());
        }

        @JavascriptInterface
        public void setOrientation(String str) {
            try {
                Logger.i(v.this.c, "setOrientation(" + str + ")");
                String strD = new C3730me(str).d(C3522b4.i.n);
                v.this.o(strD);
                v vVar = v.this;
                if (vVar.c0 != null) {
                    v.this.c0.onOrientationChanged(strD, vVar.Z.K(vVar.b0.getContext()));
                }
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        @JavascriptInterface
        public void setStoreSearchKeys(String str) {
            Logger.i(v.this.c, "setStoreSearchKeys(" + str + ")");
            C3690ka.e().e(str);
        }

        @JavascriptInterface
        public void setUserData(String str) {
            Logger.i(v.this.c, "setUserData(" + str + ")");
            C3730me c3730me = new C3730me(str);
            if (!c3730me.a(C3522b4.i.W)) {
                v.this.a(str, false, C3522b4.c.F, (String) null);
                return;
            }
            if (!c3730me.a(C3522b4.i.X)) {
                v.this.a(str, false, C3522b4.c.G, (String) null);
                return;
            }
            String strD = c3730me.d(C3522b4.i.W);
            String strD2 = c3730me.d(C3522b4.i.X);
            C3690ka.e().a(strD, strD2);
            v.this.i(v.this.e(v.this.e(str), v.this.a(strD, strD2, null, null, null, null, null, null, null, false)));
        }

        @JavascriptInterface
        public void setWebviewBackgroundColor(String str) {
            Logger.i(v.this.c, "setWebviewBackgroundColor(" + str + ")");
            v.this.q(str);
        }

        @JavascriptInterface
        public void stillAlive(String str) {
            Logger.i(v.this.c, "stillAlive(" + str + ")");
            v.this.b.a();
        }

        public void u(String str) {
            v.this.i(v.this.a(C3522b4.h.d, str, (String) null, (String) null));
        }

        public void v(String str) {
            v.this.i(v.this.a(C3522b4.h.e, str, (String) null, (String) null));
        }

        public class w implements InterfaceC3875ua {
            public w() {
            }

            @Override // com.ironsource.InterfaceC3875ua
            public void a(boolean z, String str, String str2) {
                C3730me c3730me = new C3730me();
                c3730me.b(z ? v.i0 : v.j0, str);
                c3730me.b("data", str2);
                v.this.a(c3730me.toString(), z, (String) null, (String) null);
            }

            @Override // com.ironsource.InterfaceC3875ua
            public void a(boolean z, String str, C3730me c3730me) {
                c3730me.b(z ? v.i0 : v.j0, str);
                v.this.a(c3730me.toString(), z, (String) null, (String) null);
            }

            @Override // com.ironsource.InterfaceC3875ua
            public void a(boolean z, String str, JSONObject jSONObject) {
                String str2;
                try {
                    if (z) {
                        str2 = v.i0;
                    } else {
                        str2 = v.j0;
                    }
                    jSONObject.put(str2, str);
                    v.this.a(jSONObject.toString(), z, (String) null, (String) null);
                } catch (JSONException e) {
                    C3813r4.d().a(e);
                    IronLog.INTERNAL.error(e.toString());
                }
            }
        }

        private void a(JSONObject jSONObject, String str) {
            if (b(str)) {
                try {
                    JSONObject jSONObject2 = new JSONObject(str);
                    jSONObject.putOpt("testerABGroup", jSONObject2.get("testerABGroup"));
                    jSONObject.putOpt("testFriendlyName", jSONObject2.get("testFriendlyName"));
                } catch (JSONException e2) {
                    C3813r4.d().a(e2);
                    Logger.d(v.this.c, "getControllerConfig Error while parsing Tester AB Group parameters");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void l(String str) {
            try {
                Logger.i(v.this.c, "deleteFile(" + str + ")");
                C3730me c3730me = new C3730me(str);
                String strD = c3730me.d(C3522b4.i.b);
                String strD2 = c3730me.d("path");
                if (strD2 != null && !TextUtils.isEmpty(strD)) {
                    D8 d8 = new D8(IronSourceStorageUtils.buildAbsolutePathToDirInCache(v.this.B, strD2), strD);
                    IronSourceStorageUtils.ensurePathSafety(d8, v.this.B);
                    if (!d8.exists()) {
                        v.this.a(str, false, C3522b4.c.f, "1");
                        return;
                    } else {
                        v.this.a(str, IronSourceStorageUtils.deleteFile(d8), (String) null, (String) null);
                        return;
                    }
                }
                v.this.a(str, false, C3522b4.c.g, "1");
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                v.this.a(str, false, e2.getMessage(), (String) null);
                IronLog.INTERNAL.error(e2.toString());
            }
        }

        private void a(String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            v.this.i(v.this.e(str, str2));
        }

        private void a(String str, int i2) {
            X4 x4A;
            v vVar = v.this;
            C3855t8.e eVar = C3855t8.e.Interstitial;
            if (vVar.r(eVar.toString()) && (x4A = v.this.H.a(eVar, str)) != null && x4A.k()) {
                v.this.b(new u(str, i2));
            }
        }

        public boolean b(String str) {
            if (TextUtils.isEmpty(str) || str.contains(C3647i2.f)) {
                return false;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.getString("testerABGroup").isEmpty()) {
                    return false;
                }
                return !jSONObject.getString("testFriendlyName").isEmpty();
            } catch (JSONException e2) {
                C3813r4.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(boolean z, String str) {
            if (z) {
                v.this.z.c(C3855t8.e.Interstitial, str);
                v.this.z.b(str);
            }
            a(str, false);
        }

        private void a(String str, boolean z) {
            X4 x4A = v.this.H.a(C3855t8.e.Interstitial, str);
            if (x4A != null) {
                x4A.a(z);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(boolean z, String str, String str2) {
            if (z) {
                if (str == null) {
                    str = "We're sorry, some error occurred. we will investigate it";
                }
                v.this.z.d(str2, str);
            }
            a(str2, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void j(String str) {
            try {
                Logger.i(v.this.c, "adViewAPI(" + str + ")");
                v.this.M.a(new C3730me(str).toString(), new w());
            } catch (Exception e2) {
                C3813r4.d().a(e2);
                IronLog.INTERNAL.error(e2.toString());
                Logger.i(v.this.c, "adViewAPI failed with exception " + e2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String e(String str) {
        return new C3730me(str).d(i0);
    }

    private String e(Context context) {
        String[] strArr = {"com.android.vending", "com.google.market"};
        for (int i2 = 0; i2 < 2; i2++) {
            String strA = a(context, strArr[i2]);
            if (!TextUtils.isEmpty(strA)) {
                return strA;
            }
        }
        return "";
    }

    public void n(String str) {
        try {
            String strD = Y3.d(this.b0.getContext());
            Logger.i(this.c, "device status changed, connection type " + str);
            C3945y8.a(str);
            C3945y8.b(strD);
            try {
                i(e(C3522b4.h.x, a("connectionType", str, "rawConnectionType", strD, null, null, null, null, null, false)));
            } catch (Exception e2) {
                e = e2;
                Exception exc = e;
                C3813r4.d().a(exc);
                IronLog.INTERNAL.error("Exception: " + Log.getStackTraceString(exc));
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public void b(int i2) {
        e0 = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String e(String str, String str2) {
        return new m.a(str, str2).a();
    }

    private void p(String str) {
        if (str.equalsIgnoreCase("0")) {
            this.b0.getSettings().setCacheMode(2);
        } else {
            this.b0.getSettings().setCacheMode(-1);
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(X4 x4, Map<String, String> map, InterfaceC3923x4 interfaceC3923x4) {
        a(x4, map);
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(X4 x4) {
        Map<String, String> mapB = x4.b();
        if (mapB != null) {
            i(e(C3522b4.h.T, SDKUtils.flatMapToJsonAsString(mapB)));
        }
        this.H.b(C3855t8.e.Interstitial, x4.h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C3855t8.e g(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        C3855t8.e eVar = C3855t8.e.Interstitial;
        if (str.equalsIgnoreCase(eVar.toString())) {
            return eVar;
        }
        C3855t8.e eVar2 = C3855t8.e.RewardedVideo;
        if (str.equalsIgnoreCase(eVar2.toString())) {
            return eVar2;
        }
        C3855t8.e eVar3 = C3855t8.e.Banner;
        if (str.equalsIgnoreCase(eVar3.toString())) {
            return eVar3;
        }
        return null;
    }

    public Context q() {
        return this.a0.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d(String str) {
        return new C3730me(str).d(j0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] d(Context context) {
        C3541c5 c3541c5B = C3541c5.b(context);
        JSONObject jSONObject = new JSONObject();
        boolean z = false;
        try {
            jSONObject.put(C3522b4.j.z, "none");
            jSONObject.put(C3522b4.j.A, SDKUtils.translateDeviceOrientation(this.Z.A(context)));
            String strD = c3541c5B.d();
            if (strD != null) {
                jSONObject.put(SDKUtils.encodeString("deviceOEM"), SDKUtils.encodeString(strD));
            }
            String strC = c3541c5B.c();
            if (strC != null) {
                jSONObject.put(SDKUtils.encodeString("deviceModel"), SDKUtils.encodeString(strC));
            } else {
                z = true;
            }
            SDKUtils.loadGoogleAdvertiserInfo(context);
            String advertiserId = SDKUtils.getAdvertiserId();
            if (!TextUtils.isEmpty(advertiserId)) {
                Logger.i(this.c, "add AID");
                jSONObject.put("deviceIds" + C3522b4.j.d + C3522b4.j.L + C3522b4.j.e, SDKUtils.encodeString(advertiserId));
            }
            String limitAdTracking = SDKUtils.getLimitAdTracking();
            if (!TextUtils.isEmpty(limitAdTracking)) {
                Logger.i(this.c, "add LAT");
                jSONObject.put(C3522b4.j.M, Boolean.parseBoolean(limitAdTracking));
            }
            String strE = c3541c5B.e();
            if (strE != null) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.m), SDKUtils.encodeString(strE));
            } else {
                z = true;
            }
            String strF = c3541c5B.f();
            if (strF != null) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.n), strF.replaceAll("[^0-9/.]", ""));
            } else {
                z = true;
            }
            String strF2 = c3541c5B.f();
            if (strF2 != null) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.o), SDKUtils.encodeString(strF2));
            }
            String strValueOf = String.valueOf(c3541c5B.a());
            if (strValueOf != null) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.p), strValueOf);
            } else {
                z = true;
            }
            jSONObject.put(R6.j0, String.valueOf(C3698l0.a()));
            String sDKVersion = SDKUtils.getSDKVersion();
            if (sDKVersion != null) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.q), SDKUtils.encodeString(sDKVersion));
            }
            if (c3541c5B.b() != null && c3541c5B.b().length() > 0) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.r), SDKUtils.encodeString(c3541c5B.b()));
            }
            String strB = Y3.b(context);
            if (strB.equals("none")) {
                z = true;
            } else {
                jSONObject.put(SDKUtils.encodeString("connectionType"), SDKUtils.encodeString(strB));
            }
            String strD2 = Y3.d(context);
            if (strD2 != null) {
                jSONObject.put(SDKUtils.encodeString("rawConnectionType"), SDKUtils.encodeString(strD2));
            } else {
                z = true;
            }
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.v), Y3.e(context));
            jSONObject.put("uxt", IronSourceStorageUtils.isUxt());
            String language = context.getResources().getConfiguration().locale.getLanguage();
            if (!TextUtils.isEmpty(language)) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.x), SDKUtils.encodeString(language.toUpperCase(Locale.getDefault())));
            }
            jSONObject.put(C3522b4.j.y, SDKUtils.encodeString(String.valueOf(this.Z.a(this.B))));
            String strValueOf2 = String.valueOf(this.Z.o());
            if (TextUtils.isEmpty(strValueOf2)) {
                z = true;
            } else {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.G) + C3522b4.j.d + SDKUtils.encodeString("width") + C3522b4.j.e, SDKUtils.encodeString(strValueOf2));
            }
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.G) + C3522b4.j.d + SDKUtils.encodeString("height") + C3522b4.j.e, SDKUtils.encodeString(String.valueOf(this.Z.b())));
            String strG = M1.g(this.b0.getContext());
            if (!TextUtils.isEmpty(strG)) {
                jSONObject.put(SDKUtils.encodeString("bundleId"), SDKUtils.encodeString(strG));
            }
            String strValueOf3 = String.valueOf(this.Z.r());
            if (!TextUtils.isEmpty(strValueOf3)) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.K), SDKUtils.encodeString(strValueOf3));
            }
            String strValueOf4 = String.valueOf(this.Z.p());
            if (!TextUtils.isEmpty(strValueOf4)) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.O), SDKUtils.encodeString(strValueOf4));
            }
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.P), C3541c5.b(context).a(context));
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.Y), this.Z.l(context));
            jSONObject.put(SDKUtils.encodeString("mcc"), X3.b(context));
            jSONObject.put(SDKUtils.encodeString("mnc"), X3.c(context));
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.S), X3.f(context));
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.R), SDKUtils.encodeString(X3.g(context)));
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.V), M1.f(context));
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.X), M1.d(context));
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.W), SDKUtils.encodeString(M1.b(context)));
            String strE2 = M1.e(context);
            if (!TextUtils.isEmpty(strE2)) {
                jSONObject.put(SDKUtils.encodeString(C3522b4.j.c0), SDKUtils.encodeString(strE2));
            }
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.o0), SDKUtils.encodeString(e(this.b0.getContext())));
            jSONObject.put(SDKUtils.encodeString(C3522b4.j.p0), this.Z.u(context));
        } catch (JSONException e2) {
            C3813r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
        return new Object[]{jSONObject.toString(), Boolean.valueOf(z)};
    }

    private String c(JSONObject jSONObject) {
        C3541c5 c3541c5B = C3541c5.b(this.b0.getContext());
        StringBuilder sb = new StringBuilder();
        String sDKVersion = SDKUtils.getSDKVersion();
        if (!TextUtils.isEmpty(sDKVersion)) {
            sb.append(C3522b4.j.q);
            sb.append(C3522b4.j.b);
            sb.append(sDKVersion);
            sb.append(C3522b4.j.c);
        }
        String strE = c3541c5B.e();
        if (!TextUtils.isEmpty(strE)) {
            sb.append(C3522b4.j.m);
            sb.append(C3522b4.j.b);
            sb.append(strE);
        }
        Uri uri = Uri.parse(SDKUtils.getControllerUrl());
        if (uri != null) {
            String str = uri.getScheme() + ":";
            String host = uri.getHost();
            int port = uri.getPort();
            if (port != -1) {
                host = host + ":" + port;
            }
            sb.append(C3522b4.j.c);
            sb.append("protocol");
            sb.append(C3522b4.j.b);
            sb.append(str);
            sb.append(C3522b4.j.c);
            sb.append(C3522b4.j.D);
            sb.append(C3522b4.j.b);
            sb.append(host);
            if (jSONObject.keys().hasNext()) {
                try {
                    String string = new JSONObject(jSONObject, new String[]{C3522b4.j.Z, C3522b4.j.g}).toString();
                    if (!TextUtils.isEmpty(string)) {
                        sb.append(C3522b4.j.c);
                        sb.append("controllerConfig");
                        sb.append(C3522b4.j.b);
                        sb.append(string);
                    }
                } catch (JSONException e2) {
                    C3813r4.d().a(e2);
                    IronLog.INTERNAL.error(e2.toString());
                }
            }
            sb.append(C3522b4.j.c);
            sb.append("debug");
            sb.append(C3522b4.j.b);
            sb.append(r());
            boolean featureFlagLoadControllerAndPlayerFromBundle = FeaturesManager.getInstance().getFeatureFlagLoadControllerAndPlayerFromBundle();
            boolean zB = C3649i4.b(this.b0.getContext());
            if (featureFlagLoadControllerAndPlayerFromBundle && zB) {
                sb.append(C3522b4.j.c);
                sb.append(C3522b4.j.r0);
                sb.append(C3522b4.j.b);
                sb.append(true);
                IronLog.INTERNAL.verbose("controller html was loaded from bundle, setting in html params");
            }
        }
        return sb.toString();
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(JSONObject jSONObject) {
        i(e(C3522b4.h.e0, jSONObject != null ? jSONObject.toString() : null));
    }

    @Override // com.ironsource.sdk.controller.l
    public void g() {
        i(f(C3522b4.h.u));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(Context context) {
        try {
            V3 v3 = this.S;
            if (v3 == null) {
                return;
            }
            v3.c(context);
        } catch (Throwable th) {
            C3813r4.d().a(th);
            IronLog.INTERNAL.error(th.toString());
        }
    }

    private String b(String str) {
        String str2 = this.B + File.separator;
        return str.contains(str2) ? str.substring(str2.length()) : str;
    }

    @SuppressLint({"AddJavascriptInterface"})
    private void a(WebView webView) {
        com.ironsource.sdk.controller.s sVar = new com.ironsource.sdk.controller.s(com.ironsource.sdk.controller.s.a());
        webView.addJavascriptInterface(a(sVar), C3522b4.d);
        webView.addJavascriptInterface(b(sVar), C3522b4.e);
    }

    public void b(String str, String str2, String str3) {
        try {
            try {
                i(e(C3522b4.h.q, a(C3522b4.i.b, str, "path", b(str2), "errMsg", str3, null, null, null, false)));
            } catch (Exception e2) {
                e = e2;
                C3813r4.d().a(e);
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public com.ironsource.sdk.controller.g a(com.ironsource.sdk.controller.s sVar) {
        return new com.ironsource.sdk.controller.g(new com.ironsource.sdk.controller.b(new s()), sVar);
    }

    public void a(com.ironsource.sdk.controller.o oVar) {
        this.I = oVar;
    }

    public void a(com.ironsource.sdk.controller.q qVar) {
        this.J = qVar;
    }

    public void a(com.ironsource.sdk.controller.u uVar) {
        this.K = uVar;
    }

    public void b(boolean z, String str) {
        i(e(C3522b4.h.V, a(C3522b4.i.K, str, null, null, null, null, null, null, C3522b4.i.o, z)));
    }

    public void a(com.ironsource.sdk.controller.i iVar) {
        this.L = iVar;
    }

    public void a(com.ironsource.sdk.controller.a aVar) {
        this.M = aVar;
        aVar.a(p());
    }

    public void a(com.ironsource.sdk.controller.j jVar) {
        this.N = jVar;
    }

    public void a(C3848t1 c3848t1) {
        this.O = c3848t1;
    }

    private void a(Context context, WebView webView) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.v = new FrameLayout(context);
        this.t = new FrameLayout(context);
        this.t.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.t.setVisibility(8);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(webView);
        this.v.addView(this.t, layoutParams);
        this.v.addView(frameLayout);
    }

    private String b(String str, String str2) {
        return a(str, str2, "errMsg");
    }

    @Override // com.ironsource.sdk.controller.l
    public void b(Context context) {
        a(new d(context));
    }

    public void b(Runnable runnable) {
        V7 v7 = this.a;
        if (v7 != null) {
            v7.c(runnable);
        }
    }

    @SuppressLint({"NewApi"})
    private void a(WebSettings webSettings) {
        webSettings.setMediaPlaybackRequiresUserGesture(false);
    }

    public void a(B4 b4) {
        this.P = b4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InterfaceC3887v4 a(C3855t8.e eVar) {
        if (eVar == C3855t8.e.Interstitial) {
            return this.z;
        }
        if (eVar == C3855t8.e.RewardedVideo) {
            return this.y;
        }
        if (eVar == C3855t8.e.Banner) {
            return this.A;
        }
        return null;
    }

    public void a(Ag ag) {
        this.D = ag;
    }

    public void a(int i2) {
        String string;
        if (!this.X && !this.C.m()) {
            Logger.i(this.c, "load(): Mobile Controller HTML Does not exist");
            return;
        }
        JSONObject controllerConfigAsJSONObject = SDKUtils.getControllerConfigAsJSONObject();
        String strC = c(controllerConfigAsJSONObject);
        Map<String, String> initSDKParams = SDKUtils.getInitSDKParams();
        if (initSDKParams != null && initSDKParams.containsKey("sessionid")) {
            strC = String.format("%s&sessionid=%s", strC, initSDKParams.get("sessionid"));
        }
        if (this.X) {
            string = this.W.c().toURI().toString();
        } else {
            string = this.C.g().toURI().toString();
        }
        this.a.d(new i(controllerConfigAsJSONObject, this.b0, i2, string + "?" + strC));
        n();
        this.m = new j(1000 * Pb.k0().h().K(), 1000L, i2, Pb.k0().h().c()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Context context) {
        try {
            V3 v3 = this.S;
            if (v3 == null) {
                return;
            }
            v3.b(context);
        } catch (Throwable th) {
            C3813r4.d().a(th);
            IronLog.INTERNAL.error(th.toString());
        }
    }

    private boolean c(D8 d8) {
        int iSaveFile;
        boolean zCopyFileFromBundleToStorage = SDKUtils.copyFileFromBundleToStorage(this.b0.getContext(), d8);
        if (!zCopyFileFromBundleToStorage) {
            return false;
        }
        byte[] bArrA = C3649i4.a(this.b0.getContext(), C3522b4.g);
        String strA = C3649i4.a(this.b0.getContext());
        if (strA == null) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(d8.getParent());
        String str = File.separator;
        sb.append(str);
        sb.append("controller_");
        sb.append(strA);
        sb.append(str);
        sb.append(C3522b4.g);
        String string = sb.toString();
        if (bArrA == null || bArrA.length == 0) {
            return zCopyFileFromBundleToStorage;
        }
        try {
            iSaveFile = IronSourceStorageUtils.saveFile(bArrA, string);
        } catch (Exception e2) {
            IronLog.INTERNAL.error("exception: " + e2.getMessage());
            zCopyFileFromBundleToStorage = false;
            iSaveFile = 0;
        }
        if (iSaveFile != 0) {
            return zCopyFileFromBundleToStorage;
        }
        IronLog.INTERNAL.verbose("failed to read bytes for " + d8.getName());
        return false;
    }

    private String f(String str) {
        return new m.a(str).a();
    }

    @Override // com.ironsource.sdk.controller.l
    public void f() {
        a(this.E);
    }

    public void c(String str) {
        if (str.equals(C3522b4.i.i)) {
            o();
        }
        i(e(C3522b4.h.z, a("action", str, null, null, null, null, null, null, null, false)));
    }

    private String c(String str, String str2, String str3) {
        return new m.a(str, null, str2, str3).a();
    }

    public void c(Runnable runnable) {
        V7 v7 = this.a;
        if (v7 != null) {
            v7.d(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject, WebView webView) {
        boolean zOptBoolean = jSONObject.optBoolean("inspectWebview");
        if (zOptBoolean) {
            WebView.setWebContentsDebuggingEnabled(zOptBoolean);
        }
    }

    private void a(String str, C3855t8.e eVar, X4 x4, t tVar) {
        if (TextUtils.isEmpty(str)) {
            tVar.a("Application key are missing", eVar, x4);
        } else {
            i(a(eVar, x4).b);
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, String str2, X4 x4, InterfaceC3941y4 interfaceC3941y4) {
        this.f = str;
        this.g = str2;
        this.y = interfaceC3941y4;
        this.E.i(str);
        this.E.j(str2);
        a(str, C3855t8.e.RewardedVideo, x4, new k());
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, String str2, X4 x4, InterfaceC3923x4 interfaceC3923x4) {
        this.f = str;
        this.g = str2;
        this.z = interfaceC3923x4;
        this.E.g(str);
        this.E.h(this.g);
        a(this.f, C3855t8.e.Interstitial, x4, new l());
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, InterfaceC3923x4 interfaceC3923x4) {
        HashMap map = new HashMap();
        map.put("demandSourceName", str);
        String strFlatMapToJsonAsString = SDKUtils.flatMapToJsonAsString(map);
        this.E.d(str, true);
        i(a(C3522b4.h.E, strFlatMapToJsonAsString, C3522b4.h.F, C3522b4.h.G));
    }

    private void a(X4 x4, Map<String, String> map) {
        Map<String, String> mapMergeHashMaps = SDKUtils.mergeHashMaps(new Map[]{map, x4.b()});
        if (map.containsKey("adm")) {
            this.b.a(new InterfaceC3666j4.d() { // from class: com.ironsource.sdk.controller.v$$ExternalSyntheticLambda5
                @Override // com.ironsource.InterfaceC3666j4.d
                public final void a(InterfaceC3561d7 interfaceC3561d7) {
                    this.f$0.a(interfaceC3561d7);
                }
            });
        }
        this.E.d(x4.h(), true);
        i(a(C3522b4.h.E, SDKUtils.flatMapToJsonAsString(mapMergeHashMaps), C3522b4.h.F, C3522b4.h.G));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(InterfaceC3561d7 interfaceC3561d7) {
        interfaceC3561d7.a(new InterfaceC3580e7() { // from class: com.ironsource.sdk.controller.v$$ExternalSyntheticLambda0
            @Override // com.ironsource.InterfaceC3580e7
            public final void a(InterfaceC3464a7 interfaceC3464a7) {
                this.f$0.a(interfaceC3464a7);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(InterfaceC3464a7 interfaceC3464a7) {
        try {
            this.R.a(interfaceC3464a7);
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            Logger.e(this.c, "handleLoadAd: " + e2);
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject, InterfaceC3923x4 interfaceC3923x4) {
        i(a(C3855t8.e.Interstitial, jSONObject));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(X4 x4, Map<String, String> map, InterfaceC3923x4 interfaceC3923x4) {
        i(a(C3855t8.e.Interstitial, new JSONObject(SDKUtils.mergeHashMaps(new Map[]{map, x4.b()}))));
    }

    @Override // com.ironsource.sdk.controller.l
    public boolean a(String str) {
        X4 x4A = this.H.a(C3855t8.e.Interstitial, str);
        return x4A != null && x4A.d();
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(String str, String str2, X4 x4, InterfaceC3905w4 interfaceC3905w4) {
        this.f = str;
        this.g = str2;
        this.A = interfaceC3905w4;
        a(str, C3855t8.e.Banner, x4, new m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object d(D8 d8) {
        this.h.a(this);
        if (d8 != null && d8.exists()) {
            a(d8);
            return null;
        }
        a(new D8(C3522b4.f), new C3873u8(1, "Unable to download Html file"));
        return null;
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(X4 x4, Map<String, String> map, InterfaceC3905w4 interfaceC3905w4) {
        Map<String, String> mapMergeHashMaps = SDKUtils.mergeHashMaps(new Map[]{map, x4.b()});
        if (map != null) {
            i(a(C3522b4.h.N, SDKUtils.flatMapToJsonAsString(mapMergeHashMaps), C3522b4.h.O, C3522b4.h.R));
        }
    }

    public void d(JSONObject jSONObject) {
        Logger.i(this.c, "device connection info changed: " + jSONObject.toString());
        i(e(C3522b4.h.y, a(C3522b4.j.h0, jSONObject.toString(), null, null, null, null, null, null, null, false)));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(X4 x4) {
        Map<String, String> mapB = x4.b();
        if (mapB != null) {
            i(a(C3522b4.h.S, SDKUtils.flatMapToJsonAsString(mapB), C3522b4.h.P, C3522b4.h.Q));
        }
        this.H.b(C3855t8.e.Banner, x4.h());
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject, InterfaceC3905w4 interfaceC3905w4) {
        i(a(C3522b4.h.N, jSONObject.toString(), C3522b4.h.O, C3522b4.h.R));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(f.c cVar, l.a aVar) {
        i(a(cVar.e(), cVar.h(), C3522b4.h.U, C3522b4.h.U));
    }

    private u a(C3855t8.e eVar, X4 x4) {
        u uVar = new u();
        if (eVar != C3855t8.e.RewardedVideo && eVar != C3855t8.e.Interstitial && eVar != C3855t8.e.Banner) {
            return uVar;
        }
        HashMap map = new HashMap();
        map.put(C3522b4.j.g, this.f);
        if (!TextUtils.isEmpty(this.g)) {
            map.put(C3522b4.j.f, this.g);
        }
        if (x4 != null) {
            if (x4.g() != null) {
                map.putAll(x4.g());
                map.put(C3522b4.i.y0, String.valueOf(M.a.c(x4.h())));
            }
            map.put("demandSourceName", x4.f());
            map.put("demandSourceId", x4.h());
        }
        String strFlatMapToJsonAsString = SDKUtils.flatMapToJsonAsString(map);
        C3522b4.h hVarA = C3522b4.h.a(eVar);
        String strA = a(hVarA.a, strFlatMapToJsonAsString, hVarA.b, hVarA.c);
        uVar.a = hVarA.a;
        uVar.b = strA;
        return uVar;
    }

    private String a(C3855t8.e eVar, JSONObject jSONObject) {
        HashMap map = new HashMap();
        map.put("sessionDepth", Integer.toString(jSONObject.optInt("sessionDepth")));
        String strOptString = jSONObject.optString("demandSourceName");
        String strFetchDemandSourceId = SDKUtils.fetchDemandSourceId(jSONObject);
        X4 x4A = this.H.a(eVar, strFetchDemandSourceId);
        if (x4A != null) {
            if (x4A.g() != null) {
                map.putAll(x4A.g());
            }
            if (!TextUtils.isEmpty(strOptString)) {
                map.put("demandSourceName", strOptString);
            }
            if (!TextUtils.isEmpty(strFetchDemandSourceId)) {
                map.put("demandSourceId", strFetchDemandSourceId);
            }
        }
        String strFlatMapToJsonAsString = SDKUtils.flatMapToJsonAsString(map);
        C3522b4.h hVarB = C3522b4.h.b(eVar);
        return a(hVarB.a, strFlatMapToJsonAsString, hVarB.b, hVarB.c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, C3855t8.e eVar, X4 x4) {
        if (r(eVar.toString())) {
            b(new n(eVar, x4, str));
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject, InterfaceC3941y4 interfaceC3941y4) {
        i(a(C3855t8.e.RewardedVideo, jSONObject));
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.T = jSONObject;
        }
    }

    public void a(boolean z, String str) {
        i(e(C3522b4.h.V, a(C3522b4.i.M0, str, null, null, null, null, null, null, C3522b4.i.o, z)));
    }

    public void a(int i2, boolean z) {
        i(e(C3522b4.f.i, a(C3522b4.f.f, String.valueOf(i2), null, null, null, null, null, null, C3522b4.f.g, z)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, boolean z, String str2, String str3) {
        String strD = new C3730me(str).d(z ? i0 : j0);
        if (TextUtils.isEmpty(strD)) {
            return;
        }
        i(e(strD, a(b(str, str2), str3)));
    }

    private String a(String str, String str2) {
        return a(str, str2, C3522b4.i.g);
    }

    private String a(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str2)) {
            try {
                return new JSONObject(str).put(str3, str2).toString();
            } catch (JSONException e2) {
                C3813r4.d().a(e2);
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                jSONObject.put(str, SDKUtils.encodeString(str2));
            }
            if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
                jSONObject.put(str3, SDKUtils.encodeString(str4));
            }
            if (!TextUtils.isEmpty(str5) && !TextUtils.isEmpty(str6)) {
                jSONObject.put(str5, SDKUtils.encodeString(str6));
            }
            if (!TextUtils.isEmpty(str7) && !TextUtils.isEmpty(str8)) {
                jSONObject.put(str7, SDKUtils.encodeString(str8));
            }
            if (!TextUtils.isEmpty(str9)) {
                jSONObject.put(str9, z);
            }
        } catch (JSONException e2) {
            C3813r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
        }
        return jSONObject.toString();
    }

    private String a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.ironsource.Vc
    public void a(D8 d8) {
        if (this.X && this.W.a(d8)) {
            a(1);
        } else {
            if (d8.getName().contains(C3522b4.f)) {
                C3649i4.a(this.b0.getContext(), false);
                IronLog.INTERNAL.verbose("controller html was loaded from server");
                this.C.a(new o());
                return;
            }
            c(d8.getName(), d8.getParent());
        }
    }

    @Override // com.ironsource.Vc
    public void a(D8 d8, C3873u8 c3873u8) {
        if (this.X && this.W.a(d8)) {
            this.R.c("controller html - failed to download - " + c3873u8.b());
            return;
        }
        boolean zCopyFileFromBundleToStorage = false;
        if (d8.getName().contains(C3522b4.f)) {
            if (FeaturesManager.getInstance().getFeatureFlagLoadControllerAndPlayerFromBundle() && d8.getName().equals(C3522b4.f)) {
                IronLog.INTERNAL.verbose("copying from bundle to storage " + d8.getName() + " and " + C3522b4.g);
                zCopyFileFromBundleToStorage = c(d8);
            }
            if (zCopyFileFromBundleToStorage) {
                A8.a(C3712le.C);
                C3649i4.a(this.b0.getContext(), true);
                this.C.a(new a());
                return;
            }
            this.C.a(new b(), new c(c3873u8));
            return;
        }
        if (FeaturesManager.getInstance().getFeatureFlagLoadControllerAndPlayerFromBundle() && a((File) d8)) {
            IronLog.INTERNAL.verbose("copying from bundle to storage " + d8.getName());
            zCopyFileFromBundleToStorage = SDKUtils.copyFileFromBundleToStorage(this.b0.getContext(), d8);
        }
        if (zCopyFileFromBundleToStorage) {
            c(d8.getName(), d8.getParent());
        } else {
            b(d8.getName(), d8.getParent(), c3873u8.b());
        }
    }

    private boolean a(File file) {
        return C3649i4.a().contains(file.getName());
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(Context context) {
        a(new e(context));
    }

    public void a(Xc xc) {
        this.c0 = xc;
        this.b0.a(xc);
    }

    public void a(EnumC1059v enumC1059v) {
        this.w = enumC1059v;
    }

    @Override // com.ironsource.sdk.controller.l
    public void a() {
        if (this.Y) {
            if (this.b0 != null) {
                this.a.d(new Runnable() { // from class: com.ironsource.sdk.controller.v$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.C();
                    }
                });
            }
        } else if (this.b0 != null) {
            this.b0.destroy();
        }
        C3667j5 c3667j5 = this.h;
        if (c3667j5 != null) {
            c3667j5.d();
        }
        V3 v3 = this.S;
        if (v3 != null) {
            v3.b();
        }
        CountDownTimer countDownTimer = this.m;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str, String str2, String str3, String str4) {
        return new m.a(str, str2, str3, str4).a();
    }

    public void a(C3855t8.e eVar, String str) {
        b(new f(eVar, str));
    }

    public void a(C3458a1 c3458a1) {
        synchronized (this.F) {
            try {
                if (c3458a1.j() && this.i) {
                    Log.d(this.c, "restoreState(state:" + c3458a1 + ")");
                    int iC = c3458a1.c();
                    if (iC != -1) {
                        C3855t8.e eVar = C3855t8.e.RewardedVideo;
                        if (iC == eVar.ordinal()) {
                            Log.d(this.c, "onRVAdClosed()");
                            String strB = c3458a1.b();
                            InterfaceC3887v4 interfaceC3887v4A = a(eVar);
                            if (interfaceC3887v4A != null && !TextUtils.isEmpty(strB)) {
                                interfaceC3887v4A.b(eVar, strB);
                            }
                        } else {
                            C3855t8.e eVar2 = C3855t8.e.Interstitial;
                            if (iC == eVar2.ordinal()) {
                                Log.d(this.c, "onInterstitialAdClosed()");
                                String strB2 = c3458a1.b();
                                InterfaceC3887v4 interfaceC3887v4A2 = a(eVar2);
                                if (interfaceC3887v4A2 != null && !TextUtils.isEmpty(strB2)) {
                                    interfaceC3887v4A2.b(eVar2, strB2);
                                }
                            }
                        }
                        c3458a1.a(-1);
                        c3458a1.f(null);
                    } else {
                        Log.d(this.c, "No ad was opened");
                    }
                    String strD = c3458a1.d();
                    String strF = c3458a1.f();
                    for (X4 x4 : this.H.a(C3855t8.e.Interstitial)) {
                        if (x4.e() == 2) {
                            Log.d(this.c, "initInterstitial(appKey:" + strD + ", userId:" + strF + ", demandSource:" + x4.f() + ")");
                            a(strD, strF, x4, this.z);
                        }
                    }
                    String strG = c3458a1.g();
                    String strH = c3458a1.h();
                    for (X4 x42 : this.H.a(C3855t8.e.RewardedVideo)) {
                        if (x42.e() == 2) {
                            String strF2 = x42.f();
                            Log.d(this.c, "onRVNoMoreOffers()");
                            this.y.c(strF2);
                            Log.d(this.c, "initRewardedVideo(appKey:" + strG + ", userId:" + strH + ", demandSource:" + strF2 + ")");
                            a(strG, strH, x42, this.y);
                        }
                    }
                    c3458a1.a(false);
                }
                this.E = c3458a1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(Runnable runnable) {
        V7 v7 = this.a;
        if (v7 != null) {
            v7.b(runnable);
        }
    }

    @Override // com.ironsource.sdk.controller.l
    public void a(Activity activity) {
        this.a0.a(activity);
    }
}
