package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Handler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.android.gms.ads.AdSize;
import com.ironsource.InterfaceC3681k1;
import com.vungle.ads.internal.protos.Sdk;
import java.io.ByteArrayInputStream;
import java.lang.ref.WeakReference;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3297tc extends WebViewClient {
    public static byte[] A0A;
    public static String[] A0B = {"dutFbLT0SJ7F8tp2omMpyLiOAYVHs", "eQZAVGISCoayl61p0XGnY6zF77MwgQ", "oGFUl4XXjxY0ysGh9uHTM5Bs0jmGzYfS", "nw1FzUJk4sGWtK2y2h7dLK31U1IoYOTN", "MQohGS04hBsrr", "rz5lEB2hDVgjaI0SM6Y5mQ12Lmz2ba", "Gakm8d7sZsS0Gn2hVSl3GYNL92Z8TRo6", "Ty7sQNcmLenaFb4R0BQbvtPuiVx7Fgst"};
    public boolean A00 = false;
    public final C1643Hi A01;
    public final WeakReference<C1579Ev> A02;
    public final WeakReference<InterfaceC3295ta> A03;
    public final WeakReference<AtomicBoolean> A04;
    public final WeakReference<C3102qT> A05;
    public final WeakReference<C2224c2> A06;
    public final AtomicInteger A07;
    public final AtomicReference<String> A08;
    public final boolean A09;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 74);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0A = new byte[]{92, 126, 124, 119, 122, 50, 92, 112, 113, 107, 109, 112, 115, 83, 114, 121, 126, 114, 115, 55, 4, 19, 30, 7, 19, 6, 27, 28, 21, 82, 39, 32, 59, 82, 34, 19, 6, 26, 82, 20, 29, 0, 82, 52, 27, 30, 23, 82, 51, 17, 17, 23, 1, 1, 82, 71, 122, 118, 112, 99, 34, 102, 99, 118, 99, 56, 34, 53, 41, 41, 45, 93, 56, 15, 15, 18, 15, 53, 14, 19, 1, 6, 5, 64, 50, 5, 17, 21, 5, 19, 20, 64, 6, 15, 18, 64, 38, 9, 12, 5, 64, 33, 3, 3, 5, 19, 19, 64, 49, 10, 23, 5, 2, 1, 68, 54, 1, 21, 17, 1, 23, 16, 68, 2, 11, 22, 68, 34, 13, 8, 1, 68, 37, 7, 7, 1, 23, 23, 68, 0, 1, 10, 13, 1, 0, 98, 99, 104, 111, 99, 98, 89, 115, 116, 111, 89, 118, 103, 114, 110, 34, 37, 50, 45, 39, 43, 42, 106, 45, 39, 43, 19, 28, 25, 16, 32, 43, 58, 116, 116, 11, 28, 28, 17, 11, 3, 30, 26, 23, 17, 28, 11, 29, 30, 1, 0, 29, 11, 118, 119, 53, 107, 108, 119, 106, 125, 120, 111, 123, 127, 111, 121, 126, 85, 99, 110, 126, 111, 114, 126, 37, 122, 102, 107, 99, 100, 10, 29, 16, 21, 24, 35, 12, 29, 8, 20, 27, 9, 14, 51, 26, 5, 9, 27};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static boolean A09(String str, List<String> list) {
        String lowerCase = str.toLowerCase(Locale.getDefault());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            if (lowerCase.startsWith(it.next())) {
                return true;
            }
        }
        return false;
    }

    static {
        A02();
    }

    public C3297tc(C1643Hi c1643Hi, WeakReference<InterfaceC3295ta> weakReference, WeakReference<C2224c2> weakReference2, WeakReference<C3102qT> weakReference3, WeakReference<AtomicBoolean> checkAssetsByJavascriptBridge, WeakReference<C1579Ev> weakReference4, AtomicInteger atomicInteger, AtomicReference<String> requestId, boolean z) {
        this.A01 = c1643Hi;
        this.A03 = weakReference;
        this.A06 = weakReference2;
        this.A05 = weakReference3;
        this.A04 = checkAssetsByJavascriptBridge;
        this.A02 = weakReference4;
        this.A07 = atomicInteger;
        this.A08 = requestId;
        this.A09 = z;
    }

    private WebResourceResponse A00() {
        return new WebResourceResponse(A01(Sdk.SDKError.Reason.AD_RESPONSE_INVALID_TEMPLATE_TYPE_VALUE, 10, 64), StandardCharsets.UTF_8.name(), InterfaceC3681k1.a.b.c, A01(13, 6, 93), Collections.singletonMap(A01(0, 13, 85), A01(198, 8, 82)), new ByteArrayInputStream(A01(13, 6, 93).getBytes()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03(int i, String str) {
        if (A01(175, 23, 4).equals(str)) {
            this.A01.A0F().AMH();
            return;
        }
        this.A01.A0F().AMI(i, str);
        if (A0B[3].charAt(13) != 'K') {
            throw new RuntimeException();
        }
        A0B[2] = "XsLUUp7nqHFiRWgs1yCq1ROdvH3XZYI8";
        if (this.A03.get() != null) {
            this.A03.get().AEw(i, str);
        }
    }

    private final void A04(WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        if (webResourceRequest.getUrl().toString().toLowerCase(Locale.US).contains(A01(AdSize.WIDE_SKYSCRAPER_WIDTH, 11, 14))) {
            return;
        }
        this.A01.A0F().AMM(webResourceResponse.getStatusCode(), AbstractC3075q2.A01(webResourceResponse.getStatusCode(), A01(67, 10, 55), A01(0, 0, 49) + webResourceRequest.getUrl()));
    }

    private void A06(String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A01(145, 15, 76), str);
            jSONObject.put(A01(Sdk.SDKError.Reason.PRIVACY_ICON_FALLBACK_ERROR_VALUE, 10, 54), str2);
            jSONObject.put(A01(206, 10, 64), this.A08.get());
        } catch (JSONException unused) {
        }
        if (this.A01 != null) {
            this.A01.A08().ABz(A01(236, 8, 38), AbstractC2811lf.A2c, new C2812lg(AdErrorType.WEB_VIEW_CACHE_FILE_WAS_DENIED.getDefaultErrorMessage(), A01(55, 12, 72) + jSONObject.toString()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean A07(android.net.Uri r8) {
        /*
            r7 = this;
            java.lang.String r4 = r8.getPath()
            java.lang.String r5 = r8.getScheme()
            if (r4 == 0) goto L94
            if (r5 == 0) goto L94
            r2 = 171(0xab, float:2.4E-43)
            r1 = 4
            r0 = 63
            java.lang.String r3 = A01(r2, r1, r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C3297tc.A0B
            r0 = 4
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 8
            if (r1 == r0) goto Lac
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3297tc.A0B
            java.lang.String r1 = "e0NZ0IpncKNbspdHVbaE77hYKi1pXgCT"
            r0 = 6
            r2[r0] = r1
            boolean r0 = r5.equals(r3)
            if (r0 == 0) goto L94
            boolean r0 = com.facebook.ads.internal.api.BuildConfigApi.isDebug()
            if (r0 == 0) goto L4f
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r2 = 19
            r1 = 36
            r0 = 56
            java.lang.String r0 = A01(r2, r1, r0)
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.StringBuilder r0 = r0.append(r4)
            r0.toString()
        L4f:
            com.facebook.ads.redexgen.X.Hi r0 = r7.A01
            java.util.List r5 = com.facebook.ads.redexgen.X.C2771kz.A09(r0)
            boolean r6 = A09(r4, r5)
            if (r6 != 0) goto L93
            boolean r0 = com.facebook.ads.internal.api.BuildConfigApi.isDebug()
            if (r0 == 0) goto L7b
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r2 = 77
            r1 = 31
            r0 = 42
            java.lang.String r0 = A01(r2, r1, r0)
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.StringBuilder r0 = r0.append(r4)
            r0.toString()
        L7b:
            java.lang.String r3 = com.facebook.ads.redexgen.X.C1579Ev.A01()
            r2 = 108(0x6c, float:1.51E-43)
            r1 = 37
            r0 = 46
            java.lang.String r0 = A01(r2, r1, r0)
            android.util.Log.w(r3, r0)
            java.lang.String r0 = r5.toString()
            r7.A06(r4, r0)
        L93:
            return r6
        L94:
            r3 = 1
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C3297tc.A0B
            r0 = 7
            r1 = r1[r0]
            r0 = 29
            char r1 = r1.charAt(r0)
            r0 = 83
            if (r1 == r0) goto Lac
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3297tc.A0B
            java.lang.String r1 = "yXDUwGubOAV6buqiBYARa4GXiUTiAdtJ"
            r0 = 2
            r2[r0] = r1
            return r3
        Lac:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3297tc.A07(android.net.Uri):boolean");
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        this.A01.A0F().AMJ(this.A02.get() != null);
        if (this.A02.get() != null && this.A04.get() != null && !this.A04.get().get()) {
            this.A02.get().A0K();
        }
        if (this.A03.get() != null) {
            this.A03.get().AGD();
        }
        this.A00 = true;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.A01.A0F().AMK();
        new Handler().postDelayed(new C1580Ew(this), this.A07.get());
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        this.A00 = true;
        A03(i, str);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        boolean zA11 = C2888mv.A11(this.A01);
        String strA01 = A01(0, 0, 49);
        if (zA11 || webResourceRequest.isForMainFrame()) {
            this.A00 = true;
            A03(webResourceError.getErrorCode(), strA01 + ((Object) webResourceError.getDescription()));
        } else {
            this.A01.A0F().AML(AbstractC3075q2.A01(webResourceError.getErrorCode(), strA01 + ((Object) webResourceError.getDescription()), strA01 + webResourceRequest.getUrl()));
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        A04(webResourceRequest, webResourceResponse);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        this.A01.A0F().AMN();
        sslErrorHandler.cancel();
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        AbstractC3292tX.A0D(AbstractC2811lf.A2b);
        InterfaceC3295ta adWebViewListener = this.A03.get();
        if (adWebViewListener != null) {
            adWebViewListener.AHt();
            return true;
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url = webResourceRequest.getUrl();
        if (this.A09 && !A07(url)) {
            WebResourceResponse webResourceResponseA00 = A00();
            A04(webResourceRequest, webResourceResponseA00);
            return webResourceResponseA00;
        }
        return super.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (this.A03.get() != null) {
            this.A03.get().AEN(str, new C3303ti().A05(this.A06.get()).A04(this.A05.get()).A07());
            return true;
        }
        return true;
    }
}
