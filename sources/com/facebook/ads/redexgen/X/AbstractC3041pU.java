package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdSize;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.pU, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3041pU {
    public static byte[] A00;
    public static String[] A01 = {"gFe3mTVqEc", "o3XICwck3thy8t5khkuFfgIyTYcE10rb", "CXZamXhEArpjjLRWzP01hTJHhdHKIPhL", "oFEH5ENhqq8Jzm18l75xaKQx7AXJNwzV", "R1QKRY6v8stJjzPTGoE1sFm3d511QSKK", "fRlItu1oZcW1vgjv2TfsauDW1x1gg146", "rMZj8KW6uJSswCV0wJ61u4oJuHgPLcpr", "VRcOG4k1oxgWu574CIBxVkEWQ"};
    public static final Map<EnumC2949nw, EnumC2950nx> A02;

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 25);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A00 = new byte[]{125, 95, 80, 25, 74, 30, 93, 76, 91, 95, 74, 91, 30, 127, 90, 109, 87, 68, 91, 30, 75, 77, 87, 80, 89, 30, 74, 86, 87, 77, 30, 73, 87, 90, 74, 86, 30, 95, 80, 90, 30, 86, 91, 87, 89, 86, 74, 16, 115, 72, 77, 72, 73, 81, 72, 6, 103, 66, 117, 79, 92, 67, 6, 82, 95, 86, 67, 8};
    }

    static {
        A07();
        A02 = new HashMap();
        A02.put(EnumC2949nw.A08, EnumC2950nx.A0C);
        A02.put(EnumC2949nw.A06, EnumC2950nx.A0E);
        A02.put(EnumC2949nw.A05, EnumC2950nx.A0D);
    }

    public static AdSize A00(EnumC2949nw enumC2949nw) {
        return AdSize.fromWidthAndHeight(enumC2949nw.A04(), enumC2949nw.A03());
    }

    public static AdSize A01(EnumC2950nx enumC2950nx) {
        for (Map.Entry<EnumC2949nw, EnumC2950nx> entry : A02.entrySet()) {
            if (entry.getValue() == enumC2950nx) {
                return A00(entry.getKey());
            }
        }
        AdSize adSize = AdSize.BANNER_320_50;
        if (A01[2].charAt(13) != 'L') {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[3] = "8yxIcOBY3dyXYw8tx9RnPYEelWv3PiEU";
        strArr[5] = "RuT7gwLbx9UlwnZGushHq4GsGVsr9kdh";
        return adSize;
    }

    public static EnumC2949nw A02(int i) {
        switch (i) {
            case 4:
                return EnumC2949nw.A04;
            case 5:
                return EnumC2949nw.A05;
            case 6:
                return EnumC2949nw.A06;
            case 7:
                return EnumC2949nw.A08;
            case 100:
                return EnumC2949nw.A07;
            default:
                throw new IllegalArgumentException(A06(48, 20, 63));
        }
    }

    public static EnumC2949nw A03(int i, int i2) {
        if (EnumC2949nw.A07.A03() == i2 && EnumC2949nw.A07.A04() == i) {
            EnumC2949nw enumC2949nw = EnumC2949nw.A07;
            if (A01[2].charAt(13) != 'L') {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[4] = "oPyqycdUDaMLkpnFUSD1lOVVut5Ak4ux";
            strArr[6] = "t44MnsVi8idfM7jbHI01veBsrnLqKP4H";
            return enumC2949nw;
        }
        if (EnumC2949nw.A04.A03() == i2 && EnumC2949nw.A04.A04() == i) {
            return EnumC2949nw.A04;
        }
        if (EnumC2949nw.A05.A03() == i2 && EnumC2949nw.A05.A04() == i) {
            EnumC2949nw enumC2949nw2 = EnumC2949nw.A05;
            if (A01[1].charAt(1) == 'd') {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[4] = "zTuOoFSTcjvo6siKnZ91TQqR6FN8Kxgy";
            strArr2[6] = "bIxUq8CGRMwo1zGvdui1T5X5wsDAfXTH";
            return enumC2949nw2;
        }
        if (EnumC2949nw.A06.A03() == i2 && EnumC2949nw.A06.A04() == i) {
            return EnumC2949nw.A06;
        }
        if (EnumC2949nw.A08.A03() == i2 && EnumC2949nw.A08.A04() == i) {
            return EnumC2949nw.A08;
        }
        throw new IllegalArgumentException(A06(0, 48, 39));
    }

    public static EnumC2949nw A04(AdSize adSize) {
        return A03(adSize.getWidth(), adSize.getHeight());
    }

    public static EnumC2950nx A05(EnumC2949nw enumC2949nw) {
        EnumC2950nx adTemplate = A02.get(enumC2949nw);
        if (adTemplate == null) {
            EnumC2950nx enumC2950nx = EnumC2950nx.A0F;
            if (A01[1].charAt(1) == 'd') {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[3] = "UG6JCyDXDBzWMb76AfK0hQ3l3bgkgswO";
            strArr[5] = "9YhmwLNWXnVy8pTRO5fFllqJZ4ALiPvn";
            return enumC2950nx;
        }
        return adTemplate;
    }
}
