package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Od, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1814Od implements InterfaceC2191bV {
    public final long[] A00;
    public final C1936Th[] A01;

    public C1814Od(C1936Th[] c1936ThArr, long[] jArr) {
        this.A01 = c1936ThArr;
        this.A00 = jArr;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final List<C1936Th> A88(long j) {
        int iA0L = N1.A0L(this.A00, j, true, false);
        if (iA0L == -1 || this.A01[iA0L] == C1936Th.A0J) {
            return Collections.emptyList();
        }
        return Collections.singletonList(this.A01[iA0L]);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final long A8e(int i) {
        boolean z = true;
        AbstractC1747Ln.A07(i >= 0);
        if (i >= this.A00.length) {
            z = false;
        }
        AbstractC1747Ln.A07(z);
        return this.A00[i];
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final int A8f() {
        return this.A00.length;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final int A9D(long j) {
        int iA0K = N1.A0K(this.A00, j, false, false);
        int index = this.A00.length;
        if (iA0K < index) {
            return iA0K;
        }
        return -1;
    }
}
