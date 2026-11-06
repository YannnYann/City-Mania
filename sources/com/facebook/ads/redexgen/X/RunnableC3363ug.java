package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ug, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3363ug implements Runnable {
    public final /* synthetic */ C1564Eg A00;

    public RunnableC3363ug(C1564Eg c1564Eg) {
        this.A00 = c1564Eg;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A00.A05 = true;
            if (((AbstractC3370un) this.A00).A08.A0D() != null) {
                ((AbstractC3370un) this.A00).A08.A0D().AH3(true);
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
