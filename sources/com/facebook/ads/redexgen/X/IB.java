package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.internal.api.AdComponentViewApi;
import com.facebook.ads.internal.api.NativeAdLayoutApi;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class IB extends C2691jg implements NativeAdLayoutApi {
    public static String[] A07 = {"qHPX4GW", "hhFiP8r3Qwv1pbOpC0RZs7helsiEkw3R", "gMRKG0GIN4lnnen5eA2QDYxE1qaw5eEe", "nhs8DTHSJt", "8tGTnsqSzZF2pEc0RhfqwgHuBUSbJEKs", "De4wCGs8keG453rR3Z1iaYQVwysk9mHo", "y9Eqzso", "p4KqTvxixOqYBs523aWwEe7xwuFf2o4V"};
    public View A02;
    public NativeAdLayout A03;
    public C3203s6 A04;
    public int A01 = 0;
    public int A00 = 0;
    public boolean A06 = false;
    public boolean A05 = false;

    public final void A02() {
        if (this.A03 != null) {
            AbstractC3111qc.A0X(this.A03);
            this.A03.removeView(this.A04);
        }
        this.A04 = null;
    }

    public final void A03() {
        if (this.A03 != null) {
            AbstractC3111qc.A0X(this.A03);
            this.A03.removeView(this.A02);
        }
        this.A02 = null;
    }

    public final void A04(C3203s6 c3203s6) {
        this.A04 = c3203s6;
        this.A04.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        if (this.A03 != null) {
            AbstractC3111qc.A0X(this.A03);
            this.A03.addView(this.A04);
        }
    }

    public final void A05(AbstractC3209sC abstractC3209sC) {
        this.A02 = abstractC3209sC;
        abstractC3209sC.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        if (this.A03 != null) {
            AbstractC3111qc.A0X(this.A03);
            this.A03.addView(this.A02);
        }
    }

    public final boolean A06() {
        return this.A05;
    }

    public final boolean A07() {
        return this.A06;
    }

    @Override // com.facebook.ads.internal.api.AdComponentViewApiProvider
    public final AdComponentViewApi getAdComponentViewApi() {
        return this;
    }

    @Override // com.facebook.ads.internal.api.NativeAdLayoutApi
    public final void initialize(NativeAdLayout nativeAdLayout) {
        this.A03 = nativeAdLayout;
    }

    @Override // com.facebook.ads.redexgen.X.C2691jg, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.A03 != null) {
            if (this.A00 > 0 && this.A03.getMeasuredWidth() > this.A00) {
                int i3 = this.A00;
                NativeAdLayout nativeAdLayout = this.A03;
                if (A07[1].charAt(22) == '0') {
                    throw new RuntimeException();
                }
                String[] strArr = A07;
                strArr[0] = "PzSdwRy";
                strArr[6] = "z4EWAbx";
                setMeasuredDimension(i3, nativeAdLayout.getMeasuredHeight());
                return;
            }
            if (this.A03.getMeasuredWidth() >= this.A01) {
                return;
            }
            setMeasuredDimension(this.A01, this.A03.getMeasuredHeight());
        }
    }

    @Override // com.facebook.ads.internal.api.NativeAdLayoutApi
    public final void setMaxWidth(int i) {
        this.A00 = i;
        this.A05 = true;
    }

    @Override // com.facebook.ads.internal.api.NativeAdLayoutApi
    public final void setMinWidth(int i) {
        this.A01 = i;
        this.A06 = true;
    }
}
