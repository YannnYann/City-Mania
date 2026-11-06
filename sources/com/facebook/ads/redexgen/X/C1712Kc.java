package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Kc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1712Kc {
    public final SparseBooleanArray A00;

    public C1712Kc(SparseBooleanArray sparseBooleanArray) {
        this.A00 = sparseBooleanArray;
    }

    public final int A00() {
        return this.A00.size();
    }

    public final int A01(int i) {
        AbstractC1747Ln.A00(i, 0, A00());
        return this.A00.keyAt(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1712Kc)) {
            return false;
        }
        C1712Kc c1712Kc = (C1712Kc) obj;
        if (N1.A02 < 24) {
            if (A00() != c1712Kc.A00()) {
                return false;
            }
            for (int i = 0; i < A00(); i++) {
                if (A01(i) != c1712Kc.A01(i)) {
                    return false;
                }
            }
            return true;
        }
        return this.A00.equals(c1712Kc.A00);
    }

    /* JADX WARN: Incorrect condition in loop: B:6:0x000f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int hashCode() {
        /*
            r3 = this;
            int r1 = com.facebook.ads.redexgen.X.N1.A02
            r0 = 24
            if (r1 >= r0) goto L1c
            int r1 = r3.A00()
            r2 = 0
        Lb:
            int r0 = r3.A00()
            if (r2 >= r0) goto L1b
            int r1 = r1 * 31
            int r0 = r3.A01(r2)
            int r1 = r1 + r0
            int r2 = r2 + 1
            goto Lb
        L1b:
            return r1
        L1c:
            android.util.SparseBooleanArray r0 = r3.A00
            int r0 = r0.hashCode()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1712Kc.hashCode():int");
    }
}
