package com.facebook.ads.redexgen.X;

import android.provider.Settings;
import android.text.TextUtils;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.af, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2139af {
    public static InterfaceC2219bx A00;
    public static byte[] A01;
    public static String[] A02 = {"b", "jWWIi2TrnHAAyoG5itvaKpzBpE6rwsKb", "4piz2zd6PBPCOA5LKuru6huyc0Gk9hmI", "ThWxRwfxtMClt6xxWNEGrvPqHoOGiBgN", "VC0ltrZe3ujZ5yBmE9F34w5pTHRf8GMT", "g0Z7XyqsbnnTrD4DkPgr08gcmreNHhpx", "VVYGWntGozQ2sTcwE1XxLnyTeGzWkyyX", "XVqTwdXEkxL4UUDwn3dakWK60VTsxJd5"};
    public static final Set<String> A03;
    public static final Set<String> A04;
    public static final AtomicBoolean A05;

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 56);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A01 = new byte[]{36, 101, 110, 8, 85, 68, 11, 77, 77, 2, 127, 10, 123, 99, 73, 104, 8, 85, 98, 15, 86, 84, 94, 81, 8, 82, 77, 74, 8, 111, 85, 73, 81, 7, 48, 127, 32, 7, 58, 38, 2, 63, 42, 33, 62, 34, 103, 27, 33, 42, 8, 36, 58, 62, 126, 37, 26, 36, 99, 53, 30, 63, 113, 70, 13, 127, 119, 30, 59, 10, 123, 54, 3, 12, 43, 35, 38, 123, 61, 63, 59, 54, 62, 14, 10, 44, 53, 23, 0, 42, 14, 114, 69, 107, 64, 81, 82, 74, 87, 78, 76, 75, 66, 5, 71, 64, 67, 74, 87, 64, 5, 76, 75, 76, 81, 4, 113, 115, 113, 96, 31, 72, 71, 115, 75, 77, 98, 79, 2, 93, 72, 124, 123, 77, 71, 80, 124, 97, 28, 64, 89, 78, 100, 20, 35, 54, 62, 37, 39, 59, 54, 57, 50, 8, 58, 56, 51, 50, 8, 56, 57, 7, 12, 29, 30, 6, 27, 2, 19, 8, 61, 85, 32, 53, 9, 53, 13, 36, 94, 55, 82, 49, 49, 50, 3, 36, 23, 40, 21, 33, 47, 95, 11, 1, 54, 90, 109};
    }

    static {
        A07();
        A03 = new HashSet();
        A04 = new HashSet();
        A03.add(A05(6, 29, 2));
        A04.add(A05(168, 29, 95));
        A04.add(A05(35, 29, Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE));
        A04.add(A05(64, 29, Sdk.SDKError.Reason.JSON_ENCODE_ERROR_VALUE));
        A04.add(A05(Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, 29, 17));
        A05 = new AtomicBoolean();
    }

    public static InterfaceC2214bs A00(C2780lA c2780lA) {
        return A03(true, c2780lA);
    }

    public static InterfaceC2214bs A01(C2780lA c2780lA) {
        return A02(true, c2780lA);
    }

    public static InterfaceC2214bs A02(boolean z, C2780lA c2780lA) {
        C2192bW c2192bW = new C2192bW();
        C2187bR c2187bRA04 = A04(c2780lA);
        if (A0B(c2780lA)) {
            c2192bW.A05(true);
        } else {
            c2192bW.A02(A04);
            c2192bW.A01(A03);
        }
        if (C3038pR.A04()) {
            Map<String, String> mapA02 = C3038pR.A02();
            String[] strArr = A02;
            if (strArr[2].charAt(7) == strArr[1].charAt(7)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[5] = "6CjO7LbqJIONUadrRHmx0RuGBypxStir";
            strArr2[3] = "VKsjD9ddp6JrHwn0FL0Df9QGs7RhJ4JT";
            c2187bRA04.A08(mapA02);
        }
        C1454Aa c1454AaA00 = AbstractC2211bp.A00();
        C2192bW networkModuleConfigurationBuilder = c2192bW.A00(c2187bRA04.A09());
        return c1454AaA00.A00(networkModuleConfigurationBuilder.A03(z).A04(c2780lA.A05().AB6()).A06(), c2780lA.A08(), ExecutorC3116qh.A01());
    }

    public static InterfaceC2214bs A03(boolean z, C2780lA c2780lA) {
        return AbstractC2211bp.A00().A00(new C2192bW().A03(z).A00(A04(c2780lA).A09()).A04(c2780lA.A05().AB6()).A06(), c2780lA.A08(), ExecutorC3116qh.A01());
    }

    public static C2187bR A04(C2780lA c2780lA) {
        A08(c2780lA);
        C2187bR c2187bR = new C2187bR();
        if (A0B(c2780lA) || C3038pR.A04()) {
            c2187bR.A02(360000).A04(UnityAdsConstants.RequestPolicy.RETRY_MAX_DURATION);
        } else {
            c2187bR.A02(C2888mv.A07(c2780lA)).A04(C2888mv.A09(c2780lA));
        }
        c2187bR.A03(C2888mv.A08(c2780lA)).A05(C2888mv.A0A(c2780lA)).A06(C2888mv.A0B(c2780lA));
        synchronized (C2139af.class) {
            if (A00 != null && (A00 instanceof InterfaceC2219bx)) {
                c2187bR.A07(A00);
            }
        }
        return c2187bR;
    }

    public static void A06() {
        A05.set(true);
    }

    public static void A08(C2780lA c2780lA) {
        if (!A05.get()) {
            c2780lA.A08().ABz(A05(161, 7, 81), AbstractC2811lf.A21, new C2812lg(A05(93, 23, 29)));
        }
    }

    public static synchronized void A09(InterfaceC2219bx interfaceC2219bx) {
        A00 = interfaceC2219bx;
    }

    public static boolean A0A(C2780lA c2780lA) {
        return Settings.Global.getInt(c2780lA.getContentResolver(), A05(145, 16, 111), 0) != 0;
    }

    public static boolean A0B(C2780lA c2780lA) {
        String strAA3 = c2780lA.A05().AA3();
        if (!TextUtils.isEmpty(strAA3)) {
            String urlPrefix = A05(3, 3, 30);
            if (!strAA3.endsWith(urlPrefix)) {
                String urlPrefix2 = A05(0, 3, 50);
                if (strAA3.endsWith(urlPrefix2)) {
                }
            }
            return true;
        }
        return false;
    }
}
