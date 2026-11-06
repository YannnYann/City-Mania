package com.facebook.ads.redexgen.X;

import android.widget.RelativeLayout;
import java.util.HashMap;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3331uA {
    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.ads.redexgen.X.3t] */
    public static C13083t A00(final C3374ur c3374ur, final GT gt, final String str, final C13846r c13846r) {
        final boolean z = true;
        return new C13756i(c3374ur, gt, z, str, c13846r) { // from class: com.facebook.ads.redexgen.X.3t
            public ViewOnClickListenerC1569El A00;
            public C2999ol A01;
            public final InterfaceC2909nG A02 = this.A0I.A06().A02().A0A();
            public final GT A03;
            public final C13846r A04;
            public final String A05;
            public static final int A07 = (int) (AbstractC3070px.A02 * (-4.0f));
            public static final int A06 = (int) (AbstractC3070px.A02 * 6.0f);

            {
                this.A03 = gt;
                this.A05 = str;
                this.A04 = c13846r;
                this.A03.A1Q(this);
            }

            @Override // com.facebook.ads.redexgen.X.ED
            public void setupNativeCtaExtension(C2999ol c2999ol) {
                C2435fT c2435fTA33;
                this.A01 = c2999ol;
                int iA0O = C2888mv.A0O(this.A0I.A06());
                C2429fN c2429fNA01 = this.A03.A13().A31().A01();
                C1643Hi c1643HiA06 = this.A0I.A06();
                String strA1X = this.A03.A13().A1X();
                InterfaceC2909nG interfaceC2909nG = this.A02;
                InterfaceC3144r9 dummyListener = C3290tV.getDummyListener();
                C2224c2 c2224c2A0n = this.A04.A0n();
                C3102qT c3102qTA1E = this.A03.A1E();
                if (this.A03.A13() == null) {
                    c2435fTA33 = null;
                } else {
                    c2435fTA33 = this.A03.A13().A33();
                }
                this.A00 = new ViewOnClickListenerC1569El(c1643HiA06, strA1X, c2429fNA01, interfaceC2909nG, dummyListener, c2224c2A0n, c3102qTA1E, c2435fTA33);
                this.A00.setCta(c2999ol.A03().A0K(), this.A05, new HashMap());
                this.A03.A1Q(this.A00);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                if (iA0O == 1) {
                    layoutParams.addRule(12);
                    AbstractC3111qc.A0S(this.A00, A06, 5, c2429fNA01.A0A(false));
                    ((C13756i) this).A06.addView(this.A00, layoutParams);
                } else {
                    if (iA0O != 2) {
                        return;
                    }
                    layoutParams.addRule(3, ((C13756i) this).A06.getId());
                    int extensionVariant = A07;
                    layoutParams.setMargins(0, extensionVariant, 0, 0);
                    addView(this.A00, 0, layoutParams);
                    ((C13756i) this).A06.bringToFront();
                }
            }
        };
    }
}
