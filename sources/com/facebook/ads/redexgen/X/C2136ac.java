package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ac, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2136ac {
    public static byte[] A03;
    public static String[] A04 = {"Vs06DC9LHlP6nyu6Er7ul", "jn2l57RtHEsBzWvf", "sK4KgX9TYmFIqf4rNQDI4", "mbkGbmAZhWCeA1cnyzo8UhyYoFRvOSTP", "33xs35lHLZRpHyyr", "7pUFieMu9", "ApWal8vdP111uvOqJz2mkeUtKmBZZfpN", "4x5wKXs3ZKwzqSUsfKBflT081d"};
    public static final long[] A05;
    public int A00;
    public int A01;
    public final byte[] A02 = new byte[8];

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] - i3;
            String[] strArr = A04;
            if (strArr[1].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            A04[7] = "22rUvuXjwgyrpPKYGMZNZI1h4r";
            bArrCopyOfRange[i4] = (byte) (i5 - 34);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{-19, 14, -65, 21, 0, 11, 8, 3, -65, 21, 0, 17, 8, 13, 19, -65, 11, 4, 13, 6, 19, 7, -65, 12, 0, 18, 10, -65, 5, 14, 20, 13, 3};
    }

    static {
        A03();
        A05 = new long[]{128, 64, 32, 16, 8, 4, 2, 1};
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0005 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A00(int r7) {
        /*
            r6 = -1
            r5 = 0
        L2:
            long[] r0 = com.facebook.ads.redexgen.X.C2136ac.A05
            int r0 = r0.length
            if (r5 >= r0) goto L15
            long[] r0 = com.facebook.ads.redexgen.X.C2136ac.A05
            r3 = r0[r5]
            long r0 = (long) r7
            long r3 = r3 & r0
            r1 = 0
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 == 0) goto L16
            int r6 = r5 + 1
        L15:
            return r6
        L16:
            int r5 = r5 + 1
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2136ac.A00(int):int");
    }

    public static long A01(byte[] bArr, int i, boolean z) {
        long j = ((long) bArr[0]) & 255;
        if (z) {
            long varint = ~A05[i - 1];
            j &= varint;
        }
        for (int i2 = 1; i2 < i; i2++) {
            long varint2 = bArr[i2];
            j = (j << 8) | (varint2 & 255);
        }
        return j;
    }

    public final int A04() {
        return this.A00;
    }

    public final long A05(Q9 q9, boolean z, boolean z2, int i) throws IOException {
        if (this.A01 == 0) {
            if (!q9.AIe(this.A02, 0, 1, z)) {
                if (A04[7].length() != 26) {
                    throw new RuntimeException();
                }
                A04[7] = "1gfFMCzlWRYZYIL0Sl6pryqlN6";
                return -1L;
            }
            int firstByte = this.A02[0] & 255;
            this.A00 = A00(firstByte);
            if (this.A00 != -1) {
                this.A01 = 1;
            } else {
                throw new IllegalStateException(A02(0, 33, Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE));
            }
        }
        int firstByte2 = this.A00;
        if (firstByte2 > i) {
            this.A01 = 0;
            return -2L;
        }
        if (this.A00 != 1) {
            q9.readFully(this.A02, 1, this.A00 - 1);
        }
        this.A01 = 0;
        return A01(this.A02, this.A00, z2);
    }

    public final void A06() {
        this.A01 = 0;
        this.A00 = 0;
    }
}
