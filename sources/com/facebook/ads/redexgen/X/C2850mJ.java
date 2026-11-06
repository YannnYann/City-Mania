package com.facebook.ads.redexgen.X;

import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.mJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2850mJ {
    public static C2850mJ A00 = new C2850mJ();

    public static C2850mJ A00() {
        return A00;
    }

    public final HD A01(C2780lA c2780lA, boolean z) {
        return new HD(c2780lA, z, new C2761kp());
    }

    public final Map<String, String> A02(C2780lA c2780lA) {
        try {
            return A01(c2780lA, false).A06();
        } catch (Throwable th) {
            c2780lA.A08().A4j(th);
            return C2842mB.A01(c2780lA);
        }
    }
}
