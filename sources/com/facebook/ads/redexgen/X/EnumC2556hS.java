package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hS, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class EnumC2556hS {
    public static byte[] A00;
    public static String[] A01 = {"5OO1eWJNP7Y3s5cQVhBQzuf4m1TAFPYu", "jypq8Huvx", "jrpdYYVceDk6A6K9eES7EYlVVXbr1rnB", "0AH7qFhs7PL8sRdpBGyIu3", "QWErYf377ArBGiXitK75JQXJw", "6gjozywHn1tStRqNZ4amJv", "kQUf5kbyDrtyo", "1dtSAN9pZ"};
    public static final /* synthetic */ EnumC2556hS[] A02;
    public static final EnumC2556hS A03;
    public static final EnumC2556hS A04;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 3);
            if (A01[7].length() != 9) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[6] = "4K3nSgRyXAG8o";
            strArr[4] = "A3wHnoq4BiJ6LQy7c3XTOTZiL";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{117, 114, 122, 115, 106, 122, 107, 124, 124, 119, 106, 113, 118, 109, 106};
    }

    static {
        A01();
        A04 = new EnumC2556hS(A00(4, 11, 58), 0);
        A03 = new EnumC2556hS(A00(0, 4, 63), 1);
        A02 = A02();
    }

    public EnumC2556hS(String str, int i) {
    }

    public static /* synthetic */ EnumC2556hS[] A02() {
        EnumC2556hS[] enumC2556hSArr = new EnumC2556hS[2];
        enumC2556hSArr[0] = A04;
        if (A01[3].length() != 22) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[5] = "JlDjy95TN7ugX9lllrmiZN";
        strArr[1] = "bmzAisU8h";
        enumC2556hSArr[1] = A03;
        return enumC2556hSArr;
    }

    public static EnumC2556hS valueOf(String str) {
        return (EnumC2556hS) Enum.valueOf(EnumC2556hS.class, str);
    }

    public static EnumC2556hS[] values() {
        return (EnumC2556hS[]) A02.clone();
    }
}
