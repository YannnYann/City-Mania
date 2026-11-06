package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class T6 extends NQ {
    public static byte[] A02;
    public final int A00;
    public final NX A01;

    static {
        A06();
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 74);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A02 = new byte[]{-69, -60, -67, -71, -54, -52, -67, -48, -52, -122, -126, -58, -57, -52, 120, -56, -67, -54, -59, -63, -52, -52, -67, -68, -122, -126};
    }

    public T6(NX nx, int i, int i2) {
        super(A03(i, i2));
        this.A01 = nx;
        this.A00 = i2;
    }

    public T6(IOException iOException, NX nx, int i, int i2) {
        super(iOException, A03(i, i2));
        this.A01 = nx;
        this.A00 = i2;
    }

    public T6(String str, NX nx, int i, int i2) {
        super(str, A03(i, i2));
        this.A01 = nx;
        this.A00 = i2;
    }

    public T6(String str, IOException iOException, NX nx, int i, int i2) {
        super(str, iOException, A03(i, i2));
        this.A01 = nx;
        this.A00 = i2;
    }

    public static int A03(int i, int i2) {
        if (i == 2000 && i2 == 1) {
            return 2001;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.T6 A04(final java.io.IOException r4, final com.facebook.ads.redexgen.X.NX r5, int r6) {
        /*
            java.lang.String r1 = r4.getMessage()
            boolean r0 = r4 instanceof java.net.SocketTimeoutException
            if (r0 == 0) goto L1a
            r1 = 2002(0x7d2, float:2.805E-42)
        La:
            r0 = 2007(0x7d7, float:2.812E-42)
            if (r1 != r0) goto L14
            com.facebook.ads.redexgen.X.9F r0 = new com.facebook.ads.redexgen.X.9F
            r0.<init>(r4, r5)
        L13:
            return r0
        L14:
            com.facebook.ads.redexgen.X.T6 r0 = new com.facebook.ads.redexgen.X.T6
            r0.<init>(r4, r5, r1, r6)
            goto L13
        L1a:
            boolean r0 = r4 instanceof java.io.InterruptedIOException
            if (r0 == 0) goto L21
            r1 = 1004(0x3ec, float:1.407E-42)
            goto La
        L21:
            if (r1 == 0) goto L39
            java.lang.String r3 = com.facebook.ads.redexgen.X.XC.A01(r1)
            r2 = 0
            r1 = 26
            r0 = 14
            java.lang.String r0 = A05(r2, r1, r0)
            boolean r0 = r3.matches(r0)
            if (r0 == 0) goto L39
            r1 = 2007(0x7d7, float:2.812E-42)
            goto La
        L39:
            r1 = 2001(0x7d1, float:2.804E-42)
            goto La
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.T6.A04(java.io.IOException, com.facebook.ads.redexgen.X.NX, int):com.facebook.ads.redexgen.X.T6");
    }
}
