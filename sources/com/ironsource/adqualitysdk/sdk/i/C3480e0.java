package com.ironsource.adqualitysdk.sdk.i;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.view.KeyEvent;
import android.webkit.ClientCertRequest;
import android.webkit.HttpAuthHandler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.e0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3480e0 extends WebViewClient implements InterfaceC3482f0, InterfaceC0429 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final WebViewClient f260;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final WebViewClient f261;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f259 = StringFog.decrypt("g58L2w16+c+4kwzjEFvr77uICPkLbQ==\n", "1PppjWQfjow=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f258 = StringFog.decrypt("RiAAnAru/whEISOuGtnmHVYGGKId4fs=\n", "IUV0y3iPj3g=\n");

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f257 = StringFog.decrypt("82R4E+dXG8HCaGkwxmwXxvp1\n", "lAEMR4UAfqM=\n");

    public C3480e0(WebViewClient webViewClient, WebViewClient webViewClient2) {
        this.f261 = webViewClient;
        this.f260 = webViewClient2;
    }

    @Override // android.webkit.WebViewClient
    public final void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
        try {
            this.f260.doUpdateVisitedHistory(webView, str, z);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("pasXXjZRF/nAtDFTCBgN44W3AENkFRHCkL0ERSEnF+SJrQBVDBgN44+rHA==\n", "4NllMURxfpc=\n"), th, false);
        }
        WebViewClient webViewClient = this.f261;
        if (webViewClient != null) {
            webViewClient.doUpdateVisitedHistory(webView, str, z);
        } else {
            super.doUpdateVisitedHistory(webView, str, z);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onFormResubmission(WebView webView, Message message, Message message2) {
        try {
            this.f260.onFormResubmission(webView, message, message2);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("hork7pYjhz/jlcLjqGqdJaaW8/PEbIAXrIr704FwmzOukeXyjWyA\n", "w/iWgeQD7lE=\n"), th, false);
        }
        try {
            WebViewClient webViewClient = this.f261;
            if (webViewClient != null) {
                webViewClient.onFormResubmission(webView, message, message2);
            } else {
                super.onFormResubmission(webView, message, message2);
            }
        } catch (Error e) {
            AbstractC1003.m1592(f259, StringFog.decrypt("AzpY801nh8RmJ0TaUDWD+CM7X/5SLp3ZLydE\n", "RkgqnD9H7qo=\n"), (Throwable) e, false);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        try {
            this.f260.onLoadResource(webView, str);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("74g4E9lRwBiKlx4e5xjaAs+ULw6LHsc6xZsuLs4CxgPYmS8=\n", "qvpKfKtxqXY=\n"), th, false);
        }
        WebViewClient webViewClient = this.f261;
        if (webViewClient != null) {
            webViewClient.onLoadResource(webView, str);
        } else {
            super.onLoadResource(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageCommitVisible(WebView webView, String str) {
        try {
            this.f260.onPageCommitVisible(webView, str);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("h5mP+yXl22fihqn2G6zBfaeFmOZ3qtxZo4yYxyOkwH2njw==\n", "wuv9lFfFsgk=\n"), th, false);
        }
        WebViewClient webViewClient = this.f261;
        if (webViewClient != null) {
            webViewClient.onPageCommitVisible(webView, str);
        } else {
            super.onPageCommitVisible(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        try {
            this.f260.onPageFinished(webView, str);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("+1oOnwRP0iueRSiSOgbIMdtGGYJWANUV308Zth8B0jbWTRg=\n", "vih88HZvu0U=\n"), th, false);
        }
        WebViewClient webViewClient = this.f261;
        if (webViewClient != null) {
            webViewClient.onPageFinished(webView, str);
        } else {
            super.onPageFinished(webView, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        try {
            this.f260.onPageStarted(webView, str, bitmap);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("qlbiSrB1YfDPScRHjjx76opK9VfiOmbOjkP1drY0euqKQA==\n", "7ySQJcJVCJ4=\n"), th, false);
        }
        WebViewClient webViewClient = this.f261;
        if (webViewClient != null) {
            webViewClient.onPageStarted(webView, str, bitmap);
        } else {
            super.onPageStarted(webView, str, bitmap);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedClientCertRequest(WebView webView, ClientCertRequest clientCertRequest) {
        try {
            this.f260.onReceivedClientCertRequest(webView, clientCertRequest);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("p87ELpigwRHC0eIjpunbC4fS0zPK78Yth9/TKJzlzDyO1dMvnsPNDZbu0zCf5dsL\n", "4ry2QeqAqH8=\n"), th, false);
        }
        try {
            WebViewClient webViewClient = this.f261;
            if (webViewClient != null) {
                webViewClient.onReceivedClientCertRequest(webView, clientCertRequest);
            } else {
                super.onReceivedClientCertRequest(webView, clientCertRequest);
            }
        } catch (Throwable th2) {
            AbstractC1003.m1592(f259, StringFog.decrypt("/idUpyrFeUWbNkekNIx+TJs6VKE/jH4L1Dt0rTuAeV3eMWWkMYB+X/gwVLwKgGFe3iZS\n", "u1UmyFjlECs=\n"), th2, false);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        try {
            this.f260.onReceivedError(webView, i, str, str2);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("EyQa0xPeyXV2OzzeLZfTbzM4Dc5Bkc5JMzUN1RebxF4kJAfO\n", "VlZovGH+oBs=\n"), th, false);
        }
        WebViewClient webViewClient = this.f261;
        if (webViewClient != null) {
            webViewClient.onReceivedError(webView, i, str, str2);
        } else {
            super.onReceivedError(webView, i, str, str2);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler httpAuthHandler, String str, String str2) {
        try {
            this.f260.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("sqp9x6Ahg7fXtVvKnmiZrZK2atryboSLkrtqwaRkjpGDrH/pp3WCi5Kpes2hdQ==\n", "99gPqNIB6tk=\n"), th, false);
        }
        WebViewClient webViewClient = this.f261;
        if (webViewClient != null) {
            webViewClient.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
        } else {
            super.onReceivedHttpAuthRequest(webView, httpAuthHandler, str, str2);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        try {
            this.f260.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("HxEZZu/J3w16Dj9r0YDFFz8NDnu9htgxPwAOYOuM0isuFxtM75vZEQ==\n", "WmNrCZ3ptmM=\n"), th, false);
        }
        WebViewClient webViewClient = this.f261;
        if (webViewClient != null) {
            webViewClient.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        } else {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedLoginRequest(WebView webView, String str, String str2, String str3) {
        try {
            this.f260.onReceivedLoginRequest(webView, str, str2, str3);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("RP0eP+pMdQ8h4jgy1AVvFWThCSK4A3IzZOwJOe4JeC1u6AU+ygltFGT8GA==\n", "AY9sUJhsHGE=\n"), th, false);
        }
        WebViewClient webViewClient = this.f261;
        if (webViewClient != null) {
            webViewClient.onReceivedLoginRequest(webView, str, str2, str3);
        } else {
            super.onReceivedLoginRequest(webView, str, str2, str3);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        try {
            this.f260.onReceivedSslError(webView, sslErrorHandler, sslError);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("p1sFzOzM6/vCRCPB0oXx4YdHEtG+g+zHh0oSyuiJ5saRRTLR7IPw\n", "4il3o57sgpU=\n"), th, false);
        }
        WebViewClient webViewClient = this.f261;
        if (webViewClient != null) {
            webViewClient.onReceivedSslError(webView, sslErrorHandler, sslError);
        } else {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        try {
            this.f260.onRenderProcessGone(webView, renderProcessGoneDetail);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("3DILCswejUm5LS0H8leXU/wuHBeeUYp1/C4dAMxulkj6JQoW+VGKQg==\n", "mUB5Zb4+5Cc=\n"), th, false);
        }
        WebViewClient webViewClient = this.f261;
        if (webViewClient != null) {
            return webViewClient.onRenderProcessGone(webView, renderProcessGoneDetail);
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final void onScaleChanged(WebView webView, float f, float f2) {
        try {
            this.f260.onScaleChanged(webView, f, f2);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("NIm0wJiq3D5RlpLNpuPGJBSVo93K5dsDEpqqyqni1D4WnqI=\n", "cfvGr+qKtVA=\n"), th, false);
        }
        WebViewClient webViewClient = this.f261;
        if (webViewClient != null) {
            webViewClient.onScaleChanged(webView, f, f2);
        } else {
            super.onScaleChanged(webView, f, f2);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onTooManyRedirects(WebView webView, Message message, Message message2) {
        try {
            this.f260.onTooManyRedirects(webView, message, message2);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("kwyPuZHWYML2E6m0r5962LMQmKTDmWf4uRGwt42PW8myF4+zgIJ6\n", "1n791uP2Caw=\n"), th, false);
        }
        WebViewClient webViewClient = this.f261;
        if (webViewClient != null) {
            webViewClient.onTooManyRedirects(webView, message, message2);
        } else {
            super.onTooManyRedirects(webView, message, message2);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
        try {
            this.f260.onUnhandledKeyEvent(webView, keyEvent);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("uHcGQ1vSTwndaCBOZZtVE5hrEV4JnUgyk20VQk2eQwO2YA1pX5dIEw==\n", "/QV0LCnyJmc=\n"), th, false);
        }
        WebViewClient webViewClient = this.f261;
        if (webViewClient != null) {
            webViewClient.onUnhandledKeyEvent(webView, keyEvent);
        } else {
            super.onUnhandledKeyEvent(webView, keyEvent);
        }
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        try {
            this.f260.shouldInterceptRequest(webView, str);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("GFToa0FqGl59S85mfyMARDhI/3YTORtfKEr+TV0+FkI+Q+pwYS8CRThV7g==\n", "XSaaBDNKczA=\n"), th, false);
        }
        WebViewClient webViewClient = this.f261;
        return webViewClient != null ? webViewClient.shouldInterceptRequest(webView, str) : super.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        try {
            this.f260.shouldOverrideKeyEvent(webView, keyEvent);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("kAbhpS0AI071GceoE0k5VLAa9rh/UyJPoBj3hSlFOFK8EPaBOlkPVrAa5w==\n", "1XSTyl8gSiA=\n"), th, false);
        }
        WebViewClient webViewClient = this.f261;
        return webViewClient != null ? webViewClient.shouldOverrideKeyEvent(webView, keyEvent) : super.shouldOverrideKeyEvent(webView, keyEvent);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return m1024(webView, str, false);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean m1024(WebView webView, String str, boolean z) {
        try {
            if (this.f260.shouldOverrideUrlLoading(webView, str) || z) {
                WebViewClient webViewClient = this.f261;
                if (webViewClient instanceof C3480e0) {
                    ((C3480e0) webViewClient).m1024(webView, str, true);
                }
                return true;
            }
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("ByncrHIn93ZiNvqhTG7tbCc1y7EgdPZ3NzfKjHZi7GorP8uWcmvSdyM/x61nL+tqLnI=\n", "QluuwwAHnhg=\n"), th, false);
        }
        WebViewClient webViewClient2 = this.f261;
        if (webViewClient2 != null && !webViewClient2.getClass().equals(WebViewClient.class)) {
            try {
                return this.f261.shouldOverrideUrlLoading(webView, str);
            } catch (Throwable th2) {
                AbstractC1003.m1592(f259, StringFog.decrypt("jju1mWaMFCbrJIiEfcsUJoglrpN62F07oyaymnDjCy25O66ScfkPJIcmppJ9whpgvjur3w==\n", "y0nH9hSsfUg=\n"), th2, false);
            }
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return m1023(webView, webResourceRequest, false);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        try {
            this.f260.onReceivedError(webView, webResourceRequest, webResourceError);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("tL0tGJCXvE3RogsVrt6mV5ShOgXC2LtxlKw6HpTSsWaDvTAF\n", "8c9fd+K31SM=\n"), th, false);
        }
        WebViewClient webViewClient = this.f261;
        if (webViewClient != null) {
            webViewClient.onReceivedError(webView, webResourceRequest, webResourceError);
        } else {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        }
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        try {
            this.f260.shouldInterceptRequest(webView, webResourceRequest);
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("LYIf9VhW+l1InTn4Zh/gRw2eCOgKBftcHZwJ00QC9kELlR3ueBPiRg2DGQ==\n", "aPBtmip2kzM=\n"), th, false);
        }
        WebViewClient webViewClient = this.f261;
        if (webViewClient != null) {
            return webViewClient.shouldInterceptRequest(webView, webResourceRequest);
        }
        return super.shouldInterceptRequest(webView, webResourceRequest);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean m1023(WebView webView, WebResourceRequest webResourceRequest, boolean z) {
        try {
            if (this.f260.shouldOverrideUrlLoading(webView, webResourceRequest) || z) {
                WebViewClient webViewClient = this.f261;
                if (webViewClient instanceof C3480e0) {
                    ((C3480e0) webViewClient).m1023(webView, webResourceRequest, true);
                }
                return true;
            }
        } catch (Throwable th) {
            AbstractC1003.m1592(f259, StringFog.decrypt("aSFOYqhMQ6IMPmhvlgVZuEk9WX/6H0KjWT9YQqwJWL5FN1lYqABmo003VWO9RFipXSZZfq5F\n", "LFM8DdpsKsw=\n"), th, false);
        }
        WebViewClient webViewClient2 = this.f261;
        if (webViewClient2 != null) {
            try {
                return webViewClient2.shouldOverrideUrlLoading(webView, webResourceRequest);
            } catch (Throwable th2) {
                AbstractC1003.m1592(f259, StringFog.decrypt("BlIxW6p9FKZjTQxGsToUpgBMKlG2KV27K082WLwSC60xUipQvQgPpA9PIlCxMxrgMUUyQb0uCeE=\n", "QyBDNNhdfcg=\n"), th2, false);
            }
        }
        return super.shouldOverrideUrlLoading(webView, webResourceRequest);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003e A[Catch: Exception -> 0x001b, TRY_LEAVE, TryCatch #0 {Exception -> 0x001b, blocks: (B:3:0x0001, B:19:0x002c, B:20:0x003b, B:22:0x003e, B:8:0x0011, B:13:0x001d), top: B:26:0x0001 }] */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0429
    /* JADX INFO: renamed from: ﾒ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object mo1012(com.ironsource.adqualitysdk.sdk.i.C0048 r3, java.lang.String r4, java.util.ArrayList r5, com.ironsource.adqualitysdk.sdk.i.C0875 r6, com.ironsource.adqualitysdk.sdk.i.C0915 r7) {
        /*
            r2 = this;
            r5 = 0
            int r6 = r4.hashCode()     // Catch: java.lang.Exception -> L1b
            r0 = 368095040(0x15f0af40, float:9.7211724E-26)
            r1 = 1
            if (r6 == r0) goto L1d
            r0 = 381550901(0x16be0135, float:3.0696917E-25)
            if (r6 == r0) goto L11
            goto L27
        L11:
            java.lang.String r6 = com.ironsource.adqualitysdk.sdk.i.C3480e0.f258     // Catch: java.lang.Exception -> L1b
            boolean r6 = r4.equals(r6)     // Catch: java.lang.Exception -> L1b
            if (r6 == 0) goto L27
            r6 = 0
            goto L28
        L1b:
            r6 = move-exception
            goto L41
        L1d:
            java.lang.String r6 = com.ironsource.adqualitysdk.sdk.i.C3480e0.f257     // Catch: java.lang.Exception -> L1b
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
            java.lang.String r0 = com.ironsource.adqualitysdk.sdk.i.C3480e0.f259     // Catch: java.lang.Exception -> L1b
            r6.<init>(r3, r7, r0, r4)     // Catch: java.lang.Exception -> L1b
            java.lang.String r7 = r3.m1060()     // Catch: java.lang.Exception -> L1b
            r6.m1421(r7)     // Catch: java.lang.Exception -> L1b
            goto L5d
        L3b:
            android.webkit.WebViewClient r3 = r2.f260     // Catch: java.lang.Exception -> L1b
            return r3
        L3e:
            android.webkit.WebViewClient r3 = r2.f261     // Catch: java.lang.Exception -> L1b
            return r3
        L41:
            java.lang.String r3 = r3.m1060()
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r0 = "XOiRtjSPzOBw9ob5I9fe62zuirchj+zte8yKvDHs1+F89JedI8zU+njujKtmwdr8cOyG+SvKz+B2\n/sP+\n"
            java.lang.String r1 = "GZrj2Uavu4g=\n"
            java.lang.StringBuilder r4 = com.ironsource.adqualitysdk.sdk.i.AbstractC0594.m1349(r0, r1, r7, r4)
            java.lang.String r7 = "gg==\n"
            java.lang.String r0 = "pT4FLzogyjc=\n"
            java.lang.String r4 = com.ironsource.adqualitysdk.sdk.i.AbstractC0829.m1456(r7, r0, r4)
            com.ironsource.adqualitysdk.sdk.i.AbstractC0923.m1543(r3, r4, r6, r5)
        L5d:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C3480e0.mo1012(com.ironsource.adqualitysdk.sdk.i.İ, java.lang.String, java.util.ArrayList, com.ironsource.adqualitysdk.sdk.i.ﭘ, com.ironsource.adqualitysdk.sdk.i.ﹲ):java.lang.Object");
    }
}
