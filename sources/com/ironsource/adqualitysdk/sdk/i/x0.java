package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.Build;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class x0 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String f395 = StringFog.decrypt("yVFWu2tewVDqXVie\n", "njQ07QI7tgU=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static boolean f394 = true;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static boolean f393 = true;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static boolean f392 = true;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static boolean f391 = false;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static boolean f390 = false;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static w0 f389 = new w0();

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static w0 f388 = new w0();

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static WebViewClient m1041(WebView webView) {
        JSONObject jSONObject;
        if (Build.VERSION.SDK_INT >= 26) {
            C3500o0 c3500o0M1043 = m1043();
            synchronized (c3500o0M1043) {
                jSONObject = c3500o0M1043.f2612;
            }
            boolean z = true;
            if (jSONObject.optBoolean(StringFog.decrypt("zg7Wiw==\n", "qXmg6ILDRtI=\n"), true)) {
                Context context = webView.getContext();
                if (f393) {
                    try {
                        f393 = false;
                        WebView webView2 = new WebView(context);
                        C3480e0 c3480e0 = new C3480e0(null, new C3505r0());
                        webView2.setWebViewClient(c3480e0);
                        if (c3480e0 != webView2.getWebViewClient()) {
                            z = false;
                        }
                        f391 = z;
                    } catch (Throwable th) {
                        AbstractC1003.m1592(f395, StringFog.decrypt("B4vJIphY9LknmtAkhB+3uCTZyCyHHbeGJ5vtJI8P1L0rnNU5\n", "Qvm7Tep4l9E=\n"), th, false);
                    }
                }
                if (f391) {
                    return webView.getWebViewClient();
                }
            }
        }
        m1047(webView.getContext());
        InterfaceC0724 interfaceC0724M1045 = m1045(webView, new u0(), f389);
        if (interfaceC0724M1045 != null) {
            return (WebViewClient) ((C0690) interfaceC0724M1045).m1420();
        }
        throw new RuntimeException(StringFog.decrypt("qvsgjhUjXWPJ8jyMFW0tcovCPIcGDhZ+jPohwhckH3uN\n", "6ZRV4nFNehc=\n"));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static synchronized C3500o0 m1043() {
        return ((C0893) AbstractC0885.m1491()).f3420;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static WebChromeClient m1042(WebView webView) {
        JSONObject jSONObject;
        if (Build.VERSION.SDK_INT >= 26) {
            C3500o0 c3500o0M1043 = m1043();
            synchronized (c3500o0M1043) {
                jSONObject = c3500o0M1043.f2612;
            }
            if (jSONObject.optBoolean(StringFog.decrypt("W3uwpw==\n", "PAzTxAOaMI4=\n"), true)) {
                Context context = webView.getContext();
                if (f392) {
                    f392 = false;
                    WebView webView2 = new WebView(context);
                    W w = new W(new s0());
                    webView2.setWebChromeClient(w);
                    f390 = w == webView2.getWebChromeClient();
                }
                if (f390) {
                    return webView.getWebChromeClient();
                }
            }
        }
        m1047(webView.getContext());
        InterfaceC0724 interfaceC0724M1045 = m1045(webView, new v0(), f388);
        if (interfaceC0724M1045 != null) {
            return (WebChromeClient) ((C0690) interfaceC0724M1045).m1420();
        }
        throw new RuntimeException(StringFog.decrypt("b7SYa52l/xgMvYRpneuPCU6YhXWWpr0vQLKIaY3rvgVJt4k=\n", "LNvtB/nL2Gw=\n"));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1047(Context context) {
        if (f394) {
            f394 = false;
            try {
                WebView webView = new WebView(context);
                C3480e0 c3480e0 = new C3480e0(null, new C3502p0());
                webView.setWebViewClient(c3480e0);
                W w = new W(new C3504q0());
                webView.setWebChromeClient(w);
                f389 = m1044(webView, c3480e0, new u0());
                f388 = m1044(webView, w, new v0());
            } catch (Throwable th) {
                AbstractC1003.m1592(f395, StringFog.decrypt("dtgBHVGpkWFWyRgbTe7Sb1zYUxtN55d7E8kfG0bnhno=\n", "M6pzciOJ8gk=\n"), th, false);
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static w0 m1044(WebView webView, InterfaceC0429 interfaceC0429, InterfaceC0717 interfaceC0717) {
        w0 w0Var = new w0();
        C0975 c0975 = m1043().f2611;
        JSONObject jSONObject = c0975.f3676;
        String str = c0975.f3682;
        List listM1571 = c0975.f3684;
        String str2 = AbstractC0962.f3633;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray != null) {
            listM1571 = AbstractC0962.m1571(jSONArrayOptJSONArray);
        }
        C0975 c09752 = m1043().f2611;
        InterfaceC0724 interfaceC0724M1046 = m1046(webView, interfaceC0717, listM1571, c09752.f3676.optInt(c09752.f3681, 7));
        if (interfaceC0724M1046 != null) {
            Object objM1420 = ((C0690) interfaceC0724M1046).m1420();
            if (objM1420 == interfaceC0429) {
                w0Var.f385 = true;
                return w0Var;
            }
            C0975 c09753 = m1043().f2611;
            JSONObject jSONObject2 = c09753.f3676;
            String str3 = c09753.f3680;
            List listM15712 = c09753.f3683;
            JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray(str3);
            if (jSONArrayOptJSONArray2 != null) {
                listM15712 = AbstractC0962.m1571(jSONArrayOptJSONArray2);
            }
            C0975 c09754 = m1043().f2611;
            InterfaceC0724 interfaceC0724M10462 = m1046(objM1420, interfaceC0717, listM15712, c09754.f3676.optInt(c09754.f3679, 2));
            if (interfaceC0724M10462 != null && ((C0690) interfaceC0724M10462).m1420() == interfaceC0429) {
                w0Var.f384 = true;
            }
        }
        return w0Var;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static InterfaceC0724 m1046(Object obj, InterfaceC0717 interfaceC0717, List list, int i) {
        C0564 c0564 = C0725.m1432().f2973;
        t0 t0Var = new t0(list);
        c0564.getClass();
        C0656 c0656 = new C0656();
        C0667 c0667 = c0656.f2695;
        c0667.f2723 = -1;
        c0656.f2694 = interfaceC0717;
        c0656.f2693 = t0Var;
        c0667.f2728 = list;
        c0667.f2727 = i;
        c0667.f2730 = interfaceC0717.getClass();
        c0656.f2695.f2729 = t0.class;
        return c0564.m1321(obj, c0656);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static InterfaceC0724 m1045(WebView webView, InterfaceC0717 interfaceC0717, w0 w0Var) {
        Object objM1420;
        try {
            if (!w0Var.f385 && !w0Var.f384) {
                return null;
            }
            C0975 c0975 = m1043().f2611;
            JSONObject jSONObject = c0975.f3676;
            String str = c0975.f3682;
            List listM1571 = c0975.f3684;
            String str2 = AbstractC0962.f3633;
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
            if (jSONArrayOptJSONArray != null) {
                listM1571 = AbstractC0962.m1571(jSONArrayOptJSONArray);
            }
            C0975 c09752 = m1043().f2611;
            InterfaceC0724 interfaceC0724M1046 = m1046(webView, interfaceC0717, listM1571, c09752.f3676.optInt(c09752.f3681, 7));
            if (w0Var.f384 && interfaceC0724M1046 != null && (objM1420 = ((C0690) interfaceC0724M1046).m1420()) != null && !objM1420.getClass().equals(((C0690) interfaceC0724M1046).f2801.getType())) {
                C0975 c09753 = m1043().f2611;
                JSONObject jSONObject2 = c09753.f3676;
                String str3 = c09753.f3680;
                List listM15712 = c09753.f3683;
                JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray(str3);
                if (jSONArrayOptJSONArray2 != null) {
                    listM15712 = AbstractC0962.m1571(jSONArrayOptJSONArray2);
                }
                C0975 c09754 = m1043().f2611;
                return m1046(objM1420, interfaceC0717, listM15712, c09754.f3676.optInt(c09754.f3679, 2));
            }
            return interfaceC0724M1046;
        } catch (Throwable th) {
            AbstractC1003.m1592(f395, StringFog.decrypt("Py27fdQdeeQOK6B8wR197RM6p2aGW3fkFjs=\n", "el/JEqY9HoE=\n"), th, false);
            return null;
        }
    }
}
