package com.ironsource.adqualitysdk.sdk.i;

import android.view.ViewGroup;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ῖ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0774 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ ViewOnLayoutChangeListenerC0808 f3107;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0789 f3108;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ViewGroup f3109;

    public C0774(ViewGroup viewGroup, C0789 c0789, ViewOnLayoutChangeListenerC0808 viewOnLayoutChangeListenerC0808) {
        this.f3109 = viewGroup;
        this.f3108 = c0789;
        this.f3107 = viewOnLayoutChangeListenerC0808;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f3109.addView(this.f3108, new ViewGroup.LayoutParams(-1, -1));
        this.f3109.removeOnLayoutChangeListener(this.f3107);
        this.f3109.addOnLayoutChangeListener(this.f3107);
    }
}
