package com.facebook.ads.redexgen.X;

import android.os.Bundle;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Up, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1967Up implements InterfaceC1703Jt {
    public final long A00;
    public final long A01;
    public final boolean A02;
    public final boolean A03;
    public final boolean A04;
    public static final C1967Up A06 = new C1720Kk().A0A();
    public static final InterfaceC1702Js<C9P> A05 = new InterfaceC1702Js() { // from class: com.facebook.ads.redexgen.X.Us
        @Override // com.facebook.ads.redexgen.X.InterfaceC1702Js
        public final InterfaceC1703Jt A7F(Bundle bundle) {
            return new C1720Kk().A06(bundle.getLong(C1967Up.A01(0), 0L)).A05(bundle.getLong(C1967Up.A01(1), Long.MIN_VALUE)).A08(bundle.getBoolean(C1967Up.A01(2), false)).A07(bundle.getBoolean(C1967Up.A01(3), false)).A09(bundle.getBoolean(C1967Up.A01(4), false)).A0B();
        }
    };

    public C1967Up(C1720Kk c1720Kk) {
        this.A01 = c1720Kk.A01;
        this.A00 = c1720Kk.A00;
        this.A03 = c1720Kk.A03;
        this.A02 = c1720Kk.A02;
        this.A04 = c1720Kk.A04;
    }

    public static String A01(int i) {
        return Integer.toString(i, 36);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1967Up)) {
            return false;
        }
        C1967Up c1967Up = (C1967Up) obj;
        return this.A01 == c1967Up.A01 && this.A00 == c1967Up.A00 && this.A03 == c1967Up.A03 && this.A02 == c1967Up.A02 && this.A04 == c1967Up.A04;
    }

    public final int hashCode() {
        return (((((((((int) (this.A01 ^ (this.A01 >>> 32))) * 31) + ((int) (this.A00 ^ (this.A00 >>> 32)))) * 31) + (this.A03 ? 1 : 0)) * 31) + (this.A02 ? 1 : 0)) * 31) + (this.A04 ? 1 : 0);
    }
}
