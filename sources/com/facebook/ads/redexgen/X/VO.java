package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class VO implements InterfaceC1703Jt {
    public final int A00;
    public final int A01;
    public final long A02;
    public final long A03;
    public final boolean A04;
    public final int[] A05;
    public final long[] A06;
    public final Uri[] A07;
    public static String[] A08 = {"Oy", "u5", "eyMDe1VPxcseWgRGD7x6dnvE4ZXa9FGP", "m5wEXEzW91ekTJQDqbEoY7M2Viz5uNqS", "4wGXSzkRdQtsgY", "dG1HBzS8O", "NY2HoinqdDUhoFlKPu66HqYUSi2kxly6", "UAsD70KhiIFqGZERIuo6tT1QHkT9LAoT"};
    public static final String A0G = N1.A0h(0);
    public static final String A0B = N1.A0h(1);
    public static final String A0H = N1.A0h(2);
    public static final String A0F = N1.A0h(3);
    public static final String A0C = N1.A0h(4);
    public static final String A0A = N1.A0h(5);
    public static final String A0D = N1.A0h(6);
    public static final String A0E = N1.A0h(7);
    public static final InterfaceC1702Js<VO> A09 = new InterfaceC1702Js() { // from class: com.facebook.ads.redexgen.X.VP
        @Override // com.facebook.ads.redexgen.X.InterfaceC1702Js
        public final InterfaceC1703Jt A7F(Bundle bundle) {
            return VO.A00(bundle);
        }
    };

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static VO A00(Bundle bundle) {
        long j = bundle.getLong(A0G);
        int i = bundle.getInt(A0B);
        int i2 = bundle.getInt(A0E);
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(A0H);
        int[] intArray = bundle.getIntArray(A0F);
        long[] longArray = bundle.getLongArray(A0C);
        long j2 = bundle.getLong(A0A);
        boolean z = bundle.getBoolean(A0D);
        if (intArray == null) {
            intArray = new int[0];
        }
        Uri[] uriArr = new Uri[0];
        if (parcelableArrayList != null) {
            Object[] array = parcelableArrayList.toArray(uriArr);
            String[] strArr = A08;
            if (strArr[1].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[1] = "hk";
            strArr2[0] = "dz";
            uriArr = (Uri[]) array;
        }
        if (longArray == null) {
            longArray = new long[0];
        }
        return new VO(j, i, i2, intArray, uriArr, longArray, j2, z);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final VO A06(int i) {
        int[] iArrA02 = A02(this.A05, i);
        long[] jArrA03 = A03(this.A06, i);
        return new VO(this.A03, i, this.A01, iArrA02, (Uri[]) Arrays.copyOf(this.A07, i), jArrA03, this.A02, this.A04);
    }

    public VO(long j) {
        this(j, -1, -1, new int[0], new Uri[0], new long[0], 0L, false);
    }

    public VO(long j, int i, int i2, int[] iArr, Uri[] uriArr, long[] jArr, long j2, boolean z) {
        AbstractC1747Ln.A07(iArr.length == uriArr.length);
        this.A03 = j;
        this.A00 = i;
        this.A01 = i2;
        this.A05 = iArr;
        this.A07 = uriArr;
        this.A06 = jArr;
        this.A02 = j2;
        this.A04 = z;
    }

    public static int[] A02(int[] iArr, int i) {
        int length = iArr.length;
        int iMax = Math.max(i, length);
        int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
        Arrays.fill(iArrCopyOf, length, iMax, 0);
        return iArrCopyOf;
    }

    public static long[] A03(long[] jArr, int i) {
        int length = jArr.length;
        int iMax = Math.max(i, length);
        long[] jArrCopyOf = Arrays.copyOf(jArr, iMax);
        Arrays.fill(jArrCopyOf, length, iMax, -9223372036854775807L);
        return jArrCopyOf;
    }

    public final int A04() {
        return A05(-1);
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0005 */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int A05(int r6) {
        /*
            r5 = this;
            int r3 = r6 + 1
        L2:
            int[] r0 = r5.A05
            int r0 = r0.length
            if (r3 >= r0) goto L4c
            boolean r4 = r5.A04
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.VO.A08
            r0 = 6
            r1 = r1[r0]
            r0 = 22
            char r1 = r1.charAt(r0)
            r0 = 49
            if (r1 == r0) goto L53
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.VO.A08
            java.lang.String r1 = "wXzuuLzplSU7fe00gnkOtQG4HVUKIEbm"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "HTdk1COeDneuqKlJWd1wMEh0kFRhi2IN"
            r0 = 3
            r2[r0] = r1
            if (r4 != 0) goto L4c
            int[] r0 = r5.A05
            r4 = r0[r3]
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.VO.A08
            r0 = 5
            r1 = r2[r0]
            r0 = 4
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L50
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.VO.A08
            java.lang.String r1 = "54DsX3tQhkmFtMCpdkyLWRpb2NsjawWZ"
            r0 = 6
            r2[r0] = r1
            if (r4 == 0) goto L4c
        L45:
            int[] r0 = r5.A05
            r1 = r0[r3]
            r0 = 1
            if (r1 != r0) goto L4d
        L4c:
            return r3
        L4d:
            int r3 = r3 + 1
            goto L2
        L50:
            if (r4 == 0) goto L4c
            goto L45
        L53:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.VO.A05(int):int");
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x000a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A07() {
        /*
            r3 = this;
            int r1 = r3.A00
            r0 = -1
            r2 = 1
            if (r1 != r0) goto L7
            return r2
        L7:
            r1 = 0
        L8:
            int r0 = r3.A00
            if (r1 >= r0) goto L1c
            int[] r0 = r3.A05
            r0 = r0[r1]
            if (r0 == 0) goto L18
            int[] r0 = r3.A05
            r0 = r0[r1]
            if (r0 != r2) goto L19
        L18:
            return r2
        L19:
            int r1 = r1 + 1
            goto L8
        L1c:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.VO.A07():boolean");
    }

    public final boolean A08() {
        return this.A00 == -1 || A04() < this.A00;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        VO vo = (VO) obj;
        if (this.A03 == vo.A03 && this.A00 == vo.A00 && this.A01 == vo.A01 && Arrays.equals(this.A07, vo.A07) && Arrays.equals(this.A05, vo.A05) && Arrays.equals(this.A06, vo.A06) && this.A02 == vo.A02 && this.A04 == vo.A04) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((((((((((((this.A00 * 31) + this.A01) * 31) + ((int) (this.A03 ^ (this.A03 >>> 32)))) * 31) + Arrays.hashCode(this.A07)) * 31) + Arrays.hashCode(this.A05)) * 31) + Arrays.hashCode(this.A06)) * 31) + ((int) (this.A02 ^ (this.A02 >>> 32)))) * 31) + (this.A04 ? 1 : 0);
    }
}
