package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.f5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2411f5 {
    public static byte[] A00;
    public static String[] A01 = {"k8frRPm7mgDqxAioixpogczqOVsCxRz8", "VyYaCRL1y3X", "xcDZJmUacSFiJANDAcoJ8UiTqUSchCBm", "q1LjJBebIK3uZB", "OZ3nRZor67qkEvoJ2248OadtkqMar1jr", "9EpE4gWNiaa9VWptaK6T5q1Hhg83q3wa", "tRUyTf0EhWGqzTGUgievnYWyHE", "mWi8o8YvCa"};

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 71);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{64, 87, 69, 83, 64, 86, 87, 86, 109, 68, 91, 86, 87, 93};
        String[] strArr = A01;
        if (strArr[6].length() == strArr[1].length()) {
            throw new RuntimeException();
        }
        A01[0] = "wdMA9wmxCDvCLZH0HoZEqH4eQGBlUk25";
    }

    static {
        A01();
    }

    public static void A02(C1643Hi c1643Hi, C13997g c13997g, InterfaceC2412f6 interfaceC2412f6, AtomicBoolean atomicBoolean, LG lg) {
        String strA08 = c13997g.A32().A0I().A08();
        if (TextUtils.isEmpty(strA08)) {
            interfaceC2412f6.AGw(lg, AdError.INTERNAL_ERROR);
            return;
        }
        C2771kz c2771kz = new C2771kz(c1643Hi);
        c2771kz.A0e(new C2917nO(c13997g.A37(), c1643Hi.A0A()));
        c2771kz.A0c(new C2769kx(strA08, AbstractC2460fs.A00(c13997g.A32().A0I()), AbstractC2460fs.A01(c13997g.A32().A0I()), c13997g.A1r(), A00(0, 14, Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE)));
        c2771kz.A0X(new LH(atomicBoolean, interfaceC2412f6, lg), new C2764ks(c13997g.A1r(), A00(0, 14, Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE)));
    }
}
