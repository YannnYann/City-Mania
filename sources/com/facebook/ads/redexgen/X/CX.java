package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class CX extends AbstractC2633ik<CQ> {
    public static String[] A0H = {"U2dBX20JaeRgS8KUkn4U", "4wbYdEjd6EY1wYpAHERmBQ5UbLFk3rIE", "poCzv8x7tLJqIV5ZIWq", "9iyDRDGf0xWQ70I4mtfqA0IQycZfZ47C", "v2glKkwlOEfR0MfsI3TqmdNecXONmhZ3", "6XdF3RdtkhprEZiVEVCq65KOMzsBziM7", "2OiOSmaAlP7OTnmHwLOjTjXlL7jeDPuL", "nkMLdycTxYcJ5galJfvG8bjM9rVBse8i"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public AbstractC3137r2 A04;
    public InterfaceC3144r9 A05;
    public String A06;
    public List<C2999ol> A07;
    public boolean A08;
    public final SparseBooleanArray A09 = new SparseBooleanArray();
    public final LA A0A;
    public final C2771kz A0B;
    public final C1643Hi A0C;
    public final InterfaceC2909nG A0D;
    public final C3102qT A0E;
    public final C1508Cc A0F;
    public final C2224c2 A0G;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public CX(C1643Hi c1643Hi, List<C2999ol> list, LA la, InterfaceC2909nG interfaceC2909nG, C2771kz c2771kz, C2224c2 c2224c2, C3102qT c3102qT, InterfaceC3144r9 interfaceC3144r9, String str, int i, int i2, int i3, int i4, C1508Cc c1508Cc, AbstractC3137r2 abstractC3137r2) {
        this.A0C = c1643Hi;
        this.A0D = interfaceC2909nG;
        this.A0B = c2771kz;
        this.A0G = c2224c2;
        this.A0E = c3102qT;
        this.A05 = interfaceC3144r9;
        this.A0A = la;
        this.A07 = list;
        this.A00 = i;
        this.A03 = i4;
        this.A06 = str;
        this.A01 = i3;
        this.A02 = i2;
        this.A0F = c1508Cc;
        this.A04 = abstractC3137r2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2633ik
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final CQ A0F(ViewGroup viewGroup, int i) {
        return new CQ(AbstractC3442vx.A00(new C3373uq(this.A0C, this.A0D, this.A05, this.A0A, null, this.A0G, this.A0E).A0P(this.A04).A0U(), this.A03, this.A06, this.A0F), this.A09, this.A0G, this.A00, this.A01, this.A02, this.A07.size(), this.A0C, this.A0A.A33());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2633ik
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final void A0M(CQ cq, int i) {
        cq.A0x(this.A07.get(i), this.A0D, this.A0B, this.A0E, this.A06);
        if (!this.A08 && i == 0) {
            cq.AKX();
            String[] strArr = A0H;
            if (strArr[3].charAt(29) == strArr[6].charAt(29)) {
                throw new RuntimeException();
            }
            A0H[1] = "f5MkbcX2dFxcVTBDK6f4VKhLC7wzzoeI";
            this.A08 = true;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2633ik
    public final int A0B() {
        return this.A07.size();
    }
}
