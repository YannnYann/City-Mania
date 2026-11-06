package com.facebook.ads.redexgen.X;

import java.util.Set;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bW, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2192bW {
    public C2186bQ A00;
    public Set<String> A01;
    public Set<String> A02;
    public boolean A03;
    public boolean A04 = true;
    public boolean A05;

    public final C2192bW A00(C2186bQ c2186bQ) {
        this.A00 = c2186bQ;
        return this;
    }

    public final C2192bW A01(Set<String> pinnedCertificates) {
        this.A01 = pinnedCertificates;
        return this;
    }

    public final C2192bW A02(Set<String> pinnedPublicKeys) {
        this.A02 = pinnedPublicKeys;
        return this;
    }

    public final C2192bW A03(boolean z) {
        this.A04 = z;
        return this;
    }

    public final C2192bW A04(boolean z) {
        this.A03 = z;
        return this;
    }

    public final C2192bW A05(boolean z) {
        this.A05 = z;
        return this;
    }

    public final C2190bU A06() {
        return new C2190bU(this.A00, this.A04, this.A02, this.A01, this.A03, this.A05);
    }
}
