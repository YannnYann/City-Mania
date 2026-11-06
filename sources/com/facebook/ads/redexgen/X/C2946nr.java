package com.facebook.ads.redexgen.X;

import java.util.LinkedList;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.nr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2946nr {
    public final InterfaceC2944np A0B;
    public final boolean A0F;
    public final String A0C = C2946nr.class.getSimpleName();
    public final int A07 = 101;
    public final int A0A = 102;
    public final int A08 = 103;
    public final int A03 = 104;
    public final int A09 = 105;
    public final int A02 = 106;
    public final int A04 = 107;
    public final int A05 = 108;
    public final int A06 = 109;
    public final int A01 = 110;
    public final boolean A0E = false;
    public long A00 = -1;
    public final List<C2945nq> A0D = new LinkedList();

    public C2946nr(C2780lA c2780lA, InterfaceC2944np interfaceC2944np) {
        int nativeViewabilityHistorySamplingRate = AbstractC2890mx.A0D(c2780lA);
        if (nativeViewabilityHistorySamplingRate < 1) {
            this.A0F = false;
        } else {
            this.A0F = c2780lA.A09().A00() < 1.0d / ((double) nativeViewabilityHistorySamplingRate);
        }
        this.A0B = interfaceC2944np;
    }

    private int A00() {
        return this.A0B.A8E();
    }

    private int A01() {
        if (this.A00 > 0) {
            return (int) (System.currentTimeMillis() - this.A00);
        }
        return -1;
    }

    private void A03(C2945nq c2945nq) {
        synchronized (this.A0D) {
            this.A0D.add(c2945nq);
        }
    }

    public final void A04() {
        if (!this.A0F) {
            return;
        }
        A03(new C2945nq(A01(), 110, A00(), null));
    }

    public final void A05() {
        if (!this.A0F) {
            return;
        }
        A03(new C2945nq(A01(), 106, A00(), null));
    }

    public final void A06() {
        if (!this.A0F) {
            return;
        }
        A03(new C2945nq(A01(), 104, A00(), null));
    }

    public final void A07() {
        if (!this.A0F) {
            return;
        }
        A03(new C2945nq(A01(), 109, -1, null));
    }

    public final void A08() {
        if (!this.A0F) {
            return;
        }
        A03(new C2945nq(A01(), 108, A00(), null));
    }

    public final void A09() {
        if (!this.A0F) {
            return;
        }
        this.A00 = System.currentTimeMillis();
        A03(new C2945nq(0, 101, -1, null));
    }

    public final void A0A() {
        if (!this.A0F) {
            return;
        }
        A03(new C2945nq(A01(), 105, A00(), null));
    }

    public final void A0B() {
        if (!this.A0F) {
            return;
        }
        A03(new C2945nq(A01(), 102, A00(), null));
    }

    public final void A0C(C2780lA c2780lA, String str) {
        if (!this.A0F) {
            return;
        }
        A03(new C2945nq(A01(), 103, A00(), null));
        ExecutorC3116qh.A06.execute(new RunnableC2943no(this, str, c2780lA));
    }
}
