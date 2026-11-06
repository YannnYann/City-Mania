package com.ironsource.adqualitysdk.sdk.i;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ἵ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0755 implements InterfaceC0060 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0752 f3079;

    public C0755(C0752 c0752) {
        this.f3079 = c0752;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0060
    /* JADX INFO: renamed from: ﾒ */
    public final boolean mo1071(ViewOnTouchListenerC0056 viewOnTouchListenerC0056, View view, MotionEvent motionEvent) {
        C0752.m1436(this.f3079, motionEvent);
        return true;
    }
}
