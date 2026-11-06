package com.facebook.ads.redexgen.X;

import com.google.android.gms.common.api.Api;
import com.google.common.math.ElementTypesAreNonnullByDefault;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3E, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class C3E {
    public static int[] A00;
    public static byte[] A01;
    public static String[] A02 = {"3UTkfwn6K7hub3oSykDR4YWc4JYZPG6B", "bBZzgUXqdJt0bIhPLXTZPSKPZqrRCxQc", "LN0PxDb", "rv9BRS9egSNnouL6XGxaWxl8aaFKUaGh", "c0VUAQb", "IFPSnDIjLqN07mJ9dnRJCEZ58x", "JBc5EwwssPT7nZDSNoBNSDq4zcJOv5mi", "eMc8QEGJeDPknecFPTmxaVoTObn48C1Z"};
    public static final byte[] A03;
    public static final int[] A04;
    public static final int[] A05;
    public static final int[] A06;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A02[1].charAt(28) == '5') {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[6] = "BDIiZFGi6hgSnKmuGtSqDB6yHVUb97Qx";
            strArr[7] = "6in5GNkPaOW1nchr315bnpnxufKtPvky";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 126);
            i4++;
        }
    }

    public static void A02() {
        byte[] bArr = {-18, -33, 33, 56, -33, 57, 36, 49, 46};
        String[] strArr = A02;
        if (strArr[6].charAt(12) != strArr[7].charAt(12)) {
            throw new RuntimeException();
        }
        A02[5] = "lJxR098gmGx4fTGNNjNIxN1tgVh8b";
        A01 = bArr;
    }

    static {
        A02();
        A03 = new byte[]{9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0};
        A05 = new int[]{1, 10, 100, 1000, UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS, 100000, 1000000, 10000000, 100000000, 1000000000};
        A04 = new int[]{3, 31, Sdk.SDKError.Reason.GENERATE_JSON_DATA_ERROR_VALUE, 3162, 31622, 316227, 3162277, 31622776, 316227766, Api.BaseClientBuilder.API_PRIORITY_OTHER};
        A06 = new int[]{1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600};
        A00 = new int[]{Api.BaseClientBuilder.API_PRIORITY_OTHER, Api.BaseClientBuilder.API_PRIORITY_OTHER, 65536, 2345, 477, 193, 110, 75, 58, 49, 43, 39, 37, 35, 34, 34, 33};
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int A00(int r7, int r8, java.math.RoundingMode r9) {
        /*
            com.facebook.ads.redexgen.X.AbstractC2020Wu.A04(r9)
            if (r8 == 0) goto L86
            int r6 = r7 / r8
            int r0 = r8 * r6
            int r2 = r7 - r0
            if (r2 != 0) goto Le
            return r6
        Le:
            r7 = r7 ^ r8
            int r5 = r7 >> 31
            r4 = 1
            r5 = r5 | r4
            int[] r1 = com.facebook.ads.redexgen.X.C3F.A00
            int r0 = r9.ordinal()
            r0 = r1[r0]
            switch(r0) {
                case 1: goto L7a;
                case 2: goto L7f;
                case 3: goto L75;
                case 4: goto L73;
                case 5: goto L6e;
                case 6: goto L24;
                case 7: goto L24;
                case 8: goto L24;
                default: goto L1e;
            }
        L1e:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        L24:
            int r1 = java.lang.Math.abs(r2)
            int r0 = java.lang.Math.abs(r8)
            int r0 = r0 - r1
            int r1 = r1 - r0
            if (r1 != 0) goto L69
            java.math.RoundingMode r0 = java.math.RoundingMode.HALF_UP
            if (r9 == r0) goto L80
            java.math.RoundingMode r3 = java.math.RoundingMode.HALF_EVEN
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C3E.A02
            r0 = 3
            r1 = r1[r0]
            r0 = 18
            char r1 = r1.charAt(r0)
            r0 = 120(0x78, float:1.68E-43)
            if (r1 == r0) goto L4b
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L4b:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C3E.A02
            java.lang.String r1 = "AzJBOuukzTnanyKlIQNVu2JNI20j7ONA"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "HWLYW3FSSeuUnArC75ETIJeUAFyLzkLa"
            r0 = 7
            r2[r0] = r1
            if (r9 != r3) goto L65
            r1 = 1
        L5a:
            r0 = r6 & 1
            if (r0 == 0) goto L63
            r0 = 1
        L5f:
            r1 = r1 & r0
            if (r1 == 0) goto L67
            goto L80
        L63:
            r0 = 0
            goto L5f
        L65:
            r1 = 0
            goto L5a
        L67:
            r4 = 0
            goto L80
        L69:
            if (r1 <= 0) goto L6c
            goto L80
        L6c:
            r4 = 0
            goto L80
        L6e:
            if (r5 <= 0) goto L71
            goto L80
        L71:
            r4 = 0
            goto L80
        L73:
            r4 = 1
            goto L80
        L75:
            if (r5 >= 0) goto L78
            goto L80
        L78:
            r4 = 0
            goto L80
        L7a:
            if (r2 != 0) goto L84
        L7c:
            com.facebook.ads.redexgen.X.C3D.A02(r4)
        L7f:
            r4 = 0
        L80:
            if (r4 == 0) goto L83
            int r6 = r6 + r5
        L83:
            return r6
        L84:
            r4 = 0
            goto L7c
        L86:
            r2 = 0
            r1 = 9
            r0 = 65
            java.lang.String r1 = A01(r2, r1, r0)
            java.lang.ArithmeticException r0 = new java.lang.ArithmeticException
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3E.A00(int, int, java.math.RoundingMode):int");
    }
}
