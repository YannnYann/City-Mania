package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class VN implements InterfaceC1703Jt {
    public static byte[] A06;
    public static String[] A07 = {"6Ud1VuyzUnjgDdiNV7i6lpGzx3BEjOWp", "9hJFXEEQtTOfipsJ994OHCP7z", "glfC1YVCZ7K2fBqzxmFZ", "HKpJycCh0O", "LmOFDF6M27xntRY1pVLjHhH9wx9Ekd3P", "V9CvvJCCEs2YATcCNoOkLbJs3kgtnBNP", "XqUE6WbMXHwTBtqkJ5k6", "UXb8icBX0OcH5TTwlIgiGJDfk"};
    public static final VN A08;
    public static final InterfaceC1702Js<VN> A09;
    public static final VO A0A;
    public static final String A0B;
    public static final String A0C;
    public static final String A0D;
    public static final String A0E;
    public final int A00;
    public final int A01;
    public final long A02;
    public final long A03;
    public final Object A04;

    @MetaExoPlayerCustomization
    public final VO[] A05;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static VN A00(Bundle bundle) {
        VO[] voArr;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(A0B);
        if (parcelableArrayList != null) {
            voArr = new VO[parcelableArrayList.size()];
            for (int i = 0; i < parcelableArrayList.size(); i++) {
                voArr[i] = (VO) VO.A09.A7F((Bundle) parcelableArrayList.get(i));
            }
        } else {
            if (A07[0].charAt(0) == 'f') {
                throw new RuntimeException();
            }
            String[] strArr = A07;
            strArr[6] = "1OzmeSlP6BqOkNqF8cfe";
            strArr[2] = "edtIEcPh1e7OQKIZA6OS";
            voArr = new VO[0];
        }
        return new VN(null, voArr, bundle.getLong(A0C, A08.A02), bundle.getLong(A0D, A08.A03), bundle.getInt(A0E, A08.A01));
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 35);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        byte[] bArr = {91, 87, 7, 11, 74, 79, 108, 89, 68, 94, 91, 88, 22, 112, 63, 51, 114, 119, 65, 118, 96, 102, 126, 118, 67, 124, 96, 122, 103, 122, 124, 125, 70, 96, 46, 47, 35, 98, 103, 112, 62, 88, 120, 116, 48, 33, 38, 53, 32, 61, 59, 58, 1, 39, 105, 99, 70, 114, 78, 67, 91, 64, 67, 65, 73, 113, 86, 67, 86, 71, 10, 67, 70, 81, 107, 70, 31, 42, 94, 77, 72, 4, 95, 88, 77, 88, 73, 17, 18, 23, 52, 1, 28, 6, 3, 91, 7, 26, 30, 22, 38, 0, 78};
        if (A07[3].length() == 28) {
            throw new RuntimeException();
        }
        String[] strArr = A07;
        strArr[7] = "WCBe9DfYXOta7i06m5sKGmKz5";
        strArr[1] = "ANYHTlCnMY0MapU53hK6SabWz";
        A06 = bArr;
    }

    static {
        A03();
        A08 = new VN(null, new VO[0], 0L, -9223372036854775807L, 0);
        A0A = new VO(0L).A06(0);
        A0B = N1.A0h(1);
        A0C = N1.A0h(2);
        A0D = N1.A0h(3);
        A0E = N1.A0h(4);
        A09 = new InterfaceC1702Js() { // from class: com.facebook.ads.redexgen.X.VR
            @Override // com.facebook.ads.redexgen.X.InterfaceC1702Js
            public final InterfaceC1703Jt A7F(Bundle bundle) {
                return VN.A00(bundle);
            }
        };
    }

    public VN(Object obj, VO[] voArr, long j, long j2, int i) {
        this.A04 = obj;
        this.A02 = j;
        this.A03 = j2;
        this.A00 = voArr.length + i;
        this.A05 = voArr;
        this.A01 = i;
    }

    private boolean A04(long j, long j2, int i) {
        if (j == Long.MIN_VALUE) {
            return false;
        }
        long j3 = A07(i).A03;
        return j3 == Long.MIN_VALUE ? j2 == -9223372036854775807L || j < j2 : j < j3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
    
        if (r9 >= r11) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int A05(long r9, long r11) {
        /*
            r8 = this;
            r7 = -1
            r5 = -9223372036854775808
            int r0 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r0 == 0) goto L2e
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r11 > r1 ? 1 : (r11 == r1 ? 0 : -1))
            if (r0 == 0) goto L2f
            int r3 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.VN.A07
            r0 = 0
            r1 = r1[r0]
            r0 = 0
            char r1 = r1.charAt(r0)
            r0 = 102(0x66, float:1.43E-43)
            if (r1 == r0) goto L4f
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.VN.A07
            java.lang.String r1 = "HtnVVv8VMIxxrGWLqYfc3dQ1J"
            r0 = 7
            r2[r0] = r1
            java.lang.String r1 = "tcXY8v7p9roLt8QU5LCd06C9X"
            r0 = 1
            r2[r0] = r1
            if (r3 < 0) goto L2f
        L2e:
            return r7
        L2f:
            int r3 = r8.A01
        L31:
            int r0 = r8.A00
            if (r3 >= r0) goto L75
            com.facebook.ads.redexgen.X.VO r0 = r8.A07(r3)
            long r0 = r0.A03
            int r4 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.VN.A07
            r0 = 6
            r1 = r2[r0]
            r0 = 2
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L55
        L4f:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L55:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.VN.A07
            java.lang.String r1 = "kEqwYtHlSYqRlscCd7R4BHJGo1Em482f"
            r0 = 0
            r2[r0] = r1
            if (r4 == 0) goto L68
            com.facebook.ads.redexgen.X.VO r0 = r8.A07(r3)
            long r1 = r0.A03
            int r0 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1))
            if (r0 <= 0) goto L72
        L68:
            com.facebook.ads.redexgen.X.VO r0 = r8.A07(r3)
            boolean r0 = r0.A08()
            if (r0 != 0) goto L75
        L72:
            int r3 = r3 + 1
            goto L31
        L75:
            int r0 = r8.A00
            if (r3 >= r0) goto L7a
            r7 = r3
        L7a:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.VN.A05(long, long):int");
    }

    public final int A06(long j, long j2) {
        int i = this.A00 - 1;
        while (i >= 0 && A04(j, j2, i)) {
            i--;
        }
        if (i < 0 || !A07(i).A07()) {
            return -1;
        }
        return i;
    }

    public final VO A07(int i) {
        if (i < this.A01) {
            return A0A;
        }
        return this.A05[i - this.A01];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        VN vn = (VN) obj;
        if (N1.A1E(this.A04, vn.A04) && this.A00 == vn.A00 && this.A02 == vn.A02 && this.A03 == vn.A03) {
            int i = this.A01;
            int i2 = vn.A01;
            String[] strArr = A07;
            if (strArr[7].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A07[5] = "nYyqWKHuIAowbR1YJwK2ED5yiUrrVBRP";
            if (i == i2 && Arrays.equals(this.A05, vn.A05)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int result = this.A00;
        int i = result * 31;
        int result2 = this.A04 == null ? 0 : this.A04.hashCode();
        int i2 = (((i + result2) * 31) + ((int) this.A02)) * 31;
        int result3 = (int) this.A03;
        int result4 = (((i2 + result3) * 31) + this.A01) * 31;
        int result5 = Arrays.hashCode(this.A05);
        return result4 + result5;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String toString() {
        /*
            Method dump skipped, instruction units count: 370
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.VN.toString():java.lang.String");
    }
}
