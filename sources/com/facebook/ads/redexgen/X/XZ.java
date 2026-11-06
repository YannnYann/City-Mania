package com.facebook.ads.redexgen.X;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class XZ {
    public static Constructor<?> A00;
    public static Constructor<?> A01;
    public static Method A02;
    public static Method A03;
    public static Method A04;
    public static byte[] A05;
    public static String[] A06 = {"eu05oA", "WfEYyrkWKDczQQs6EpnQVx6r1PNsdBuZ", "6mDWkQ", "K9Z6hG9phcTLRo9VVn8qo09aG4zNy8oH", "9i09uX", "07ACxvvx6ucHgjW2fwcJ87I6TEHnGEba", "IwREdo", "Q8Or3ZDZqxr9uSZLNEJjFVWmMNJoCXAt"};

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 75);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A05 = new byte[]{-53, -34, -46, -43, -51, -48, -36, -38, -101, -45, -50, -48, -46, -49, -36, -36, -40, -101, -50, -47, -32, -101, -50, -37, -47, -33, -36, -42, -47, -27, -101, -38, -46, -47, -42, -50, -96, -101, -46, -27, -36, -35, -39, -50, -26, -46, -33, -101, -46, -45, -45, -46, -48, -31, -101, -79, -46, -45, -50, -30, -39, -31, -61, -42, -47, -46, -36, -77, -33, -50, -38, -46, -67, -33, -36, -48, -46, -32, -32, -36, -33, -111, -77, -50, -48, -31, -36, -33, -26, -111, -81, -30, -42, -39, -47, -46, -33, -35, -23, -25, -88, -32, -37, -35, -33, -36, -23, -23, -27, -88, -37, -34, -19, -88, -37, -24, -34, -20, -23, -29, -34, -14, -88, -25, -33, -34, -29, -37, -83, -88, -33, -14, -23, -22, -26, -37, -13, -33, -20, -88, -33, -32, -32, -33, -35, -18, -88, -51, -35, -37, -26, -33, -69, -24, -34, -52, -23, -18, -37, -18, -33, -50, -20, -37, -24, -19, -32, -23, -20, -25, -37, -18, -29, -23, -24, -98, -68, -17, -29, -26, -34, -33, -20, 54, 40, 55, 21, 50, 55, 36, 55, 44, 50, 49, 7, 40, 42, 53, 40, 40, 54};
    }

    static {
        A03();
    }

    public static M6 A00(float f) throws Exception {
        A04();
        Object objNewInstance = A00.newInstance(new Object[0]);
        A04.invoke(objNewInstance, Float.valueOf(f));
        Object builder = A02.invoke(objNewInstance, new Object[0]);
        AbstractC1747Ln.A01(builder);
        return null;
    }

    public static N3 A01() throws Exception {
        A04();
        Object builder = A03.invoke(A01.newInstance(new Object[0]), new Object[0]);
        AbstractC1747Ln.A01(builder);
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005d  */
    @org.checkerframework.checker.nullness.qual.EnsuresNonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A04() throws java.lang.Exception {
        /*
            java.lang.reflect.Constructor<?> r5 = com.facebook.ads.redexgen.X.XZ.A00
            r2 = 0
            r1 = 5
            r0 = 30
            java.lang.String r4 = A02(r2, r1, r0)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.XZ.A06
            r0 = 0
            r1 = r2[r0]
            r0 = 6
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L22
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L22:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.XZ.A06
            java.lang.String r1 = "gyse3TwgdjTT9qQRFr8wU78EOVzUblV4"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "qxnLeXUToHQSBEhPoOa1VGuM8Ct96GN6"
            r0 = 5
            r2[r0] = r1
            r3 = 0
            if (r5 == 0) goto L5d
            java.lang.reflect.Method r5 = com.facebook.ads.redexgen.X.XZ.A04
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.XZ.A06
            r0 = 4
            r1 = r2[r0]
            r0 = 2
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L4b
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L4b:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.XZ.A06
            java.lang.String r1 = "7nBN6UpD5k1MY1LIXOsSDDGZY9iU4q4R"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "XcRWRbcFW5xJRfg3Zi177agndEK16bFi"
            r0 = 5
            r2[r0] = r1
            if (r5 == 0) goto L5d
            java.lang.reflect.Method r0 = com.facebook.ads.redexgen.X.XZ.A02
            if (r0 != 0) goto L92
        L5d:
            r2 = 97
            r1 = 86
            r0 = 47
            java.lang.String r0 = A02(r2, r1, r0)
            java.lang.Class r6 = java.lang.Class.forName(r0)
            java.lang.Class[] r0 = new java.lang.Class[r3]
            java.lang.reflect.Constructor r0 = r6.getConstructor(r0)
            com.facebook.ads.redexgen.X.XZ.A00 = r0
            r0 = 1
            java.lang.Class[] r5 = new java.lang.Class[r0]
            java.lang.Class r0 = java.lang.Float.TYPE
            r5[r3] = r0
            r2 = 183(0xb7, float:2.56E-43)
            r1 = 18
            r0 = 120(0x78, float:1.68E-43)
            java.lang.String r0 = A02(r2, r1, r0)
            java.lang.reflect.Method r0 = r6.getMethod(r0, r5)
            com.facebook.ads.redexgen.X.XZ.A04 = r0
            java.lang.Class[] r0 = new java.lang.Class[r3]
            java.lang.reflect.Method r0 = r6.getMethod(r4, r0)
            com.facebook.ads.redexgen.X.XZ.A02 = r0
        L92:
            java.lang.reflect.Constructor<?> r0 = com.facebook.ads.redexgen.X.XZ.A01
            if (r0 == 0) goto L9a
            java.lang.reflect.Method r0 = com.facebook.ads.redexgen.X.XZ.A03
            if (r0 != 0) goto Lb7
        L9a:
            r2 = 5
            r1 = 92
            r0 = 34
            java.lang.String r0 = A02(r2, r1, r0)
            java.lang.Class r1 = java.lang.Class.forName(r0)
            java.lang.Class[] r0 = new java.lang.Class[r3]
            java.lang.reflect.Constructor r0 = r1.getConstructor(r0)
            com.facebook.ads.redexgen.X.XZ.A01 = r0
            java.lang.Class[] r0 = new java.lang.Class[r3]
            java.lang.reflect.Method r0 = r1.getMethod(r4, r0)
            com.facebook.ads.redexgen.X.XZ.A03 = r0
        Lb7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.XZ.A04():void");
    }
}
