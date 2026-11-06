package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3426vh implements Runnable {
    public final /* synthetic */ EE A00;

    public RunnableC3426vh(EE ee) {
        this.A00 = ee;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0L) {
                this.A00.A0P();
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
