package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｋ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0980 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0865 f3693;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f3694;

    public C0980(C0865 c0865, Activity activity) {
        this.f3693 = c0865;
        this.f3694 = activity;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        if (C0865.m1460(this.f3693, this.f3694)) {
            AbstractC0272.m1214(new C1016(this));
            C0865 c0865 = this.f3693;
            if (c0865.f3333 && c0865.f3334 && this.f3694.isFinishing()) {
                C0865 c08652 = this.f3693;
                c08652.m1201(this.f3694);
                c08652.f3334 = false;
            }
        }
    }
}
