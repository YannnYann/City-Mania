package com.facebook.ads.redexgen.X;

import android.os.Bundle;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ug, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1958Ug implements InterfaceC1703Jt {
    public final C1967Up A00;

    @Deprecated
    public final C9P A01;
    public final C1962Uk A02;
    public final C1727Kr A03;

    @Deprecated
    public final C1959Uh A04;
    public final C1955Ud A05;
    public final String A06;
    public static final C1958Ug A08 = new C1719Kj().A05();
    public static final InterfaceC1702Js<C1958Ug> A07 = new InterfaceC1702Js() { // from class: com.facebook.ads.redexgen.X.Uw
        @Override // com.facebook.ads.redexgen.X.InterfaceC1702Js
        public final InterfaceC1703Jt A7F(Bundle bundle) {
            return C1958Ug.A00(bundle);
        }
    };

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C1958Ug A00(Bundle bundle) {
        String str = (String) AbstractC1747Ln.A01(bundle.getString(A02(0), ""));
        Bundle bundle2 = bundle.getBundle(A02(1));
        C1962Uk c1962Uk = bundle2 == null ? C1962Uk.A07 : (C1962Uk) C1962Uk.A06.A7F(bundle2);
        Bundle bundle3 = bundle.getBundle(A02(2));
        C1955Ud c1955Ud = bundle3 == null ? C1955Ud.A0Z : (C1955Ud) C1955Ud.A0Y.A7F(bundle3);
        Bundle bundle4 = bundle.getBundle(A02(3));
        return new C1958Ug(str, bundle4 == null ? C9P.A00 : (C9P) C1967Up.A05.A7F(bundle4), null, c1962Uk, c1955Ud);
    }

    public C1958Ug(String str, C9P c9p, C1959Uh c1959Uh, C1962Uk c1962Uk, C1955Ud c1955Ud) {
        this.A06 = str;
        this.A03 = c1959Uh;
        this.A04 = c1959Uh;
        this.A02 = c1962Uk;
        this.A05 = c1955Ud;
        this.A00 = c9p;
        this.A01 = c9p;
    }

    public static String A02(int i) {
        return Integer.toString(i, 36);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1958Ug)) {
            return false;
        }
        C1958Ug c1958Ug = (C1958Ug) obj;
        if (N1.A1E(this.A06, c1958Ug.A06) && this.A00.equals(c1958Ug.A00) && N1.A1E(this.A03, c1958Ug.A03) && N1.A1E(this.A02, c1958Ug.A02) && N1.A1E(this.A05, c1958Ug.A05)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int result = this.A06.hashCode();
        int i = result * 31;
        int result2 = this.A03 != null ? this.A03.hashCode() : 0;
        int result3 = (((i + result2) * 31) + this.A02.hashCode()) * 31;
        int result4 = this.A00.hashCode();
        return ((result3 + result4) * 31) + this.A05.hashCode();
    }
}
