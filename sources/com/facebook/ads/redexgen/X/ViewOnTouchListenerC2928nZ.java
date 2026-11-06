package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.nZ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnTouchListenerC2928nZ implements View.OnTouchListener {
    public final /* synthetic */ C1614Gf A00;
    public final /* synthetic */ boolean A01;
    public final /* synthetic */ boolean A02;

    public ViewOnTouchListenerC2928nZ(C1614Gf c1614Gf, boolean z, boolean z2) {
        this.A00 = c1614Gf;
        this.A02 = z;
        this.A01 = z2;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.A02) {
            if (this.A01 && C2888mv.A1X(this.A00.A04)) {
                return false;
            }
            return true;
        }
        return false;
    }
}
