package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Kb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1711Kb {
    public static String[] A02 = {"5FV08b95yLvtZwZrNxGpn8iKRE", "GXQcNhF1paiKbMyxV9", "Wo8eluhVPqVsTbP5KKxt", "wjBjQ78OlGhMWfzsjfzFWV8qQjT", "YpT7RYUrHnZfByTATm5ldFxQvD9tLwOd", "HeJj8ROU5xVgtZb2mGvRb", "dbFS2unVwrrJA2FQ7HsqBfbhqAqEC2Oq", "EEG8Nl4mUCP5n3Hlp7DD9mLhAb1vjNJk"};
    public boolean A00;
    public final SparseBooleanArray A01 = new SparseBooleanArray();

    public final C1711Kb A00(int i) {
        AbstractC1747Ln.A08(!this.A00);
        this.A01.append(i, true);
        return this;
    }

    public final C1711Kb A01(int i, boolean z) {
        if (z) {
            C1711Kb c1711KbA00 = A00(i);
            if (A02[2].length() != 20) {
                throw new RuntimeException();
            }
            A02[4] = "T7xmkUdaLIne0yF5owMg3GCob8tJwFRt";
            return c1711KbA00;
        }
        return this;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0005 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.facebook.ads.redexgen.X.C1711Kb A02(com.facebook.ads.redexgen.X.C1712Kc r3) {
        /*
            r2 = this;
            r1 = 0
        L1:
            int r0 = r3.A00()
            if (r1 >= r0) goto L11
            int r0 = r3.A01(r1)
            r2.A00(r0)
            int r1 = r1 + 1
            goto L1
        L11:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1711Kb.A02(com.facebook.ads.redexgen.X.Kc):com.facebook.ads.redexgen.X.Kb");
    }

    public final C1711Kb A03(int... iArr) {
        for (int i : iArr) {
            A00(i);
        }
        return this;
    }

    public final C1712Kc A04() {
        AbstractC1747Ln.A08(!this.A00);
        this.A00 = true;
        return new C1712Kc(this.A01);
    }
}
