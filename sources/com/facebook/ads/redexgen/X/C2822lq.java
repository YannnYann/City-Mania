package com.facebook.ads.redexgen.X;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.lq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2822lq {
    public static byte[] A02;
    public static String[] A03 = {"4UXivJ9bWzVmUKEORuimcsc25E9yHKjM", "eA36e27H2SQKTgfHA43cU1z3ajsDp04A", "C0QLMKXu1JepGMQqxbYq5t6gzwkqhJGP", "Vxu4w1TEkVm1YGegZeLuyUzWRGhVVehU", "9DWEeZJi13noDyT5Fh2XUwX4KzxcmXKd", "eTzqs10iSeQQ2KrnCOv26Mt4rNMbsJLV", "s8UczS0FAxqS0Axd9J", "JShALZiYLlnObKc6igiSgdntorMevFdl"};
    public static final String A04;
    public final C2780lA A00;
    public final String A01;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 84);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{-17, -4, -14, 0, -3, -9, -14, -68, -2, -13, 0, -5, -9, 1, 1, -9, -3, -4, -68, -48, -41, -36, -46, -19, -49, -47, -47, -45, -31, -31, -41, -48, -41, -38, -41, -30, -25, -19, -31, -45, -32, -28, -41, -47, -45, -47, -49, -40, -49, -36, -45, -51, -13, -21, -14, -15, -24};
    }

    static {
        A02();
        A04 = Build.VERSION.RELEASE;
    }

    public C2822lq(C2780lA c2780lA) {
        this(c2780lA, null);
    }

    public C2822lq(C2780lA c2780lA, String str) {
        this.A00 = c2780lA;
        this.A01 = str;
    }

    private String A00() {
        int i;
        if (this.A01 != null) {
            return this.A01;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            i = 67108864;
        } else {
            i = 0;
        }
        PendingIntent activity = PendingIntent.getActivity(this.A00, 0, new Intent(), i);
        if (activity == null) {
            return A01(0, 0, 80);
        }
        String creatorPackage = activity.getCreatorPackage();
        String[] strArr = A03;
        String str = strArr[4];
        String str2 = strArr[7];
        int iCharAt = str.charAt(10);
        int flags = str2.charAt(10);
        if (iCharAt != flags) {
            throw new RuntimeException();
        }
        String[] strArr2 = A03;
        strArr2[4] = "M2XECY7QMXn1FrH7rdbJ4411TvNMNnZf";
        strArr2[7] = "sSn4zkmjSjnaGqTVBa9HJwb0pjYj5M5c";
        return creatorPackage;
    }

    public final int A03() {
        return AbstractC3045pY.A01(this.A00);
    }

    public final int A04() {
        try {
            return this.A00.getPackageManager().getPackageInfo(A00(), 0).versionCode;
        } catch (Throwable t) {
            this.A00.A08().ABz(A01(45, 7, 22), AbstractC2811lf.A1M, new C2812lg(t));
            return 0;
        }
    }

    public final String A05() {
        try {
            CharSequence appLabel = this.A00.getPackageManager().getApplicationLabel(this.A00.getPackageManager().getApplicationInfo(A00(), 0));
            if (appLabel != null && appLabel.length() > 0) {
                return appLabel.toString();
            }
        } catch (Throwable th) {
            this.A00.A08().ABz(A01(45, 7, 22), AbstractC2811lf.A1M, new C2812lg(th));
        }
        if (A03[6].length() != 18) {
            throw new RuntimeException();
        }
        A03[6] = "1fZ6UIp0jk3A9Vyxip";
        return A01(0, 0, 80);
    }

    public final String A06() {
        String str = null;
        try {
            str = this.A00.getPackageManager().getPackageInfo(A00(), 0).versionName;
        } catch (Throwable t) {
            InterfaceC2810le interfaceC2810leA08 = this.A00.A08();
            int i = AbstractC2811lf.A1M;
            C2812lg c2812lg = new C2812lg(t);
            String appVersionName = A01(45, 7, 22);
            interfaceC2810leA08.ACp(appVersionName, i, c2812lg);
        }
        return !TextUtils.isEmpty(str) ? str : A01(0, 0, 80);
    }

    public final String A07() {
        String bundleOverride = this.A00.A05().A7j();
        if (bundleOverride != null) {
            return bundleOverride;
        }
        return A00();
    }

    public final String A08() {
        String operatorName;
        TelephonyManager telephonyManager = (TelephonyManager) this.A00.getSystemService(A01(52, 5, 47));
        if (telephonyManager != null && (operatorName = telephonyManager.getNetworkOperatorName()) != null && operatorName.length() > 0) {
            return operatorName;
        }
        String[] strArr = A03;
        if (strArr[5].charAt(29) != strArr[2].charAt(29)) {
            throw new RuntimeException();
        }
        A03[0] = "4uAFXpJjJNyMuVCL4IR188dhDRybrTml";
        return A01(0, 0, 80);
    }

    public final String A09() {
        if (Build.MANUFACTURER != null) {
            int length = Build.MANUFACTURER.length();
            String[] strArr = A03;
            if (strArr[5].charAt(29) != strArr[2].charAt(29)) {
                throw new RuntimeException();
            }
            A03[0] = "4KWcrXNI2CiMu5mhxtQIP5VVZPBJmlLQ";
            if (length > 0) {
                return Build.MANUFACTURER;
            }
        }
        return A01(0, 0, 80);
    }

    public final String A0A() {
        return (Build.MODEL == null || Build.MODEL.length() <= 0) ? A01(0, 0, 80) : Build.MODEL;
    }

    public final String A0B() {
        String installer_name;
        try {
            String strA00 = A00();
            if (strA00 != null && strA00.length() >= 0 && (installer_name = this.A00.getPackageManager().getInstallerPackageName(strA00)) != null) {
                if (installer_name.length() > 0) {
                    return installer_name;
                }
            }
        } catch (Throwable th) {
            this.A00.A08().ACp(A01(45, 7, 22), AbstractC2811lf.A1M, new C2812lg(th));
        }
        return A01(0, 0, 80);
    }

    public final boolean A0C() {
        return this.A00.checkCallingOrSelfPermission(A01(0, 45, 58)) == 0;
    }
}
