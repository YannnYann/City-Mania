package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.facebook.ads.androidx.media3.common.ColorInfo;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class VC implements InterfaceC1703Jt {
    public static byte[] A0Z;
    public static String[] A0a = {"qGOchCJllOLBbt", "pUd3NyO4RtPx3Y", "Uuw8py", "d0u3F879rfvUz2Wi4yi0kJTujXANnPkU", "b5mXRkiQKj0CBYWrCQmO9pUTcSlmphfm", "UnyAxyvogaCmtv8YgLsWCT4CmFNsYN0R", "Q8MHHNxqvFcKyVKHaVBTDC3TQFoLF2Y", "EINMRxZAGwlX9VfBefivR2NAqOTbxPqw"};
    public static final InterfaceC1702Js<VC> A0b;
    public static final VC A0c;
    public static final String A0d;
    public static final String A0e;
    public static final String A0f;
    public static final String A0g;
    public static final String A0h;
    public static final String A0i;
    public static final String A0j;
    public static final String A0k;
    public static final String A0l;
    public static final String A0m;
    public static final String A0n;
    public static final String A0o;
    public static final String A0p;
    public static final String A0q;
    public static final String A0r;
    public static final String A0s;
    public static final String A0t;
    public static final String A0u;
    public static final String A0v;
    public static final String A0w;
    public static final String A0x;
    public static final String A0y;
    public static final String A0z;
    public static final String A10;
    public static final String A11;
    public static final String A12;
    public static final String A13;
    public static final String A14;
    public static final String A15;
    public static final String A16;
    public static final String A17;
    public static final String A18;
    public int A00;
    public final float A01;
    public final float A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final int A09;
    public final int A0A;
    public final int A0B;
    public final int A0C;
    public final int A0D;
    public final int A0E;
    public final int A0F;
    public final int A0G;
    public final int A0H;
    public final int A0I;
    public final int A0J;
    public final int A0K;
    public final int A0L;
    public final long A0M;
    public final ColorInfo A0N;
    public final DrmInitData A0O;
    public final Metadata A0P;
    public final Object A0Q;
    public final String A0R;
    public final String A0S;
    public final String A0T;
    public final String A0U;
    public final String A0V;
    public final String A0W;
    public final List<byte[]> A0X;
    public final byte[] A0Y;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static <T> T A02(T t, T t2) {
        return t != null ? t : t2;
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0Z, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 66);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A0Z = new byte[]{-58, -70, -26, -38, 21, -99, -58, -55, -60, -72, -53, 127, -10, -62, -56, -105, -117, -58, 25};
    }

    static {
        A05();
        A0c = new C1714Ke().A14();
        A0p = N1.A0h(0);
        A0r = N1.A0h(1);
        A0s = N1.A0h(2);
        A13 = N1.A0h(3);
        A0z = N1.A0h(4);
        A0e = N1.A0h(5);
        A0w = N1.A0h(6);
        A0g = N1.A0h(7);
        A0u = N1.A0h(8);
        A0i = N1.A0h(9);
        A11 = N1.A0h(10);
        A0t = N1.A0h(11);
        A0q = N1.A0h(12);
        A0k = N1.A0h(13);
        A15 = N1.A0h(14);
        A18 = N1.A0h(15);
        A0o = N1.A0h(16);
        A0n = N1.A0h(17);
        A10 = N1.A0h(18);
        A0x = N1.A0h(19);
        A0y = N1.A0h(20);
        A14 = N1.A0h(21);
        A0h = N1.A0h(22);
        A0f = N1.A0h(23);
        A12 = N1.A0h(24);
        A0v = N1.A0h(25);
        A0l = N1.A0h(26);
        A0m = N1.A0h(27);
        A0d = N1.A0h(28);
        A0j = N1.A0h(29);
        A16 = N1.A0h(30);
        A17 = N1.A0h(31);
        A0b = new InterfaceC1702Js() { // from class: com.facebook.ads.redexgen.X.VD
            @Override // com.facebook.ads.redexgen.X.InterfaceC1702Js
            public final InterfaceC1703Jt A7F(Bundle bundle) {
                return VC.A00(bundle);
            }
        };
    }

    @MetaExoPlayerCustomization
    public VC(C1714Ke c1714Ke) {
        this.A0T = c1714Ke.A0R;
        this.A0U = c1714Ke.A0S;
        if (XL.A03(XQ.A14)) {
            this.A0V = N1.A0k(c1714Ke.A0T);
        } else {
            this.A0V = c1714Ke.A0T;
        }
        this.A0H = c1714Ke.A0F;
        this.A0E = c1714Ke.A0C;
        this.A04 = c1714Ke.A03;
        this.A0D = c1714Ke.A0B;
        this.A05 = this.A0D != -1 ? this.A0D : this.A04;
        this.A0R = c1714Ke.A0P;
        this.A0P = c1714Ke.A0N;
        this.A0Q = c1714Ke.A0O;
        this.A0S = c1714Ke.A0Q;
        this.A0W = c1714Ke.A0U;
        this.A0B = c1714Ke.A09;
        this.A0X = c1714Ke.A0V == null ? Collections.emptyList() : c1714Ke.A0V;
        this.A0O = c1714Ke.A0M;
        this.A0M = c1714Ke.A0K;
        this.A0L = c1714Ke.A0J;
        this.A0A = c1714Ke.A08;
        this.A01 = c1714Ke.A00;
        this.A0F = c1714Ke.A0D == -1 ? 0 : c1714Ke.A0D;
        this.A02 = c1714Ke.A01 == -1.0f ? 1.0f : c1714Ke.A01;
        this.A0Y = c1714Ke.A0W;
        this.A0I = c1714Ke.A0G;
        this.A0N = c1714Ke.A0L;
        this.A06 = c1714Ke.A04;
        this.A0G = c1714Ke.A0E;
        this.A0C = c1714Ke.A0A;
        this.A08 = c1714Ke.A06 == -1 ? 0 : c1714Ke.A06;
        this.A09 = c1714Ke.A07 != -1 ? c1714Ke.A07 : 0;
        this.A03 = c1714Ke.A02;
        this.A0J = c1714Ke.A0H;
        this.A0K = c1714Ke.A0I;
        if (c1714Ke.A05 != 0 || this.A0O == null) {
            this.A07 = c1714Ke.A05;
        } else {
            this.A07 = 1;
        }
    }

    public static VC A00(Bundle bundle) {
        C1714Ke c1714Ke = new C1714Ke();
        C1753Lt.A02(bundle);
        c1714Ke.A0y((String) A02(bundle.getString(A0p), A0c.A0T)).A0z((String) A02(bundle.getString(A0r), A0c.A0U)).A10((String) A02(bundle.getString(A0s), A0c.A0V)).A0n(bundle.getInt(A13, A0c.A0H)).A0k(bundle.getInt(A0z, A0c.A0E)).A0a(bundle.getInt(A0e, A0c.A04)).A0j(bundle.getInt(A0w, A0c.A0D)).A0w((String) A02(bundle.getString(A0g), A0c.A0R)).A0v((Metadata) A02((Metadata) bundle.getParcelable(A0u), A0c.A0P)).A0x((String) A02(bundle.getString(A0i), A0c.A0S)).A11((String) A02(bundle.getString(A11), A0c.A0W)).A0h(bundle.getInt(A0t, A0c.A0B));
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            byte[] byteArray = bundle.getByteArray(A03(i));
            if (byteArray == null) {
                break;
            }
            arrayList.add(byteArray);
            i++;
        }
        c1714Ke.A12(arrayList).A0u((DrmInitData) bundle.getParcelable(A0k)).A0s(bundle.getLong(A15, A0c.A0M)).A0r(bundle.getInt(A18, A0c.A0L)).A0f(bundle.getInt(A0o, A0c.A0A)).A0X(bundle.getFloat(A0n, A0c.A01)).A0l(bundle.getInt(A10, A0c.A0F)).A0Y(bundle.getFloat(A0x, A0c.A02)).A13(bundle.getByteArray(A0y)).A0o(bundle.getInt(A14, A0c.A0I));
        Bundle bundle2 = bundle.getBundle(A0h);
        if (bundle2 != null) {
            c1714Ke.A0t((ColorInfo) ColorInfo.A08.A7F(bundle2));
        }
        c1714Ke.A0b(bundle.getInt(A0f, A0c.A06)).A0m(bundle.getInt(A12, A0c.A0G)).A0i(bundle.getInt(A0v, A0c.A0C)).A0d(bundle.getInt(A0l, A0c.A08)).A0e(bundle.getInt(A0m, A0c.A09)).A0Z(bundle.getInt(A0d, A0c.A03)).A0p(bundle.getInt(A16, A0c.A0J)).A0q(bundle.getInt(A17, A0c.A0K)).A0c(bundle.getInt(A0j, A0c.A07));
        return c1714Ke.A14();
    }

    public static String A03(int i) {
        return A0q + A04(18, 1, 120) + Integer.toString(i, 36);
    }

    public final int A06() {
        if (this.A0L == -1 || this.A0A == -1) {
            return -1;
        }
        return this.A0A * this.A0L;
    }

    public final C1714Ke A07() {
        return new C1714Ke(this);
    }

    public final VC A08(int i) {
        return A07().A0c(i).A14();
    }

    @Deprecated
    public final VC A09(DrmInitData drmInitData) {
        return A07().A0u(drmInitData).A14();
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x0017 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A0A(com.facebook.ads.redexgen.X.VC r5) {
        /*
            r4 = this;
            java.util.List<byte[]> r0 = r4.A0X
            int r1 = r0.size()
            java.util.List<byte[]> r0 = r5.A0X
            int r0 = r0.size()
            r3 = 0
            if (r1 == r0) goto L10
            return r3
        L10:
            r2 = 0
        L11:
            java.util.List<byte[]> r0 = r4.A0X
            int r0 = r0.size()
            if (r2 >= r0) goto L33
            java.util.List<byte[]> r0 = r4.A0X
            java.lang.Object r1 = r0.get(r2)
            byte[] r1 = (byte[]) r1
            java.util.List<byte[]> r0 = r5.A0X
            java.lang.Object r0 = r0.get(r2)
            byte[] r0 = (byte[]) r0
            boolean r0 = java.util.Arrays.equals(r1, r0)
            if (r0 != 0) goto L30
            return r3
        L30:
            int r2 = r2 + 1
            goto L11
        L33:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.VC.A0A(com.facebook.ads.redexgen.X.VC):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r8) {
        /*
            Method dump skipped, instruction units count: 402
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.VC.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        int iHashCode;
        int result;
        if (this.A00 == 0) {
            int i = 17 * 31;
            int result2 = this.A0T == null ? 0 : this.A0T.hashCode();
            int result3 = (((i + result2) * 31) + (this.A0U != null ? this.A0U.hashCode() : 0)) * 31;
            int result4 = this.A0V == null ? 0 : this.A0V.hashCode();
            int i2 = ((result3 + result4) * 31) + this.A0H;
            int result5 = A0a[4].charAt(15);
            if (result5 != 114) {
                throw new RuntimeException();
            }
            String[] strArr = A0a;
            strArr[7] = "LfBnVfcTlPHc672IU0EnXXuiB26syPrL";
            strArr[3] = "61MzOwjqlQTxYmHI5DyOS3ucNL30lPsY";
            int result6 = this.A0E;
            int result7 = ((((i2 * 31) + result6) * 31) + this.A04) * 31;
            int result8 = this.A0D;
            int result9 = (((result7 + result8) * 31) + (this.A0R == null ? 0 : this.A0R.hashCode())) * 31;
            int result10 = this.A0P == null ? 0 : this.A0P.hashCode();
            int i3 = (result9 + result10) * 31;
            if (this.A0Q == null) {
                iHashCode = 0;
            } else {
                Object obj = this.A0Q;
                String[] strArr2 = A0a;
                if (strArr2[7].charAt(29) != strArr2[3].charAt(29)) {
                    String[] strArr3 = A0a;
                    strArr3[6] = "deXu6sCVEC0OkQAtws66nesVSjVeMAK";
                    strArr3[1] = "lGz0CcyxibEIyA";
                    iHashCode = obj.hashCode();
                } else {
                    A0a[0] = "chzPyWMpWUud59";
                    iHashCode = obj.hashCode();
                }
            }
            int i4 = (i3 + iHashCode) * 31;
            if (this.A0S == null) {
                result = 0;
            } else {
                String str = this.A0S;
                String[] strArr4 = A0a;
                if (strArr4[6].length() != strArr4[1].length()) {
                    A0a[0] = "7apyZvXCvACueh";
                    result = str.hashCode();
                } else {
                    String[] strArr5 = A0a;
                    strArr5[7] = "ljmIur39FAzt9rIRtwxCY5GdKCMDKPBc";
                    strArr5[3] = "sEqqL8ExxOwTdDLDH3rJ6t3hqkihJP7S";
                    result = str.hashCode();
                }
            }
            int result11 = (i4 + result) * 31;
            int iHashCode2 = this.A0W != null ? this.A0W.hashCode() : 0;
            int result12 = this.A0B;
            int result13 = (((((result11 + iHashCode2) * 31) + result12) * 31) + ((int) this.A0M)) * 31;
            int result14 = this.A0L;
            int result15 = (((result13 + result14) * 31) + this.A0A) * 31;
            int result16 = Float.floatToIntBits(this.A01);
            int result17 = (((result15 + result16) * 31) + this.A0F) * 31;
            int result18 = Float.floatToIntBits(this.A02);
            int result19 = (((result17 + result18) * 31) + this.A0I) * 31;
            int result20 = this.A06;
            int result21 = (((result19 + result20) * 31) + this.A0G) * 31;
            int result22 = this.A0C;
            int result23 = (((result21 + result22) * 31) + this.A08) * 31;
            int result24 = this.A09;
            int result25 = (((result23 + result24) * 31) + this.A03) * 31;
            int result26 = this.A0J;
            int result27 = (((result25 + result26) * 31) + this.A0K) * 31;
            int result28 = this.A07;
            this.A00 = result27 + result28;
        }
        return this.A00;
    }

    public final String toString() {
        StringBuilder sbAppend = new StringBuilder().append(A04(5, 7, 21)).append(this.A0T);
        String strA04 = A04(0, 2, 88);
        return sbAppend.append(strA04).append(this.A0U).append(strA04).append(this.A0S).append(strA04).append(this.A0W).append(strA04).append(this.A0R).append(strA04).append(this.A05).append(strA04).append(this.A0V).append(A04(2, 3, 120)).append(this.A0L).append(strA04).append(this.A0A).append(strA04).append(this.A01).append(A04(14, 4, 41)).append(this.A06).append(strA04).append(this.A0G).append(A04(12, 2, 87)).toString();
    }
}
