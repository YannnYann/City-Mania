package com.facebook.ads.redexgen.X;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.fQ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2432fQ implements Serializable {
    public static final long serialVersionUID = -2102939945352398575L;
    public long A00;
    public long A01;
    public boolean A02;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public boolean A06;
    public final List<C2962o9> A07;
    public final List<String> A08;

    public C2432fQ(List<String> screenshots, long j, long j2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, List<C2962o9> list) {
        this.A08 = screenshots;
        this.A00 = j;
        this.A01 = j2;
        this.A04 = z;
        this.A02 = z2;
        this.A03 = z3;
        this.A05 = z4;
        this.A06 = z5;
        this.A07 = list;
    }

    public final long A00() {
        return this.A00;
    }

    public final long A01() {
        return this.A01;
    }

    public final List<C2962o9> A02() {
        return Collections.unmodifiableList(this.A07);
    }

    public final List<String> A03() {
        return Collections.unmodifiableList(this.A08);
    }

    public final boolean A04() {
        return this.A02;
    }

    public final boolean A05() {
        return this.A03;
    }

    public final boolean A06() {
        return this.A04;
    }

    public final boolean A07() {
        return this.A05;
    }

    public final boolean A08() {
        return this.A06;
    }
}
