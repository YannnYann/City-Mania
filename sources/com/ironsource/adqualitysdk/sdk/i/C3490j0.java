package com.ironsource.adqualitysdk.sdk.i;

import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.j0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3490j0 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C3492k0 f278;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ WebView f279;

    public C3490j0(C3492k0 c3492k0, WebView webView) {
        this.f278 = c3492k0;
        this.f279 = webView;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        String strReplace;
        JSONObject jSONObject;
        C3492k0 c3492k0 = this.f278;
        c3492k0.getClass();
        String str = C3492k0.f283.f273;
        try {
            String strDecrypt = StringFog.decrypt("AjB+vBwTs1IGPXagCRixSxw2ag==\n", "WWs38lZW8AY=\n");
            C0316 c0316 = ((C0893) AbstractC0885.m1491()).f3418;
            synchronized (c0316) {
                jSONObject = c0316.f2612;
            }
            String strReplace2 = str.replace(strDecrypt, jSONObject.optString(StringFog.decrypt("K99p\n", "QbYHTqxdG20=\n"), c0316.f1848)).replace(StringFog.decrypt("byPIWuWKurVrMthI9Q==\n", "NHiLFajH9fs=\n"), C3492k0.f283.f272);
            strReplace = (c3492k0.f285 ? strReplace2.replace(StringFog.decrypt("su8Un7rqq1Cj5wya\n", "6bRRx+646g8=\n"), C3492k0.f283.f271) : strReplace2.replace(StringFog.decrypt("GjxLLWgCDdkLNFMo\n", "QWcOdTxQTIY=\n"), "")).replace(StringFog.decrypt("yWRB+zFWjojGcFDrNUuWlg==\n", "kj8CtH8Yy8s=\n"), c3492k0.f286);
        } catch (Throwable th) {
            AbstractC0182.m1147(C3492k0.f284, StringFog.decrypt("kfRJRRbgAuj04V5eLrM/6Z3oUU8HtFGm\n", "1IY7KmTAa4Y=\n") + th.getLocalizedMessage());
            strReplace = str;
        }
        AbstractC0272.m1210(new C3488i0(this, AbstractC0345.m1244(strReplace.getBytes())));
    }
}
