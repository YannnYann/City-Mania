package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3312tr implements Runnable {
    public final /* synthetic */ AbstractC1576Es A00;

    public RunnableC3312tr(AbstractC1576Es abstractC1576Es) {
        this.A00 = abstractC1576Es;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0r();
            this.A00.A0v(1000L);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
