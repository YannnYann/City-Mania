package com.facebook.ads.redexgen.X;

import java.util.Objects;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Py extends AbstractC2061Yo {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Py(final Z5 z5, int i, long j, long j2) {
        super(new InterfaceC2057Yj() { // from class: com.facebook.ads.redexgen.X.Q1
            @Override // com.facebook.ads.redexgen.X.InterfaceC2057Yj
            public final long ALk(long j3) {
                return z5.A07(j3);
            }
        }, new Q0(z5, i), z5.A06(), 0L, z5.A09, j, j2, z5.A05(), Math.max(6, z5.A06));
        Objects.requireNonNull(z5);
    }
}
