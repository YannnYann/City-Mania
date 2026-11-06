package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.os.Bundle;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺙ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0939 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0865 f3546;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Bundle f3547;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f3548;

    public C0939(C0865 c0865, Activity activity, Bundle bundle) {
        this.f3546 = c0865;
        this.f3548 = activity;
        this.f3547 = bundle;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        if (C0865.m1460(this.f3546, this.f3548)) {
            this.f3546.f3336.getClass();
            this.f3546.getClass();
            C0865 c0865 = this.f3546;
            c0865.f3333 = false;
            Bundle bundle = this.f3547;
            if (bundle == null) {
                c0865.f3334 = false;
                return;
            }
            c0865.f3334 = bundle.getBoolean(C0865.f3328);
            C0865 c08652 = this.f3546;
            if (c08652.f3334) {
                c08652.f3333 = true;
            }
            c08652.f3331 = true;
        }
    }
}
