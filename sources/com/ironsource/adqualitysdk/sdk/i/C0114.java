package com.ironsource.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.View;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ɹ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0114 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ KeyEvent.Callback f1050;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ View f1051;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f1052;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0454 f1053;

    public C0114(InterfaceC0454 interfaceC0454, JSONObject jSONObject, View view, KeyEvent.Callback callback) {
        this.f1053 = interfaceC0454;
        this.f1052 = jSONObject;
        this.f1051 = view;
        this.f1050 = callback;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f1053.mo995(this.f1052, this.f1051, this.f1050);
    }
}
