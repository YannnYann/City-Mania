package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import android.widget.ImageView;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class LB extends AbstractC2633ik<C1600Fr> {
    public static final int A05 = (int) (AbstractC3070px.A02 * 4.0f);
    public InterfaceC2415f9 A00;
    public final List<GT> A01;
    public final int A02;
    public final C1643Hi A03;
    public final AbstractC2225c3 A04 = new LF(this);

    public LB(C3U c3u, List<GT> list, C1643Hi c1643Hi) {
        this.A03 = c1643Hi;
        this.A02 = c3u.getChildSpacing();
        this.A01 = list;
    }

    private ViewGroup.MarginLayoutParams A01(int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        int i2 = this.A02;
        if (i == 0) {
            i2 *= 2;
        }
        marginLayoutParams.setMargins(i2, 0, i >= this.A01.size() + (-1) ? this.A02 * 2 : this.A02, 0);
        return marginLayoutParams;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2633ik
    public final int A0B() {
        return this.A01.size();
    }

    public final void A0Q(ImageView imageView, int i) {
        GT gt = this.A01.get(i);
        C2937ni adCoverImage = gt.getAdCoverImage();
        if (adCoverImage != null) {
            AsyncTaskC1577Et asyncTaskC1577EtA04 = new AsyncTaskC1577Et(imageView, this.A03).A04();
            asyncTaskC1577EtA04.A06(new LD(this, i, gt));
            asyncTaskC1577EtA04.A07(adCoverImage.getUrl());
        }
    }

    public final void A0R(InterfaceC2415f9 interfaceC2415f9) {
        this.A00 = interfaceC2415f9;
    }

    public void A0S(C1600Fr c1600Fr, int i) {
        c1600Fr.A0w().setLayoutParams(A01(i));
    }
}
