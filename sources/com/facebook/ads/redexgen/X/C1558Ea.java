package com.facebook.ads.redexgen.X;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ea, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1558Ea extends AbstractC3370un implements InterfaceC3063pq {
    public static byte[] A05;
    public static final int A06;
    public final LA A00;
    public final C3065ps A01;
    public final InterfaceC3144r9 A02;
    public final C3397vE A03;
    public final C3014p0 A04;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 22);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{52, 48, 60, 58, 56};
    }

    static {
        A01();
        A06 = Resources.getSystem().getDisplayMetrics().widthPixels;
    }

    public C1558Ea(C3374ur c3374ur, boolean z) {
        int id;
        int iA01;
        super(c3374ur, z);
        this.A02 = c3374ur.A0C();
        this.A00 = c3374ur.A05();
        this.A03 = new C3397vE(c3374ur.A06(), c3374ur.A02());
        this.A03.A01(getTitleDescContainer(), z);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        layoutParams.setMargins(AbstractC3370un.A09, AbstractC3370un.A09, AbstractC3370un.A09, AbstractC3370un.A09);
        getCtaButton().setLayoutParams(layoutParams);
        if (c3374ur.A0H()) {
            this.A04 = new C3014p0(c3374ur.A06());
            this.A04.setPageDetails(c3374ur.A05().A35());
            AbstractC3111qc.A0H(1007, this.A04);
            RelativeLayout.LayoutParams pageDetailsParams = new RelativeLayout.LayoutParams(-2, -2);
            pageDetailsParams.addRule(2, getCtaButton().getId());
            pageDetailsParams.setMargins(AbstractC3370un.A09, AbstractC3370un.A09 - (AbstractC3370un.A09 / 2), AbstractC3370un.A09, 0);
            this.A04.setLayoutParams(pageDetailsParams);
            id = this.A04.getId();
            iA01 = c3374ur.A01() - (AbstractC3370un.A09 / 2);
        } else {
            id = getCtaButton().getId();
            iA01 = c3374ur.A01();
            this.A04 = null;
        }
        FrameLayout insideContainerLayout = new FrameLayout(c3374ur.A06());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(10);
        layoutParams2.addRule(2, id);
        layoutParams2.setMargins(0, iA01, 0, 0);
        insideContainerLayout.setLayoutParams(layoutParams2);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams3.gravity = 17;
        layoutParams3.setMargins(AbstractC3370un.A09, 0, AbstractC3370un.A09, 0);
        insideContainerLayout.addView(this.A03, layoutParams3);
        addView(insideContainerLayout);
        if (this.A04 != null) {
            addView(this.A04);
        }
        addView(getCtaButton());
        getCtaButton().A0I(c3374ur.A05(), c3374ur.A0B());
        View viewA02 = c3374ur.A02();
        this.A01 = C3065ps.A00(c3374ur.A06(), this.A00, this);
        C3064pr c3064prA02 = this.A01.A02(this.A00);
        c3374ur.A06().A0H().A00(c3064prA02.A01);
        if (viewA02 != null && c3064prA02.A00) {
            viewA02.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.ux
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.A00.A1j(view);
                }
            });
        } else if (viewA02 != null && C2888mv.A1J(getAdContextWrapper())) {
            AbstractC3306tl.A00(viewA02, C2888mv.A1K(getAdContextWrapper()), new ViewOnClickListenerC3381uy(this));
        }
        if (C2888mv.A16(c3374ur.A06())) {
            getTitleDescContainer().setCTAClickListener(getCtaButton());
            if (c3374ur.A0B() != null) {
                c3374ur.A0B().setCTAClickListener(getCtaButton());
            }
        }
        if (this.A04 != null && C2888mv.A17(c3374ur.A06())) {
            this.A04.setOnClickListener(getCtaButton());
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final boolean A0A() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final boolean A0H() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final void A1Q() {
        super.A1Q();
        this.A01.A03();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final void A1X(C2420fE c2420fE, String str, double d, Bundle bundle) {
        super.A1X(c2420fE, str, d, bundle);
        if (d > 0.0d) {
            int mediaHeight = (int) (((double) (A06 - (AbstractC3370un.A09 * 2))) / d);
            this.A03.A00(mediaHeight);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public final boolean A1g() {
        return false;
    }

    public final /* synthetic */ void A1j(View view) {
        getCtaButton().A0E(A00(0, 5, 75));
    }
}
