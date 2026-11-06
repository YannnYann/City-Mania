package com.facebook.ads.redexgen.X;

import android.os.Handler;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Bi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1488Bi extends AbstractRunnableC3004oq {
    public final /* synthetic */ C1484Be A00;

    public C1488Bi(C1484Be c1484Be) {
        this.A00 = c1484Be;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        if (!this.A00.A04) {
            final int currentPositionInMillis = this.A00.getCurrentPositionInMillis();
            this.A00.A0C.A02(new BN(currentPositionInMillis) { // from class: com.facebook.ads.redexgen.X.5V
            });
            this.A00.A0D.A01(currentPositionInMillis, this.A00.getDuration(), this.A00.A0B.A0F());
            Handler handler = this.A00.A08;
            int currentPositionMs = this.A00.A01;
            handler.postDelayed(this, currentPositionMs);
        }
    }
}
