package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import com.facebook.ads.internal.settings.AdInternalSettings;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.pW, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3043pW {
    public static byte[] A00;
    public static final Handler A01;
    public static final Set<String> A02;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 118);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{-60, -52, 8, 13, 23, 20, 16, 5, 29, 9, 8, -60, 10, 19, 22, -60, 24, 9, 23, 24, -60, 5, 8, 23, -60, 19, 18, 16, 29, -51, -4, 8, 6, -57, -1, -6, -4, -2, -5, 8, 8, 4, -57, 4, -6, 13, -6, 7, -6, 61, 73, 71, 8, 64, 59, 61, 63, 60, 73, 73, 69, 8, 81, 59, 69, 67, 84, 59, 77, 66, 67};
    }

    static {
        A03();
        A02 = new HashSet();
        A01 = new Handler(Looper.getMainLooper());
    }

    public static void A04(Context context, String str) {
        if (AdInternalSettings.isTestMode(context)) {
            String str2 = str + A01(0, 30, 46);
        }
    }

    public static void A05(C1642Hh c1642Hh, InterfaceC3081q8 interfaceC3081q8, String str) {
        if (str == null || A02.contains(str)) {
            return;
        }
        boolean isPackageInstalled = A08(c1642Hh.getPackageManager(), str);
        if (isPackageInstalled) {
            interfaceC3081q8.AGA(str);
            return;
        }
        A02.add(str);
        A01.removeCallbacksAndMessages(null);
        A01.postDelayed(new RunnableC3042pV(new int[]{0}, str, c1642Hh, interfaceC3081q8), 1000L);
    }

    public static void A06(C1642Hh c1642Hh, String str) {
        boolean isWithinFB = c1642Hh.getPackageName().equals(A01(30, 19, 35)) || c1642Hh.getPackageName().equals(A01(49, 22, 100));
        if (isWithinFB) {
            A01.removeCallbacksAndMessages(null);
            A02.remove(str);
        } else {
            AbstractC2487gJ.A00(c1642Hh).A0K(str, null, 5);
        }
    }

    public static void A07(C1642Hh c1642Hh, String str, InterfaceC3081q8 interfaceC3081q8) {
        boolean isWithinFB = c1642Hh.getPackageName().equals(A01(30, 19, 35)) || c1642Hh.getPackageName().equals(A01(49, 22, 100));
        if (isWithinFB) {
            A05(c1642Hh, interfaceC3081q8, str);
        } else {
            AbstractC2487gJ.A00(c1642Hh).A0K(str, interfaceC3081q8, 4);
        }
    }

    public static boolean A08(PackageManager packageManager, String str) {
        if (packageManager == null) {
            return false;
        }
        try {
            packageManager.getPackageGids(str);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }
}
