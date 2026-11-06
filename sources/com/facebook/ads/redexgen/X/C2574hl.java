package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2574hl extends WebViewClient {
    public static byte[] A01;
    public static String[] A02 = {"hfMJ0frXuRQdVVGg5HhbkedMp84qvG2m", "353suYezQm1X4xGGmKd", "JSegO1TQToLz4SD5sG2", "wzs2neDsiDlXGMSMfb3", "O6PuLNBrYuNMqKQgURK12L6N", "9iUPqfJGnhoj94eJuJeS1Wm6njk1Rmvr", "BdwoSzPq3MvWa04biSMwYNzp8DFOBLqT", "enVVpEgx3aC4K8YdK2hdvlOQVko"};
    public final /* synthetic */ C1930Tb A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 124);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{3, 4, 18, 2, 17, 8, 15, 19, 8, 14, 13, -11, -6, -11, -44, 3, -14, 4, -7, 12, 17, 12, 7, 14, 17, 22, 17, 27, 16, 7, 22, 9, 30, 17, 15, 9, 28, 17, 23, 22, 47, 60, 60, 57, 60, 13, 57, 46, 47, 37, 32, 53, 40, 34, 46, 45, -19, 40, 34, 46, 63, 75, 75, 71, 54, 60, 73, 73, 70, 73, -9, -7, -16, -10, -7, -16, -5, 0, 48, 45, 39};
    }

    static {
        A01();
    }

    public C2574hl(C1930Tb c1930Tb) {
        this.A00 = c1930Tb;
    }

    private void A02(int i, String str, String str2, boolean z) {
        if (z) {
            this.A00.A0S();
        }
        this.A00.A0I.A04(EnumC2916nN.A0Q, null);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(40, 9, 78), i);
            jSONObject.put(A00(0, 11, 35), str);
            jSONObject.put(A00(78, 3, 63), str2);
        } catch (JSONException unused) {
        }
        String string = jSONObject.toString();
        this.A00.A0G.A0F().A6n(string);
        this.A00.A0J.A04(AbstractC2811lf.A16, string);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        if (this.A00.A0A != null) {
            this.A00.A0n(A00(19, 21, 44));
        }
        this.A00.A0I.A04(EnumC2916nN.A0R, null);
        this.A00.A0G.A0F().A6o(C3101qS.A01(this.A00.A00));
        this.A00.A0S();
        this.A00.A0B = true;
        this.A00.A0G();
        if (this.A00.A05 != null) {
            this.A00.A05.AHu();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        if (Build.VERSION.SDK_INT < 23) {
            A02(i, str, str2, true);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        int errorCode = webResourceError.getErrorCode();
        StringBuilder sb = new StringBuilder();
        String strA00 = A00(0, 0, 48);
        A02(errorCode, sb.append(strA00).append((Object) webResourceError.getDescription()).toString(), strA00 + webResourceRequest.getUrl(), true);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        int statusCode;
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (webResourceRequest.getUrl().toString().toLowerCase(Locale.US).contains(A00(49, 11, 67))) {
            return;
        }
        if (webResourceResponse != null) {
            statusCode = webResourceResponse.getStatusCode();
        } else {
            statusCode = -1;
        }
        A02(statusCode, A00(60, 10, 91), A00(0, 0, 48) + webResourceRequest.getUrl(), false);
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(11, 8, 21), renderProcessGoneDetail.didCrash());
            jSONObject.put(A00(70, 8, 11), renderProcessGoneDetail.rendererPriorityAtExit());
        } catch (JSONException unused) {
        }
        String message = jSONObject.toString();
        this.A00.A0G.A0F().A6j(message);
        M1.A04(this.A00.A0E.A1r());
        if (this.A00.A06 != null) {
            UO uo = this.A00.A06;
            String[] strArr = A02;
            String message2 = strArr[1];
            if (message2.length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            A02[0] = "kv0KfCNN1XAdbICEJBZwu3dTiw7XNBbg";
            uo.AGZ();
            return true;
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        return C1I.A00(this.A00.A0G, this.A00.A0F, webResourceRequest, this.A00.A0M, this.A00.A0E.A2A());
    }
}
