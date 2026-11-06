package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qS, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3101qS {
    public static byte[] A00;
    public static final InterfaceC3100qR A01 = null;

    static {
        A08();
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 25);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A08() {
        A00 = new byte[]{-76, -67, -62, -11, 84, 81, 85, 86, 87, -83, -53, -40, -111, -34, -118, -48, -39, -36, -41, -53, -34, -118, -34, -45, -41, -49, -104};
    }

    public static long A00() {
        if (A01 != null) {
            return A01.A6M();
        }
        return System.currentTimeMillis();
    }

    public static long A01(long j) {
        return A02(j, System.currentTimeMillis());
    }

    public static long A02(long j, long j2) {
        if (j == -1) {
            return -1L;
        }
        return j2 - j;
    }

    public static String A03(double d) {
        try {
            return String.format(Locale.US, A04(0, 4, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE), Double.valueOf(d));
        } catch (Exception e) {
            Log.e(C3101qS.class.getSimpleName(), A04(9, 18, 81), e);
            return A04(4, 5, 10);
        }
    }

    public static String A05(long j) {
        return String.valueOf(A01(j));
    }

    @Deprecated
    public static String A06(long j) {
        return A03(j / 1000.0d);
    }

    public static String A07(long j) {
        return Long.toString(j);
    }
}
