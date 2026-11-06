package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class OV implements InterfaceC2191bV {
    public final C2230c8 A00;
    public final Map<String, C2237cF> A01;
    public final Map<String, String> A02;
    public final Map<String, C2231c9> A03;
    public final long[] A04;

    public OV(C2230c8 c2230c8, Map<String, C2237cF> map, Map<String, C2231c9> map2, Map<String, String> imageMap) {
        this.A00 = c2230c8;
        this.A03 = map2;
        this.A02 = imageMap;
        this.A01 = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.A04 = c2230c8.A0G();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final List<C1936Th> A88(long j) {
        return this.A00.A0E(j, this.A01, this.A03, this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final long A8e(int i) {
        return this.A04[i];
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final int A8f() {
        return this.A04.length;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2191bV
    public final int A9D(long j) {
        int iA0K = N1.A0K(this.A04, j, false, false);
        int index = this.A04.length;
        if (iA0K < index) {
            return iA0K;
        }
        return -1;
    }
}
