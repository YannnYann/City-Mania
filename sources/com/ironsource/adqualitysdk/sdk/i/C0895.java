package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮉ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0895 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0865 f3450;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f3451;

    public C0895(C0865 c0865, Activity activity) {
        this.f3450 = c0865;
        this.f3451 = activity;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        if (C0865.m1460(this.f3450, this.f3451)) {
            this.f3450.f3336.onActivityPaused(this.f3451);
        }
    }
}
