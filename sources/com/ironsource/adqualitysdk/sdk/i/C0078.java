package com.ironsource.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.View;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ɩ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0078 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ KeyEvent.Callback f851;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C3472a0 f852;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ View f853;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f854;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0454 f855;

    public C0078(InterfaceC0454 interfaceC0454, JSONObject jSONObject, View view, C3472a0 c3472a0, KeyEvent.Callback callback) {
        this.f855 = interfaceC0454;
        this.f854 = jSONObject;
        this.f853 = view;
        this.f852 = c3472a0;
        this.f851 = callback;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f855.mo993(this.f854, this.f853, this.f852, this.f851);
    }
}
