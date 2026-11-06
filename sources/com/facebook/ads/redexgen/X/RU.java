package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RU implements WB {
    public static byte[] A00;
    public static String[] A01 = {"1r6wgHYOB", "AVULDbYlNs0l2QHiZuOlUBlakjwR6sHi", "oPQAvjQgy", "hKS1W", "hqQdqbAYV", "98xG3lf1T92yQg", "F87JiG4ISjvld7dkZ7fuUjveYPqPk4To", "rkUIu0IJuzOr2WAiZbkW"};

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 85);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-100, -49, -49, -64, -56, -53, -49, -64, -65, 123, -49, -54, 123, -66, -51, -64, -68, -49, -64, 123, -65, -64, -66, -54, -65, -64, -51, 123, -63, -54, -51, 123, -48, -55, -50, -48, -53, -53, -54, -51, -49, -64, -65, 123, -88, -92, -88, -96, 123, -49, -44, -53, -64, -107, 123, -41, -26, -26, -30, -33, -39, -41, -22, -33, -27, -28, -91, -39, -37, -41, -93, -84, -90, -82, 21, 36, 36, 32, 29, 23, 21, 40, 29, 35, 34, -29, 23, 25, 21, -31, -21, -28, -20, -57, -42, -42, -46, -49, -55, -57, -38, -49, -43, -44, -107, -54, -36, -56, -39, -37, -56, -39, -17, -2, -2, -6, -9, -15, -17, 2, -9, -3, -4, -67, -2, -11, 1, 6, 21, 21, 17, 14, 8, 6, 25, 14, 20, 19, -44, 25, 25, 18, 17, -48, 29, 18, 17, -31, -16, -16, -20, -23, -29, -31, -12, -23, -17, -18, -81, -8, -83, -19, -16, -76, -83, -29, -27, -31, -83, -74, -80, -72, -23, -8, -8, -12, -15, -21, -23, -4, -15, -9, -10, -73, 0, -75, -11, -8, -68, -75, -2, -4, -4, -60, -45, -45, -49, -52, -58, -60, -41, -52, -46, -47, -110, -37, -112, -44, -40, -52, -58, -50, -41, -52, -48, -56, -112, -41, -37, -106, -54, 0, 15, 15, 11, 8, 2, 0, 19, 8, 14, 13, -50, 23, -52, 18, 20, 1, 17, 8, 15, 59, 44, 63, 59, -10, 61, 59, 59, -39, -54, -35, -39, -108, -35, -110, -54, -35, -44, -43, -47, -58, -34, -54, -41, -110, -56, -38, -54, -40, 40, 25, 44, 40, -29, 44, -31, 39, 39, 21};
        if (A01[4].length() == 3) {
            throw new RuntimeException();
        }
        A01[5] = "LxaIdH5cBJxmS6v2";
    }

    static {
        A01();
    }

    @Override // com.facebook.ads.redexgen.X.WB
    public final InterfaceC1821Ok A5t(VC vc) {
        byte b;
        String str = vc.A0W;
        if (str != null) {
            switch (str.hashCode()) {
                case 1201784583:
                    String mimeType = A00(249, 21, 16);
                    if (str.equals(mimeType)) {
                        b = 0;
                        break;
                    }
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    return new C8k();
            }
        }
        StringBuilder sb = new StringBuilder();
        String mimeType2 = A00(0, 55, 6);
        throw new IllegalArgumentException(sb.append(mimeType2).append(str).toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00e5  */
    @Override // com.facebook.ads.redexgen.X.WB
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean ALg(com.facebook.ads.redexgen.X.VC r8) {
        /*
            Method dump skipped, instruction units count: 266
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.RU.ALg(com.facebook.ads.redexgen.X.VC):boolean");
    }
}
