package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Bundle;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class UK implements InterfaceC1703Jt {
    public static byte[] A0H;
    public static String[] A0I = {"CRN0hGm9pLPRKzlpzE443dmYLVfMUuoy", "rnDEoG", "ItK9AhqRSbWdzc6lXKTPtxjTH0z1DcUl", "JI2gcrD7INQNJp2I4TzyxvCSr3A9oR", "CNqMxmhzBOjtEQdMOhwR", "HJQ3OXuP0FxDG82bkyHAEZvRk", "KBZAcECbAAaQLfP89GkTUbK7uJBbcbRh", "4or5KbzE8wJ6ToGpR"};
    public static final InterfaceC1702Js<UK> A0J;
    public static final Object A0K;
    public static final C1958Ug A0L;
    public static final Object A0M;
    public static final String A0N;
    public static final String A0O;
    public static final String A0P;
    public static final String A0Q;
    public static final String A0R;
    public static final String A0S;
    public static final String A0T;
    public static final String A0U;
    public static final String A0V;
    public static final String A0W;
    public static final String A0X;
    public static final String A0Y;
    public static final String A0Z;
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    public long A06;
    public long A07;
    public C1962Uk A08;
    public Object A0A;

    @Deprecated
    public Object A0B;
    public boolean A0D;

    @Deprecated
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public Object A0C = A0K;
    public C1958Ug A09 = A0L;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static UK A00(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(A0W);
        C1958Ug c1958Ug = bundle2 != null ? (C1958Ug) C1958Ug.A07.A7F(bundle2) : C1958Ug.A08;
        long j = bundle.getLong(A0Y, -9223372036854775807L);
        long j2 = bundle.getLong(A0Z, -9223372036854775807L);
        long j3 = bundle.getLong(A0P, -9223372036854775807L);
        boolean z = bundle.getBoolean(A0T, false);
        boolean z2 = bundle.getBoolean(A0R, false);
        Bundle bundle3 = bundle.getBundle(A0V);
        C1962Uk c1962Uk = bundle3 != null ? (C1962Uk) C1962Uk.A06.A7F(bundle3) : null;
        boolean z3 = bundle.getBoolean(A0S, false);
        long j4 = bundle.getLong(A0N, 0L);
        long j5 = bundle.getLong(A0O, -9223372036854775807L);
        int i = bundle.getInt(A0Q, 0);
        int i2 = bundle.getInt(A0U, 0);
        long j6 = bundle.getLong(A0X, 0L);
        UK uk = new UK();
        uk.A07(A0M, c1958Ug, null, j, j2, j3, z, z2, c1962Uk, j4, j5, i, i2, j6);
        uk.A0F = z3;
        return uk;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 88);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0H = new byte[]{48, 60, 58, -5, 51, 46, 48, 50, 47, 60, 60, 56, -5, 46, 49, 64, -5, 46, 59, 49, 63, 60, 54, 49, 69, -5, 58, 50, 49, 54, 46, 0, -5, 48, 60, 58, 58, 60, 59, -5, 33, 54, 58, 50, 57, 54, 59, 50};
    }

    static {
        A03();
        A0K = new Object();
        A0M = new Object();
        A0L = new C1719Kj().A03(A02(0, 48, Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE)).A00(Uri.EMPTY).A05();
        A0W = N1.A0h(1);
        A0Y = N1.A0h(2);
        A0Z = N1.A0h(3);
        A0P = N1.A0h(4);
        A0T = N1.A0h(5);
        A0R = N1.A0h(6);
        A0V = N1.A0h(7);
        A0S = N1.A0h(8);
        A0N = N1.A0h(9);
        A0O = N1.A0h(10);
        A0Q = N1.A0h(11);
        A0U = N1.A0h(12);
        A0X = N1.A0h(13);
        A0J = new InterfaceC1702Js() { // from class: com.facebook.ads.redexgen.X.UL
            @Override // com.facebook.ads.redexgen.X.InterfaceC1702Js
            public final InterfaceC1703Jt A7F(Bundle bundle) {
                return UK.A00(bundle);
            }
        };
    }

    public final long A04() {
        return N1.A0P(this.A02);
    }

    public final long A05() {
        return this.A02;
    }

    public final long A06() {
        return N1.A0P(this.A03);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.facebook.ads.redexgen.X.UK A07(java.lang.Object r6, com.facebook.ads.redexgen.X.C1958Ug r7, java.lang.Object r8, long r9, long r11, long r13, boolean r15, boolean r16, com.facebook.ads.redexgen.X.C1962Uk r17, long r18, long r20, int r22, int r23, long r24) {
        /*
            r5 = this;
            r3 = r5
            r3.A0C = r6
            if (r7 == 0) goto L1f
            r0 = r7
        L6:
            r3.A09 = r0
            if (r7 == 0) goto L22
            com.facebook.ads.redexgen.X.Kr r4 = r7.A03
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.UK.A0I
            r0 = 3
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 30
            if (r1 == r0) goto L24
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L1f:
            com.facebook.ads.redexgen.X.Ug r0 = com.facebook.ads.redexgen.X.UK.A0L
            goto L6
        L22:
            r0 = 0
            goto L31
        L24:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.UK.A0I
            java.lang.String r1 = "h3G8ym5P8t5kbfswind79baZa3Ju2VDk"
            r0 = 6
            r2[r0] = r1
            if (r4 == 0) goto L22
            com.facebook.ads.redexgen.X.Kr r0 = r7.A03
            java.lang.Object r0 = r0.A03
        L31:
            r3.A0B = r0
            r3.A0A = r8
            r3.A06 = r9
            r3.A07 = r11
            r3.A04 = r13
            r3.A0G = r15
            r0 = r16
            r3.A0D = r0
            r1 = r17
            if (r1 == 0) goto L6f
            r0 = 1
        L46:
            r3.A0E = r0
            r3.A08 = r1
            r0 = r18
            r3.A02 = r0
            r0 = r20
            r3.A03 = r0
            r0 = r22
            r3.A00 = r0
            r0 = r23
            r3.A01 = r0
            r0 = r24
            r3.A05 = r0
            r0 = 0
            r3.A0F = r0
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.UK.A0I
            r0 = 3
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 30
            if (r1 == r0) goto L71
            return r3
        L6f:
            r0 = 0
            goto L46
        L71:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.UK.A0I
            java.lang.String r1 = "10uQ3EvA1StLF51Ey"
            r0 = 7
            r2[r0] = r1
            java.lang.String r1 = "1GYw7E8tdmALiJ1Exlj3"
            r0 = 4
            r2[r0] = r1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.UK.A07(java.lang.Object, com.facebook.ads.redexgen.X.Ug, java.lang.Object, long, long, long, boolean, boolean, com.facebook.ads.redexgen.X.Uk, long, long, int, int, long):com.facebook.ads.redexgen.X.UK");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r9) {
        /*
            Method dump skipped, instruction units count: 250
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.UK.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        return (((((((((((((((((((((((((((((7 * 31) + this.A0C.hashCode()) * 31) + this.A09.hashCode()) * 31) + (this.A0A == null ? 0 : this.A0A.hashCode())) * 31) + (this.A08 != null ? this.A08.hashCode() : 0)) * 31) + ((int) (this.A06 ^ (this.A06 >>> 32)))) * 31) + ((int) (this.A07 ^ (this.A07 >>> 32)))) * 31) + ((int) (this.A04 ^ (this.A04 >>> 32)))) * 31) + (this.A0G ? 1 : 0)) * 31) + (this.A0D ? 1 : 0)) * 31) + (this.A0F ? 1 : 0)) * 31) + ((int) (this.A02 ^ (this.A02 >>> 32)))) * 31) + ((int) (this.A03 ^ (this.A03 >>> 32)))) * 31) + this.A00) * 31) + this.A01) * 31) + ((int) (this.A05 ^ (this.A05 >>> 32)));
    }
}
