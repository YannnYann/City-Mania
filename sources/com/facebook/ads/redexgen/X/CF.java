package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class CF extends AbstractC2642it {
    public final /* synthetic */ int A00;
    public final /* synthetic */ C2875mi A01;

    public CF(C2875mi c2875mi, int i) {
        this.A01 = c2875mi;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2642it
    public final void A02(Rect rect, View view, C7O c7o, C2660jB c2660jB) {
        int iA1C = c7o.A1C(view);
        int itemCount = c7o.getAdapter() != null ? c7o.getAdapter().A0B() : 0;
        int position = this.A00;
        if (iA1C != 0) {
            position /= 2;
        }
        rect.left = position;
        rect.right = iA1C == itemCount + (-1) ? this.A00 : this.A00 / 2;
    }
}
