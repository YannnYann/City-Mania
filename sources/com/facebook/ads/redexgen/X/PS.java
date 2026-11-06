package com.facebook.ads.redexgen.X;

import android.os.Looper;
import com.facebook.ads.androidx.media3.common.Timeline;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class PS {
    public int A00;
    public int A01;
    public Looper A03;
    public Object A04;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public final Timeline A0A;
    public final InterfaceC1754Lu A0B;
    public final PQ A0C;
    public final PR A0D;
    public long A02 = -9223372036854775807L;
    public boolean A05 = true;

    public PS(PQ pq, PR pr, Timeline timeline, int i, InterfaceC1754Lu interfaceC1754Lu, Looper looper) {
        this.A0C = pq;
        this.A0D = pr;
        this.A0A = timeline;
        this.A03 = looper;
        this.A0B = interfaceC1754Lu;
        this.A00 = i;
    }

    public final int A00() {
        return this.A00;
    }

    public final int A01() {
        return this.A01;
    }

    public final long A02() {
        return this.A02;
    }

    public final Looper A03() {
        return this.A03;
    }

    public final Timeline A04() {
        return this.A0A;
    }

    public final PR A05() {
        return this.A0D;
    }

    public final PS A06() {
        AbstractC1747Ln.A08(!this.A09);
        if (this.A02 == -9223372036854775807L) {
            AbstractC1747Ln.A07(this.A05);
        }
        this.A09 = true;
        this.A0C.AKU(this);
        return this;
    }

    public final PS A07(int i) {
        AbstractC1747Ln.A08(!this.A09);
        this.A01 = i;
        return this;
    }

    public final PS A08(Object obj) {
        AbstractC1747Ln.A08(!this.A09);
        this.A04 = obj;
        return this;
    }

    public final Object A09() {
        return this.A04;
    }

    public final synchronized void A0A(boolean z) {
        this.A07 |= z;
        this.A08 = true;
        notifyAll();
    }

    public final boolean A0B() {
        return this.A05;
    }

    public final synchronized boolean A0C() throws InterruptedException {
        AbstractC1747Ln.A08(this.A09);
        AbstractC1747Ln.A08(this.A03.getThread() != Thread.currentThread());
        while (!this.A08) {
            wait();
        }
        return this.A07;
    }

    public final synchronized boolean A0D() {
        return this.A06;
    }
}
