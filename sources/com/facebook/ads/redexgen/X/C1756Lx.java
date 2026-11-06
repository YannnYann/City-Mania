package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1756Lx {
    public boolean A00;
    public final InterfaceC1754Lu A01;

    public C1756Lx() {
        this(InterfaceC1754Lu.A00);
    }

    public C1756Lx(InterfaceC1754Lu interfaceC1754Lu) {
        this.A01 = interfaceC1754Lu;
    }

    public final synchronized void A00() throws InterruptedException {
        while (!this.A00) {
            wait();
        }
    }

    public final synchronized void A01() {
        boolean z = false;
        while (true) {
            boolean wasInterrupted = this.A00;
            if (wasInterrupted) {
                break;
            }
            try {
                wait();
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public final synchronized boolean A02() {
        boolean z;
        z = this.A00;
        this.A00 = false;
        return z;
    }

    public final synchronized boolean A03() {
        return this.A00;
    }

    public final synchronized boolean A04() {
        if (this.A00) {
            return false;
        }
        this.A00 = true;
        notifyAll();
        return true;
    }

    public final synchronized boolean A05(long j) throws InterruptedException {
        if (j <= 0) {
            return this.A00;
        }
        long nowMs = this.A01.A6s();
        long j2 = nowMs + j;
        if (j2 < nowMs) {
            A00();
        } else {
            while (!this.A00 && nowMs < j2) {
                long endMs = j2 - nowMs;
                wait(endMs);
                nowMs = this.A01.A6s();
            }
        }
        return this.A00;
    }
}
