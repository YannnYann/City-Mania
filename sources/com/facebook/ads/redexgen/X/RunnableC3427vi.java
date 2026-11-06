package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3427vi implements Runnable {
    public final /* synthetic */ EE A00;

    public RunnableC3427vi(EE ee) {
        this.A00 = ee;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0K = true;
            if (this.A00.A0o.A0D() != null) {
                this.A00.A0o.A0D().AH3(true);
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
