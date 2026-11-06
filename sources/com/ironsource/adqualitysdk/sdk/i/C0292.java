package com.ironsource.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.View;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ן, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0292 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ KeyEvent.Callback f1652;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC3482f0 f1653;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ View f1654;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f1655;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0454 f1656;

    public C0292(InterfaceC0454 interfaceC0454, JSONObject jSONObject, View view, InterfaceC3482f0 interfaceC3482f0, KeyEvent.Callback callback) {
        this.f1656 = interfaceC0454;
        this.f1655 = jSONObject;
        this.f1654 = view;
        this.f1653 = interfaceC3482f0;
        this.f1652 = callback;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f1656.mo989(this.f1655, this.f1654, this.f1653, this.f1652);
    }
}
