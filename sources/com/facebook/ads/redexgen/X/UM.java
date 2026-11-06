package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class UM implements InterfaceC1703Jt {
    public int A00;
    public long A01;
    public long A02;
    public Object A03;
    public Object A04;
    public boolean A05;
    public VN A06 = VN.A08;
    public static String[] A07 = {"ItkeaFWe", "6WrAg6mcAWGGzBTROw7zDRZDD", "Wwao0SLW56a29WTNGp8", "gT", "teHmZwDwoCq4FS69CeBPRJPaC2EVPwIf", "aR9jBsCZ", "MoKyYvb2Zous5roum4h7scGWjPpV56", "sJ6adnpeEW7MCvJCPyuVOyRgq"};
    public static final String A0D = N1.A0h(0);
    public static final String A0A = N1.A0h(1);
    public static final String A0C = N1.A0h(2);
    public static final String A0B = N1.A0h(3);
    public static final String A09 = N1.A0h(4);
    public static final InterfaceC1702Js<UM> A08 = new InterfaceC1702Js() { // from class: com.facebook.ads.redexgen.X.UN
        @Override // com.facebook.ads.redexgen.X.InterfaceC1702Js
        public final InterfaceC1703Jt A7F(Bundle bundle) {
            return UM.A01(bundle);
        }
    };

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static UM A01(Bundle bundle) {
        int i = bundle.getInt(A0D, 0);
        long j = bundle.getLong(A0A, -9223372036854775807L);
        long j2 = bundle.getLong(A0C, 0L);
        boolean z = bundle.getBoolean(A0B, false);
        Bundle bundle2 = bundle.getBundle(A09);
        VN vn = bundle2 != null ? (VN) VN.A09.A7F(bundle2) : VN.A08;
        UM um = new UM();
        um.A0G(null, null, i, j, j2, vn, z);
        return um;
    }

    public final int A03() {
        return this.A06.A00;
    }

    public final int A04(int i) {
        return this.A06.A07(i).A00;
    }

    public final int A05(int i) {
        return this.A06.A07(i).A04();
    }

    public final int A06(int i, int i2) {
        return this.A06.A07(i).A05(i2);
    }

    public final int A07(long j) {
        return this.A06.A05(j, this.A01);
    }

    public final int A08(long j) {
        return this.A06.A06(j, this.A01);
    }

    public final long A09() {
        return this.A06.A02;
    }

    public final long A0A() {
        return this.A01;
    }

    public final long A0B() {
        return N1.A0P(this.A02);
    }

    public final long A0C() {
        return this.A02;
    }

    public final long A0D(int i) {
        return this.A06.A07(i).A03;
    }

    public final long A0E(int i, int i2) {
        VO voA07 = this.A06.A07(i);
        if (voA07.A00 != -1) {
            return voA07.A06[i2];
        }
        return -9223372036854775807L;
    }

    public final UM A0F(Object obj, Object obj2, int i, long j, long j2) {
        return A0G(obj, obj2, i, j, j2, VN.A08, false);
    }

    public final UM A0G(Object obj, Object obj2, int i, long j, long j2, VN vn, boolean z) {
        this.A03 = obj;
        this.A04 = obj2;
        this.A00 = i;
        this.A01 = j;
        this.A02 = j2;
        this.A06 = vn;
        this.A05 = z;
        return this;
    }

    public final boolean A0H(int i) {
        return !this.A06.A07(i).A07();
    }

    @MetaExoPlayerCustomization
    public final boolean A0I(int i, int i2) {
        VO vo = this.A06.A05[i];
        if (vo.A00 != -1) {
            int i3 = vo.A05[i2];
            String[] strArr = A07;
            if (strArr[5].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A07[2] = "Yvo2wLmR2r8OIZXUYlP";
            if (i3 != 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r5 = 1
            if (r6 != r7) goto L4
            return r5
        L4:
            r3 = 0
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.UM.A07
            r0 = 2
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 19
            if (r1 == r0) goto L18
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L18:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.UM.A07
            java.lang.String r1 = "hST1TXBrmO9yZIniBEaiaCVgYsZxXf"
            r0 = 6
            r2[r0] = r1
            if (r7 == 0) goto L2f
            java.lang.Class r1 = r6.getClass()
            java.lang.Class r0 = r7.getClass()
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L30
        L2f:
            return r3
        L30:
            com.facebook.ads.redexgen.X.UM r7 = (com.facebook.ads.redexgen.X.UM) r7
            java.lang.Object r1 = r6.A03
            java.lang.Object r0 = r7.A03
            boolean r0 = com.facebook.ads.redexgen.X.N1.A1E(r1, r0)
            if (r0 == 0) goto L97
            java.lang.Object r1 = r6.A04
            java.lang.Object r0 = r7.A04
            boolean r0 = com.facebook.ads.redexgen.X.N1.A1E(r1, r0)
            if (r0 == 0) goto L97
            int r1 = r6.A00
            int r0 = r7.A00
            if (r1 != r0) goto L97
            long r3 = r6.A01
            long r1 = r7.A01
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 != 0) goto L97
            long r3 = r6.A02
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.UM.A07
            r0 = 4
            r1 = r1[r0]
            r0 = 11
            char r1 = r1.charAt(r0)
            r0 = 52
            if (r1 == r0) goto L89
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.UM.A07
            java.lang.String r1 = "csM5FhKFs8XgaJtUutSMYjOc1"
            r0 = 1
            r2[r0] = r1
            long r1 = r7.A02
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 != 0) goto L97
        L72:
            boolean r4 = r6.A05
            boolean r3 = r7.A05
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.UM.A07
            r0 = 2
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 19
            if (r1 == r0) goto L99
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L89:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.UM.A07
            java.lang.String r1 = "abUE0hdqLPAw0DMnYJb"
            r0 = 2
            r2[r0] = r1
            long r1 = r7.A02
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 != 0) goto L97
            goto L72
        L97:
            r5 = 0
            goto Lac
        L99:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.UM.A07
            java.lang.String r1 = "WuW3YLMz4cH4rfaQ7XUgW07gMnzYnWkW"
            r0 = 4
            r2[r0] = r1
            if (r4 != r3) goto L97
            com.facebook.ads.redexgen.X.VN r1 = r6.A06
            com.facebook.ads.redexgen.X.VN r0 = r7.A06
            boolean r0 = com.facebook.ads.redexgen.X.N1.A1E(r1, r0)
            if (r0 == 0) goto L97
        Lac:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.UM.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        return (((((((((((((7 * 31) + (this.A03 == null ? 0 : this.A03.hashCode())) * 31) + (this.A04 != null ? this.A04.hashCode() : 0)) * 31) + this.A00) * 31) + ((int) (this.A01 ^ (this.A01 >>> 32)))) * 31) + ((int) (this.A02 ^ (this.A02 >>> 32)))) * 31) + (this.A05 ? 1 : 0)) * 31) + this.A06.hashCode();
    }
}
