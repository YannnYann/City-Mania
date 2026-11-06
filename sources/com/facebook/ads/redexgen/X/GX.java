package com.facebook.ads.redexgen.X;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.facebook.ads.internal.api.AdNativeComponentView;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class GX extends AbstractC2225c3 {
    public static String[] A04 = {"oSoBkaWeyKsp", "KBeBF", "kSDces9j50gwfjS4QfNYnWgLw2iPkymV", "EJmszBWYtRUz1Vdq", "qn5qycmxyPd80aqzWiKeSrAoNfum3VnE", "21Cce2q6wYIDkABj", "e4Lw2G3U", "jRNkDTlKn5mABl6KQSYrYYCrXHx6B19g"};
    public final /* synthetic */ View A00;
    public final /* synthetic */ C1741Lh A01;
    public final /* synthetic */ GT A02;
    public final /* synthetic */ boolean A03;

    public GX(GT gt, View view, boolean z, C1741Lh c1741Lh) {
        this.A02 = gt;
        this.A00 = view;
        this.A03 = z;
        this.A01 = c1741Lh;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2225c3
    public final void A00() {
        this.A02.A0j.A06();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2225c3
    public final void A02() {
        this.A02.A0j.A0A();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2225c3
    public final void A03() {
        this.A02.A0j.A0B();
        if (C2888mv.A2I(this.A02.A16()) && (this.A00 instanceof AdNativeComponentView)) {
            View adContentsView = ((AdNativeComponentView) this.A00).getAdContentsView();
            if ((adContentsView instanceof C2363eI) && !((C2363eI) adContentsView).A05()) {
                if (this.A02.A0V != null) {
                    this.A02.A0V.A0T();
                }
                C2946nr c2946nr = this.A02.A0j;
                if (A04[6].length() != 8) {
                    throw new RuntimeException();
                }
                A04[4] = "kV1RqodiW8kqR1rQOQ4NCiAB35VpASKe";
                c2946nr.A08();
                return;
            }
        }
        if (this.A03) {
            ImageView imageView = (ImageView) this.A00;
            Drawable drawable = this.A02.A01;
            if (drawable == null) {
                if (this.A02.A0V != null) {
                    this.A02.A0V.A0T();
                }
                this.A02.A0j.A07();
                return;
            }
            GT.A0f(drawable, imageView);
        }
        this.A02.A0j.A0C(this.A02.A0h, this.A01.A0G());
        if (this.A02.A0V != null) {
            this.A02.A0V.A0V();
        }
        if (this.A02.A0Z != null && this.A02.A0Z.get() != null) {
            ((AbstractC2225c3) this.A02.A0Z.get()).A03();
        }
        if (this.A02.A0k.A07()) {
            this.A02.A0j.A04();
            return;
        }
        this.A02.A0c();
        if (this.A02.A0B != null && this.A02.A04 != null && this.A02.A06 != null) {
            this.A02.A0B.A0C(this.A02.A04);
            this.A02.A0B.A0B(this.A02.A06);
            this.A02.A0B.A0G(this.A02.A0L);
            this.A02.A0B.A0K(this.A02.A0b);
            this.A02.A0B.A0O(this.A02.A0e);
            this.A02.A0B.A0N(this.A02.A0d);
            this.A02.A0B.A0L(this.A02.A0q());
            this.A02.A0B.A0E(this.A02.A0A);
            this.A02.A0B.A0M(this.A02.A0c);
            this.A02.A0B.A0F(AbstractC3210sD.A00(this.A02.A09));
            this.A02.A0B.A0H(this.A02.A0W);
            this.A02.A0B.A0P(this.A03);
            this.A02.A0B.A0D(this.A02.A09);
            this.A02.A0B.A0I(this.A02.A0Y);
            this.A02.A0B.A09();
        }
    }
}
