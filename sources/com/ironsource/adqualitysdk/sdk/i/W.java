package com.ironsource.adqualitysdk.sdk.i;

import android.graphics.Bitmap;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: loaded from: classes3.dex */
public final class W extends WebChromeClient implements InterfaceC0429 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final WebChromeClient f230;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final String f229 = StringFog.decrypt("OzGX17ttmJYJF5n9tnGDvwk3muaya5iJ\n", "bFT1lNMf9/s=\n");

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f228 = StringFog.decrypt("NyN5HGABJWE1IloucCM9Yz8raAh+CTB/JA==\n", "UEYNSxJgVRE=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f227 = StringFog.decrypt("LjKQiUy8ESYKP5ayQ443KCAyiqk=\n", "SVfk3S7rdEQ=\n");

    public W(WebChromeClient webChromeClient) {
        this.f230 = webChromeClient;
    }

    @Override // android.webkit.WebChromeClient
    public final Bitmap getDefaultVideoPoster() {
        try {
            this.f230.getDefaultVideoPoster();
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("ajxbjQ3ItAEPI32AM4GuG0ogTJBfj7gbaytPgwqEqTlGKkyNL4euG0o8\n", "L04p4n/o3W8=\n"), th, false);
        }
        return super.getDefaultVideoPoster();
    }

    @Override // android.webkit.WebChromeClient
    public final View getVideoLoadingProgressView() {
        try {
            this.f230.getVideoLoadingProgressView();
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("VXv3/HiwFJEwZNHxRvkOi3Vn4OEq9xiLRmDh9mXcEp50YOv0WuISmGJs9uBc+RiI\n", "EAmFkwqQff8=\n"), th, false);
        }
        return super.getVideoLoadingProgressView();
    }

    @Override // android.webkit.WebChromeClient
    public final void getVisitedHistory(ValueCallback valueCallback) {
        try {
            this.f230.getVisitedHistory(valueCallback);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("3LdsKYWogSm5qEoku+GbM/yrezTX740zz6xtL4PtjA/wtmophfE=\n", "mcUeRveI6Ec=\n"), th, false);
        }
        super.getVisitedHistory(valueCallback);
    }

    @Override // android.webkit.WebChromeClient
    public final void onCloseWindow(WebView webView) {
        try {
            this.f230.onCloseWindow(webView);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("7u7T3/hIWmqL8fXSxgFAcM7yxMKqB11Hx/PS1d0BXWDE6w==\n", "q5yhsIpoMwQ=\n"), th, false);
        }
        super.onCloseWindow(webView);
    }

    @Override // android.webkit.WebChromeClient
    public final void onConsoleMessage(String str, int i, String str2) {
        try {
            this.f230.onConsoleMessage(str, i, str2);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("FfAcXmZ6cS1w7zpTWDNrNzXsC0M0NXYAP+wdXng/VSYj8Q9WcQ==\n", "UIJuMRRaGEM=\n"), th, false);
        }
        super.onConsoleMessage(str, i, str2);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        try {
            this.f230.onCreateWindow(webView, z, z2, message);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("Ly87Za/HM89KMB1okY4p1Q8zLHj9iDTiGDgofriwM88OMj4=\n", "al1JCt3nWqE=\n"), th, false);
        }
        return super.onCreateWindow(webView, z, z2, message);
    }

    @Override // android.webkit.WebChromeClient
    public final void onExceededDatabaseQuota(String str, String str2, long j, long j2, long j3, WebStorage.QuotaUpdater quotaUpdater) {
        try {
            this.f230.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("0tSGy4cUzzi3y6DGuV3VIvLIkdbVW8gT78WRwZFRwhL20pXGlEfDB+LJgMU=\n", "l6b0pPU0plY=\n"), th, false);
        }
        super.onExceededDatabaseQuota(str, str2, j, j2, j3, quotaUpdater);
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsHidePrompt() {
        try {
            this.f230.onGeolocationPermissionsHidePrompt();
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("g2X/V4zDauTmetlasopw/qN56ErejG3No3jhV52Cd+Oped1djI5q+bV+4laNq2ruo0f/V5OTdw==\n", "xheNOP7jA4o=\n"), th, false);
        }
        super.onGeolocationPermissionsHidePrompt();
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        try {
            this.f230.onGeolocationPermissionsShowPrompt(str, callback);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("D/1/Z0K1Azlq4llqfPwZIy/haHoQ+gQQL+BhZ1P0Hj4l4V1tQvgDJDnmYmZDxgI4Pd9/Z13lHg==\n", "So8NCDCValc=\n"), th, false);
        }
        super.onGeolocationPermissionsShowPrompt(str, callback);
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        try {
            this.f230.onHideCustomView();
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("KJ6XXfKlny1NgbFQzOyFNwiCgECg6pgLBIiAcfX2giwAuoxX9w==\n", "bezlMoCF9kM=\n"), th, false);
        }
        super.onHideCustomView();
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        try {
            this.f230.onJsAlert(webView, str, str2, jsResult);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("iG7ARB5gtD7tceZJICmuJKhy11lML7Mavl3eTh40\n", "zRyyK2xA3VA=\n"), th, false);
        }
        return super.onJsAlert(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        try {
            this.f230.onJsBeforeUnload(webView, str, str2, jsResult);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("oI9iYdomSyjFkERs5G9RMoCTdXyIaUwMlr91aMd0RxOLkX9vzA==\n", "5f0QDqgGIkY=\n"), th, false);
        }
        return super.onJsBeforeUnload(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        try {
            this.f230.onJsConfirm(webView, str, str2, jsResult);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("KnraaBBbDb1PZfxlLhIXpwpmzXVCFAqZHEvHaQQSFr4=\n", "bwioB2J7ZNM=\n"), th, false);
        }
        return super.onJsConfirm(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        try {
            try {
                this.f230.onJsPrompt(webView, str, str2, str3, jsPromptResult);
                webView = webView;
                str = str;
                str2 = str2;
                str3 = str3;
                jsPromptResult = jsPromptResult;
            } catch (Throwable th) {
                th = th;
                webView = webView;
                str = str;
                str2 = str2;
                str3 = str3;
                jsPromptResult = jsPromptResult;
                AbstractC1003.m1592(f229, StringFog.decrypt("uMALKMp08CXd3y0l9D3qP5jcHDWYO/cBjuILKNUk7Q==\n", "/bJ5R7hUmUs=\n"), th, false);
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsTimeout() {
        try {
            this.f230.onJsTimeout();
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("QpAqPkDBNvgnjwwzfogs4mKMPSMSjjHcdLYxPFeOKuI=\n", "B+JYUTLhX5Y=\n"), th, false);
        }
        return super.onJsTimeout();
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        try {
            this.f230.onProgressChanged(webView, i);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("IMOD6hfOtXxF3KXnKYevZgDflPdFgbJCF96W9wCdr1EN0J/iAIo=\n", "ZbHxhWXu3BI=\n"), th, false);
        }
        super.onProgressChanged(webView, i);
    }

    @Override // android.webkit.WebChromeClient
    public final void onReceivedIcon(WebView webView, Bitmap bitmap) {
        try {
            this.f230.onReceivedIcon(webView, bitmap);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("KHiSoL2x8J1NZ7Stg/jqhwhkhb3v/vehCGmFprn0/boOZY4=\n", "bQrgz8+RmfM=\n"), th, false);
        }
        super.onReceivedIcon(webView, bitmap);
    }

    @Override // android.webkit.WebChromeClient
    public final void onReceivedTitle(WebView webView, String str) {
        try {
            this.f230.onReceivedTitle(webView, str);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("VQ7FCvzc5uAwEeMHwpX8+nUS0heuk+HcdR/SDPiZ69p5CNsA\n", "EHy3ZY78j44=\n"), th, false);
        }
        super.onReceivedTitle(webView, str);
    }

    @Override // android.webkit.WebChromeClient
    public final void onReceivedTouchIconUrl(WebView webView, String str, boolean z) {
        try {
            this.f230.onReceivedTouchIconUrl(webView, str, z);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("+ACAeSwr3BudH6Z0EmLGAdgcl2R+ZNsn2BGXfyhu0SHSB5F+F2jaG+gAng==\n", "vXLyFl4LtXU=\n"), th, false);
        }
        super.onReceivedTouchIconUrl(webView, str, z);
    }

    @Override // android.webkit.WebChromeClient
    public final void onRequestFocus(WebView webView) {
        try {
            this.f230.onRequestFocus(webView);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("mCCZl6LFq6v9P7+anIyxsbg8jorwiqyXuCOenaORhKq+J5g=\n", "3VLr+NDlwsU=\n"), th, false);
        }
        super.onRequestFocus(webView);
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        try {
            this.f230.onShowCustomView(view, customViewCallback);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("Ld50emI/zqVIwVJ3XHbUvw3CY2cwcMmYAMNxVmVs06QF+m9wZw==\n", "aKwGFRAfp8s=\n"), th, false);
        }
        super.onShowCustomView(view, customViewCallback);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003e A[RETURN] */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0429
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object mo1012(com.ironsource.adqualitysdk.sdk.i.C0048 r3, java.lang.String r4, java.util.ArrayList r5, com.ironsource.adqualitysdk.sdk.i.C0875 r6, com.ironsource.adqualitysdk.sdk.i.C0915 r7) {
        /*
            r2 = this;
            r5 = 0
            int r6 = r4.hashCode()     // Catch: java.lang.Exception -> L1b
            r0 = 1395849045(0x5332f755, float:7.686537E11)
            r1 = 1
            if (r6 == r0) goto L1d
            r0 = 1442029578(0x55f3a00a, float:3.3483586E13)
            if (r6 == r0) goto L11
            goto L27
        L11:
            java.lang.String r6 = com.ironsource.adqualitysdk.sdk.i.W.f228     // Catch: java.lang.Exception -> L1b
            boolean r6 = r4.equals(r6)     // Catch: java.lang.Exception -> L1b
            if (r6 == 0) goto L27
            r6 = 0
            goto L28
        L1b:
            r6 = move-exception
            goto L3f
        L1d:
            java.lang.String r6 = com.ironsource.adqualitysdk.sdk.i.W.f227     // Catch: java.lang.Exception -> L1b
            boolean r6 = r4.equals(r6)     // Catch: java.lang.Exception -> L1b
            if (r6 == 0) goto L27
            r6 = r1
            goto L28
        L27:
            r6 = -1
        L28:
            if (r6 == 0) goto L3e
            if (r6 == r1) goto L3b
            com.ironsource.adqualitysdk.sdk.i.q r6 = new com.ironsource.adqualitysdk.sdk.i.q     // Catch: java.lang.Exception -> L1b
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.W.f229     // Catch: java.lang.Exception -> L1b
            r6.<init>(r3, r7, r0, r4)     // Catch: java.lang.Exception -> L1b
            java.lang.String r7 = r3.m1060()     // Catch: java.lang.Exception -> L1b
            r6.m1421(r7)     // Catch: java.lang.Exception -> L1b
            goto L5b
        L3b:
            android.webkit.WebChromeClient r3 = r2.f230     // Catch: java.lang.Exception -> L1b
            return r3
        L3e:
            return r5
        L3f:
            java.lang.String r3 = r3.m1060()
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r0 = "ISAcps8jUoANPgvp2HtAixEmB6faI3KNBhEGu9JuQKsIOwunyUdAiwsgD73ScQWGBSYHv9gjSI0Q\nOgGtnSQ=\n"
            java.lang.String r1 = "ZFJuyb0DJeg=\n"
            java.lang.StringBuilder r4 = com.ironsource.adqualitysdk.sdk.i.AbstractC0594.m1349(r0, r1, r7, r4)
            java.lang.String r7 = "oA==\n"
            java.lang.String r0 = "h3Q58x3snNA=\n"
            java.lang.String r4 = com.ironsource.adqualitysdk.sdk.i.AbstractC0829.m1456(r7, r0, r4)
            com.ironsource.adqualitysdk.sdk.i.AbstractC0923.m1543(r3, r4, r6, r5)
        L5b:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.W.mo1012(com.ironsource.adqualitysdk.sdk.i.İ, java.lang.String, java.util.ArrayList, com.ironsource.adqualitysdk.sdk.i.ﭘ, com.ironsource.adqualitysdk.sdk.i.ﹲ):java.lang.Object");
    }

    @Override // android.webkit.WebChromeClient
    public final void onPermissionRequest(PermissionRequest permissionRequest) {
        try {
            this.f230.onPermissionRequest(permissionRequest);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("wOR7pQDLyfyl+12oPoLT5uD4bLhShM7C4ORkowGYyf3rxGy7B47T5g==\n", "hZYJynLroJI=\n"), th, false);
        }
        try {
            super.onPermissionRequest(permissionRequest);
        } catch (Throwable th2) {
            AbstractC1003.m1592(f229, StringFog.decrypt("e/RVCPvSIpge5UYL5ZslkR7pVQ7umyXWUeh3AvufIoVN70gJ25c6g1v1Uw==\n", "PoYnZ4nyS/Y=\n"), th2, false);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onPermissionRequestCanceled(PermissionRequest permissionRequest) {
        try {
            this.f230.onPermissionRequestCanceled(permissionRequest);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("vvOzulXQCtPb7JW3a5kQyZ7vpKcHnw3tnvOsvFSDCtKV06SkUpUQybjgr7ZCnAbZ\n", "+4HB1SfwY70=\n"), th, false);
        }
        try {
            super.onPermissionRequestCanceled(permissionRequest);
        } catch (Throwable th2) {
            AbstractC1003.m1592(f229, StringFog.decrypt("bJpQqYAJ2qUJi0OqnkDdrAmHUK+VQN3rRoZyo4BE2rhagU2ooEzCvkybVoWTR9CuRY1G\n", "KegixvIps8s=\n"), th2, false);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onShowFileChooser(WebView webView, ValueCallback valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        try {
            this.f230.onShowFileChooser(webView, valueCallback, fileChooserParams);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("bHQDSc4R2nMJayVE8FjAaUxoFFScXt1OQWkGYNVd1l5BaR5V2UM=\n", "KQZxJrwxsx0=\n"), th, false);
        }
        return super.onShowFileChooser(webView, valueCallback, fileChooserParams);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        try {
            this.f230.onConsoleMessage(consoleMessage);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("L9Ut3z4DcoBKygvSAEpomg/JOsJsTHWtBcks3yBGVosZ1D7XKQ==\n", "aqdfsEwjG+4=\n"), th, false);
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, int i, WebChromeClient.CustomViewCallback customViewCallback) {
        try {
            this.f230.onShowCustomView(view, i, customViewCallback);
        } catch (Throwable th) {
            AbstractC1003.m1592(f229, StringFog.decrypt("orudsIZVRgLHpLu9uBxcGIKniq3UGkE/j6aYnIEGWwOKn4a6gw==\n", "58nv3/R1L2w=\n"), th, false);
        }
        super.onShowCustomView(view, i, customViewCallback);
    }
}
