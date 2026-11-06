package com.facebook.ads.redexgen.X;

import com.google.common.collect.ElementTypesAreNonnullByDefault;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class W7 {
    public static byte[] A00;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 63);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-39, 28, 26, 39, 39, 40, 45, -39, 27, 30, -39, 39, 30, 32, 26, 45, 34, 47, 30, -39, 27, 46, 45, -39, 48, 26, 44, -13, -39, -120, -71, -64, -73, -73, 32, 33, -46, 21, 19, 30, 30, 37, -46, 38, 33, -46, 32, 23, 42, 38, -38, -37, -46, 37, 27, 32, 21, 23, -46, 38, 26, 23, -46, 30, 19, 37, 38, -46, 21, 19, 30, 30, -46, 38, 33, -46, 36, 23, 31, 33, 40, 23, -38, -37, 21, 28, 19, 19, -57, 18, 12, 32, -57, 16, 21, -57, 12, 21, 27, 25, 32, -31, -57, 21, 28, 19, 19, -28, -76, -69, -78, -78, 102, -68, -89, -78, -69, -85, 102, -81, -76, 102, -85, -76, -70, -72, -65, -128, 102};
    }

    public static int A00(int value, String name) {
        if (value >= 0) {
            return value;
        }
        throw new IllegalArgumentException(name + A01(0, 29, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE) + value);
    }

    public static void A03(Object key, Object value) {
        if (key != null) {
            if (value != null) {
                return;
            } else {
                throw new NullPointerException(A01(108, 21, 7) + key + A01(29, 5, 12));
            }
        }
        throw new NullPointerException(A01(84, 24, 104) + value);
    }

    public static void A04(boolean canRemove) {
        AbstractC2020Wu.A0F(canRemove, A01(34, 50, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE));
    }
}
