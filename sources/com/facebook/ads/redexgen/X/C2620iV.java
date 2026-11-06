package com.facebook.ads.redexgen.X;

import java.util.Comparator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.iV, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2620iV implements Comparator<C2621iW> {
    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Comparator
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final int compare(C2621iW c2621iW, C2621iW c2621iW2) {
        if ((c2621iW.A03 == null) != (c2621iW2.A03 == null)) {
            return c2621iW.A03 == null ? 1 : -1;
        }
        if (c2621iW.A04 != c2621iW2.A04) {
            return c2621iW.A04 ? -1 : 1;
        }
        int i = c2621iW2.A02 - c2621iW.A02;
        if (i != 0) {
            return i;
        }
        int i2 = c2621iW.A00;
        int deltaViewVelocity = c2621iW2.A00;
        int i3 = i2 - deltaViewVelocity;
        if (i3 != 0) {
            return i3;
        }
        return 0;
    }
}
