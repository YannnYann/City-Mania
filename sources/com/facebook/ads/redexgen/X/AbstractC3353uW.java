package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uW, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3353uW {
    public static final int A00 = AbstractC3111qc.A00();

    public static void A00(C1643Hi c1643Hi, ViewGroup viewGroup, String str) {
        new AsyncTaskC1577Et(viewGroup, c1643Hi).A07(str);
        View view = new View(c1643Hi);
        view.setId(A00);
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        AbstractC3111qc.A0V(view, c1643Hi);
        viewGroup.addView(view, 0);
    }

    public static void A01(C1643Hi c1643Hi, ViewGroup viewGroup, String str, int i) {
        new AsyncTaskC1577Et(viewGroup, c1643Hi).A07(str);
        View view = new View(c1643Hi);
        view.setId(A00);
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        view.setBackgroundColor(i);
        viewGroup.addView(view, 0);
    }
}
