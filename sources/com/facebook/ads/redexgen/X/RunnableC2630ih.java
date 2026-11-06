package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ih, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC2630ih implements Runnable {
    public final /* synthetic */ C7O A00;

    public RunnableC2630ih(C7O c7o) {
        this.A00 = c7o;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.A00.A0D || this.A00.isLayoutRequested()) {
            return;
        }
        if (!this.A00.A0F) {
            this.A00.requestLayout();
        } else if (this.A00.A0I) {
            this.A00.A0J = true;
        } else {
            this.A00.A1M();
        }
    }
}
