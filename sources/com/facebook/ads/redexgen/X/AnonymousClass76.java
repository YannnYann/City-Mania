package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.76, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AnonymousClass76 extends J7 {
    public static String[] A08 = {"bHvO3zM", "7z8VpEP", "iw2Y0c", "LME8njBPiXs011hhslbtp", "9K0lNzbR5X2b0vS5", "Pt0EnZUFnGQLsNks8pQcEgn0FivkNzUh", "t6anbflpJj2CGicCnIMdWTRCydsD", "D9TL9YTSSd0lWzGeUvgWfvwaUF0YdAOx"};
    public float A00;
    public int A01;
    public int A02;
    public AnonymousClass77 A03;
    public int[] A04;
    public final C1643Hi A05;
    public final C3053pg A06;
    public final C3034pN A07;

    public AnonymousClass76(C1643Hi c1643Hi, C3034pN c3034pN, C3053pg c3053pg) {
        super(c1643Hi);
        this.A02 = 0;
        this.A00 = 50.0f;
        this.A05 = c1643Hi;
        this.A07 = c3034pN;
        this.A06 = c3053pg;
        this.A01 = -1;
        this.A03 = new AnonymousClass77(this, this.A05);
    }

    @Override // com.facebook.ads.redexgen.X.J7, com.facebook.ads.redexgen.X.AbstractC2645iw
    public final void A2B(int i) {
        A3G(i, this.A02);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00fb  */
    @Override // com.facebook.ads.redexgen.X.AbstractC2645iw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A2a(com.facebook.ads.redexgen.X.C2653j4 r17, com.facebook.ads.redexgen.X.C2660jB r18, int r19, int r20) {
        /*
            Method dump skipped, instruction units count: 295
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass76.A2a(com.facebook.ads.redexgen.X.j4, com.facebook.ads.redexgen.X.jB, int, int):void");
    }

    @Override // com.facebook.ads.redexgen.X.J7, com.facebook.ads.redexgen.X.AbstractC2645iw
    public final void A2o(C7O c7o, C2660jB c2660jB, int i) {
        this.A03.A0H(i);
        A2c(this.A03);
    }

    public final void A3L(double d) {
        if (d <= 0.0d) {
            d = 1.0d;
        }
        this.A00 = (float) (50.0d / d);
        this.A03 = new AnonymousClass77(this, this.A05);
    }

    public final void A3M(int i) {
        this.A01 = i;
    }

    public final void A3N(int i) {
        this.A02 = i;
    }
}
