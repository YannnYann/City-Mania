package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2545hH {
    public static boolean A00(MotionEvent motionEvent, int i) {
        return (motionEvent.getSource() & i) == i;
    }
}
