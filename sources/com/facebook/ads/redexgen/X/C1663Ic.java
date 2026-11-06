package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ic, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1663Ic extends AbstractC2543hF {
    public static String[] A02 = {"kCJseLSqSIrXu4CFjUZgH7qP37OfZeHD", "xEAmwUG5TGVzyoKH1PTTnmgJSds6zi0t", "yfye5wiKddzXjwKpYSAHRZ10SdbOyGIS", "FmBYeFx3U0BhjOzbepjZtX", "pFd99JFbVQiCxR8NKRmLZvqZPwpJ8hMq", "9sA", "zOMSQIOQC2uzgyYA4i3GoXbtL5yC1N4Y", "6JUJmYz6"};
    public final AbstractC2543hF A00 = new C1676Ip(this);
    public final C7O A01;

    public C1663Ic(C7O c7o) {
        this.A01 = c7o;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2543hF
    public final void A07(View view, AccessibilityEvent accessibilityEvent) {
        super.A07(view, accessibilityEvent);
        accessibilityEvent.setClassName(C7O.class.getName());
        if ((view instanceof C7O) && !A0B()) {
            C7O c7o = (C7O) view;
            if (c7o.getLayoutManager() != null) {
                c7o.getLayoutManager().A2U(accessibilityEvent);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2543hF
    public final void A08(View view, C2589i0 c2589i0) {
        super.A08(view, c2589i0);
        c2589i0.A0O(C7O.class.getName());
        if (!A0B() && this.A01.getLayoutManager() != null) {
            this.A01.getLayoutManager().A2V(c2589i0);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2543hF
    public final boolean A09(View view, int i, Bundle bundle) {
        if (super.A09(view, i, bundle)) {
            String[] strArr = A02;
            if (strArr[2].charAt(11) != strArr[0].charAt(11)) {
                throw new RuntimeException();
            }
            A02[4] = "nByhcE3HAON4xHhAaRL71J2smf2uyoDS";
            return true;
        }
        if (!A0B() && this.A01.getLayoutManager() != null) {
            AbstractC2645iw layoutManager = this.A01.getLayoutManager();
            if (A02[5].length() != 3) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[7] = "ZdbAAVtg";
            strArr2[3] = "rBKlzqXoYmUf6BYv0O8fT1";
            return layoutManager.A2y(i, bundle);
        }
        return false;
    }

    public final AbstractC2543hF A0A() {
        return this.A00;
    }

    public final boolean A0B() {
        return this.A01.A1y();
    }
}
