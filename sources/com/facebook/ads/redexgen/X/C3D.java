package com.facebook.ads.redexgen.X;

import com.google.common.math.ElementTypesAreNonnullByDefault;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3D, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class C3D {
    public static byte[] A00;
    public static String[] A01 = {"3J8jqkFtckCVIb", "VMokABOOpoyZC2wm3yL4B72UipUUEGqR", "zdRusIBJMPGRQXtoUAJidRMOSG3zmNHf", "516phiSQb2XWl8TTpAQ3rB2yONCN3YG2", "mFCGBwH5YwVw6sxtosJGqdKBgRufER2O", "e2E1681LRuUxuD", "3PdnMhUPcs", "aAYVzELDjEePES35Pbi66SnkSorr7d5h"};

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{123, 121, 114, 115, 54, 97, 119, 101, 54, 67, 88, 88, 83, 85, 83, 69, 69, 87, 68, 79, 58, 54, 116, 99, 98, 54, 100, 121, 99, 120, 114, 127, 120, 113, 54, 97, 119, 101, 54, 120, 115, 117, 115, 101, 101, 119, 100, 111};
        if (A01[6].length() != 10) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[4] = "xQw03xQrrzGGEKpuLnPSVsePU0l4E1Qh";
        strArr[1] = "fvHzR9JcBspzMZHsOzcsO78JN0EiEqcH";
    }

    static {
        A01();
    }

    public static void A02(boolean condition) {
        if (condition) {
        } else {
            throw new ArithmeticException(A00(0, 48, 96));
        }
    }
}
