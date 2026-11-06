package io.bidmachine.iab.mraid;

import android.annotation.SuppressLint;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebView;
import io.bidmachine.rendering.utils.BaseWebChromeClient;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class MraidWebChromeClient extends BaseWebChromeClient {

    public static final class a extends Lambda implements Function0 {
        public final /* synthetic */ String a;
        public final /* synthetic */ ConsoleMessage b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, ConsoleMessage consoleMessage) {
            super(0);
            this.a = str;
            this.b = consoleMessage;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            String str;
            String str2 = this.a;
            if (str2 == null || str2.length() == 0) {
                str = "";
            } else {
                str = " at " + this.a;
            }
            return this.b.message() + str + ':' + this.b.lineNumber();
        }
    }

    public static final class b extends Lambda implements Function0 {
        public final /* synthetic */ ConsoleMessage a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ConsoleMessage consoleMessage) {
            super(0);
            this.a = consoleMessage;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            String strMessage = this.a.message();
            Intrinsics.checkNotNullExpressionValue(strMessage, "consoleMessage.message()");
            return StringsKt__StringsJVMKt.replace$default(strMessage, "AppodealAlert:", "", false, 4, (Object) null);
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
            return String.valueOf(this.a);
        }
    }

    public static final class d extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return String.valueOf(this.a);
        }
    }

    public static final class e extends Lambda implements Function0 {
        public final /* synthetic */ String a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str) {
            super(0);
            this.a = str;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return String.valueOf(this.a);
        }
    }

    public final boolean a(JsResult jsResult) {
        jsResult.confirm();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    @SuppressLint({"DefaultLocale"})
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        if (consoleMessage == null || consoleMessage.message() == null) {
            return false;
        }
        MraidLog mraidLog = MraidLog.INSTANCE;
        if (mraidLog.canSendDLog()) {
            String strMessage = consoleMessage.message();
            Intrinsics.checkNotNullExpressionValue(strMessage, "consoleMessage.message()");
            if (!StringsKt__StringsKt.contains$default((CharSequence) strMessage, (CharSequence) "Uncaught ReferenceError", false, 2, (Object) null)) {
                MraidLog.d("JS console", new a(consoleMessage.sourceId(), consoleMessage));
            }
        }
        if (!mraidLog.canSendELog()) {
            return true;
        }
        String strMessage2 = consoleMessage.message();
        Intrinsics.checkNotNullExpressionValue(strMessage2, "consoleMessage.message()");
        if (!StringsKt__StringsKt.contains$default((CharSequence) strMessage2, (CharSequence) "AppodealAlert", false, 2, (Object) null)) {
            return true;
        }
        MraidLog.e("Appodeal", new b(consoleMessage));
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        MraidLog.d("JS alert", new c(str2));
        return a(result);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        MraidLog.d("JS confirm", new d(str2));
        return a(result);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        MraidLog.d("JS prompt", new e(str2));
        return a(result);
    }
}
