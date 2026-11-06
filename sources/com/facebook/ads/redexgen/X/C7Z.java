package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.RewardData;
import com.ironsource.C3558d4;
import java.util.EnumSet;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7Z, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C7Z extends K6 {
    public static String[] A02 = {"Wdifh5HSN4RyvogFUrIVqQJQULlKdEei", "S34yOHPbjBOZXrhEKXqsFwPvtnd1qciy", "vu9eRI", "x0OqZ", "VYF0eZRg0jpnLcLhIoRoBnoO3djZf6SI", "33GTCt01Ki3rQT8tpwoWMPFpMqFvVQrj", "pa13jV0ykdfTm6Oo414mEZE7qu5xzGka", "tj8XsVszyFe6dIsjKXzcwTwgC3z6jHVp"};
    public static final InterfaceC2478gA A03 = new C1695Jk();
    public C1709Jz A00;
    public final C1705Jv A01;

    public C7Z(C1705Jv c1705Jv, String str) {
        super(c1705Jv.A05(), str, A03.A62(c1705Jv));
        this.A01 = c1705Jv;
    }

    @Override // com.facebook.ads.redexgen.X.K6
    public final void A08() {
        if (this.A00 != null) {
            this.A00.destroy();
        }
        InterfaceC2473g5 interfaceC2473g5 = super.A00;
        EnumC2472g4 enumC2472g4 = EnumC2472g4.A04;
        if (A02[1].charAt(8) == 'f') {
            throw new RuntimeException();
        }
        A02[4] = "bjBCaQy28rNQq0pISHtZZouKJ3cbndZJ";
        interfaceC2473g5.AKe(enumC2472g4);
    }

    @Override // com.facebook.ads.redexgen.X.K6
    public final void A09() {
        this.A00 = new C1709Jz(this.A01, this, A04());
        this.A00.A0G(this.A01.A0B(), this.A01.A07());
    }

    @Override // com.facebook.ads.redexgen.X.K6
    public final void A0A() {
        EnumC2839m8.A04(EnumC2839m8.A0A, EnumC2839m8.A08);
    }

    @Override // com.facebook.ads.redexgen.X.K6
    public final void A0E(boolean z) {
        this.A05.AL5(z);
    }

    public final void A0F(InterstitialAd interstitialAd, EnumSet<CacheFlag> cacheFlags, String str) {
        if (super.A00.A73()) {
            return;
        }
        this.A01.A0D(interstitialAd);
        if (this.A00 != null) {
            this.A00.A0G(cacheFlags, str);
            return;
        }
        this.A01.A0K(cacheFlags);
        this.A01.A0H(str);
        if (AbstractC2891my.A0F(this.A02) && AbstractC2891my.A0G(this.A02)) {
            if (AbstractC2891my.A0U(str)) {
                EnumC2839m8.A02(EnumC2839m8.A0A);
                A05();
                return;
            } else {
                EnumC2839m8.A02(EnumC2839m8.A0B);
                A09();
                return;
            }
        }
        EnumC2839m8.A02(EnumC2839m8.A0C);
        A09();
    }

    public final void A0G(RewardData rewardData) {
        this.A01.A0F(rewardData);
        if (super.A01.A01) {
            super.A01.A0F(C3558d4.i, AbstractC2496gS.A00(new Bundle(), rewardData));
        }
    }

    public final boolean A0H() {
        if (this.A00 != null) {
            return this.A00.A0H();
        }
        if (this.A01.A00() > 0) {
            long jA00 = C3101qS.A00();
            long jA002 = this.A01.A00();
            if (A02[0].charAt(6) == 'y') {
                throw new RuntimeException();
            }
            A02[4] = "spPOKGUnJm6foAMMjUQWH3rPbfiGZlB3";
            if (jA00 > jA002) {
                return true;
            }
        }
        return false;
    }

    public final boolean A0I() {
        if (this.A00 != null) {
            return this.A00.A0I();
        }
        return super.A00.A7P() == EnumC2472g4.A06;
    }

    public final boolean A0J(InterstitialAd interstitialAd, InterstitialAd.InterstitialShowAdConfig interstitialShowAdConfig) {
        if (super.A00.A74()) {
            return false;
        }
        this.A01.A0D(interstitialAd);
        if (super.A01.A01) {
            A0B(-1);
            return true;
        }
        if (this.A00 != null) {
            return this.A00.A0J();
        }
        this.A00 = new C1709Jz(this.A01, this, A04());
        this.A00.A0J();
        return false;
    }
}
