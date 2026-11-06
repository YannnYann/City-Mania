package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2216bu {
    public static byte[] A0B;
    public static String[] A0C = {"bI1FkpMS8ttx5Qc2z7PNdYbYq1lskw3h", "emEZoHxrdf91xYO63rMPobMcQBLiEU8Z", "uwo9FflM3qvjW75MAdaO8QgjgIRMQo81", "hISMqAD33mCcON02hUOctCPVUh6WSNoh", "0Ehzq8AJjNf7V22kE1xcmNZ1dJe4b4WB", "zA", "6cqGC", "t7LNPWxkIbfOmswmdmFJSLFnQfGgICKG"};
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final int A09;
    public final int A0A;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 86);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0B = new byte[]{4, 54, 31, 2, 29, 17, 4, 74, 67, 78, 75, 69, 76, 79, 71, 76, 86, 86, 91, 88, 80, 31, 18, 15, 25, 24, 15, 14, 9, 4, 17, 24, 56, 49, 48, 42, 45, 55, 36, 59, 44, 49, 36, 41, 44, 38, 95, 80, 92, 84, 123, 97, 96, 120, 125, 122, 113, 119, 123, 120, 123, 97, 102, 92, 94, 69, 65, 77, 94, 85, 79, 67, 64, 67, 89, 94, 52, 51, 53, 46, 44, 34, 40, 50, 51, 26, 1, 11, 10, 29, 3, 6, 1, 10};
    }

    static {
        A02();
    }

    public C2216bu(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        this.A06 = i;
        this.A00 = i2;
        this.A08 = i3;
        this.A07 = i4;
        this.A03 = i5;
        this.A01 = i6;
        this.A04 = i7;
        this.A0A = i8;
        this.A09 = i9;
        this.A02 = i10;
        this.A05 = i11;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0165  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.C2216bu A00(java.lang.String r19) {
        /*
            Method dump skipped, instruction units count: 480
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2216bu.A00(java.lang.String):com.facebook.ads.redexgen.X.bu");
    }
}
