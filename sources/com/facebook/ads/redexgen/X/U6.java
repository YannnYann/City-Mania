package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class U6 implements InterfaceC1703Jt {
    public final U8 A00;
    public final AbstractC14399l<Integer> A01;
    public static String[] A02 = {"ClIjfNGNXsUk9Y65KCPt0kyaipz", "Z7", "CNTSnfydZqXddc4vWhW6qn2wSRN26B1h", "bmCjOqxcxaOGr21LifywwZxlc2XULa8r", "pOixQKHn13K2", "le", "m5Yl4zAIkaBSDrKZZfoRRREfDj1", "5me5y5ryL2nahGoSPpOL6tfSSzOLyGKY"};
    public static final String A05 = N1.A0h(0);
    public static final String A04 = N1.A0h(1);
    public static final InterfaceC1702Js<U6> A03 = new InterfaceC1702Js() { // from class: com.facebook.ads.redexgen.X.U7
        @Override // com.facebook.ads.redexgen.X.InterfaceC1702Js
        public final InterfaceC1703Jt A7F(Bundle bundle) {
            return U6.A00(bundle);
        }
    };

    public U6(U8 u8, List<Integer> trackIndices) {
        if (trackIndices.isEmpty() || (((Integer) Collections.min(trackIndices)).intValue() >= 0 && ((Integer) Collections.max(trackIndices)).intValue() < u8.A01)) {
            this.A00 = u8;
            this.A01 = AbstractC14399l.A05(trackIndices);
            return;
        }
        throw new IndexOutOfBoundsException();
    }

    public static /* synthetic */ U6 A00(Bundle bundle) {
        return new U6((U8) U8.A07.A7F((Bundle) AbstractC1747Ln.A01(bundle.getBundle(A05))), AnonymousClass19.A09((int[]) AbstractC1747Ln.A01(bundle.getIntArray(A04))));
    }

    public final int A01() {
        return this.A00.A02;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0048 A[PHI: r7
      0x0048: PHI (r7v2 com.facebook.ads.redexgen.X.U6) = (r7v1 com.facebook.ads.redexgen.X.U6), (r7v3 com.facebook.ads.redexgen.X.U6) binds: [B:20:0x0064, B:15:0x0046] A[DONT_GENERATE, DONT_INLINE]] */
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
            r4 = 0
            if (r7 == 0) goto L27
            java.lang.Class r3 = r6.getClass()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.U6.A02
            r0 = 2
            r1 = r1[r0]
            r0 = 12
            char r1 = r1.charAt(r0)
            r0 = 114(0x72, float:1.6E-43)
            if (r1 == r0) goto L69
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.U6.A02
            java.lang.String r1 = "XfF7V5xjwCjiq8qmEdtylrR0E5w"
            r0 = 4
            r2[r0] = r1
            java.lang.Class r0 = r7.getClass()
            if (r3 == r0) goto L28
        L27:
            return r4
        L28:
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.U6.A02
            r0 = 6
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 26
            if (r1 == r0) goto L53
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.U6.A02
            java.lang.String r1 = "sevTgvOvcIIO9hcSdxKvVaXYDQ2"
            r0 = 0
            r2[r0] = r1
            com.facebook.ads.redexgen.X.U6 r7 = (com.facebook.ads.redexgen.X.U6) r7
            com.facebook.ads.redexgen.X.U8 r1 = r6.A00
            com.facebook.ads.redexgen.X.U8 r0 = r7.A00
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L67
        L48:
            com.facebook.ads.redexgen.X.9l<java.lang.Integer> r1 = r6.A01
            com.facebook.ads.redexgen.X.9l<java.lang.Integer> r0 = r7.A01
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L67
        L52:
            return r5
        L53:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.U6.A02
            java.lang.String r1 = "u5GjXIxc3Iwrp0kRgHbkZLfq8SY7HrhC"
            r0 = 2
            r2[r0] = r1
            com.facebook.ads.redexgen.X.U6 r7 = (com.facebook.ads.redexgen.X.U6) r7
            com.facebook.ads.redexgen.X.U8 r1 = r6.A00
            com.facebook.ads.redexgen.X.U8 r0 = r7.A00
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L67
            goto L48
        L67:
            r5 = 0
            goto L52
        L69:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.U6.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        return this.A00.hashCode() + (this.A01.hashCode() * 31);
    }
}
