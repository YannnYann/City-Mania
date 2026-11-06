package com.facebook.ads.redexgen.X;

import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.lr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2823lr {
    public static AbstractC13485h A00(final C3374ur c3374ur, int i, final String str, final C1508Cc c1508Cc, int i2) {
        if (i == 1) {
            switch (i2) {
                case 1:
                    return new C12993k(c3374ur, str, c1508Cc);
                case 2:
                    return new C12973i(c3374ur, str, c1508Cc);
            }
        }
        return new AbstractC13485h(c3374ur, str, c1508Cc) { // from class: com.facebook.ads.redexgen.X.3j
            public static final int A00 = (int) (AbstractC3070px.A02 * 12.0f);

            @Override // com.facebook.ads.redexgen.X.AbstractC3370un
            public final boolean A03() {
                return false;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC13485h, com.facebook.ads.redexgen.X.AbstractC3370un
            public final boolean A0H() {
                return false;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC13485h
            public final void A1t(C1643Hi c1643Hi) {
                C3352uV titleDescContainer = getTitleDescContainer();
                titleDescContainer.setAlignment(3);
                RelativeLayout.LayoutParams adTitleAndDescriptionLayoutParams = new RelativeLayout.LayoutParams(-1, -2);
                adTitleAndDescriptionLayoutParams.addRule(8, getMediaContainer().getId());
                titleDescContainer.setLayoutParams(adTitleAndDescriptionLayoutParams);
                titleDescContainer.setPadding(A00, A00, A00, A00);
                AbstractC3111qc.A0V(titleDescContainer, getAdContextWrapper());
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams.addRule(3, getMediaContainer().getId());
                getCtaButton().setLayoutParams(layoutParams);
                addView(getMediaContainer());
                addView(titleDescContainer);
                addView(getCtaButton());
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC13485h
            public final void A1u(C1643Hi c1643Hi, InterfaceC2644iv interfaceC2644iv) {
            }
        };
    }
}
