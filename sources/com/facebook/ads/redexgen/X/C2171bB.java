package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2171bB {
    public static byte[] A05;
    public static String[] A06 = {"mmPErTj", "K9ExEazTZ3WFv6SCxncreKjwLXjXCyhb", "Q3fPujAXV", "AGUF", "Y2zUmeLwNLvMuBvxTcvoXmc", "rVtHJBkiJVUXSrbBDtFS9pwh6Ga5B6g8", "l1pzjmR", "KMLDpJ7cXvrz4OGxqZ4RWojRY2dvT9L"};
    public final int A00;
    public final ZN A01;
    public final String A02;
    public final boolean A03;
    public final byte[] A04;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A06[1].charAt(8) == 'R') {
                throw new RuntimeException();
            }
            A06[5] = "x7aa6QcfJq1EkYVNe9ozivRcPlo0CTfd";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 104);
            i4++;
        }
    }

    public static void A02() {
        A05 = new byte[]{63, 54, 56, 89, 107, 107, 109, 117, 113, 118, 127, 56, 89, 93, 75, 53, 91, 76, 74, 56, 123, 106, 97, 104, 108, 119, 56, 117, 119, 124, 125, 54, 66, 100, 119, 117, 125, 83, 120, 117, 100, 111, 102, 98, 127, 121, 120, 84, 121, 110, 76, 119, 106, 108, 105, 105, 118, 107, 109, 124, 125, 57, 105, 107, 118, 109, 124, 122, 109, 112, 118, 119, 57, 106, 122, 113, 124, 116, 124, 57, 109, 96, 105, 124, 57, 62, 7, 6, 7, 85, 100, 101, 100, 116, 42, 44, 39, 42, 60, 58, 49, 44};
    }

    static {
        A02();
    }

    public C2171bB(boolean z, String str, int i, byte[] bArr, int i2, int i3, byte[] bArr2) {
        AbstractC1747Ln.A07((bArr2 == null) ^ (i == 0));
        this.A03 = z;
        this.A02 = str;
        this.A00 = i;
        this.A04 = bArr2;
        this.A01 = new ZN(A00(str), bArr, i2, i3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A00(java.lang.String r5) {
        /*
            r4 = 1
            if (r5 != 0) goto L4
            return r4
        L4:
            int r0 = r5.hashCode()
            r3 = 2
            switch(r0) {
                case 3046605: goto L79;
                case 3046671: goto L68;
                case 3049879: goto L57;
                case 3049895: goto L46;
                default: goto Lc;
            }
        Lc:
            r0 = -1
        Ld:
            switch(r0) {
                case 0: goto L8b;
                case 1: goto L8b;
                case 2: goto L8a;
                case 3: goto L8a;
                default: goto L10;
            }
        L10:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r2 = 50
            r1 = 36
            r0 = 113(0x71, float:1.58E-43)
            java.lang.String r0 = A01(r2, r1, r0)
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.StringBuilder r3 = r0.append(r5)
            r2 = 0
            r1 = 32
            r0 = 112(0x70, float:1.57E-43)
            java.lang.String r0 = A01(r2, r1, r0)
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.String r3 = r0.toString()
            r2 = 32
            r1 = 18
            r0 = 126(0x7e, float:1.77E-43)
            java.lang.String r0 = A01(r2, r1, r0)
            com.facebook.ads.redexgen.X.MV.A07(r0, r3)
            return r4
        L46:
            r2 = 98
            r1 = 4
            r0 = 55
            java.lang.String r0 = A01(r2, r1, r0)
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto Lc
            r0 = 1
            goto Ld
        L57:
            r2 = 94
            r1 = 4
            r0 = 33
            java.lang.String r0 = A01(r2, r1, r0)
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto Lc
            r0 = 0
            goto Ld
        L68:
            r2 = 90
            r1 = 4
            r0 = 111(0x6f, float:1.56E-43)
            java.lang.String r0 = A01(r2, r1, r0)
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto Lc
            r0 = 3
            goto Ld
        L79:
            r2 = 86
            r1 = 4
            r0 = 12
            java.lang.String r0 = A01(r2, r1, r0)
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto Lc
            r0 = 2
            goto Ld
        L8a:
            return r3
        L8b:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2171bB.A00(java.lang.String):int");
    }
}
