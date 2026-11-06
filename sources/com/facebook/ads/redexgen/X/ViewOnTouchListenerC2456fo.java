package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.fo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnTouchListenerC2456fo implements View.OnTouchListener {
    public final /* synthetic */ C1484Be A00;

    public ViewOnTouchListenerC2456fo(C1484Be c1484Be) {
        this.A00 = c1484Be;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.A00.A0C.A02(new B6(view, motionEvent));
        return false;
    }
}
