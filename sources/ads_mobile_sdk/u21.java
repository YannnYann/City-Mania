package ads_mobile_sdk;

import android.os.Message;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.google.common.base.Splitter;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: loaded from: classes.dex */
public final class u21 extends WebChromeClient {
    public final g41 a;
    public final vk0 b;

    public u21(g41 gmaWebViewClient) {
        Intrinsics.checkNotNullParameter(gmaWebViewClient, "gmaWebViewClient");
        this.a = gmaWebViewClient;
        this.b = gmaWebViewClient.a();
    }

    @Override // android.webkit.WebChromeClient
    public final void onCloseWindow(WebView window) {
        ay0 ay0Var;
        Intrinsics.checkNotNullParameter(window, "window");
        if (!(window instanceof r31) || (ay0Var = ((r31) window).p) == null) {
            return;
        }
        ay0Var.a(ky.c);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        Intrinsics.checkNotNullParameter(consoleMessage, "consoleMessage");
        if (consoleMessage.message() == null) {
            return true;
        }
        BuildersKt__Builders_commonKt.launch$default(this.a.c, null, null, new s21(this, consoleMessage, null), 3, null);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView view, boolean z, boolean z2, Message resultMsg) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(resultMsg, "resultMsg");
        WebView webView = new WebView(view.getContext());
        webView.setWebViewClient(new t21(this));
        Object obj = resultMsg.obj;
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type android.webkit.WebView.WebViewTransport");
        ((WebView.WebViewTransport) obj).setWebView(webView);
        resultMsg.sendToTarget();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView view, String url, String message, JsResult result) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(result, "result");
        Splitter splitter = f01.a;
        f01.c("JavaScript alert() ignored: " + message, null);
        result.cancel();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView view, String url, String message, JsResult result) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(result, "result");
        Splitter splitter = f01.a;
        f01.c("JavaScript confirm() ignored: " + message, null);
        result.cancel();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView view, String url, String message, String defaultValue, JsPromptResult result) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        Intrinsics.checkNotNullParameter(result, "result");
        Splitter splitter = f01.a;
        f01.c("JavaScript prompt() ignored: " + message, null);
        result.cancel();
        return true;
    }
}
