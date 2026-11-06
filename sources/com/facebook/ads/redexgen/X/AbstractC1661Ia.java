package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ia, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1661Ia extends AbstractC2641is {
    public static String[] A01 = {"ufm8s7LRmOM7", "sIBwdoM05ajejE", "0NxvrnR7UZDHrBy4xVhLU5lsqzWJ5R3x", "FsILnIqpIa8iE3wffvJrO4tNlZdDmpUd", "wKnqjXSh8f61FKWyknAGi8xlXXoDdiLA", "lpMPMGmveEx5YZPPZgDkriuB4nzdouJK", "fQPzW90JHWOApVaaQbndX59CGXgCnXlm", "Pp9SKBa6RS3IfLIGXA9e4oeVKGHa5CsE"};
    public boolean A00 = true;

    public abstract boolean A0X(AbstractC2663jE abstractC2663jE);

    public abstract boolean A0Y(AbstractC2663jE abstractC2663jE);

    public abstract boolean A0Z(AbstractC2663jE abstractC2663jE, int i, int i2, int i3, int i4);

    public abstract boolean A0a(AbstractC2663jE abstractC2663jE, AbstractC2663jE abstractC2663jE2, int i, int i2, int i3, int i4);

    @Override // com.facebook.ads.redexgen.X.AbstractC2641is
    public final boolean A0N(AbstractC2663jE abstractC2663jE) {
        return !this.A00 || abstractC2663jE.A0m();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2641is
    public final boolean A0O(AbstractC2663jE abstractC2663jE, C2640ir c2640ir, C2640ir c2640ir2) {
        if (c2640ir != null && (c2640ir.A01 != c2640ir2.A01 || c2640ir.A03 != c2640ir2.A03)) {
            return A0Z(abstractC2663jE, c2640ir.A01, c2640ir.A03, c2640ir2.A01, c2640ir2.A03);
        }
        return A0X(abstractC2663jE);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2641is
    public final boolean A0P(AbstractC2663jE abstractC2663jE, C2640ir c2640ir, C2640ir c2640ir2) {
        int i = c2640ir.A01;
        int i2 = c2640ir.A03;
        View view = abstractC2663jE.A0H;
        int oldLeft = c2640ir2 == null ? view.getLeft() : c2640ir2.A01;
        int oldTop = c2640ir2 == null ? view.getTop() : c2640ir2.A03;
        if (!abstractC2663jE.A0n() && (i != oldLeft || i2 != oldTop)) {
            view.layout(oldLeft, oldTop, view.getWidth() + oldLeft, view.getHeight() + oldTop);
            return A0Z(abstractC2663jE, i, i2, oldLeft, oldTop);
        }
        return A0Y(abstractC2663jE);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2641is
    public final boolean A0Q(AbstractC2663jE abstractC2663jE, C2640ir c2640ir, C2640ir c2640ir2) {
        if (c2640ir.A01 != c2640ir2.A01 || c2640ir.A03 != c2640ir2.A03) {
            return A0Z(abstractC2663jE, c2640ir.A01, c2640ir.A03, c2640ir2.A01, c2640ir2.A03);
        }
        A0U(abstractC2663jE);
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2641is
    public final boolean A0R(AbstractC2663jE abstractC2663jE, AbstractC2663jE abstractC2663jE2, C2640ir c2640ir, C2640ir c2640ir2) {
        int fromTop;
        int toLeft;
        int i = c2640ir.A01;
        int fromLeft = c2640ir.A03;
        if (abstractC2663jE2.A0s()) {
            fromTop = c2640ir.A01;
            toLeft = c2640ir.A03;
        } else {
            fromTop = c2640ir2.A01;
            toLeft = c2640ir2.A03;
        }
        int toTop = A01[1].length();
        if (toTop != 14) {
            throw new RuntimeException();
        }
        A01[1] = "7F8ns227Orjao7";
        return A0a(abstractC2663jE, abstractC2663jE2, i, fromLeft, fromTop, toLeft);
    }

    public final void A0T(AbstractC2663jE abstractC2663jE) {
        A0K(abstractC2663jE);
    }

    public final void A0U(AbstractC2663jE abstractC2663jE) {
        A0K(abstractC2663jE);
    }

    public final void A0V(AbstractC2663jE abstractC2663jE) {
        A0K(abstractC2663jE);
    }

    public final void A0W(AbstractC2663jE abstractC2663jE, boolean z) {
        A0K(abstractC2663jE);
    }
}
