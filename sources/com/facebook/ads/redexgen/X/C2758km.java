package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.km, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2758km extends Thread {
    public final long A00;

    public C2758km(long j) {
        this.A00 = j;
        start();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        while (true) {
            try {
                try {
                    Thread.sleep(this.A00);
                } catch (Throwable th) {
                    AbstractC2996oi.A00(th, this);
                    return;
                }
            } catch (InterruptedException unused) {
            }
            C2756kk.A01();
        }
    }
}
