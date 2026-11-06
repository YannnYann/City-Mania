package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.w8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3453w8 implements Runnable {
    public final /* synthetic */ C13655y A00;

    public RunnableC3453w8(C13655y c13655y) {
        this.A00 = c13655y;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0A != null && this.A00.getResources().getConfiguration().orientation == 1) {
                this.A00.A0A.A0A();
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
