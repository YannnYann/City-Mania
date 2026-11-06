package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﭴ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0886 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0865 f3391;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f3392;

    public C0886(C0865 c0865, Activity activity) {
        this.f3391 = c0865;
        this.f3392 = activity;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        if (C0865.m1460(this.f3391, this.f3392)) {
            AbstractC0272.m1214(new C0887(this));
            C0865 c0865 = this.f3391;
            if (c0865.f3333 && !c0865.f3332 && this.f3392.isFinishing()) {
                C0865 c08652 = this.f3391;
                c08652.m1201(this.f3392);
                c08652.f3334 = false;
            }
        }
    }
}
