package com.ironsource.adqualitysdk.sdk.i;

import android.webkit.WebView;

/* JADX INFO: loaded from: classes3.dex */
public final class Z extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C3472a0 f238;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ boolean f239;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ String f240;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ WebView f241;

    public Z(C3472a0 c3472a0, WebView webView, String str, boolean z) {
        this.f238 = c3472a0;
        this.f241 = webView;
        this.f240 = str;
        this.f239 = z;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        AbstractC0272.m1214(new Y(this, this.f241.getOriginalUrl(), this.f238.f243.mo1020(this.f241)));
    }
}
