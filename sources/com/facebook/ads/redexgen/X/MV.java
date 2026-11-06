package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.Log;
import com.vungle.ads.internal.protos.Sdk;
import java.net.UnknownHostException;
import java.util.Arrays;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class MV {
    public static int A00;
    public static MU A01;
    public static boolean A02;
    public static byte[] A03;
    public static final Object A04;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 66);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{93, -103, -116, -94, -94, -44, -44, -44, -44, -82, -57, -60, -57, -56, -48, -57, -95, -56, -52, -51, -98, -47, -68, -66, -55, -51, -62, -56, -57, 121, -127, -57, -56, 121, -57, -66, -51, -48, -56, -53, -60, -126};
    }

    static {
        A03();
        A04 = new Object();
        A00 = 0;
        A02 = true;
        A01 = MU.A00;
    }

    @Pure
    public static String A01(String str, Throwable th) {
        String strA02 = A02(th);
        if (!TextUtils.isEmpty(strA02)) {
            StringBuilder sbAppend = new StringBuilder().append(str);
            String strA00 = A00(2, 3, 64);
            StringBuilder sbAppend2 = sbAppend.append(strA00);
            String throwableString = A00(1, 1, 77);
            return sbAppend2.append(strA02.replace(throwableString, strA00)).append('\n').toString();
        }
        return str;
    }

    @Pure
    public static String A02(Throwable th) {
        synchronized (A04) {
            if (th == null) {
                return null;
            }
            if (A0B(th)) {
                return A00(9, 33, 23);
            }
            if (!A02) {
                return th.getMessage();
            }
            return Log.getStackTraceString(th).trim().replace(A00(0, 1, 18), A00(5, 4, Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE));
        }
    }

    @Pure
    public static void A04(String str, String str2) {
        synchronized (A04) {
            int i = A00;
        }
    }

    @Pure
    public static void A05(String str, String str2) {
        synchronized (A04) {
            if (A00 <= 3) {
                A01.A6q(str, str2);
            }
        }
    }

    @Pure
    public static void A06(String str, String str2) {
        synchronized (A04) {
            if (A00 <= 1) {
                A01.AAX(str, str2);
            }
        }
    }

    @Pure
    public static void A07(String str, String str2) {
        synchronized (A04) {
            if (A00 <= 2) {
                A01.AM6(str, str2);
            }
        }
    }

    @Pure
    public static void A08(String str, String str2, Throwable th) {
        A05(str, A01(str2, th));
    }

    @Pure
    public static void A09(String str, String str2, Throwable th) {
        A06(str, A01(str2, th));
    }

    @Pure
    public static void A0A(String str, String str2, Throwable th) {
        A07(str, A01(str2, th));
    }

    @Pure
    public static boolean A0B(Throwable th) {
        while (th != null) {
            if (th instanceof UnknownHostException) {
                return true;
            }
            th = th.getCause();
        }
        return false;
    }
}
