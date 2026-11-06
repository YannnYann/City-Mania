package io.bidmachine.iab.script;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import androidx.webkit.JavaScriptReplyProxy;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import io.bidmachine.iab.mraid.MraidLog;
import io.bidmachine.iab.mraid.MraidWebView;
import io.bidmachine.rendering.model.ScriptConfig;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.PropertyReference1Impl;

/* JADX INFO: loaded from: classes5.dex */
public final class ScriptInjector {
    public static final a d = new a(null);
    public static final Object e = "ScriptInjector";
    public final MraidWebView a;
    public final Set c;

    public interface MessageReceiver {
    }

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final class b extends Lambda implements Function0 {
        public static final b a = new b();

        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "WEB_MESSAGE_LISTENER not supported, skipping";
        }
    }

    public static final class c extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "unregistered message listener: " + this.a;
        }
    }

    public static final class d extends Lambda implements Function0 {
        public static final d a = new d();

        public d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "can't evaluate js: WebView is destroyed";
        }
    }

    public static final class e extends Lambda implements Function0 {
        public static final e a = new e();

        public e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "can't evaluate js: js is empty";
        }
    }

    public static final class f extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "evaluating js (" + this.a.length() + " chars)";
        }
    }

    public static final class g extends Lambda implements Function0 {
        public static final g a = new g();

        public g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "evaluate js complete";
        }
    }

    public static final class h extends Lambda implements Function0 {
        public static final h a = new h();

        public h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "loading url via javascript:";
        }
    }

    public static final class i extends Lambda implements Function0 {
        public final /* synthetic */ List a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(List list) {
            super(0);
            this.a = list;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "installed " + this.a.size() + " document-start scripts";
        }
    }

    public static final class j extends Lambda implements Function0 {
        public final /* synthetic */ ScriptConfig a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(ScriptConfig scriptConfig) {
            super(0);
            this.a = scriptConfig;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "DOCUMENT_START_SCRIPT not supported, skipping: " + this.a.getScriptId();
        }
    }

    public static final class k extends Lambda implements Function0 {
        public final /* synthetic */ ScriptConfig a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(ScriptConfig scriptConfig) {
            super(0);
            this.a = scriptConfig;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "injected document-start script: " + this.a.getScriptId();
        }
    }

    public static final class m extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "WEB_MESSAGE_LISTENER not supported, skipping: " + this.a;
        }
    }

    public static final class n extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "registered message listener: " + this.a;
        }
    }

    public ScriptInjector(MraidWebView webView, MessageReceiver messageReceiver) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        this.a = webView;
        this.c = new LinkedHashSet();
    }

    public static final void a(String str) {
        MraidLog.d(e, g.a);
    }

    @SuppressLint({"RequiresFeature"})
    public final void destroy() {
        if (!WebViewFeature.isFeatureSupported(WebViewFeature.WEB_MESSAGE_LISTENER)) {
            MraidLog.w(e, b.a);
            return;
        }
        for (String str : this.c) {
            try {
                WebViewCompat.removeWebMessageListener(this.a, str);
                MraidLog.d(e, new c(str));
            } catch (Throwable th) {
                MraidLog.e(e, th);
            }
        }
        this.c.clear();
    }

    public final void injectAtRuntime(String str) {
        if (this.a.isDestroyed()) {
            MraidLog.d(e, d.a);
            return;
        }
        if (str == null || str.length() == 0) {
            MraidLog.d(e, e.a);
            return;
        }
        try {
            MraidLog.d(e, new f(str));
            this.a.evaluateJavascript(str, new ValueCallback() { // from class: io.bidmachine.iab.script.ScriptInjector$$ExternalSyntheticLambda0
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(Object obj) {
                    ScriptInjector.a((String) obj);
                }
            });
        } catch (Throwable th) {
            Object obj = e;
            MraidLog.e(obj, th);
            MraidLog.d(obj, h.a);
            this.a.loadUrl("javascript:" + str);
        }
    }

    public final boolean injectStart(String str, List<ScriptConfig> scriptConfigs) {
        Intrinsics.checkNotNullParameter(scriptConfigs, "scriptConfigs");
        try {
            List listA = ScriptInjectorKt.a(scriptConfigs, ScriptConfig.Type.DocumentStart, ScriptConfig.Type.DocumentEnd);
            Iterator it = listA.iterator();
            while (it.hasNext()) {
                injectStart(str, (ScriptConfig) it.next());
            }
            MraidLog.d(e, new i(listA));
            return true;
        } catch (Throwable th) {
            MraidLog.e(e, th);
            return false;
        }
    }

    public final String modifyHtml(String data, List<ScriptConfig> scriptConfigs) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(scriptConfigs, "scriptConfigs");
        return CollectionsKt___CollectionsKt.joinToString$default(ScriptInjectorKt.a(scriptConfigs, ScriptConfig.Type.InlineTag), "", null, null, 0, null, new PropertyReference1Impl() { // from class: io.bidmachine.iab.script.ScriptInjector.l
            @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
            public Object get(Object obj) {
                return ((ScriptConfig) obj).getSource();
            }
        }, 30, null) + data;
    }

    public final void a(WebView webView, final String str, Set set) {
        if (!WebViewFeature.isFeatureSupported(WebViewFeature.WEB_MESSAGE_LISTENER)) {
            MraidLog.w(e, new m(str));
            return;
        }
        try {
            WebViewCompat.addWebMessageListener(webView, str, set, new WebViewCompat.WebMessageListener() { // from class: io.bidmachine.iab.script.ScriptInjector$$ExternalSyntheticLambda1
                @Override // androidx.webkit.WebViewCompat.WebMessageListener
                public final void onPostMessage(WebView webView2, WebMessageCompat webMessageCompat, Uri uri, boolean z, JavaScriptReplyProxy javaScriptReplyProxy) {
                    ScriptInjector.a(this.f$0, str, webView2, webMessageCompat, uri, z, javaScriptReplyProxy);
                }
            });
            this.c.add(str);
            MraidLog.d(e, new n(str));
        } catch (Throwable th) {
            MraidLog.e(e, th);
        }
    }

    public /* synthetic */ ScriptInjector(MraidWebView mraidWebView, MessageReceiver messageReceiver, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(mraidWebView, (i2 & 2) != 0 ? null : messageReceiver);
    }

    public static final void a(ScriptInjector this$0, String handlerName, WebView webView, WebMessageCompat message, Uri uri, boolean z, JavaScriptReplyProxy javaScriptReplyProxy) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(handlerName, "$handlerName");
        Intrinsics.checkNotNullParameter(webView, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(uri, "<anonymous parameter 2>");
        Intrinsics.checkNotNullParameter(javaScriptReplyProxy, "<anonymous parameter 4>");
        this$0.getClass();
    }

    public final Set a(String str, boolean z) {
        if (str != null && z) {
            return SetsKt__SetsJVMKt.setOf(str);
        }
        if (z) {
            return SetsKt__SetsJVMKt.setOf("https://localhost");
        }
        return SetsKt__SetsJVMKt.setOf("*");
    }

    @SuppressLint({"RequiresFeature"})
    public final void injectStart(String str, ScriptConfig script) {
        Intrinsics.checkNotNullParameter(script, "script");
        if (!WebViewFeature.isFeatureSupported(WebViewFeature.DOCUMENT_START_SCRIPT)) {
            MraidLog.w(e, new j(script));
            return;
        }
        Set setA = a(str, script.getForMainFrameOnly());
        WebViewCompat.addDocumentStartJavaScript(this.a, ScriptInjectorKt.a(script), setA);
        MraidLog.d(e, new k(script));
        String messageHandler = script.getMessageHandler();
        if (messageHandler != null) {
            a(this.a, messageHandler, setA);
        }
    }
}
