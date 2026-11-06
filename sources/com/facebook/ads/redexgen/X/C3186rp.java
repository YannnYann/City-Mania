package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3186rp {
    public String A02;
    public String A03;
    public final C2427fL A06;
    public final C2441fZ A07;
    public final C1643Hi A08;
    public C2429fN A01 = C2429fN.A01(null);
    public int A00 = 1000;
    public boolean A05 = false;
    public String A04 = "";

    public C3186rp(C1643Hi c1643Hi, C2427fL c2427fL, C2441fZ c2441fZ) {
        this.A08 = c1643Hi;
        this.A06 = c2427fL;
        this.A07 = c2441fZ;
    }

    public final C3186rp A09(int i) {
        this.A00 = i;
        return this;
    }

    public final C3186rp A0A(C2429fN c2429fN) {
        this.A01 = c2429fN;
        return this;
    }

    public final C3186rp A0B(String str) {
        this.A04 = str;
        return this;
    }

    public final C3186rp A0C(String str) {
        this.A02 = str;
        return this;
    }

    public final C3186rp A0D(String str) {
        this.A03 = str;
        return this;
    }

    public final C3186rp A0E(boolean z) {
        this.A05 = z;
        return this;
    }

    public final C3184rn A0F() {
        return new C3184rn(this, null);
    }
}
