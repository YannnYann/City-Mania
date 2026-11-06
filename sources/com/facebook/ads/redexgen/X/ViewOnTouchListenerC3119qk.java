package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class ViewOnTouchListenerC3119qk implements View.OnTouchListener {
    public final GestureDetector A00;

    public ViewOnTouchListenerC3119qk(int i, int i2, Context context, InterfaceC3118qj interfaceC3118qj) {
        this.A00 = new GestureDetector(context, new C3117qi(this, interfaceC3118qj, i, i2));
    }

    public final void A00(View view) {
        if (view != null) {
            view.setOnTouchListener(this);
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return this.A00.onTouchEvent(motionEvent);
    }
}
