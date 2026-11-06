package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.l9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2779l9 {
    public static final AtomicReference<C1642Hh> A00 = new AtomicReference<>();

    public static C1642Hh A00() {
        return A00.get();
    }

    public static void A01(C1642Hh c1642Hh) {
        if (c1642Hh == null) {
            return;
        }
        AbstractC1621Gm.A00(A00, null, c1642Hh);
    }
}
