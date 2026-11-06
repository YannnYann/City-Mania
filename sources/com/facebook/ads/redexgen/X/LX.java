package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class LX {
    public static byte[] A04;
    public static String[] A05 = {"uWNDACmPW3zFQ4BFSfuuvWWr5ux0g", "fZSP8RrW04C1FgjA2gzGxSfX1ndIoaX1", "wpTLrBPixK7", "fRtIcAa3Ka1f8JoN5yfQJ8ZbRwp1Ndux", "", "v1utpb2p4pl33V2eBNHIzubFoK7StmOi", "DJ7td455ng05vV7nMXy31osyi9twcH3U", "Q9tJ9k35dpQnuFfRmL2RQq600FqbBnti"};
    public static final LX A06;
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A05[6].charAt(6) == '3') {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[3] = "4ZZgN8xeAw0cFRyheKJMg39BT1WRDNAW";
            strArr[1] = "ocOBMf9xCie5v5Y0Oa9LoKPXyh26gpNk";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 72);
            i4++;
        }
    }

    public static void A01() {
        A04 = new byte[]{114, 126, 61, 54, 63, 48, 48, 59, 50, 29, 49, 43, 48, 42, 99, 103, 107, 46, 37, 40, 36, 47, 34, 37, 44, 118, 24, 44, 61, 48, 54, 31, 54, 43, 52, 56, 45, 2, 42, 56, 52, 41, 53, 60, 11, 56, 45, 60, 100};
    }

    static {
        A01();
        A06 = new LX(-1, -1, -1);
    }

    public LX(int i, int i2, int i3) {
        int iA06;
        this.A03 = i;
        this.A01 = i2;
        this.A02 = i3;
        if (N1.A15(i3)) {
            iA06 = N1.A06(i3, i2);
        } else {
            iA06 = -1;
        }
        this.A00 = iA06;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LX)) {
            return false;
        }
        LX lx = (LX) obj;
        return this.A03 == lx.A03 && this.A01 == lx.A01 && this.A02 == lx.A02;
    }

    public final int hashCode() {
        return A6.A00(Integer.valueOf(this.A03), Integer.valueOf(this.A01), Integer.valueOf(this.A02));
    }

    public final String toString() {
        return A00(26, 23, 17) + this.A03 + A00(0, 15, 22) + this.A01 + A00(15, 11, 3) + this.A02 + ']';
    }
}
