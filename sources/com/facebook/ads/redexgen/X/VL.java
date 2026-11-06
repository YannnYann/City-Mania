package com.facebook.ads.redexgen.X;

import android.os.Bundle;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class VL implements InterfaceC1703Jt {
    public Jo A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public static String[] A06 = {"RzYfNoMYcraHdY97o72y5SaeihK1Ztvv", "vjYG0c31y56prRel8vYk8Bpak1PocMUh", "dfxmatFiNvP9hSuL3LPmUKiC9gG3nQht", "JTv6rEt7nFdMJkwWS0x5u0IiQaF5ze30", "vmQpx5ObQbEZCmEzbP9elPWMJRFmrKCr", "uNbuNYUsV0K9GgwPFq3yj1D7AAPzTxzO", "9HMy9JZguRbTXmE2huzWeI0Wqqj6RWZB", "emZZOWdTIcdM1EwrEwZ0sIkDdyRItzd8"};
    public static final VL A07 = new C1699Jp().A05();
    public static final String A0A = N1.A0h(0);
    public static final String A0B = N1.A0h(1);
    public static final String A0D = N1.A0h(2);
    public static final String A09 = N1.A0h(3);
    public static final String A0C = N1.A0h(4);
    public static final InterfaceC1702Js<VL> A08 = new InterfaceC1702Js() { // from class: com.facebook.ads.redexgen.X.VM
        @Override // com.facebook.ads.redexgen.X.InterfaceC1702Js
        public final InterfaceC1703Jt A7F(Bundle bundle) {
            return VL.A00(bundle);
        }
    };

    public VL(int i, int i2, int i3, int i4, int i5) {
        this.A02 = i;
        this.A03 = i2;
        this.A05 = i3;
        this.A01 = i4;
        this.A04 = i5;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ com.facebook.ads.redexgen.X.VL A00(android.os.Bundle r5) {
        /*
            Method dump skipped, instruction units count: 238
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.VL.A00(android.os.Bundle):com.facebook.ads.redexgen.X.VL");
    }

    public final Jo A01() {
        if (this.A00 == null) {
            this.A00 = new Jo(this);
        }
        return this.A00;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        VL vl = (VL) obj;
        return this.A02 == vl.A02 && this.A03 == vl.A03 && this.A05 == vl.A05 && this.A01 == vl.A01 && this.A04 == vl.A04;
    }

    public final int hashCode() {
        int result = this.A02;
        int result2 = ((((17 * 31) + result) * 31) + this.A03) * 31;
        int result3 = this.A05;
        int result4 = (((result2 + result3) * 31) + this.A01) * 31;
        int result5 = this.A04;
        return result4 + result5;
    }
}
