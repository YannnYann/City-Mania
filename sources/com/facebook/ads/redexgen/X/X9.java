package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class X9 implements Runnable {
    public final X8 A00;

    public X9(X8 x8) {
        this.A00 = x8;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.AFn();
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
