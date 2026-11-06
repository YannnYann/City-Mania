package com.facebook.ads.redexgen.X;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6g, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13736g extends AbstractC1563Ef {
    public static byte[] A02;
    public static final int A03;
    public final View A00;
    public final boolean A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 101);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-24, -20, -32, -26, -28};
    }

    static {
        A01();
        A03 = Resources.getSystem().getDisplayMetrics().widthPixels;
    }

    public C13736g(C3374ur c3374ur, boolean z) {
        super(c3374ur, true);
        this.A01 = z;
        this.A00 = c3374ur.A02();
        if (this.A00 == null) {
            return;
        }
        A1l();
        if (this.A01) {
            addView(this.A00, new RelativeLayout.LayoutParams(-1, -1));
        } else {
            FrameLayout frameLayout = new FrameLayout(c3374ur.A06());
            RelativeLayout.LayoutParams insideContainerParams = new RelativeLayout.LayoutParams(-1, -1);
            insideContainerParams.addRule(2, getAdDetailsView().getId());
            frameLayout.setLayoutParams(insideContainerParams);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 17;
            layoutParams.setMargins(AbstractC3370un.A09, 0, AbstractC3370un.A09, 0);
            frameLayout.addView(this.A00, layoutParams);
            addView(frameLayout);
        }
        C3064pr c3064prA02 = ((AbstractC1563Ef) this).A08.A02(getAdDataBundle());
        c3374ur.A06().A0H().A00(c3064prA02.A01);
        if (this.A00 != null) {
            if (c3064prA02.A00) {
                this.A00.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.us
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.A00.A1q(view);
                    }
                });
            } else if (C2888mv.A1J(getAdContextWrapper())) {
                AbstractC3306tl.A00(this.A00, C2888mv.A1K(getAdContextWrapper()), new ViewOnClickListenerC3376ut(this));
            }
        }
        getAdDetailsView().bringToFront();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final boolean A0A() {
        return this.A01 && super.A0A();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final boolean A0H() {
        return this.A01 && super.A0A();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1563Ef, com.facebook.ads.redexgen.X.AbstractC3370un
    public final void A1X(C2420fE c2420fE, String str, double d, Bundle bundle) {
        super.A1X(c2420fE, str, d, bundle);
        if (!this.A01 && d > 0.0d && this.A00 != null) {
            int mediaHeight = (int) (((double) (A03 - (AbstractC3370un.A09 * 2))) / d);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, mediaHeight);
            layoutParams.gravity = 17;
            int i = AbstractC3370un.A09;
            int mediaHeight2 = AbstractC3370un.A09;
            layoutParams.setMargins(i, 0, mediaHeight2, 0);
            this.A00.setLayoutParams(layoutParams);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final boolean A1g() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1563Ef
    public final AbstractC3309to A1k(C3374ur c3374ur, C2420fE c2420fE, String str) {
        return new C1565Eh(c3374ur.A06(), getCtaButton(), AbstractC1563Ef.A0G, c2420fE.A0J().A00() == EnumC2425fJ.A05, getColors(), c2420fE.A0K().A07(), str, c3374ur.A07(), c3374ur.A0C(), c3374ur.A0F(), c3374ur.A0A(), c3374ur.A05());
    }

    public final /* synthetic */ void A1q(View view) {
        getCtaButton().A0E(A00(0, 5, 26));
    }
}
