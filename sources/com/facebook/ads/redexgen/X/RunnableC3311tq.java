package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3311tq implements Runnable {
    public final /* synthetic */ AbstractC1576Es A00;

    public RunnableC3311tq(AbstractC1576Es abstractC1576Es) {
        this.A00 = abstractC1576Es;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A01 = this.A00.A0U.A04();
            this.A00.A03 = AbstractC1576Es.A0I(this.A00.A0U.A04());
            this.A00.A0p();
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
