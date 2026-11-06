package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.d5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2289d5 {
    public static byte[] A02;
    public static String[] A03 = {"LnyyqlPNv6qTEgkNtN0cFprVvVFAz7up", "G6yzwS48ntoTiKlIZKCjf0uZCMGgTgOX", "Q8zypuRiOz02PLfw9X7vbB76xbkjBMzl", "Qp5QD2LDSSR94ZiBGaIi3PzBkR3y7xnx", "5Lns6nqBdYK87c9W0OSTpfCOmLf7ADuE", "k0", "dazpQp8n2zSWT1b8JgBm", "0PJU7a3uVSd9z7MIb3IYz6MWEQNuS6Ac"};
    public final List<VC> A00;
    public final ZP[] A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 3);
            String[] strArr = A03;
            if (strArr[2].charAt(5) == strArr[4].charAt(5)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[0] = "WwCHZ5Uff0fEC9Blvfo0WA14PFAOfNCv";
            strArr2[1] = "hIzsi5ZPKg01JPAWBJbXYiDKf4ebdb7I";
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{71, 96, 120, 111, 98, 103, 106, 46, 109, 98, 97, 125, 107, 106, 46, 109, 111, 126, 122, 103, 97, 96, 46, 99, 103, 99, 107, 46, 122, 119, 126, 107, 46, 126, 124, 97, 120, 103, 106, 107, 106, 52, 46, 27, 10, 10, 22, 19, 25, 27, 14, 19, 21, 20, 85, 25, 31, 27, 87, 76, 74, 66, 62, 47, 47, 51, 54, 60, 62, 43, 54, 48, 49, 112, 60, 58, 62, 114, 104, 111, 103};
    }

    static {
        A01();
    }

    public C2289d5(List<VC> list) {
        this.A00 = list;
        this.A01 = new ZP[list.size()];
    }

    public final void A02(long j, C1769Mk c1769Mk) {
        if (c1769Mk.A07() < 9) {
            return;
        }
        int iA0C = c1769Mk.A0C();
        int iA0C2 = c1769Mk.A0C();
        int iA0I = c1769Mk.A0I();
        int userDataIdentifier = A03[6].length();
        if (userDataIdentifier == 20) {
            String[] strArr = A03;
            strArr[2] = "aLK0Eq9R55MDkT9akepULHCpjLV1m4Py";
            strArr[4] = "h4fuBr7VBxaQPnNKoVNZEwIETiPLY5il";
            if (iA0C == 434 && iA0C2 == 1195456820 && iA0I == 3) {
                ZP[] zpArr = this.A01;
                String[] strArr2 = A03;
                String str = strArr2[0];
                String str2 = strArr2[1];
                int userDataIdentifier2 = str.charAt(19);
                int userDataStartCode = str2.charAt(19);
                if (userDataIdentifier2 != userDataStartCode) {
                    String[] strArr3 = A03;
                    strArr3[0] = "St55nzREipoTW3otAa6uYr79KCy3egzU";
                    strArr3[1] = "EUYkc12G3aEiqY8BOmd3Gt5LtxzmFD8M";
                    AbstractC2062Yp.A04(j, c1769Mk, zpArr);
                    return;
                }
            } else {
                return;
            }
        }
        throw new RuntimeException();
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0004 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A03(com.facebook.ads.redexgen.X.InterfaceC2069Yw r10, com.facebook.ads.redexgen.X.C2286d2 r11) {
        /*
            r9 = this;
            r3 = 0
        L1:
            com.facebook.ads.redexgen.X.ZP[] r0 = r9.A01
            int r0 = r0.length
            if (r3 >= r0) goto L94
            r11.A05()
            int r1 = r11.A03()
            r0 = 3
            com.facebook.ads.redexgen.X.ZP r2 = r10.ALm(r1, r0)
            java.util.List<com.facebook.ads.redexgen.X.VC> r0 = r9.A00
            java.lang.Object r4 = r0.get(r3)
            com.facebook.ads.redexgen.X.VC r4 = (com.facebook.ads.redexgen.X.VC) r4
            java.lang.String r6 = r4.A0W
            r5 = 43
            r1 = 19
            r0 = 121(0x79, float:1.7E-43)
            java.lang.String r0 = A00(r5, r1, r0)
            boolean r0 = r0.equals(r6)
            if (r0 != 0) goto L3c
            r5 = 62
            r1 = 19
            r0 = 92
            java.lang.String r0 = A00(r5, r1, r0)
            boolean r0 = r0.equals(r6)
            if (r0 == 0) goto L92
        L3c:
            r8 = 1
        L3d:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r5 = 0
            r1 = 43
            r0 = 13
            java.lang.String r0 = A00(r5, r1, r0)
            java.lang.StringBuilder r0 = r7.append(r0)
            java.lang.StringBuilder r0 = r0.append(r6)
            java.lang.String r0 = r0.toString()
            com.facebook.ads.redexgen.X.AbstractC1747Ln.A09(r8, r0)
            com.facebook.ads.redexgen.X.Ke r1 = new com.facebook.ads.redexgen.X.Ke
            r1.<init>()
            java.lang.String r0 = r11.A04()
            com.facebook.ads.redexgen.X.Ke r0 = r1.A0y(r0)
            com.facebook.ads.redexgen.X.Ke r1 = r0.A11(r6)
            int r0 = r4.A0H
            com.facebook.ads.redexgen.X.Ke r1 = r1.A0n(r0)
            java.lang.String r0 = r4.A0V
            com.facebook.ads.redexgen.X.Ke r1 = r1.A10(r0)
            int r0 = r4.A03
            com.facebook.ads.redexgen.X.Ke r1 = r1.A0Z(r0)
            java.util.List<byte[]> r0 = r4.A0X
            com.facebook.ads.redexgen.X.Ke r0 = r1.A12(r0)
            com.facebook.ads.redexgen.X.VC r0 = r0.A14()
            r2.A7E(r0)
            com.facebook.ads.redexgen.X.ZP[] r0 = r9.A01
            r0[r3] = r2
            int r3 = r3 + 1
            goto L1
        L92:
            r8 = 0
            goto L3d
        L94:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2289d5.A03(com.facebook.ads.redexgen.X.Yw, com.facebook.ads.redexgen.X.d2):void");
    }
}
