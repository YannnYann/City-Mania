package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Q0 implements InterfaceC2060Yn {
    public static String[] A03 = {"sjQnemeNO9R2SECcRpxmOKWSIZfLS7dI", "4Ed386kkW3rglcLqK45Jt0XJN2BuLR2c", "D5702c5InYf5Mo2vMw", "aP70OAkvRoDZv9WaiRPclTIkjJytVSq7", "4LuIFhBBnDZahCkjnmwrnPjGnW6AaM77", "RFj0D6fgLIyzHM6HnK5g6VvijfYTZHKs", "tpVJZyHfmUEcos61Xa247nPAzfauWFcZ", "VFr8etVtjtWlxEuhq8PZ"};
    public final int A00;
    public final Z0 A01;
    public final Z5 A02;

    @Override // com.facebook.ads.redexgen.X.InterfaceC2060Yn
    public final /* synthetic */ void AGz() {
    }

    public Q0(Z5 z5, int i) {
        this.A02 = z5;
        this.A00 = i;
        this.A01 = new Z0();
    }

    private long A00(Q9 q9) throws IOException {
        while (q9.A9L() < q9.A90() - 6 && !Z1.A09(q9, this.A02, this.A00, this.A01)) {
            q9.A4X(1);
        }
        long jA9L = q9.A9L();
        if (A03[7].length() == 29) {
            throw new RuntimeException();
        }
        A03[1] = "R3jMm65znLUvFEyujrEO9mGbJnid0nxs";
        if (jA9L >= q9.A90() - 6) {
            q9.A4X((int) (q9.A90() - q9.A9L()));
            return this.A02.A09;
        }
        return this.A01.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2060Yn
    public final C2058Yl AKE(Q9 q9, long j) throws IOException {
        long rightFrameFirstSampleNumber = q9.A9Q();
        long leftFrameFirstSampleNumber = A00(q9);
        long jA9L = q9.A9L();
        q9.A4X(Math.max(6, this.A02.A06));
        long searchPosition = A00(q9);
        long leftFramePosition = q9.A9L();
        if (leftFrameFirstSampleNumber <= j && searchPosition > j) {
            return C2058Yl.A03(jA9L);
        }
        if (searchPosition <= j) {
            return C2058Yl.A05(searchPosition, leftFramePosition);
        }
        return C2058Yl.A04(leftFrameFirstSampleNumber, rightFrameFirstSampleNumber);
    }
}
