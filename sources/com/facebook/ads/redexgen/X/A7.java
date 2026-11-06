package com.facebook.ads.redexgen.X;

import com.google.common.base.ElementTypesAreNonnullByDefault;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class A7 implements InterfaceC2019Wt<Character> {
    public static byte[] A00;
    public static String[] A01 = {"GbcfrjLUfp8w0P4gurnefu7qqJ2fGe9p", "yZ1NnIxY3LoDyA1KO25v72kmehW0q22Y", "L6NFLAYfXYXn5jEnCXJVfFMiQ", "fY4zR4wEiUBpjmhWA1NTXgXmQ84pakDY", "aTyjwYRMxP0NkQJYC0w1a11gRifCCOxe", "LAyOdbAMCUXjcKWk9nmscGtooQ76avY5", "8nSriA", "PMSIAx8or4nEOrwH6tq0a7y2ifOPTvto"};

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = bArrCopyOfRange[i4];
            if (A01[2].length() != 25) {
                throw new RuntimeException();
            }
            A01[3] = "GCNct8dUKS5Qw929iXaDghOlI4Hpgmaf";
            bArrCopyOfRange[i4] = (byte) ((b - i3) - 81);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        if (A01[5].charAt(4) != 'd') {
            throw new RuntimeException();
        }
        A01[6] = "gmMuhJyoJZysiropfk5zNccQaZAT";
        A00 = new byte[]{-80, -79, -78, -77, -76, -75, -74, -73, -72, -71, -63, -62, -61, -60, -59, -58};
    }

    public abstract boolean A09(char c);

    static {
        A07();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.ads.redexgen.X.3f] */
    public static C12953f A02(final char match) {
        return new AbstractC13274m(match) { // from class: com.facebook.ads.redexgen.X.3f
            public static byte[] A01;
            public static String[] A02 = {"NxqGqTZUQETcgq2rXBS4xtbdvlNlR1y3", "pV0DJzjJshvpb0WbpHFoBAD9eKMFVG54", "Y9B5lLaBh3i9xXRFgmKo5pUZnq6EAl6S", "xurYSqzDXxeq6RR4kdoPThulbYjmhcNN", "OkeuDeYE5nZgKCnnmQGL6opbrsH3ZsPn", "VDZXocDz9yBZapBRE5S", "YZTQyYlWT2", "X5swP6E0rPFu3WQ7lpBD4kVQs"};
            public final char A00;

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 86);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A01() {
                byte[] bArr = {60, 50, 28, 55, 62, 45, 18, 62, 43, 60, 55, 58, 45, 113, 54, 44, 119, 120};
                String[] strArr = A02;
                if (strArr[0].charAt(13) == strArr[3].charAt(13)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A02;
                strArr2[2] = "sU5IXopOzYimqsgEOE0KaLoNEPzhLWew";
                strArr2[4] = "KYUeYNmjbo9ReZgJEVkZpFK54fHivsBh";
                A01 = bArr;
            }

            static {
                A01();
            }

            {
                this.A00 = match;
            }

            @Override // com.facebook.ads.redexgen.X.A7
            public final boolean A09(char c) {
                return c == this.A00;
            }

            public final String toString() {
                return A00(2, 16, 9) + A7.A04(this.A00) + A00(0, 2, 77);
            }
        };
    }

    public static A7 A03() {
        return C3S.A02;
    }

    public static String A04(char c) {
        String strA06 = A06(0, 16, 47);
        char[] cArr = {'\\', 'u', 0, 0, 0, 0};
        int i = 0;
        while (true) {
            String[] strArr = A01;
            if (strArr[0].charAt(15) == strArr[7].charAt(15)) {
                throw new RuntimeException();
            }
            A01[3] = "6RTpnGqE8iNrYUS4KrMQUlhRqtIpsCCp";
            if (i < 4) {
                cArr[5 - i] = strA06.charAt(c & 15);
                c = (char) (c >> 4);
                i++;
            } else {
                String hex = String.copyValueOf(cArr);
                return hex;
            }
        }
    }

    public int A08(CharSequence sequence, int start) {
        int i = sequence.length();
        AbstractC2020Wu.A01(start, i);
        while (start < i) {
            if (A09(sequence.charAt(start))) {
                return start;
            }
            start++;
        }
        return -1;
    }

    @Deprecated
    public boolean A0A(Character character) {
        return A09(character.charValue());
    }
}
