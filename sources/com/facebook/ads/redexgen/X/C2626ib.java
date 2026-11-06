package com.facebook.ads.redexgen.X;

import android.view.View;
import com.google.android.gms.common.api.Api;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ib, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2626ib {
    public int A00;
    public int A01;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public boolean A09;
    public boolean A0B = true;
    public int A02 = 0;
    public boolean A0A = false;
    public List<AbstractC2663jE> A08 = null;

    private View A00() {
        int size = this.A08.size();
        for (int i = 0; i < size; i++) {
            View view = this.A08.get(i).A0H;
            C2646ix c2646ix = (C2646ix) view.getLayoutParams();
            if (!c2646ix.A02()) {
                int i2 = this.A01;
                int size2 = c2646ix.A00();
                if (i2 == size2) {
                    A02(view);
                    return view;
                }
            }
        }
        return null;
    }

    private final View A01(View view) {
        int size = this.A08.size();
        View view2 = null;
        int i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        for (int i2 = 0; i2 < size; i2++) {
            View view3 = this.A08.get(i2).A0H;
            C2646ix c2646ix = (C2646ix) view3.getLayoutParams();
            if (view3 != view && !c2646ix.A02()) {
                int iA00 = c2646ix.A00();
                int size2 = this.A01;
                int i3 = iA00 - size2;
                int size3 = this.A03;
                int i4 = i3 * size3;
                if (i4 >= 0 && i4 < i) {
                    view2 = view3;
                    i = i4;
                    if (i4 == 0) {
                        break;
                    }
                }
            }
        }
        return view2;
    }

    private final void A02(View view) {
        View closest = A01(view);
        if (closest == null) {
            this.A01 = -1;
        } else {
            this.A01 = ((C2646ix) closest.getLayoutParams()).A00();
        }
    }

    public final View A03(C2653j4 c2653j4) {
        if (this.A08 != null) {
            return A00();
        }
        View viewA0H = c2653j4.A0H(this.A01);
        this.A01 += this.A03;
        return viewA0H;
    }

    public final void A04() {
        A02(null);
    }

    public final boolean A05(C2660jB c2660jB) {
        return this.A01 >= 0 && this.A01 < c2660jB.A03();
    }
}
