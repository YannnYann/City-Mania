package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3510w implements z0 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ B f383;

    public C3510w(B b) {
        this.f383 = b;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.z0
    /* JADX INFO: renamed from: ﾇ */
    public final void mo972(View view) {
        view.removeOnLayoutChangeListener(this.f383.f86);
        this.f383.f83.remove(view);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.z0
    /* JADX INFO: renamed from: ﾒ */
    public final void mo975(View view) {
        view.addOnLayoutChangeListener(this.f383.f86);
        B b = this.f383;
        b.f83.put(view, b.f86);
    }
}
