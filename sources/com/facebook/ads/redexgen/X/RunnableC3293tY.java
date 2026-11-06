package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tY, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3293tY implements Runnable {
    public final /* synthetic */ C3294tZ A00;
    public final /* synthetic */ InterfaceC3295ta A01;

    public RunnableC3293tY(C3294tZ c3294tZ, InterfaceC3295ta interfaceC3295ta) {
        this.A00 = c3294tZ;
        this.A01 = interfaceC3295ta;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A01.ADv();
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
