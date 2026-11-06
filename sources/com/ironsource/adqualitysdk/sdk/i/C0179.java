package com.ironsource.adqualitysdk.sdk.i;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Γ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0179 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0178 f1185;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ MotionEvent f1186;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ View f1187;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ViewOnTouchListenerC0056 f1188;

    public C0179(C0178 c0178, ViewOnTouchListenerC0056 viewOnTouchListenerC0056, View view, MotionEvent motionEvent) {
        this.f1185 = c0178;
        this.f1188 = viewOnTouchListenerC0056;
        this.f1187 = view;
        this.f1186 = motionEvent;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        this.f1185.f1184.mo1071(this.f1188, this.f1187, this.f1186);
    }
}
