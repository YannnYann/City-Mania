package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.e7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2352e7 {
    public static byte[] A0V;
    public static String[] A0W = {"CNW8uQwJK", "6Hk6Q2vWLsdusv9B44NMGeheYytPD5NJ", "6E8NDelRXI5gw1kg3KUx4q3ivzTvhhTL", "ZjydJJ6bPML2iabWeztXE7Wx", "GFiGlJkqxkVd1xCWEJa2gUKMyWl5cPPd", "vTfColNhMTcD9KiBdKSfst9tt8SccEWm", "wjZWolD5xHVGDgAyEauoDZuBzrtHhQqJ", "EptiUqty2vHcl9g"};
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final int A09;
    public final long A0A;
    public final long A0B;
    public final long A0C;
    public final long A0D;
    public final long A0E;
    public final long A0F;
    public final C2350e5 A0G;
    public final C2351e6 A0H;
    public final String A0I;
    public final String A0J;
    public final String A0K;
    public final String A0L;
    public final String A0M;
    public final String A0N;
    public final String A0O;
    public final Map<String, String> A0P;
    public final boolean A0Q;
    public final boolean A0R;
    public final boolean A0S;
    public final boolean A0T;
    public final boolean A0U;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0V, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 14);
            if (A0W[4].charAt(1) != 'F') {
                throw new RuntimeException();
            }
            A0W[4] = "AFp2eXAuxRsvaGoV4w54vO9wfi1ysfK0";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A0V = new byte[]{115, 127};
    }

    static {
        A01();
    }

    public C2352e7() {
        this(A00(0, 0, 40), -1L, false, -1, -1, -1, -1, false, false, -1, -1L, new C2351e6(), false, -1, -1, -1L, -1L, -1, null, -1, null, null, C2350e5.A02, -1, false, A00(0, 0, 40), A00(0, 0, 40), A00(0, 0, 40), null, -1L, -1L);
    }

    public C2352e7(C2352e7 c2352e7) {
        this(c2352e7, c2352e7.A0M);
    }

    public C2352e7(C2352e7 c2352e7, String str) {
        this(c2352e7.A0L, c2352e7.A0A, c2352e7.A0S, c2352e7.A08, c2352e7.A07, c2352e7.A00, c2352e7.A09, c2352e7.A0U, c2352e7.A0R, c2352e7.A05, c2352e7.A0C, c2352e7.A0H, c2352e7.A0T, c2352e7.A06, c2352e7.A02, c2352e7.A0E, c2352e7.A0B, c2352e7.A01, c2352e7.A0P, c2352e7.A04, c2352e7.A0J, c2352e7.A0I, c2352e7.A0G, c2352e7.A03, c2352e7.A0Q, c2352e7.A0N, c2352e7.A0K, c2352e7.A0O, str, -1L, -1L);
    }

    public C2352e7(String str, long j, boolean z, int i, int i2, int i3, int i4, boolean z2, boolean z3, int i5, long j2, C2351e6 c2351e6, boolean z4, int i6, int i7, long j3, long j4, int i8, Map<String, String> map, int i9, String str2, String str3, C2350e5 c2350e5, int i10, boolean z5, String str4, String str5, String str6, String str7, long j5, long j6) {
        this.A0P = new HashMap();
        this.A0L = str;
        this.A0A = j;
        this.A0S = z;
        this.A08 = i;
        this.A07 = i2;
        this.A00 = i3;
        this.A09 = i4;
        this.A0U = z2;
        this.A0R = z3;
        this.A05 = i5;
        this.A0C = j2;
        this.A0H = c2351e6;
        this.A0T = z4;
        this.A06 = i6;
        this.A02 = i7;
        this.A0E = j3;
        this.A0B = j4;
        this.A01 = i8;
        this.A04 = i9;
        this.A0I = str3;
        this.A0J = str2;
        if (map != null) {
            this.A0P.putAll(map);
        }
        this.A0G = c2350e5;
        this.A03 = i10;
        this.A0Q = z5;
        this.A0N = str4;
        this.A0K = str5;
        this.A0O = str6;
        this.A0M = str7;
        this.A0F = j5;
        this.A0D = j6;
    }

    public final String toString() {
        StringBuilder sbAppend = new StringBuilder().append(this.A0L);
        String strA00 = A00(0, 2, 81);
        return sbAppend.append(strA00).append(this.A0A).append(strA00).append(this.A0S).append(strA00).append(this.A08).append(strA00).append(this.A07).append(strA00).append(this.A00).append(strA00).append(this.A09).append(strA00).append(this.A0U).append(strA00).append(this.A0R).append(strA00).append(this.A05).append(strA00).append(this.A0E).append(strA00).append(this.A0B).append(strA00).append(this.A01).append(strA00).append(this.A04).append(strA00).append(this.A06).append(strA00).append(this.A02).append(strA00).append(this.A03).append(strA00).append(this.A0Q).append(strA00).append(this.A0N).toString();
    }
}
