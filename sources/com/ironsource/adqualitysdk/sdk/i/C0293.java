package com.ironsource.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.View;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.נ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0293 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ KeyEvent.Callback f1657;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC3482f0 f1658;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ View f1659;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f1660;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0454 f1661;

    public C0293(InterfaceC0454 interfaceC0454, JSONObject jSONObject, View view, InterfaceC3482f0 interfaceC3482f0, KeyEvent.Callback callback) {
        this.f1661 = interfaceC0454;
        this.f1660 = jSONObject;
        this.f1659 = view;
        this.f1658 = interfaceC3482f0;
        this.f1657 = callback;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f1661.mo994(this.f1660, this.f1659, this.f1658, this.f1657);
    }
}
