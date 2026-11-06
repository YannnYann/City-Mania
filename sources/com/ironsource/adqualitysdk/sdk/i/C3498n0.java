package com.ironsource.adqualitysdk.sdk.i;

import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.n0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3498n0 implements InterfaceC0245 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final WeakHashMap f362;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final HashSet f363 = new HashSet();

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C3484g0 f364;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f365;

    static {
        StringFog.decrypt("V1Jyv1il2tVpRGSMX6Xf\n", "ADcQ6THArZk=\n");
        f362 = new WeakHashMap();
    }

    public C3498n0(WebView webView, String str) {
        this.f365 = str;
        C3484g0 c3484g0 = new C3484g0(webView);
        this.f364 = c3484g0;
        m1026();
        new C3496m0(this);
        WebView webView2 = (WebView) c3484g0.f267.get();
        if (webView2 != null) {
            try {
                x0.m1042(webView2);
            } catch (Exception e) {
                AbstractC1003.m1592(C3484g0.f264, StringFog.decrypt("P10+vPqwDFQOWyW977A8VBhsJKHn/Q5yFkYpvfw=\n", "ei9M04iQazE=\n"), (Throwable) e, false);
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1026() {
        C3484g0 c3484g0 = this.f364;
        C3494l0 c3494l0 = new C3494l0(this);
        WebView webView = (WebView) c3484g0.f267.get();
        if (webView != null) {
            try {
                C3480e0 c3480e0 = new C3480e0(x0.m1041(webView), c3494l0);
                c3484g0.f266 = new WeakReference(c3480e0);
                webView.setWebViewClient(c3480e0);
                c3484g0.f265 = true;
                return;
            } catch (Exception e) {
                AbstractC1003.m1592(C3484g0.f264, StringFog.decrypt("2s99AZF0iEvryWYAhHS4S/3rZguUF4NH+tN7\n", "n70PbuNU7y4=\n"), (Throwable) e, false);
            }
        }
        c3484g0.f265 = false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0245
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1014(WebView webView) {
        for (InterfaceC0245 interfaceC0245 : new HashSet(this.f363)) {
            if (interfaceC0245 != null) {
                interfaceC0245.mo1014(webView);
            }
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0245
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1016(WebView webView, String str, String str2) {
        for (InterfaceC0245 interfaceC0245 : new HashSet(this.f363)) {
            if (interfaceC0245 != null) {
                interfaceC0245.mo1016(webView, str, str2);
            }
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0245
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1017(WebView webView, String str, boolean z) {
        for (InterfaceC0245 interfaceC0245 : new HashSet(this.f363)) {
            if (interfaceC0245 != null) {
                interfaceC0245.mo1017(webView, str, z);
            }
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0245
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1015(WebView webView, String str) {
        for (InterfaceC0245 interfaceC0245 : new HashSet(this.f363)) {
            if (interfaceC0245 != null) {
                interfaceC0245.mo1015(webView, str);
            }
        }
    }
}
