package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.oM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class EnumC2975oM {
    public static byte[] A00;
    public static String[] A01 = {"VuOovEj", "3eqzG4MpGQsFKmJ1FhAh1Rs0IcmzaMq", "8cPXHFZMAhqCVbZy4MjUAoM8KWnfaV1Q", "pvg87rAUJ4VavSXCfB3", "cAuwKKs5SgmlS2VyUZD8JcNhiRW4eE8b", "84VVqR3", "FSvMC9", "g2tS5KUkBwjmj9FX6fx8zjNZH"};
    public static final /* synthetic */ EnumC2975oM[] A02;
    public static final EnumC2975oM A03;
    public static final EnumC2975oM A04;
    public static final EnumC2975oM A05;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 78);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-6, -3, 12, -95, -82, -82, -85, -82, -77, -84, -87, -84, -83, -75, -84};
    }

    static {
        A01();
        A05 = new EnumC2975oM(A00(8, 7, 16), 0);
        A04 = new EnumC2975oM(A00(3, 5, 14), 1);
        A03 = new EnumC2975oM(A00(0, 3, 107), 2);
        A02 = A02();
    }

    public EnumC2975oM(String str, int i) {
    }

    public static /* synthetic */ EnumC2975oM[] A02() {
        EnumC2975oM[] enumC2975oMArr = new EnumC2975oM[3];
        if (A01[7].length() == 23) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[3] = "nCVJTFbqHQDUH6AeYka";
        strArr[1] = "KzTBah8wNBFEYgBLEYyogGWDRrVA0Hr";
        enumC2975oMArr[0] = A05;
        enumC2975oMArr[1] = A04;
        enumC2975oMArr[2] = A03;
        return enumC2975oMArr;
    }

    public static EnumC2975oM valueOf(String str) {
        return (EnumC2975oM) Enum.valueOf(EnumC2975oM.class, str);
    }

    public static EnumC2975oM[] values() {
        return (EnumC2975oM[]) A02.clone();
    }
}
