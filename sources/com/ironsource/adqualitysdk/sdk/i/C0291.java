package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ל, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0291 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0218 f1649;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ View f1650;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ViewOnClickListenerC0188 f1651;

    public C0291(C0218 c0218, ViewOnClickListenerC0188 viewOnClickListenerC0188, View view) {
        this.f1649 = c0218;
        this.f1651 = viewOnClickListenerC0188;
        this.f1650 = view;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f1649.f1451.mo1189(this.f1651, this.f1650);
    }
}
