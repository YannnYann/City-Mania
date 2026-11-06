package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Comparator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ho, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2577ho implements Comparator<View> {
    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Comparator
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final int compare(View view, View view2) {
        C2571hi c2571hi = (C2571hi) view.getLayoutParams();
        C2571hi c2571hi2 = (C2571hi) view2.getLayoutParams();
        if (c2571hi.A05 != c2571hi2.A05) {
            return c2571hi.A05 ? 1 : -1;
        }
        return c2571hi.A02 - c2571hi2.A02;
    }
}
