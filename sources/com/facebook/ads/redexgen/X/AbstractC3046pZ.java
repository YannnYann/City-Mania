package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.pZ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3046pZ {
    public static byte[] A00;
    public static String[] A01 = {"qlsA4b", "67e9iwzDrWlSyrDJbKSCmibkhy79S6", "PGi2Xb0wv", "J3ucdY8b8p3u3V6sA2PqEAJioQHUL0", "SJ5yf7X3dl1YMLufO1Dqs6IGxXnF", "EpW0UnvJeecOqPtxyPHdBfv9qvjqcM", "7jpxoFlH6T04gMSo5Hymor2x0z0Gqz", "P5sy298PFyff2D1X1NbXkEJYzuYuZ05R"};

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A01[4].length() == 32) {
                throw new RuntimeException();
            }
            A01[3] = "3CeGKeDXQp3iPDSxma";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 48);
            i4++;
        }
    }

    public static void A02() {
        A00 = new byte[]{53, 50, 62, 61, 120, 115, 120, 79, 65, 78, 35, 32, 43, 44};
    }

    static {
        A02();
    }

    public static String A00(float f) {
        if (A03(f)) {
            if (A01[5].length() == 12) {
                throw new RuntimeException();
            }
            A01[2] = "LWaKw2Hdc";
            return A01(10, 4, 42);
        }
        if (A05(f)) {
            return A01(0, 4, 52);
        }
        if (A04(f)) {
            return A01(4, 3, Sdk.SDKError.Reason.TPAT_ERROR_VALUE);
        }
        return A01(7, 3, 75);
    }

    public static boolean A03(float f) {
        return f <= 0.7f;
    }

    public static boolean A04(float f) {
        return f == 1.0f;
    }

    public static boolean A05(float f) {
        return f >= 1.2f;
    }
}
