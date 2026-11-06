package com.ironsource.adqualitysdk.sdk.i;

import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.a0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3472a0 implements InterfaceC0245 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ AbstractViewOnLayoutChangeListenerC3474b0 f243;

    public C3472a0(AbstractViewOnLayoutChangeListenerC3474b0 abstractViewOnLayoutChangeListenerC3474b0) {
        this.f243 = abstractViewOnLayoutChangeListenerC3474b0;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0245
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void mo1016(WebView webView, String str, String str2) {
        WeakReference weakReference;
        String strSubstring = str2.substring(0, str2.indexOf(63));
        String strSubstring2 = str2.substring(str2.indexOf(63) + 1);
        if (strSubstring.equals(StringFog.decrypt("S/k0kjcb\n", "OI1W8VZ+YP0=\n"))) {
            this.f243.m1019(webView);
            return;
        }
        if (strSubstring.equals(StringFog.decrypt("nAHvL8mc\n", "73WNTKj+Uac=\n"))) {
            JSONObject jSONObjectM1018 = AbstractViewOnLayoutChangeListenerC3474b0.m1018(this.f243, strSubstring2);
            AbstractViewOnLayoutChangeListenerC3474b0 abstractViewOnLayoutChangeListenerC3474b0 = this.f243;
            abstractViewOnLayoutChangeListenerC3474b0.mo987(jSONObjectM1018, webView, abstractViewOnLayoutChangeListenerC3474b0.mo1020(webView));
            return;
        }
        if (strSubstring.equals(StringFog.decrypt("dypEovfs\n", "BF4mwZaNMk4=\n"))) {
            JSONObject jSONObjectM10182 = AbstractViewOnLayoutChangeListenerC3474b0.m1018(this.f243, strSubstring2);
            AbstractViewOnLayoutChangeListenerC3474b0 abstractViewOnLayoutChangeListenerC3474b02 = this.f243;
            C3498n0 c3498n0 = abstractViewOnLayoutChangeListenerC3474b02.f249;
            abstractViewOnLayoutChangeListenerC3474b02.mo989(jSONObjectM10182, webView, (c3498n0 == null || (weakReference = c3498n0.f364.f266) == null) ? null : (InterfaceC3482f0) weakReference.get(), this.f243.mo1020(webView));
            return;
        }
        if (strSubstring.equals(StringFog.decrypt("DqidzzM9\n", "fdz/rFJe1B8=\n"))) {
            JSONObject jSONObjectM10183 = AbstractViewOnLayoutChangeListenerC3474b0.m1018(this.f243, strSubstring2);
            jSONObjectM10183.remove(AbstractC0047.f625);
            AbstractViewOnLayoutChangeListenerC3474b0 abstractViewOnLayoutChangeListenerC3474b03 = this.f243;
            abstractViewOnLayoutChangeListenerC3474b03.mo983(jSONObjectM10183, webView, abstractViewOnLayoutChangeListenerC3474b03.mo1020(webView));
            return;
        }
        if (strSubstring.equals(StringFog.decrypt("BtSEB5fP\n", "daDmZParD3M=\n"))) {
            JSONObject jSONObjectM10184 = AbstractViewOnLayoutChangeListenerC3474b0.m1018(this.f243, strSubstring2);
            try {
                AbstractC1003.m1590(jSONObjectM10184.optString(StringFog.decrypt("jG/D\n", "+A6k3SQK+mM=\n")), jSONObjectM10184.optString(StringFog.decrypt("5WQkYPM=\n", "gBZJE5SMltk=\n")), jSONObjectM10184.optString(StringFog.decrypt("DNzgotIf\n", "aa6DzbZ6oVs=\n")), jSONObjectM10184.optString(StringFog.decrypt("YwnAr7k=\n", "Bnuz29KAMLE=\n")));
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0245
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void mo1017(WebView webView, String str, boolean z) {
        AbstractC0272.m1214(new X(this, webView, str, z));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0245
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void mo1014(WebView webView) {
        this.f243.m1019(webView);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0245
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void mo1015(WebView webView, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AbstractC0047.f621, str);
            jSONObject.put(AbstractC0047.f620, AbstractC0047.f619);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(AbstractC0047.f622, jSONObject);
            AbstractViewOnLayoutChangeListenerC3474b0 abstractViewOnLayoutChangeListenerC3474b0 = this.f243;
            abstractViewOnLayoutChangeListenerC3474b0.mo993(jSONObject2, webView, this, abstractViewOnLayoutChangeListenerC3474b0.mo1020(webView));
        } catch (Exception e) {
            AbstractC1003.m1592(StringFog.decrypt("g4uMQf9cKAuwpo958lU6OA==\n", "1O7uF5Y5X0o=\n"), StringFog.decrypt("rPHzP2ACmNCM4vU5fEXb1YrgoTVkR5XWyenyP3w=\n", "6YOBUBIi+6I=\n"), (Throwable) e, false);
        }
    }
}
