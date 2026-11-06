package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class S4 implements TQ {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 63);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{116, 65, 65, 80, 88, 69, 65, 80, 81, 21, 65, 90, 21, 86, 71, 80, 84, 65, 80, 21, 81, 80, 86, 90, 81, 80, 71, 21, 83, 90, 71, 21, 64, 91, 70, 64, 69, 69, 90, 71, 65, 80, 81, 21, 120, 124, 120, 112, 21, 65, 76, 69, 80, 15, 21, 12, 29, 29, 1, 4, 14, 12, 25, 4, 2, 3, 66, 4, 9, 94, 19, 2, 2, 30, 27, 17, 19, 6, 27, 29, 28, 93, 10, 95, 23, 31, 1, 21, 35, 50, 50, 46, 43, 33, 35, 54, 43, 45, 44, 109, 58, 111, 43, 33, 59, 51, 34, 34, 62, 59, 49, 51, 38, 59, 61, 60, 125, 42, 127, 33, 49, 38, 55, 97, 103};
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000b  */
    @Override // com.facebook.ads.redexgen.X.TQ
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.facebook.ads.redexgen.X.InterfaceC2081Zi A5s(com.facebook.ads.redexgen.X.VC r6) {
        /*
            r5 = this;
            java.lang.String r3 = r6.A0W
            if (r3 == 0) goto Lf
            int r0 = r3.hashCode()
            switch(r0) {
                case -1348231605: goto L65;
                case -1248341703: goto L53;
                case 1154383568: goto L41;
                case 1652648887: goto L2f;
                default: goto Lb;
            }
        Lb:
            r0 = -1
        Lc:
            switch(r0) {
                case 0: goto L89;
                case 1: goto L83;
                case 2: goto L7d;
                case 3: goto L77;
                default: goto Lf;
            }
        Lf:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r2 = 0
            r1 = 55
            r0 = 10
            java.lang.String r0 = A00(r2, r1, r0)
            java.lang.StringBuilder r0 = r4.append(r0)
            java.lang.StringBuilder r0 = r0.append(r3)
            java.lang.String r1 = r0.toString()
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r0.<init>(r1)
            throw r0
        L2f:
            r2 = 105(0x69, float:1.47E-43)
            r1 = 20
            r0 = 109(0x6d, float:1.53E-43)
            java.lang.String r0 = A00(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto Lb
            r0 = 2
            goto Lc
        L41:
            r2 = 70
            r1 = 18
            r0 = 77
            java.lang.String r0 = A00(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto Lb
            r0 = 1
            goto Lc
        L53:
            r2 = 55
            r1 = 15
            r0 = 82
            java.lang.String r0 = A00(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto Lb
            r0 = 0
            goto Lc
        L65:
            r2 = 88
            r1 = 17
            r0 = 125(0x7d, float:1.75E-43)
            java.lang.String r0 = A00(r2, r1, r0)
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto Lb
            r0 = 3
            goto Lc
        L77:
            com.facebook.ads.redexgen.X.8c r0 = new com.facebook.ads.redexgen.X.8c
            r0.<init>()
            return r0
        L7d:
            com.facebook.ads.redexgen.X.8O r0 = new com.facebook.ads.redexgen.X.8O
            r0.<init>()
            return r0
        L83:
            com.facebook.ads.redexgen.X.8d r0 = new com.facebook.ads.redexgen.X.8d
            r0.<init>()
            return r0
        L89:
            com.facebook.ads.redexgen.X.8V r0 = new com.facebook.ads.redexgen.X.8V
            r0.<init>()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.S4.A5s(com.facebook.ads.redexgen.X.VC):com.facebook.ads.redexgen.X.Zi");
    }

    @Override // com.facebook.ads.redexgen.X.TQ
    public final boolean ALg(VC vc) {
        String str = vc.A0W;
        String mimeType = A00(55, 15, 82);
        if (!mimeType.equals(str)) {
            String mimeType2 = A00(70, 18, 77);
            if (!mimeType2.equals(str)) {
                String mimeType3 = A00(105, 20, 109);
                if (!mimeType3.equals(str)) {
                    String mimeType4 = A00(88, 17, Sdk.SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
                    if (!mimeType4.equals(str)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }
}
