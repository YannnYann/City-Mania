package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.os.Bundle;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮌ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0898 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0865 f3455;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Bundle f3456;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f3457;

    public C0898(C0865 c0865, Activity activity, Bundle bundle) {
        this.f3455 = c0865;
        this.f3457 = activity;
        this.f3456 = bundle;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        if (C0865.m1460(this.f3455, this.f3457)) {
            this.f3455.f3336.getClass();
            Bundle bundle = this.f3456;
            if (bundle != null) {
                bundle.putBoolean(C0865.f3328, this.f3455.f3334);
            }
            this.f3455.f3332 = true;
        }
    }
}
