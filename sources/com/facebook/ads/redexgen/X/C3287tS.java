package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.vungle.ads.internal.protos.Sdk;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tS, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3287tS extends WebViewClient {
    public static byte[] A05;
    public final WeakReference<C1643Hi> A02;
    public final WeakReference<InterfaceC3284tP> A03;
    public final WeakReference<C3279tK> A04;
    public final InterfaceC3283tO A01 = new InterfaceC3283tO() { // from class: com.facebook.ads.redexgen.X.F5
        @Override // com.facebook.ads.redexgen.X.InterfaceC3283tO
        public final boolean ABN(String str) {
            return C3287tS.A04(str);
        }
    };
    public WeakReference<InterfaceC3285tQ> A00 = new WeakReference<>(null);

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 97);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{54, 55, 68, 74, 73, 15, 55, 65, 54, 67, 64, 39, 52, 37, 39, 41, 58, 47, 60, 47, 58, 63, 51, 64, 54, 68, 65, 59, 54, 0, 59, 64, 70, 55, 64, 70, 0, 51, 53, 70, 59, 65, 64, 0, 40, 27, 23, 41, 9, 22, 12, 26, 23, 17, 12, -42, 17, 22, 28, 13, 22, 28, -42, 11, 9, 28, 13, 15, 23, 26, 33, -42, -22, -6, -9, -1, -5, -23, -22, -12, -19, 7, 23, 20, 28, 24, 10, 23, 4, 11, 6, 17, 17, 7, 6, 8, 16, 4, 26, 23, 17, -54, -57, -38, -57, 49, 54, 60, 45, 54, 60, -36, -39, -45, -95, -121, -30, -48, -51, -54, -31, -44, -48, -30};
    }

    public C3287tS(WeakReference<C1643Hi> weakReference, WeakReference<InterfaceC3284tP> weakReference2, WeakReference<C3279tK> weakReference3) {
        this.A02 = weakReference;
        this.A03 = weakReference2;
        this.A04 = weakReference3;
    }

    private void A02(String str, C1643Hi c1643Hi) {
        c1643Hi.A08().ABz(A00(11, 11, 101), AbstractC2811lf.A09, new C2812lg(A00(111, 5, 6) + str));
    }

    private boolean A03(WebView webView, String str) {
        boolean zA13;
        String strA00;
        String strA002;
        String strA003;
        Intent intent;
        String strA004 = A00(Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, 8, 10);
        C1643Hi c1643Hi = this.A02.get();
        if (c1643Hi != null) {
            if ((F4.A0A && (TextUtils.isEmpty(str) || A00(0, 11, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE).equals(str))) || !this.A01.ABN(str)) {
                return true;
            }
            try {
                Uri uri = AbstractC3036pP.A00(str);
                String scheme = uri.getScheme();
                try {
                    zA13 = C2888mv.A13(c1643Hi);
                    strA00 = A00(48, 33, 71);
                    strA002 = A00(22, 26, 113);
                    strA003 = A00(105, 6, 103);
                } catch (Exception e) {
                    c1643Hi.A08().AC0(strA004, AbstractC2811lf.A2d, new C2812lg(e));
                    c1643Hi.A0F().AAg(e.toString());
                }
                if (zA13) {
                    if (!F4.A0C.contains(scheme) && !A00(101, 4, 5).equals(scheme)) {
                        if (strA003.equalsIgnoreCase(scheme)) {
                            intent = Intent.parseUri(str, 1);
                            intent.setComponent(null);
                            intent.setSelector(null);
                        } else {
                            intent = new Intent(strA002, uri);
                        }
                        intent.addCategory(strA00);
                        if (Build.VERSION.SDK_INT >= 30) {
                            intent.setFlags(268436480);
                        } else {
                            intent.setFlags(268435456);
                        }
                        try {
                            if (!C3022p8.A0F(c1643Hi, intent)) {
                                A02(str, c1643Hi);
                            }
                            return true;
                        } catch (C3020p6 unused) {
                            if (strA003.equals(scheme)) {
                                String stringExtra = intent.getStringExtra(A00(81, 20, 68));
                                if (!TextUtils.isEmpty(stringExtra)) {
                                    if (!C3022p8.A0F(c1643Hi, new Intent(strA002, AbstractC3036pP.A00(stringExtra)))) {
                                        A02(str, c1643Hi);
                                    }
                                    return true;
                                }
                            }
                            C2812lg c2812lg = new C2812lg(A00(111, 5, 6) + str);
                            c2812lg.A05(1);
                            c1643Hi.A08().AC0(A00(11, 11, 101), AbstractC2811lf.A06, c2812lg);
                            return true;
                        }
                    }
                    return false;
                }
                if (!F4.A0A || !strA003.equalsIgnoreCase(scheme)) {
                    if ((F4.A0A && AbstractC3075q2.A04(str)) || !F4.A0C.contains(scheme)) {
                        return C3022p8.A0F(c1643Hi, new Intent(strA002, uri));
                    }
                } else {
                    Intent uri2 = Intent.parseUri(str, 1);
                    uri2.addCategory(strA00);
                    uri2.setComponent(null);
                    uri2.setSelector(null);
                    PackageManager packageManager = c1643Hi.getPackageManager();
                    if (packageManager != null && packageManager.resolveActivity(uri2, 65536) != null && C3022p8.A0F(c1643Hi, uri2)) {
                        webView.goBack();
                        return true;
                    }
                }
                return false;
            } catch (SecurityException e2) {
                c1643Hi.A08().AC0(strA004, AbstractC2811lf.A2d, new C2812lg(e2));
                return true;
            }
        }
        return false;
    }

    public static /* synthetic */ boolean A04(String str) {
        return true;
    }

    public final void A05(WeakReference<InterfaceC3285tQ> weakReference) {
        this.A00 = weakReference;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        C3279tK timingLogger = this.A04.get();
        if (timingLogger != null) {
            timingLogger.A03();
        }
        InterfaceC3284tP interfaceC3284tP = this.A03.get();
        if (interfaceC3284tP != null) {
            interfaceC3284tP.AGC(str);
        }
        InterfaceC3285tQ interfaceC3285tQ = this.A00.get();
        if (interfaceC3285tQ != null) {
            interfaceC3285tQ.AE7(webView.canGoBack());
            interfaceC3285tQ.AF0(webView.canGoForward());
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        InterfaceC3284tP listener = this.A03.get();
        if (listener != null) {
            listener.AGE(str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        C1643Hi c1643Hi = this.A02.get();
        if (c1643Hi != null) {
            StringBuilder sb = new StringBuilder();
            String strA00 = A00(0, 0, 27);
            String errorMessage = AbstractC3075q2.A01(i, sb.append(strA00).append(str).toString(), strA00 + str2);
            c1643Hi.A0F().AAd(errorMessage);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        C1643Hi c1643Hi = this.A02.get();
        if (c1643Hi != null) {
            int errorCode = webResourceError.getErrorCode();
            StringBuilder sb = new StringBuilder();
            String strA00 = A00(0, 0, 27);
            String errorMessage = AbstractC3075q2.A01(errorCode, sb.append(strA00).append((Object) webResourceError.getDescription()).toString(), strA00 + webResourceRequest.getUrl());
            c1643Hi.A0F().AAd(errorMessage);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        C1643Hi context = this.A02.get();
        if (context != null) {
            context.A0F().AAe();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        C1643Hi context = this.A02.get();
        if (context != null) {
            context.A0F().AAf();
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        AbstractC3292tX.A0D(AbstractC2811lf.A2e);
        InterfaceC3284tP listener = this.A03.get();
        if (listener != null) {
            listener.AGl();
            return true;
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return A03(webView, webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return A03(webView, str);
    }
}
