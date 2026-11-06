package com.facebook.ads.redexgen.X;

import android.graphics.drawable.ColorDrawable;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3442vx {
    public static C6V A00(final C3374ur c3374ur, int i, final String str, final C1508Cc c1508Cc) {
        if (i == 1) {
            return new C6V(c3374ur, str, c1508Cc) { // from class: com.facebook.ads.redexgen.X.3r
                public static final int A00 = (int) (AbstractC3070px.A02 * 20.0f);
                public static final int A01 = (int) (AbstractC3070px.A02 * 16.0f);

                @Override // com.facebook.ads.redexgen.X.AbstractC3370un
                public final boolean A04() {
                    return false;
                }

                @Override // com.facebook.ads.redexgen.X.C6V
                public final void A1q(C1643Hi c1643Hi) {
                    C3352uV titleDescContainer = getTitleDescContainer();
                    titleDescContainer.setAlignment(3);
                    titleDescContainer.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                    titleDescContainer.setPadding(0, 0, 0, A00);
                    getCtaButton().setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                    LinearLayout linearLayout = new LinearLayout(c1643Hi);
                    AbstractC3111qc.A0W(linearLayout, new ColorDrawable(-1));
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams.addRule(3, getMediaContainer().getId());
                    linearLayout.setLayoutParams(layoutParams);
                    linearLayout.setOrientation(1);
                    linearLayout.setPadding(A01, A01, A01, A01);
                    linearLayout.addView(titleDescContainer);
                    linearLayout.addView(getCtaButton());
                    addView(getMediaContainer());
                    addView(linearLayout);
                }
            };
        }
        return new C6V(c3374ur, str, c1508Cc) { // from class: com.facebook.ads.redexgen.X.3s
            public static final int A00 = (int) (AbstractC3070px.A02 * 12.0f);

            @Override // com.facebook.ads.redexgen.X.AbstractC3370un
            public final boolean A03() {
                return false;
            }

            @Override // com.facebook.ads.redexgen.X.C6V, com.facebook.ads.redexgen.X.AbstractC3370un
            public final boolean A0H() {
                return false;
            }

            @Override // com.facebook.ads.redexgen.X.C6V
            public final void A1q(C1643Hi c1643Hi) {
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
        };
    }
}
