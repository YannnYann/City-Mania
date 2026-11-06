package com.facebook.ads.redexgen.X;

import android.text.Layout;
import android.text.TextUtils;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2245cN {
    public static byte[] A0I;
    public static String[] A0J = {"RQorwCVpGDE2pJLs6fDsbhosqFkaCNSL", "1dqAnV9IUi3ZrokLn9f9uYFqVrD2Uqrt", "Teu1d", "foOmel", "dYsIEKGYd6tZmSZIu", "vZdWwzWHyRc9WBRqATNoKQidpNFhza2n", "7Yllb", "XnK8mTLkR9xXDI5NOcsVSTlI"};
    public float A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;

    @MetaExoPlayerCustomization
    public Layout.Alignment A09;
    public String A0A;
    public String A0B;
    public String A0C;
    public String A0D;
    public Set<String> A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 51);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0I = new byte[]{-127, -96, -94, -86, -90, -79, -82, -76, -83, -93, 95, -94, -82, -85, -82, -79, 95, -83, -82, -77, 95, -93, -92, -91, -88, -83, -92, -93, 109, -28, 13, 12, 18, -66, 1, 13, 10, 13, 16, -66, 12, 13, 18, -66, 2, 3, 4, 7, 12, 3, 2};
    }

    static {
        A02();
    }

    public C2245cN() {
        String strA01 = A01(0, 0, 30);
        this.A0B = strA01;
        this.A0C = strA01;
        this.A0E = Collections.emptySet();
        this.A0D = strA01;
        this.A0A = null;
        this.A0H = false;
        this.A0G = false;
        this.A06 = -1;
        this.A08 = -1;
        this.A02 = -1;
        this.A05 = -1;
        this.A04 = -1;
        this.A09 = null;
        this.A07 = -1;
        this.A0F = false;
    }

    public static int A00(int i, String str, String str2, int i2) {
        if (str.isEmpty() || i == -1) {
            return i;
        }
        if (str.equals(str2)) {
            return i + i2;
        }
        return -1;
    }

    public final float A03() {
        return this.A00;
    }

    public final int A04() {
        if (this.A0G) {
            return this.A01;
        }
        throw new IllegalStateException(A01(0, 29, 12));
    }

    public final int A05() {
        if (this.A0H) {
            return this.A03;
        }
        throw new IllegalStateException(A01(29, 22, 107));
    }

    public final int A06() {
        return this.A04;
    }

    public final int A07() {
        return this.A07;
    }

    public final int A08() {
        if (this.A02 == -1 && this.A05 == -1) {
            return -1;
        }
        int i = this.A02;
        String[] strArr = A0J;
        if (strArr[3].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0J;
        strArr2[3] = "7ZAyjm";
        strArr2[7] = "PKKZFpDzmhjAmIAnRRYXCYKP";
        return (i == 1 ? 1 : 0) | (this.A05 == 1 ? 2 : 0);
    }

    public final int A09(String str, String str2, Set<String> set, String str3) {
        if (this.A0B.isEmpty() && this.A0C.isEmpty()) {
            boolean zIsEmpty = this.A0E.isEmpty();
            String[] strArr = A0J;
            if (strArr[3].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0J;
            strArr2[3] = "oTECEB";
            strArr2[7] = "LXYF9D6SuzP0yEQqNzBSf7mL";
            if (zIsEmpty && this.A0D.isEmpty()) {
                return TextUtils.isEmpty(str2) ? 1 : 0;
            }
        }
        int iA00 = A00(A00(A00(0, this.A0B, str, 1073741824), this.A0C, str2, 2), this.A0D, str3, 4);
        if (iA00 != -1 && set.containsAll(this.A0E)) {
            return iA00 + (this.A0E.size() * 4);
        }
        String[] strArr3 = A0J;
        if (strArr3[3].length() != strArr3[7].length()) {
            String[] strArr4 = A0J;
            strArr4[3] = "NZJPXA";
            strArr4[7] = "E1sJXtYfVF2zzetQQA77oDOY";
            return 0;
        }
        String[] strArr5 = A0J;
        strArr5[6] = "sHcTn";
        strArr5[2] = "R4wpe";
        return 0;
    }

    public final C2245cN A0A(float f) {
        this.A00 = f;
        return this;
    }

    public final C2245cN A0B(int i) {
        this.A01 = i;
        this.A0G = true;
        return this;
    }

    public final C2245cN A0C(int i) {
        this.A03 = i;
        this.A0H = true;
        return this;
    }

    public final C2245cN A0D(int i) {
        this.A04 = i;
        return this;
    }

    public final C2245cN A0E(int i) {
        this.A07 = i;
        return this;
    }

    public final C2245cN A0F(String str) {
        this.A0A = str == null ? null : XC.A01(str);
        return this;
    }

    public final C2245cN A0G(boolean z) {
        this.A02 = z ? 1 : 0;
        return this;
    }

    public final C2245cN A0H(boolean z) {
        this.A0F = z;
        return this;
    }

    public final C2245cN A0I(boolean z) {
        this.A05 = z ? 1 : 0;
        return this;
    }

    public final C2245cN A0J(boolean z) {
        this.A08 = z ? 1 : 0;
        return this;
    }

    public final String A0K() {
        return this.A0A;
    }

    public final void A0L(String str) {
        this.A0B = str;
    }

    public final void A0M(String str) {
        this.A0C = str;
    }

    public final void A0N(String str) {
        this.A0D = str;
    }

    public final void A0O(String[] strArr) {
        this.A0E = new HashSet(Arrays.asList(strArr));
    }

    public final boolean A0P() {
        return this.A0F;
    }

    public final boolean A0Q() {
        return this.A0G;
    }

    public final boolean A0R() {
        return this.A0H;
    }

    public final boolean A0S() {
        return this.A06 == 1;
    }

    public final boolean A0T() {
        return this.A08 == 1;
    }
}
