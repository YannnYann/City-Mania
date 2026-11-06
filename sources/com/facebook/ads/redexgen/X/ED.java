package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class ED extends AbstractC3370un {
    public static byte[] A00;
    public static String[] A01 = {"tJRtfPKHoy7gQ0Hrrag4OkVDHQvHpM6e", "ntrk62ddU7J9c8B2GtO4dhepCrAVPpDV", "iQ54QNqjdD5kyZO2OLG", "4R7BJQoUCBFINf313UyvxR7fWPUp11Dk", "Ad2P", "mQFjJcGEaXO3GAoxmnr0yBCCZwtlhd6p", "65xONPI2i6gPpcf6kW2ve41HMoO1k057", "z69fhWo2iasYfVs3h6jnYZwontL4UpVs"};

    public static String A0H(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 94);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0I() {
        A00 = new byte[]{43, 46, 46, 47, 62, 43, 51, 54, 61};
    }

    public abstract void A1k();

    public abstract void A1l();

    public abstract void A1m();

    public abstract boolean A1n();

    public abstract boolean A1o();

    static {
        A0I();
    }

    public ED(C3374ur c3374ur, boolean z) {
        super(c3374ur, z);
        if (C2888mv.A16(c3374ur.A06())) {
            if (c3374ur.A0B() != null) {
                c3374ur.A0B().setCTAClickListener(getCtaButton());
            }
            getTitleDescContainer().setCTAClickListener(getCtaButton());
        }
    }

    public final void A1j() {
        if (C2888mv.A16(this.A08.A06()) && this.A08.A0B() != null) {
            this.A08.A0B().setCTAClickListener(getCtaButton());
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3370un
    public ViewOnClickListenerC1569El getCtaButton() {
        return super.getCtaButton();
    }

    public void setAdDetailsClickListener(AbstractC3309to abstractC3309to) {
        if (C2888mv.A16(this.A08.A06()) && abstractC3309to != null) {
            ViewOnClickListenerC1569El ctaButton = getCtaButton();
            if (A01[1].charAt(21) != 'h') {
                throw new RuntimeException();
            }
            A01[3] = "am5A0dIgunRuJRLaM18rzwVTPisxqXDR";
            abstractC3309to.setOnClickListener(AbstractC3360ud.A03(ctaButton, A0H(0, 9, 108)));
        }
    }

    public void setupNativeCtaExtension(C2999ol c2999ol) {
    }
}
