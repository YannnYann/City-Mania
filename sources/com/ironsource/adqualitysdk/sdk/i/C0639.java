package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴘ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0639 extends AbstractC0721 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0622 f2659;

    public C0639(C0622 c0622) {
        this.f2659 = c0622;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0721, com.ironsource.adqualitysdk.sdk.i.InterfaceC0443
    /* JADX INFO: renamed from: ﾇ */
    public final void mo1190(Activity activity) {
        C0622 c0622 = this.f2659;
        if (c0622.f2631) {
            AbstractC0272.m1211(new C0738(c0622));
        }
        c0622.f2631 = false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0721, com.ironsource.adqualitysdk.sdk.i.InterfaceC0443
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1191(Activity activity) {
        this.f2659.m1396();
    }
}
