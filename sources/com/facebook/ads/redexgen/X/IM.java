package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class IM extends AbstractC2394eo {
    public static byte[] A03;
    public View A00;
    public final C2682jX A01;
    public final C7D A02;

    static {
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 53);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{-23, 7, 20, 20, 21, 26, -58, 22, 24, 11, 25, 11, 20, 26, -58, 20, 27, 18, 18, -58, 7, 10, -4, 15, 11, 29};
    }

    public IM(C2682jX c2682jX) {
        this.A02 = c2682jX.A09();
        this.A01 = c2682jX;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A0C() {
        this.A02.A0F().A4v();
        AbstractC2995oh.A00(new IP(this));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A0D() {
        this.A02.A0F().A4y();
        AbstractC2995oh.A00(new IN(this));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A0E(View view) {
        if (view != null) {
            this.A02.A0F().A4x();
            this.A00 = view;
            this.A01.A07().removeAllViews();
            this.A01.A07().addView(this.A00);
            if ((this.A00 instanceof C1579Ev) || (this.A00 instanceof C3166rV)) {
                AbstractC2952nz.A01(this.A01.A05(), this.A00, this.A01.A0A());
            }
            C13987f controller = this.A01.A08();
            if (controller != null) {
                controller.A0K();
            }
            AbstractC2995oh.A00(new IQ(this));
            this.A01.A0B(this.A01.A07(), this.A00);
            if (C2888mv.A1B(this.A01.A07().getContext())) {
                C3300tf c3300tf = new C3300tf();
                this.A01.A0D(c3300tf);
                c3300tf.A0C(this.A01.getPlacementId());
                c3300tf.A0B(this.A01.A07().getContext().getPackageName());
                if (this.A01.A08() != null && this.A01.A08().A0I() != null) {
                    c3300tf.A09(this.A01.A08().A0I().A0C());
                }
                if (this.A00 instanceof C1579Ev) {
                    c3300tf.A0A(((C1579Ev) this.A00).getViewabilityChecker());
                }
                this.A00.setOnLongClickListener(new ViewOnLongClickListenerC2690jf(this, c3300tf));
                this.A00.getOverlay().add(c3300tf);
                return;
            }
            return;
        }
        throw new IllegalStateException(A02(0, 26, 113));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A0F(InterfaceC2393en interfaceC2393en) {
        this.A02.A0F().A4w(this.A01.A08() != null);
        if (this.A01.A08() != null) {
            this.A01.A08().A0L();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A0G(C2947nt c2947nt) {
        this.A02.A0F().A3j(C3101qS.A01(this.A01.A04()), c2947nt.A03().getErrorCode(), c2947nt.A04());
        AbstractC2995oh.A00(new IR(this, c2947nt));
    }
}
