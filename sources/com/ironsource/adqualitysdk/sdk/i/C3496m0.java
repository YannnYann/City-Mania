package com.ironsource.adqualitysdk.sdk.i;

import android.webkit.JsPromptResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.m0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3496m0 extends WebChromeClient {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C3498n0 f360;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public boolean f361 = false;

    public C3496m0(C3498n0 c3498n0) {
        this.f360 = c3498n0;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        this.f360.mo1015(webView, str2);
        return false;
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        if (i != 100 || this.f361) {
            return;
        }
        this.f361 = true;
        this.f360.mo1014(webView);
    }
}
