package com.ironsource.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.View;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ϊ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0199 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ KeyEvent.Callback f1295;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ View f1296;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f1297;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0454 f1298;

    public C0199(InterfaceC0454 interfaceC0454, JSONObject jSONObject, View view, KeyEvent.Callback callback) {
        this.f1298 = interfaceC0454;
        this.f1297 = jSONObject;
        this.f1296 = view;
        this.f1295 = callback;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f1298.mo985(this.f1297, this.f1296, this.f1295);
    }
}
