package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ro, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1891Ro implements VF {
    public static String[] A03 = {"hCZczwbChjUsCUwxRw6prGp4a38eJSZM", "lUxYycgrJvFaPUBvx4GBEhYiK4m9kyuX", "K7biVkji8c2abFRUzoZE35M16Nr30sHx", "hTaSJqeXWqACDI8Tl6AegleljrjoWV5D", "4GC", "suRSw9BBhIrTo6orh3wdvsggGiK", "dvp9xbjmJkXWLC3W6qrOil1Xu4dhPnSh", "oqp"};
    public boolean A00;
    public final VF A01;
    public final /* synthetic */ C8t A02;

    public C1891Ro(C8t c8t, VF vf) {
        this.A02 = c8t;
        this.A01 = vf;
    }

    public final void A00() {
        this.A00 = false;
    }

    @Override // com.facebook.ads.redexgen.X.VF
    public final boolean ABM() {
        return !this.A02.A03() && this.A01.ABM();
    }

    @Override // com.facebook.ads.redexgen.X.VF
    public final void ADI() throws IOException {
        this.A01.ADI();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    @Override // com.facebook.ads.redexgen.X.VF
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int AIc(com.facebook.ads.redexgen.X.C1825Oo r12, com.facebook.ads.redexgen.X.T2 r13, int r14) {
        /*
            Method dump skipped, instruction units count: 213
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1891Ro.AIc(com.facebook.ads.redexgen.X.Oo, com.facebook.ads.redexgen.X.T2, int):int");
    }

    @Override // com.facebook.ads.redexgen.X.VF
    public final int ALK(long j) {
        if (this.A02.A03()) {
            return -3;
        }
        return this.A01.ALK(j);
    }
}
