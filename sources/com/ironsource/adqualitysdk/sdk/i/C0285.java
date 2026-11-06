package com.ironsource.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.View;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ז, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0285 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ KeyEvent.Callback f1628;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ View f1629;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f1630;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0454 f1631;

    public C0285(InterfaceC0454 interfaceC0454, JSONObject jSONObject, View view, KeyEvent.Callback callback) {
        this.f1631 = interfaceC0454;
        this.f1630 = jSONObject;
        this.f1629 = view;
        this.f1628 = callback;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f1631.mo990(this.f1630, this.f1629, this.f1628);
    }
}
