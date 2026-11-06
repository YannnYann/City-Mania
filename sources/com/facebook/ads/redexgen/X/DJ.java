package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class DJ extends AbstractRunnableC3004oq {
    public static byte[] A01;
    public static String[] A02 = {"LNqwTEh", "UoGpOHWV9zHxP9FbUdEz4AfHC6dRmkkT", "hfOxm6dlyJX329RbZJiPwJyHrQdpnD2L", "dxOBxsDFly3Ic3Z24bv10J1v8B7eOgI2", "LgMDq1dJk1yoReKJo0dnYxBdoAo1sJ7B", "xQvnj7vSZUV5pzubj8OO0RfBcZ3kcgkz", "iFWo4Rp1bPuWnwdsiYVjrK4a", "qesZqXmrCSvDM9D5ryLU3XP6M74MWjBR"};
    public final /* synthetic */ C13655y A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 113);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{102, 89, 84, 85, 95, 16, 71, 81, 67, 16, 94, 85, 70, 85, 66, 16, 64, 66, 85, 64, 81, 66, 85, 84};
    }

    static {
        A01();
    }

    public DJ(C13655y c13655y) {
        this.A00 = c13655y;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        if (!this.A00.A0a) {
            C13655y c13655y = this.A00;
            String[] strArr = A02;
            if (strArr[1].charAt(13) != strArr[2].charAt(13)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[1] = "rubP5cEt439s89VQ4GFWkKBY0aIf15w5";
            strArr2[2] = "xsBepKfmc9LAf9wWQ0M2ZBIiIgFfXGPT";
            c13655y.A13(A00(0, 24, 65));
        }
    }
}
