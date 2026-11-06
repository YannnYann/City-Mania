package com.ironsource.adqualitysdk.sdk.i;

import android.graphics.Bitmap;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.l0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3494l0 extends WebViewClient {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C3498n0 f291;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public boolean f294 = false;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public boolean f293 = false;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public String f292 = null;

    public C3494l0(C3498n0 c3498n0) {
        this.f291 = c3498n0;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        this.f291.mo1014(webView);
        this.f294 = false;
        this.f293 = true;
        if (this.f292 == null) {
            this.f292 = webView.getOriginalUrl();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.f291.mo1014(webView);
        this.f294 = true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return shouldOverrideUrlLoading(webView, webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str.startsWith(this.f291.f365)) {
            this.f292 = webView.getOriginalUrl();
            String strSubstring = str.substring(this.f291.f365.length());
            C3498n0 c3498n0 = this.f291;
            c3498n0.mo1016(webView, c3498n0.f365, strSubstring);
            return true;
        }
        if (this.f292 == null) {
            this.f292 = webView.getOriginalUrl();
        }
        this.f291.mo1017(webView, str, (this.f294 && this.f293) || !(webView.getOriginalUrl() == null || this.f292 == null || webView.getOriginalUrl().equals(this.f292)));
        this.f293 = true;
        this.f294 = false;
        return false;
    }
}
