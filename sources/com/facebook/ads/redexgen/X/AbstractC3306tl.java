package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3306tl {
    public static void A00(View view, boolean z, View.OnClickListener onClickListener) {
        if (!z) {
            view.setOnClickListener(onClickListener);
        } else {
            if (!z) {
                return;
            }
            ViewOnClickListenerC3305tk viewOnClickListenerC3305tk = new ViewOnClickListenerC3305tk(onClickListener);
            view.setOnClickListener(viewOnClickListenerC3305tk);
            view.setOnTouchListener(new ViewOnTouchListenerC3304tj(viewOnClickListenerC3305tk));
        }
    }
}
