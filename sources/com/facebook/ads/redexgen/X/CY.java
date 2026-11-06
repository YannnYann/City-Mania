package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class CY extends AbstractC2663jE implements InterfaceC3151rG {
    public C2435fT A00;
    public AbstractC2225c3 A01;
    public C2224c2 A02;
    public C2224c2 A03;
    public final int A04;
    public final SparseBooleanArray A05;
    public final C1643Hi A06;
    public final C13756i A07;

    public CY(C13756i c13756i, SparseBooleanArray sparseBooleanArray, C2224c2 c2224c2, int i, C1643Hi c1643Hi, C2435fT c2435fT) {
        super(c13756i);
        this.A06 = c1643Hi;
        this.A07 = c13756i;
        this.A05 = sparseBooleanArray;
        this.A02 = c2224c2;
        this.A04 = i;
        this.A00 = c2435fT;
    }

    private void A05(InterfaceC2909nG interfaceC2909nG, C3102qT c3102qT, String str, C2999ol c2999ol) {
        if (this.A05.get(c2999ol.A02())) {
            return;
        }
        if (this.A03 != null) {
            this.A03.A0V();
            this.A03 = null;
        }
        this.A01 = new C1506Ca(this, str, c2999ol, interfaceC2909nG, c2999ol.A04(), c3102qT);
        this.A03 = new C2224c2(this.A07, 10, new WeakReference(this.A01), this.A06);
        this.A03.A0Y(false);
        this.A03.A0W(100);
        this.A03.A0X(100);
        this.A07.setOnAssetsLoadedListener(new CZ(this, c2999ol));
    }

    public final void A0w(C2999ol c2999ol, InterfaceC2909nG interfaceC2909nG, C2771kz c2771kz, C3102qT c3102qT, String str, int i, int i2, int i3) {
        int leftMargin = c2999ol.A02();
        this.A07.setTag(-1593835536, Integer.valueOf(leftMargin));
        this.A07.setupNativeCtaExtension(c2999ol);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(i, -2);
        int i4 = leftMargin == 0 ? i3 : i2;
        if (leftMargin < this.A04 - 1) {
            i3 = i2;
        }
        marginLayoutParams.setMargins(i4, 0, i3, 0);
        String strA08 = c2999ol.A03().A0I().A08();
        String strA09 = c2999ol.A03().A0I().A09();
        this.A07.setIsVideo(!TextUtils.isEmpty(strA09));
        if (this.A07.A1o()) {
            this.A07.setVideoPlaceholderUrl(strA08);
            this.A07.setVideoUrl(c2771kz.A0T(strA09));
        } else {
            this.A07.setImageUrl(strA08);
        }
        this.A07.setLayoutParams(marginLayoutParams);
        this.A07.setCTAInfo(c2999ol.A03().A0K(), c2999ol.A04());
        this.A07.A1p(c2999ol.A04());
        A05(interfaceC2909nG, c3102qT, str, c2999ol);
    }

    public final void A0x(C2224c2 c2224c2) {
        this.A02 = c2224c2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3151rG
    public final void AKX() {
        this.A07.A1j();
    }
}
