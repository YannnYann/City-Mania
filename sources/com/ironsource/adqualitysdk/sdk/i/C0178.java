package com.ironsource.adqualitysdk.sdk.i;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ΐ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0178 implements InterfaceC0060 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0060 f1184;

    public C0178(InterfaceC0060 interfaceC0060) {
        this.f1184 = interfaceC0060;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0060
    /* JADX INFO: renamed from: ﾒ */
    public final boolean mo1071(ViewOnTouchListenerC0056 viewOnTouchListenerC0056, View view, MotionEvent motionEvent) {
        AbstractC0272.m1211(new C0179(this, viewOnTouchListenerC0056, view, motionEvent));
        return false;
    }
}
