package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᓙ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0528 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0514 f2384;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f2385;

    public C0528(C0514 c0514, Activity activity) {
        this.f2384 = c0514;
        this.f2385 = activity;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0514 c0514 = this.f2384;
        c0514.f2346 = true;
        InterfaceC0449 interfaceC0449 = c0514.f2345;
        if (interfaceC0449 != null) {
            interfaceC0449.mo1271(this.f2385);
        }
    }
}
