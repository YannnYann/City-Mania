package com.ironsource.adqualitysdk.sdk.i;

import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Y extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ Z f235;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Object f236;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f237;

    public Y(Z z, String str, Object obj) {
        this.f235 = z;
        this.f237 = str;
        this.f236 = obj;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        WeakReference weakReference;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AbstractC0047.f613, this.f235.f240);
            jSONObject.put(AbstractC0047.f612, StringFog.decrypt("X7Y4\n", "KMBbtUEhW9U=\n"));
            jSONObject.put(AbstractC0047.f624, this.f237);
            if (this.f235.f239) {
                jSONObject.put(AbstractC0047.f623, true);
            }
        } catch (JSONException e) {
            AbstractC0182.m1147(StringFog.decrypt("ZvWT33xeYe5V2JDncVdz3Q==\n", "MZDxiRU7Fq8=\n"), StringFog.decrypt("FYa5Nd8OGGI1lb8zw0lbczydqDGNRAh/Ps7r\n", "UPTLWq0uexA=\n") + e.getLocalizedMessage());
        }
        Z z = this.f235;
        AbstractViewOnLayoutChangeListenerC3474b0 abstractViewOnLayoutChangeListenerC3474b0 = z.f238.f243;
        WebView webView = z.f241;
        C3498n0 c3498n0 = abstractViewOnLayoutChangeListenerC3474b0.f249;
        abstractViewOnLayoutChangeListenerC3474b0.mo994(jSONObject, webView, (c3498n0 == null || (weakReference = c3498n0.f364.f266) == null) ? null : (InterfaceC3482f0) weakReference.get(), this.f236);
    }
}
