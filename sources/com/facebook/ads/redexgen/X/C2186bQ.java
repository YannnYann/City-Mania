package com.facebook.ads.redexgen.X;

import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bQ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2186bQ {
    public int A00;
    public int A01;
    public int A02;
    public InterfaceC2219bx A03;
    public Map<String, String> A04;
    public final int A05;
    public final int A06;

    public C2186bQ(int i, int i2, int i3, int i4, int i5, Map<String, String> requestHeaders, InterfaceC2219bx interfaceC2219bx) {
        this.A06 = i;
        this.A00 = i2;
        this.A02 = i3;
        this.A05 = i4;
        this.A01 = i5;
        this.A04 = requestHeaders;
        this.A03 = interfaceC2219bx;
    }

    public final int A00() {
        return this.A00;
    }

    public final int A01() {
        return this.A01;
    }

    public final int A02() {
        return this.A02;
    }

    public final int A03() {
        return this.A05;
    }

    public final int A04() {
        return this.A06;
    }

    public final InterfaceC2219bx A05() {
        return this.A03;
    }

    public final Map<String, String> A06() {
        return this.A04;
    }
}
