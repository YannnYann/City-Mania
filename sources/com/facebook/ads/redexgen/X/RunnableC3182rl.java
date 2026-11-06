package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3182rl implements Runnable {
    public final /* synthetic */ C1516Ck A00;

    public RunnableC3182rl(C1516Ck c1516Ck) {
        this.A00 = c1516Ck;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A00.A0J(EnumC2916nN.A0b);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
