package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class RY implements InterfaceC1703Jt {
    public static byte[] A03;
    public static String[] A04 = {"32nmVqBUd6ScGXhzrcUZ2CoYZys4fj3l", "PWPCosQ00gNrcPfGN38ZB6jam7FVQo2g", "gBtlgyishh25rXcE8gQOIP5", "oRVSretvekHEc0u7ZcHL3TYeJWiha7Vu", "pugzzwsVxwFcLcrv7dmQlm5oRrud03T8", "kBBAjHcN0yNpX5mlrjNjuVcYB9m1hD3B", "m1N8vtxAtiD", "0OYDTbgdrtgr9rFtJFCT4MvdwnZYglyu"};
    public static final InterfaceC1702Js<RY> A05;
    public static final RY A06;
    public static final String A07;
    public int A00;
    public final int A01;
    public final AbstractC14399l<U8> A02;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 48);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{81, 105, 112, 104, 117, 108, 112, 121, 60, 117, 120, 121, 114, 104, 117, 127, 125, 112, 60, 72, 110, 125, 127, 119, 91, 110, 115, 105, 108, 111, 60, 125, 120, 120, 121, 120, 60, 104, 115, 60, 115, 114, 121, 60, 72, 110, 125, 127, 119, 91, 110, 115, 105, 108, 93, 110, 110, 125, 101, 50, 92, 122, 105, 107, 99, 79, 122, 103, 125, 120, 73, 122, 122, 105, 113};
    }

    static {
        A03();
        A06 = new RY(new U8[0]);
        A07 = N1.A0h(0);
        A05 = new InterfaceC1702Js() { // from class: com.facebook.ads.redexgen.X.RZ
            @Override // com.facebook.ads.redexgen.X.InterfaceC1702Js
            public final InterfaceC1703Jt A7F(Bundle bundle) {
                return RY.A00(bundle);
            }
        };
    }

    public RY(U8... u8Arr) {
        this.A02 = AbstractC14399l.A07(u8Arr);
        this.A01 = u8Arr.length;
        A02();
    }

    public static /* synthetic */ RY A00(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(A07);
        if (parcelableArrayList == null) {
            return new RY(new U8[0]);
        }
        return new RY((U8[]) C1753Lt.A01(U8.A07, parcelableArrayList).toArray(new U8[0]));
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0007 */
    /* JADX WARN: Incorrect condition in loop: B:7:0x0011 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A02() {
        /*
            r7 = this;
            r5 = 0
        L1:
            com.facebook.ads.redexgen.X.9l<com.facebook.ads.redexgen.X.U8> r0 = r7.A02
            int r0 = r0.size()
            if (r5 >= r0) goto L76
            int r4 = r5 + 1
        Lb:
            com.facebook.ads.redexgen.X.9l<com.facebook.ads.redexgen.X.U8> r0 = r7.A02
            int r0 = r0.size()
            if (r4 >= r0) goto L73
            com.facebook.ads.redexgen.X.9l<com.facebook.ads.redexgen.X.U8> r0 = r7.A02
            java.lang.Object r1 = r0.get(r5)
            com.facebook.ads.redexgen.X.U8 r1 = (com.facebook.ads.redexgen.X.U8) r1
            com.facebook.ads.redexgen.X.9l<com.facebook.ads.redexgen.X.U8> r0 = r7.A02
            java.lang.Object r0 = r0.get(r4)
            boolean r3 = r1.equals(r0)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.RY.A04
            r0 = 0
            r1 = r2[r0]
            r0 = 5
            r2 = r2[r0]
            r0 = 23
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L3f
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L3f:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.RY.A04
            java.lang.String r1 = "OaUuQcLcnGshcJMYkzCqCN2DspTcMkyf"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "EIzHMAunraDOcgjXYUoXQzUwWy5yr8uP"
            r0 = 3
            r2[r0] = r1
            if (r3 == 0) goto L70
            r2 = 0
            r1 = 60
            r0 = 44
            java.lang.String r0 = A01(r2, r1, r0)
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            r6.<init>(r0)
            r2 = 60
            r1 = 15
            r0 = 56
            java.lang.String r3 = A01(r2, r1, r0)
            r2 = 0
            r1 = 0
            r0 = 119(0x77, float:1.67E-43)
            java.lang.String r0 = A01(r2, r1, r0)
            com.facebook.ads.redexgen.X.MV.A08(r3, r0, r6)
        L70:
            int r4 = r4 + 1
            goto Lb
        L73:
            int r5 = r5 + 1
            goto L1
        L76:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.RY.A02():void");
    }

    public final int A04(U8 u8) {
        int index = this.A02.indexOf(u8);
        if (index >= 0) {
            return index;
        }
        return -1;
    }

    public final U8 A05(int i) {
        return this.A02.get(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        String[] strArr = A04;
        if (strArr[0].charAt(23) != strArr[5].charAt(23)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A04;
        strArr2[0] = "mi6i1C7pUp0AwcX8yxLD7WeY5ZX2gm87";
        strArr2[5] = "n7jobHx1WufBwwMu40rfALLYWmGr4Z4E";
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RY ry = (RY) obj;
        return this.A01 == ry.A01 && this.A02.equals(ry.A02);
    }

    public final int hashCode() {
        if (this.A00 == 0) {
            this.A00 = this.A02.hashCode();
        }
        return this.A00;
    }
}
