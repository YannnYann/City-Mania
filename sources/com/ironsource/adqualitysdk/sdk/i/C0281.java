package com.ironsource.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.View;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ג, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0281 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ KeyEvent.Callback f1622;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ View f1623;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f1624;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0454 f1625;

    public C0281(InterfaceC0454 interfaceC0454, JSONObject jSONObject, View view, KeyEvent.Callback callback) {
        this.f1625 = interfaceC0454;
        this.f1624 = jSONObject;
        this.f1623 = view;
        this.f1622 = callback;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f1625.mo987(this.f1624, this.f1623, this.f1622);
    }
}
