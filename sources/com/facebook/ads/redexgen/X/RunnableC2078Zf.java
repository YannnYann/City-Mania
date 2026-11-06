package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Zf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC2078Zf implements Runnable {
    public final /* synthetic */ AI A00;

    public RunnableC2078Zf(AI ai) {
        this.A00 = ai;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            AI.A03(this.A00);
            throw null;
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
