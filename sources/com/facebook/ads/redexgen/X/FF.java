package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class FF implements InterfaceC3211sE {
    public static byte[] A01;
    public static String[] A02 = {"nV", "0i4Wqrqqd8V", "SjjlSsHq4luZ", "UY2G1G5tdkkQRCLDawUW8PMELrtkam", "x8YzSsjyce", "sMLSYBAewXVAxhh2DbXf8YHA5QSbjC", "Z41BjwW", "WlPnbv1jMaDivlCQdRIz8mOz1GWjjHLQ"};
    public final /* synthetic */ AbstractC3209sC A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 111);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-29, -17, -19, -82, -26, -31, -29, -27, -30, -17, -17, -21, -82, -31, -28, -13, -82, -31, -28, -14, -27, -16, -17, -14, -12, -23, -18, -25, -82, -58, -55, -50, -55, -45, -56, -33, -63, -60, -33, -46, -59, -48, -49, -46, -44, -55, -50, -57, -33, -58, -52, -49, -41};
        String[] strArr = A02;
        if (strArr[4].length() == strArr[1].length()) {
            throw new RuntimeException();
        }
        A02[7] = "41BFLxMtpa8zSeOoPh8lyezFWRN0z1Os";
    }

    static {
        A01();
    }

    public FF(AbstractC3209sC abstractC3209sC) {
        this.A00 = abstractC3209sC;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3211sE
    public final void A5c() {
        if (this.A00.A09 == null) {
            return;
        }
        this.A00.A09.A5C(A00(0, 53, 17));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0053  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC3211sE
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A5d() {
        /*
            r4 = this;
            com.facebook.ads.redexgen.X.sC r0 = r4.A00
            r0.A0P()
            com.facebook.ads.redexgen.X.sC r0 = r4.A00
            com.facebook.ads.redexgen.X.rA r0 = com.facebook.ads.redexgen.X.AbstractC3209sC.A0B(r0)
            if (r0 == 0) goto L17
            com.facebook.ads.redexgen.X.sC r0 = r4.A00
            com.facebook.ads.redexgen.X.rA r1 = com.facebook.ads.redexgen.X.AbstractC3209sC.A0B(r0)
            r0 = 1
            r1.AGp(r0)
        L17:
            com.facebook.ads.redexgen.X.sC r0 = r4.A00
            com.facebook.ads.redexgen.X.sB r0 = com.facebook.ads.redexgen.X.AbstractC3209sC.A0C(r0)
            if (r0 == 0) goto L41
            com.facebook.ads.redexgen.X.sC r0 = r4.A00
            com.facebook.ads.redexgen.X.sB r3 = com.facebook.ads.redexgen.X.AbstractC3209sC.A0C(r0)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.FF.A02
            r0 = 4
            r1 = r2[r0]
            r0 = 1
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L5b
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.FF.A02
            java.lang.String r1 = "wiJwg3n4JCc"
            r0 = 2
            r2[r0] = r1
            r3.ADn()
        L41:
            com.facebook.ads.redexgen.X.sC r0 = r4.A00
            com.facebook.ads.redexgen.X.AbstractC3209sC.A0I(r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.FF.A02
            r0 = 2
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 19
            if (r1 == r0) goto L5b
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.FF.A02
            java.lang.String r1 = "OhUE2NP"
            r0 = 6
            r2[r0] = r1
            return
        L5b:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.FF.A5d():void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3211sE
    public final void AAG() {
        if (this.A00.A04 == null) {
            A5d();
            return;
        }
        AbstractC3209sC.A03(this.A00);
        if (this.A00.A04.A02() == null) {
            AbstractC3209sC abstractC3209sC = this.A00;
            if (A02[6].length() != 7) {
                throw new RuntimeException();
            }
            A02[7] = "M7aB9yPR9altU9X1FYnvgfaKEANBwcUB";
            abstractC3209sC.A0F();
        } else {
            this.A00.A0H(this.A00.A04.A02());
        }
        if (C2888mv.A2b(this.A00.A07)) {
            this.A00.performAccessibilityAction(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, null);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3211sE
    public final void ABX() {
        if (!TextUtils.isEmpty(this.A00.A06.A0I())) {
            C3032pK.A0P(new C3032pK(), this.A00.A07, AbstractC3036pP.A00(this.A00.A06.A0I()), this.A00.A0B);
        }
        if (this.A00.A03 == null) {
            return;
        }
        this.A00.A03.A04();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3211sE
    public final void ABY() {
        this.A00.A0P();
        if (this.A00.A0A != null) {
            this.A00.A0A.AGp(true);
        }
        if (!TextUtils.isEmpty(this.A00.A06.A0C())) {
            C3032pK.A0P(new C3032pK(), this.A00.A07, AbstractC3036pP.A00(this.A00.A06.A0C()), this.A00.A0B);
        }
        if (this.A00.A03 != null) {
            this.A00.A03.A06();
        }
        this.A00.A0E();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3211sE
    public final void AFv(EnumC2506gc enumC2506gc) {
        AbstractC3209sC.A02(this.A00);
        this.A00.A02 = enumC2506gc;
        this.A00.A0H(this.A00.A02 == EnumC2506gc.A03 ? this.A00.A06.A0A() : this.A00.A06.A0B());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3211sE
    public final void AG9(C2508ge c2508ge) {
        AbstractC3209sC.A02(this.A00);
        if (this.A00.A03 != null) {
            this.A00.A03.A07(c2508ge.A01());
        }
        List<C2508ge> listA05 = c2508ge.A05();
        if (A02[2].length() == 19) {
            throw new RuntimeException();
        }
        A02[7] = "TiWZaQmdYanhhmDQ1Z6mCdwiNcdolR51";
        if (!listA05.isEmpty()) {
            this.A00.A0H(c2508ge);
        } else {
            this.A00.A0G(c2508ge);
        }
    }
}
