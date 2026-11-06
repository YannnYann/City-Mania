package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.view.View;
import android.webkit.WebView;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.סּ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0864 implements InterfaceC0454 {
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0454
    /* JADX INFO: renamed from: ﻐ, reason: merged with bridge method [inline-methods] */
    public abstract void mo995(JSONObject jSONObject, WebView webView, Activity activity);

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0454
    /* JADX INFO: renamed from: ﻛ, reason: merged with bridge method [inline-methods] */
    public abstract void mo983(JSONObject jSONObject, WebView webView, Activity activity);

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0454
    /* JADX INFO: renamed from: ｋ, reason: merged with bridge method [inline-methods] */
    public abstract void mo985(JSONObject jSONObject, WebView webView, Activity activity);

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0454
    /* JADX INFO: renamed from: ｋ, reason: merged with bridge method [inline-methods] */
    public abstract void mo993(JSONObject jSONObject, WebView webView, Object obj, Activity activity);

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0454
    /* JADX INFO: renamed from: ﾇ, reason: merged with bridge method [inline-methods] */
    public abstract void mo987(JSONObject jSONObject, WebView webView, Activity activity);

    /* JADX INFO: renamed from: ﾇ */
    public abstract void mo1256(JSONObject jSONObject, WebView webView, Object obj, Activity activity);

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0454
    /* JADX INFO: renamed from: ﾒ, reason: merged with bridge method [inline-methods] */
    public abstract void mo990(JSONObject jSONObject, WebView webView, Activity activity);

    /* JADX INFO: renamed from: ﾒ */
    public abstract void mo1258(JSONObject jSONObject, WebView webView, Object obj, Activity activity);

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0454
    /* JADX INFO: renamed from: ﾇ */
    public /* bridge */ /* synthetic */ void mo989(JSONObject jSONObject, View view, InterfaceC3482f0 interfaceC3482f0, Object obj) {
        mo1256(jSONObject, (WebView) view, (Object) interfaceC3482f0, (Activity) obj);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0454
    /* JADX INFO: renamed from: ﾒ */
    public /* bridge */ /* synthetic */ void mo994(JSONObject jSONObject, View view, InterfaceC3482f0 interfaceC3482f0, Object obj) {
        mo1258(jSONObject, (WebView) view, (Object) interfaceC3482f0, (Activity) obj);
    }
}
