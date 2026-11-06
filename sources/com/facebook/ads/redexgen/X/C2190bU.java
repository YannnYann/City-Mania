package com.facebook.ads.redexgen.X;

import java.util.Set;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bU, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2190bU {
    public C2186bQ A00;
    public Set<String> A01;
    public Set<String> A02;
    public boolean A03;
    public boolean A04;
    public boolean A05;

    public C2190bU(C2186bQ c2186bQ, boolean z, Set<String> pinnedPublicKeys, Set<String> pinnedCertificates, boolean z2, boolean z3) {
        this.A00 = c2186bQ;
        this.A04 = z;
        this.A02 = pinnedPublicKeys;
        this.A01 = pinnedCertificates;
        this.A03 = z2;
        this.A05 = z3;
    }

    public final C2186bQ A00() {
        return this.A00;
    }

    public final Set<String> A01() {
        return this.A01;
    }

    public final Set<String> A02() {
        return this.A02;
    }

    public final boolean A03() {
        return this.A04;
    }

    public final boolean A04() {
        return this.A03;
    }

    public final boolean A05() {
        return this.A05;
    }
}
