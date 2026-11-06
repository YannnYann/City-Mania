package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.b0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractViewOnLayoutChangeListenerC3474b0 extends AbstractC0822 implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static final String f245 = StringFog.decrypt("HG9o8J5KgicvQmvIk0OQFA==\n", "SwoKpvcv9WY=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public C3492k0 f247;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public C3498n0 f249;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public boolean f250;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public boolean f251;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public String f252;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public List f253;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final WeakHashMap f248 = new WeakHashMap();

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public final ArrayList f246 = new ArrayList();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m1018(AbstractViewOnLayoutChangeListenerC3474b0 abstractViewOnLayoutChangeListenerC3474b0, String str) {
        abstractViewOnLayoutChangeListenerC3474b0.getClass();
        try {
            String strDecode = URLDecoder.decode(str, StringFog.decrypt("ztrGqRg=\n", "m46AhCABQh0=\n"));
            if (!TextUtils.isEmpty(strDecode)) {
                return new JSONObject(strDecode);
            }
        } catch (Exception e) {
            String str2 = f245;
            AbstractC0182.m1156(str2, str2, StringFog.decrypt("4HmP1XY9bcHRf5TUYz1uxdFq\n", "pQv9ugQdCqQ=\n"), e, null, false);
        }
        return new JSONObject();
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        try {
            if (view instanceof WebView) {
                WebView webView = (WebView) view;
                if (this.f248.containsKey(webView)) {
                    m1019(webView);
                }
            }
        } catch (Throwable th) {
            AbstractC1003.m1592(f245, StringFog.decrypt("zjN+g9xi2aqrLmKgzzvfsf8CZI3AJdU=\n", "i0EM7K5CsMQ=\n"), th, false);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0822, com.ironsource.adqualitysdk.sdk.i.InterfaceC0454
    /* JADX INFO: renamed from: ﻛ */
    public final void mo985(JSONObject jSONObject, View view, Object obj) {
        jSONObject.remove(AbstractC0047.f625);
        super.mo985(jSONObject, (WebView) view, obj);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public abstract Object mo1020(WebView webView);

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m1019(WebView webView) {
        C3498n0 c3498n0 = (C3498n0) this.f248.get(webView);
        if (this.f251 && c3498n0.f364.f265) {
            if (!(x0.m1041(webView) instanceof C3480e0)) {
                c3498n0.m1026();
            }
            C3492k0 c3492k0 = this.f247;
            c3492k0.getClass();
            try {
                AbstractC0272.m1211(new C3490j0(c3492k0, webView));
            } catch (Exception e) {
                AbstractC0182.m1147(C3492k0.f284, StringFog.decrypt("w89ntPvUhDXs2Hav4JqKe+zONa/m1Jo+5Ot8vv7OzQ==\n", "hr0V24n07Vs=\n") + e.getLocalizedMessage());
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1021(WebView webView) {
        if (webView == null || this.f248.containsKey(webView)) {
            return;
        }
        String strDecrypt = StringFog.decrypt("yf+s8ON8j+aH\n", "qJvPnIEXtck=\n");
        WeakHashMap weakHashMap = C3498n0.f362;
        C3498n0 c3498n0 = (C3498n0) weakHashMap.get(webView);
        if (c3498n0 == null) {
            c3498n0 = new C3498n0(webView, strDecrypt);
            weakHashMap.put(webView, c3498n0);
        }
        if (this.f249 == null) {
            this.f249 = c3498n0;
        }
        this.f248.put(webView, c3498n0);
        C3472a0 c3472a0 = new C3472a0(this);
        this.f246.add(c3472a0);
        c3498n0.f363.add(c3472a0);
        m1019(webView);
        webView.addOnLayoutChangeListener(this);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0822
    /* JADX INFO: renamed from: ﾒ */
    public final String mo966(Object obj) {
        return this.f252;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0822, com.ironsource.adqualitysdk.sdk.i.InterfaceC0454
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final void mo987(JSONObject jSONObject, WebView webView, Object obj) {
        if (webView != null) {
            try {
                jSONObject.put(AbstractC0047.f582, webView.getWindowToken() != null);
            } catch (JSONException unused) {
            }
        }
        super.mo987(jSONObject, webView, obj);
    }
}
