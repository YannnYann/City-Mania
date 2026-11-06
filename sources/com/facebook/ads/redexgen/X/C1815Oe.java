package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Oe, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1815Oe implements InterfaceC2191bV {
    public final List<Long> A00;
    public final List<List<C1936Th>> A01;

    public C1815Oe(List<List<C1936Th>> list, List<Long> cueTimesUs) {
        this.A01 = list;
        this.A00 = cueTimesUs;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final List<C1936Th> A88(long j) {
        int iA0H = N1.A0H(this.A00, Long.valueOf(j), true, false);
        if (iA0H == -1) {
            return Collections.emptyList();
        }
        return this.A01.get(iA0H);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final long A8e(int i) {
        boolean z = true;
        AbstractC1747Ln.A07(i >= 0);
        if (i >= this.A00.size()) {
            z = false;
        }
        AbstractC1747Ln.A07(z);
        return this.A00.get(i).longValue();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final int A8f() {
        return this.A00.size();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final int A9D(long j) {
        int iA0G = N1.A0G(this.A00, Long.valueOf(j), false, false);
        int index = this.A00.size();
        if (iA0G < index) {
            return iA0G;
        }
        return -1;
    }
}
