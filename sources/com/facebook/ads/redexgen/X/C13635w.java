package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.graphics.Rect;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.5w, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13635w extends D8 {
    public static byte[] A0B;
    public static String[] A0C = {"7OndFOhXL4fFvt9jPrbRhbPvcdx7xG0m", "u66anQJsGMZImmEGY3J", "6QUuw3fE6YZInEgeelDD1riYgCDiwwWd", "dlwfam", "Gd24NhAKQwSMVORdYrbX7OKUmJ6Jo9hH", "tp1lJvSeXkYaHvz0HBRMtdf0GjUKpBkN", "3puR3ZuXflvVCggj3hbkYFVhWEAiWGf8", "SuC9F05via3NQdhkRFt"};
    public C3055pi A00;
    public AbstractC3370un A01;
    public C1466Am A02;
    public boolean A03;
    public final ImageView A04;
    public final InterfaceC2689je A05;
    public final C2499gV A06;
    public final List<C3055pi> A07;
    public final AtomicBoolean A08;
    public final AtomicBoolean A09;
    public final AtomicBoolean A0A;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 53);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A0B = new byte[]{-60, -51, -48, -63, -61, -62, -67, -52, -46, -62, -6, -2, -14, -8, -10, -4, -12, -14, -7};
    }

    static {
        A09();
    }

    public C13635w(C1643Hi c1643Hi, InterfaceC3200s3 interfaceC3200s3, InterfaceC2909nG interfaceC2909nG, LA la, C2771kz c2771kz, InterfaceC3144r9 interfaceC3144r9) {
        C2499gV c2499gV;
        super(c1643Hi, interfaceC3200s3, interfaceC2909nG, la, c2771kz, interfaceC3144r9);
        this.A05 = new C1530Cy(this);
        this.A09 = new AtomicBoolean(false);
        this.A08 = new AtomicBoolean(false);
        this.A0A = new AtomicBoolean(false);
        this.A03 = false;
        this.A07 = new ArrayList();
        if (interfaceC3200s3 instanceof FG) {
            c2499gV = new C2499gV(c1643Hi, interfaceC3200s3, la.A1u(), interfaceC3144r9);
        } else {
            c2499gV = null;
        }
        this.A06 = c2499gV;
        this.A04 = new ImageView(getContext());
        int forceTimeSeconds = getEffectiveForceTimeSeconds();
        if (forceTimeSeconds > 0) {
            this.A02 = new C1466Am(c1643Hi, forceTimeSeconds * 1000);
        }
        this.A04.setScaleType(ImageView.ScaleType.CENTER);
        this.A04.setAdjustViewBounds(true);
        new AsyncTaskC1577Et(this.A04, super.A05).A05(super.A03.A32().A0I().A00(), super.A03.A32().A0I().A01()).A06(new C1529Cx(this)).A07(super.A03.A32().A0I().A08());
    }

    private AbstractC3370un A01(int i) {
        if (this.A04.getParent() != null) {
            AbstractC3111qc.A0K(this.A04);
        }
        C3373uq c3373uqA0M = new C3373uq(super.A05, super.A06, super.A0A, super.A03, this.A04, this.A0C, super.A08).A0J(super.A09.getToolbarHeight()).A0P(super.A09).A0I(i).A0M(super.A07);
        if (this.A02 != null) {
            c3373uqA0M.A0R(this.A02);
        }
        c3373uqA0M.A0L(C2387eg.A00(super.A05, super.A06, A03(0, 0, 77), AbstractC3036pP.A00(super.A03.A32().A0K().A06()), new HashMap(), super.A03.A33()));
        C3374ur params = c3373uqA0M.A0U();
        return AbstractC3371uo.A00(params, null, true);
    }

    private void A06() {
        if (this.A00 != null) {
            this.A00.A06();
            this.A07.remove(this.A00);
            this.A00 = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07() {
        if (this.A09.get() && this.A08.get()) {
            A0n();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A08() {
        this.A0A.set(true);
        if (this.A06 != null) {
            super.A0A.A5C(this.A0B.A7L());
            this.A06.A06();
        }
    }

    private void A0A(int i) {
        AbstractC3111qc.A0K(this.A01);
        this.A01 = A01(i);
        if ((this.A0B instanceof FG) && !this.A04.hasOnClickListeners()) {
            this.A04.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.ru
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.A00.A0x(view);
                }
            });
        }
        if (A0F()) {
            this.A01.A02(new InterfaceC3328u7() { // from class: com.facebook.ads.redexgen.X.D1
                @Override // com.facebook.ads.redexgen.X.InterfaceC3328u7
                public final void AEZ() {
                    this.A00.A0v();
                }
            });
        }
        this.A01.setAccidentalClickCappingListener(new InterfaceC2384ed() { // from class: com.facebook.ads.redexgen.X.D0
            @Override // com.facebook.ads.redexgen.X.InterfaceC2384ed
            public final void ADg() {
                this.A00.A0w();
            }
        });
        this.A01.setNtdHideCallback(new InterfaceC3369um() { // from class: com.facebook.ads.redexgen.X.Cz
            @Override // com.facebook.ads.redexgen.X.InterfaceC3369um
            public final void AEO(View view) {
                this.A00.A0y(view);
            }
        });
        C2429fN colors = this.A01.getColors();
        Integer backgroundColorForToolbar = getBackgroundColorForToolbar();
        boolean z = true;
        if (backgroundColorForToolbar == null) {
            AbstractC3111qc.A0O(this, colors.A08(this.A01 != null && (this.A01.A1g() || (this.A01 instanceof AbstractC1563Ef))));
        } else {
            AbstractC3111qc.A0O(this, backgroundColorForToolbar.intValue());
        }
        super.A09.setFullscreen(this.A01.A1g());
        super.A09.A0D(colors, ViewOnClickListenerC1569El.A05(super.A03));
        A0r(this.A01);
        if (super.A01 != null) {
            addView(super.A01, 0, D8.A0H);
        }
        if (this.A01 == null || !this.A01.A1g()) {
            z = false;
        }
        setUpFullscreenMode(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0B(int i) {
        super.A02 = true;
        super.A09.setToolbarActionMode(8);
        int persistentForcedNtdPlays = super.A03.A30();
        this.A00 = new C3055pi(i * persistentForcedNtdPlays, new C1525Ct(this));
        this.A00.A07();
        this.A07.add(this.A00);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0F() {
        return super.A03.A3G() && !super.A03.A32().A0U();
    }

    @Override // com.facebook.ads.redexgen.X.D8
    public final AbstractC3137r2 A0l() {
        AbstractC3137r2 abstractC3137r2A0l = super.A0l();
        if (super.A03.A3R()) {
            abstractC3137r2A0l.setOnClickListener(new ViewOnClickListenerC3189rs(this));
        }
        return abstractC3137r2A0l;
    }

    @Override // com.facebook.ads.redexgen.X.D8
    public final void A0p() {
        if (this.A01 != null) {
            super.A07.A04(EnumC2916nN.A0Y, null);
            this.A03 = true;
            if (A0F()) {
                if (super.A03.A32().A0W()) {
                    this.A01.A1i(false);
                }
                this.A01.A1P(A03(0, 10, 41));
                A0o();
                A06();
                if (this.A0A.get()) {
                    super.A09.setToolbarActionMode(0);
                    return;
                }
                return;
            }
            if (super.A03.A3K() && super.A03.A32().A0U()) {
                this.A01.A1V();
                A0o();
                return;
            }
            EnumC2383ec enumC2383ecA1P = this.A01.A1P(A03(15, 4, 84));
            if (super.A03.A3H()) {
                return;
            }
            EnumC2383ec actionOutcome = EnumC2383ec.A08;
            if (enumC2383ecA1P != actionOutcome) {
                EnumC2383ec actionOutcome2 = EnumC2383ec.A05;
                if (enumC2383ecA1P != actionOutcome2) {
                    A0o();
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.D8
    public final void A0q() {
        AbstractC3111qc.A0M(this.A01);
        AbstractC3111qc.A0M(super.A09);
        this.A08.set(true);
        A07();
        int effectiveForceTimeSeconds = getEffectiveForceTimeSeconds();
        int iA02 = super.A03.A32().A0I().A02();
        if (effectiveForceTimeSeconds > 0) {
            if (this.A01 != null) {
                AbstractC3370un abstractC3370un = this.A01;
                if (A0C[5].charAt(31) != 'N') {
                    throw new RuntimeException();
                }
                A0C[5] = "InnCWjgAzy1Ng21MZZ8xI6Z1vcuYV5SN";
                abstractC3370un.A1U();
            }
            this.A07.add(A0k(effectiveForceTimeSeconds, new C1528Cw(this, effectiveForceTimeSeconds), this.A02, new C1527Cv(this)));
            if (iA02 == 0 || iA02 >= effectiveForceTimeSeconds) {
                super.A02 = true;
                super.A09.setToolbarActionMode(8);
                return;
            } else {
                if (iA02 <= 0 || A0F()) {
                    return;
                }
                super.A09.setProgressSpinnerInvisible(true);
                this.A07.add(A0j(iA02, new C1526Cu(this), null));
                return;
            }
        }
        AbstractC3137r2 abstractC3137r2 = super.A09;
        int effectiveUnskippableSeconds = getCloseButtonStyle();
        abstractC3137r2.setToolbarActionMode(effectiveUnskippableSeconds);
        A08();
    }

    @Override // com.facebook.ads.redexgen.X.D8
    public final void A0s(C2683jY c2683jY) {
        FrameLayout.LayoutParams layoutParams;
        c2683jY.A0A(this.A05);
        int orientation = c2683jY.A05().getResources().getConfiguration().orientation;
        A0A(orientation);
        if (A0u()) {
            AbstractC3111qc.A0K(super.A09);
        }
        boolean zA0u = A0u();
        if (A0C[7].length() == 19) {
            String[] strArr = A0C;
            strArr[1] = "eIrljY9WLCj2qZVYxAY";
            strArr[3] = "cN2qfG";
            if (zA0u) {
                layoutParams = new FrameLayout.LayoutParams(-1, -2);
                Rect requestedMargins = super.A09.getRequestedMargins();
                if (requestedMargins == null) {
                    layoutParams.setMargins(0, AbstractC3068pv.A0u, 0, 0);
                } else {
                    int i = requestedMargins.left;
                    int i2 = requestedMargins.top;
                    String[] strArr2 = A0C;
                    String str = strArr2[6];
                    String str2 = strArr2[2];
                    int iCharAt = str.charAt(27);
                    int orientation2 = str2.charAt(27);
                    if (iCharAt != orientation2) {
                        String[] strArr3 = A0C;
                        strArr3[0] = "kD9MFQRuMfEwIMuparMuFvmLXjVrNoLK";
                        strArr3[4] = "8tRwa2zHQDKU02uvOr7MIFjDGekFRcgq";
                        int i3 = requestedMargins.right;
                        int orientation3 = requestedMargins.bottom;
                        layoutParams.setMargins(i, i2, i3, orientation3);
                    } else {
                        String[] strArr4 = A0C;
                        strArr4[1] = "1QUiUzza5altpTl6Wm0";
                        strArr4[3] = "RDlmq9";
                        int i4 = requestedMargins.right;
                        int orientation4 = requestedMargins.bottom;
                        layoutParams.setMargins(i, i2, i4, orientation4);
                    }
                }
            } else {
                layoutParams = new FrameLayout.LayoutParams(-1, super.A09.getToolbarHeight());
            }
            View view = super.A09;
            String[] strArr5 = A0C;
            String str3 = strArr5[6];
            String str4 = strArr5[2];
            int iCharAt2 = str3.charAt(27);
            int orientation5 = str4.charAt(27);
            if (iCharAt2 == orientation5) {
                String[] strArr6 = A0C;
                strArr6[0] = "fkMlabU8sQnoX87MnrY1Pev3S4jiVWdQ";
                strArr6[4] = "bfzZB4DobhU3EGIatrsc2EQHdnYavGAY";
                addView(view, layoutParams);
                AbstractC3111qc.A0I(this.A01);
                AbstractC3111qc.A0I(super.A09);
                return;
            }
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.D8
    public final boolean A0t() {
        return this.A01 != null && this.A01.A1i(false);
    }

    @Override // com.facebook.ads.redexgen.X.D8
    public final boolean A0u() {
        return super.A03.A2V() || super.A03.A2q() || super.A03.A2K();
    }

    public final /* synthetic */ void A0v() {
        this.A03 = true;
    }

    public final /* synthetic */ void A0w() {
        A0o();
    }

    public final /* synthetic */ void A0x(View view) {
        this.A03 = true;
        if (this.A01 != null) {
            this.A01.A1P(A03(10, 5, 92));
        }
    }

    public final /* synthetic */ void A0y(View view) {
        if (super.A03.A3L()) {
            A0o();
        }
        if (super.A03.A3M() && view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AGF(boolean z) {
        Iterator<C3055pi> it = this.A07.iterator();
        while (it.hasNext()) {
            it.next().A06();
        }
        if (this.A02 != null) {
            this.A02.A08();
        }
        if (this.A01 != null) {
            this.A01.A1b(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void AGp(boolean z) {
        Iterator<C3055pi> it = this.A07.iterator();
        while (it.hasNext()) {
            it.next().A07();
        }
        if (this.A01 != null) {
            this.A01.A1c(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCloseButtonStyle() {
        if (this.A01 != null) {
            return this.A01.getCloseButtonStyle();
        }
        return 0;
    }

    private int getEffectiveForceTimeSeconds() {
        int secondsForReward;
        int iA04 = super.A03.A32().A0I().A04();
        if (iA04 <= 0 && (secondsForReward = super.A03.A32().A0I().A03()) > 0 && secondsForReward != Integer.MAX_VALUE) {
            iA04 = secondsForReward;
        }
        if (iA04 <= 0) {
            InterfaceC3200s3 interfaceC3200s3 = this.A0B;
            String[] strArr = A0C;
            String str = strArr[0];
            String str2 = strArr[4];
            int iCharAt = str.charAt(17);
            int forceTimeSeconds = str2.charAt(17);
            if (iCharAt != forceTimeSeconds) {
                throw new RuntimeException();
            }
            A0C[5] = "IISOmy5wUb9kbPwMGbeFamNABq4wsTvN";
            if (interfaceC3200s3 instanceof FG) {
                iA04 = 5;
                C2917nO c2917nO = super.A07;
                String[] strArr2 = A0C;
                String str3 = strArr2[6];
                String str4 = strArr2[2];
                int iCharAt2 = str3.charAt(27);
                int forceTimeSeconds2 = str4.charAt(27);
                if (iCharAt2 != forceTimeSeconds2) {
                    A0C[7] = "hwbe6IzVGEIGnFYCGus";
                    c2917nO.A04(EnumC2916nN.A0u, null);
                } else {
                    String[] strArr3 = A0C;
                    strArr3[0] = "ggpAthkRO8dLNjB9arK6lUDuPnIwRyXW";
                    strArr3[4] = "rJU3jIJm8zUBUkzdOrnlJmssj3q33cg9";
                    c2917nO.A04(EnumC2916nN.A0u, null);
                }
            }
        }
        return iA04;
    }

    @Override // com.facebook.ads.redexgen.X.D8, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (!super.A03.A32().A0U() && !A0u()) {
            A0A(configuration.orientation);
        }
    }

    @Override // com.facebook.ads.redexgen.X.D8, com.facebook.ads.redexgen.X.InterfaceC3145rA
    public final void onDestroy() {
        Iterator<C3055pi> it = this.A07.iterator();
        while (it.hasNext()) {
            it.next().A06();
        }
        if (C2888mv.A1z(super.A05)) {
            super.A05.A0B().ALo(this.A04);
        }
        AbstractC3370un abstractC3370un = this.A01;
        String[] strArr = A0C;
        if (strArr[1].length() == strArr[3].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0C;
        strArr2[1] = "TUlRzJZbxFgmcKRHhm4";
        strArr2[3] = "GjzV0D";
        if (abstractC3370un != null) {
            this.A01.A1Q();
        }
        super.onDestroy();
    }
}
