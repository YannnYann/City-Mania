package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.20, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AnonymousClass20 {
    public static void A00(boolean z, C1J c1j, View view, View view2, Runnable runnable, Runnable runnable2) {
        if (!z) {
            return;
        }
        if (c1j != null && c1j.A0M()) {
            if (c1j.A0O(view, view2)) {
                runnable.run();
                return;
            }
            return;
        }
        runnable2.run();
    }
}
