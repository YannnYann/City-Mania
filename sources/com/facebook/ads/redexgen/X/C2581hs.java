package com.facebook.ads.redexgen.X;

import android.view.WindowInsets;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2581hs {
    public final Object A00;

    public C2581hs(Object obj) {
        this.A00 = obj;
    }

    public static C2581hs A00(Object obj) {
        if (obj == null) {
            return null;
        }
        return new C2581hs(obj);
    }

    public static Object A01(C2581hs c2581hs) {
        if (c2581hs == null) {
            return null;
        }
        return c2581hs.A00;
    }

    public final int A02() {
        return ((WindowInsets) this.A00).getSystemWindowInsetBottom();
    }

    public final int A03() {
        return ((WindowInsets) this.A00).getSystemWindowInsetLeft();
    }

    public final int A04() {
        return ((WindowInsets) this.A00).getSystemWindowInsetRight();
    }

    public final int A05() {
        return ((WindowInsets) this.A00).getSystemWindowInsetTop();
    }

    public final C2581hs A06(int i, int i2, int i3, int i4) {
        return new C2581hs(((WindowInsets) this.A00).replaceSystemWindowInsets(i, i2, i3, i4));
    }

    public final boolean A07() {
        return ((WindowInsets) this.A00).isConsumed();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2581hs c2581hs = (C2581hs) obj;
        return this.A00 == null ? c2581hs.A00 == null : this.A00.equals(c2581hs.A00);
    }

    public final int hashCode() {
        if (this.A00 == null) {
            return 0;
        }
        return this.A00.hashCode();
    }
}
