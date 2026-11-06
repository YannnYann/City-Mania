package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uU, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3351uU implements Runnable {
    public final /* synthetic */ C13655y A00;

    public RunnableC3351uU(C13655y c13655y) {
        this.A00 = c13655y;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0H = true;
            this.A00.A0p.AH3(true);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
