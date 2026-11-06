package com.ironsource.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.View;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʶ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0145 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ KeyEvent.Callback f1098;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ View f1099;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f1100;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0454 f1101;

    public C0145(InterfaceC0454 interfaceC0454, JSONObject jSONObject, View view, KeyEvent.Callback callback) {
        this.f1101 = interfaceC0454;
        this.f1100 = jSONObject;
        this.f1099 = view;
        this.f1098 = callback;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f1101.mo983(this.f1100, this.f1099, this.f1098);
    }
}
