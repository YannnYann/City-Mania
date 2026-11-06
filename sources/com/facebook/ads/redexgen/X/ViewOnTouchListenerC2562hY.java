package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hY, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnTouchListenerC2562hY implements View.OnTouchListener {
    public final /* synthetic */ C2561hX A00;

    public ViewOnTouchListenerC2562hY(C2561hX c2561hX) {
        this.A00 = c2561hX;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this.A00.A01 = System.currentTimeMillis();
            C2561hX.A00(this.A00);
            this.A00.A06.ACd(this.A00.A03.A37(), new C3303ti().A05(this.A00.getViewabilityChecker()).A04(this.A00.getTouchDataRecorder()).A07());
            return false;
        }
        return false;
    }
}
