package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class US implements InterfaceC1703Jt {
    public static byte[] A00;
    public static String[] A01 = {"pxbE8CbVMn0HMd8pOLx5VEeSKVuz7J", "D9FyXhCgkpn33g7tQZQ87YSYkoJd0iI9", "1UcEAJz52eASMCajPdaYMls", "VDt96Ibt3zVaENrBDbwzrIItfvd0r", "neAX0skpviQ2Gn2VmiV44M", "G5YUYYJQD9C8dI2qfqy70SZ8y3X", "CX4CKJ54CnMQHf", "KHPPNLPletdgxiTXeDCRkAWzA0TCW"};
    public static final String A02;
    public static final InterfaceC1702Js<US> A03;

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 108);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A00 = new byte[]{115, 72, 77, 72, 73, 81, 72, 6, 116, 71, 82, 79, 72, 65, 114, 95, 86, 67, 28, 6};
    }

    static {
        A07();
        A02 = N1.A0h(0);
        A03 = new InterfaceC1702Js() { // from class: com.facebook.ads.redexgen.X.UT
            @Override // com.facebook.ads.redexgen.X.InterfaceC1702Js
            public final InterfaceC1703Jt A7F(Bundle bundle) {
                return US.A04(bundle);
            }
        };
    }

    public static US A04(Bundle bundle) {
        int i = bundle.getInt(A02, -1);
        switch (i) {
            case 0:
                US us = (US) C9Q.A02.A7F(bundle);
                String[] strArr = A01;
                String str = strArr[7];
                String str2 = strArr[3];
                int length = str.length();
                int ratingType = str2.length();
                if (length != ratingType) {
                    throw new RuntimeException();
                }
                A01[4] = "6";
                return us;
            case 1:
                return (US) C9O.A03.A7F(bundle);
            case 2:
                InterfaceC1703Jt interfaceC1703JtA7F = C9N.A04.A7F(bundle);
                if (A01[1].charAt(29) == 'U') {
                    throw new RuntimeException();
                }
                A01[6] = "vasSaGLceCci1P";
                return (US) interfaceC1703JtA7F;
            case 3:
                InterfaceC1702Js<C9M> interfaceC1702Js = C9M.A02;
                if (A01[1].charAt(29) == 'U') {
                    throw new RuntimeException();
                }
                A01[6] = "MKj3bQleDVjGTl";
                return (US) interfaceC1702Js.A7F(bundle);
            default:
                throw new IllegalArgumentException(A06(0, 20, 74) + i);
        }
    }
}
