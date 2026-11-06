package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Th, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1936Th implements InterfaceC1703Jt {
    public final float A00;
    public final float A01;
    public final float A02;
    public final float A03;
    public final float A04;
    public final float A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final int A09;
    public final int A0A;
    public final int A0B;
    public final Bitmap A0C;
    public final Layout.Alignment A0D;
    public final Layout.Alignment A0E;
    public final CharSequence A0F;
    public final boolean A0G;
    public static String[] A0H = {"m", "PsdtqhGxnJvSIucJo7DP2XF6m11pBbjs", "L", "hkoTC196WnjQeUpmHZOCfmFWdGcuHLfI", "X0kDAQszcbpjzKC3wgFNGcVpiVpcXBq0", "a2264KiS6iYUggqBrTLTn4MXgp3IPOF6", "0TJDKDj1msB", "HNYcYBCOm4"};
    public static final C1936Th A0J = new C1737Ld().A0G("").A0H();
    public static final String A0U = N1.A0h(0);
    public static final String A0V = N1.A0h(1);
    public static final String A0P = N1.A0h(2);
    public static final String A0K = N1.A0h(3);
    public static final String A0M = N1.A0h(4);
    public static final String A0O = N1.A0h(5);
    public static final String A0N = N1.A0h(6);
    public static final String A0Q = N1.A0h(7);
    public static final String A0R = N1.A0h(8);
    public static final String A0X = N1.A0h(9);
    public static final String A0W = N1.A0h(10);
    public static final String A0T = N1.A0h(11);
    public static final String A0L = N1.A0h(12);
    public static final String A0Z = N1.A0h(13);
    public static final String A0a = N1.A0h(14);
    public static final String A0Y = N1.A0h(15);
    public static final String A0S = N1.A0h(16);
    public static final InterfaceC1702Js<C1936Th> A0I = new InterfaceC1702Js() { // from class: com.facebook.ads.redexgen.X.Ti
        @Override // com.facebook.ads.redexgen.X.InterfaceC1702Js
        public final InterfaceC1703Jt A7F(Bundle bundle) {
            return C1936Th.A00(bundle);
        }
    };

    public C1936Th(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f, int i, int i2, float f2, int i3, int i4, float f3, float f4, float f5, boolean z, int i5, int i6, float f6) {
        if (charSequence == null) {
            AbstractC1747Ln.A01(bitmap);
        } else {
            AbstractC1747Ln.A07(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.A0F = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.A0F = charSequence.toString();
        } else {
            this.A0F = null;
        }
        this.A0E = alignment;
        this.A0D = alignment2;
        this.A0C = bitmap;
        this.A01 = f;
        this.A07 = i;
        this.A06 = i2;
        this.A02 = f2;
        this.A08 = i3;
        this.A04 = f4;
        this.A00 = f5;
        this.A0G = z;
        this.A0B = i5;
        this.A09 = i4;
        this.A05 = f3;
        this.A0A = i6;
        this.A03 = f6;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0061 A[PHI: r4
      0x0061: PHI (r4v6 'bitmap' android.graphics.Bitmap) = (r4v2 'bitmap' android.graphics.Bitmap), (r4v7 'bitmap' android.graphics.Bitmap) binds: [B:31:0x00b1, B:18:0x005f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x015d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final com.facebook.ads.redexgen.X.C1936Th A00(android.os.Bundle r5) {
        /*
            Method dump skipped, instruction units count: 439
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1936Th.A00(android.os.Bundle):com.facebook.ads.redexgen.X.Th");
    }

    public final C1737Ld A02() {
        return new C1737Ld(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        String[] strArr = A0H;
        if (strArr[7].length() == strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0H;
        strArr2[7] = "KjM5L4cex8";
        strArr2[6] = "14SNgwBaCMY";
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1936Th c1936Th = (C1936Th) obj;
        if (TextUtils.equals(this.A0F, c1936Th.A0F) && this.A0E == c1936Th.A0E && this.A0D == c1936Th.A0D && (this.A0C != null ? !(c1936Th.A0C == null || !this.A0C.sameAs(c1936Th.A0C)) : c1936Th.A0C == null)) {
            float f = this.A01;
            String[] strArr3 = A0H;
            if (strArr3[7].length() == strArr3[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr4 = A0H;
            strArr4[7] = "Qe1GNlCupD";
            strArr4[6] = "iU4laVEh1GR";
            if (f == c1936Th.A01 && this.A07 == c1936Th.A07 && this.A06 == c1936Th.A06 && this.A02 == c1936Th.A02 && this.A08 == c1936Th.A08 && this.A04 == c1936Th.A04 && this.A00 == c1936Th.A00 && this.A0G == c1936Th.A0G && this.A0B == c1936Th.A0B && this.A09 == c1936Th.A09) {
                float f2 = this.A05;
                float f3 = c1936Th.A05;
                if (A0H[4].charAt(9) != 'b') {
                    throw new RuntimeException();
                }
                String[] strArr5 = A0H;
                strArr5[3] = "BsAL9xSYd5Evy30hUWNvFdFFKh92WRMq";
                strArr5[1] = "KMRu2F3T1SDWeEugC3SNDoFFs1bhnWUi";
                if (f2 == f3 && this.A0A == c1936Th.A0A && this.A03 == c1936Th.A03) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return A6.A00(this.A0F, this.A0E, this.A0D, this.A0C, Float.valueOf(this.A01), Integer.valueOf(this.A07), Integer.valueOf(this.A06), Float.valueOf(this.A02), Integer.valueOf(this.A08), Float.valueOf(this.A04), Float.valueOf(this.A00), Boolean.valueOf(this.A0G), Integer.valueOf(this.A0B), Integer.valueOf(this.A09), Float.valueOf(this.A05), Integer.valueOf(this.A0A), Float.valueOf(this.A03));
    }
}
