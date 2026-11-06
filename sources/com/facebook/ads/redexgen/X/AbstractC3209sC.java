package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import com.facebook.ads.AdClosedListener;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3209sC extends FrameLayout {
    public static String[] A0E = {"AAeZRN2H16PPhMJrfuA2G4PuGtT4Jjli", "OIhbSlqkB188ZcHiABYu6F5MkKYuApEU", "4dNIifo7dYPF8CZDUdmIVRVLxTf4KjLi", "nNT7Gm4j1GPvPSvjwdusJnzdrzE", "GlaPNPfWvOmZlDbzC", "MG9AH3sD678j7mtR5VZ1R1Wgg0cAPJ", "gwWnxwxKgg1hGV", "MUdeuAMc7brNflaDgveS0ucCfNh"};
    public int A00;
    public AdClosedListener A01;
    public EnumC2506gc A02;
    public C2507gd A03;
    public C2508ge A04;
    public InterfaceC3208sB A05;
    public final C2504ga A06;
    public final C1643Hi A07;
    public final InterfaceC2909nG A08;
    public final InterfaceC3144r9 A09;
    public final InterfaceC3145rA A0A;
    public final String A0B;
    public final C2441fZ A0C;
    public final InterfaceC3211sE A0D;

    public abstract void A0O();

    public abstract void A0P();

    public abstract void A0R(C2508ge c2508ge, EnumC2506gc enumC2506gc);

    public abstract boolean A0S();

    public AbstractC3209sC(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, String str) {
        this(c1643Hi, interfaceC2909nG, str, null, null, null);
    }

    public AbstractC3209sC(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, String str, C2441fZ c2441fZ, InterfaceC3145rA interfaceC3145rA, InterfaceC3144r9 interfaceC3144r9) {
        super(c1643Hi);
        this.A00 = 0;
        this.A02 = EnumC2506gc.A04;
        this.A04 = null;
        this.A0D = new FF(this);
        this.A07 = c1643Hi;
        this.A08 = interfaceC2909nG;
        this.A0A = interfaceC3145rA;
        this.A09 = interfaceC3144r9;
        this.A0B = str;
        this.A0C = c2441fZ;
        this.A06 = AbstractC2505gb.A00(this.A07.A02());
    }

    public static /* synthetic */ int A02(AbstractC3209sC abstractC3209sC) {
        int i = abstractC3209sC.A00;
        abstractC3209sC.A00 = i + 1;
        return i;
    }

    public static /* synthetic */ int A03(AbstractC3209sC abstractC3209sC) {
        int i = abstractC3209sC.A00;
        abstractC3209sC.A00 = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0E() {
        if (this.A03 != null && this.A03.A0A()) {
            this.A08.ABo(this.A0B, this.A03.A02());
            this.A03.A03();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0F() {
        this.A04 = null;
        if (this.A03 != null) {
            this.A03.A05();
        }
        A0O();
        if (A0E[4].length() != 17) {
            throw new RuntimeException();
        }
        String[] strArr = A0E;
        strArr[6] = "T97PvisYvRSslU";
        strArr[5] = "4m6IDlN75J4PWuz7VqWCz3A27IQvrs";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0G(C2508ge c2508ge) {
        if (this.A03 != null) {
            this.A03.A08(this.A02);
        }
        A0Q(c2508ge, this.A02);
        C2400eu.A01(this.A07).A0L();
        if (A0S()) {
            A0E();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0H(C2508ge c2508ge) {
        this.A04 = c2508ge;
        if (this.A03 != null) {
            this.A03.A09(this.A02, this.A00);
        }
        A0R(c2508ge, this.A02);
    }

    public final void A0M() {
        A0E();
    }

    public final void A0N() {
        this.A03 = new C2507gd(new C2917nO(this.A0B, this.A08));
        if (this.A0A != null) {
            this.A0A.AGF(true);
        }
        if (this.A05 != null) {
            this.A05.ADo();
        }
        A0F();
    }

    public void A0Q(C2508ge c2508ge, EnumC2506gc enumC2506gc) {
        if (this.A01 != null) {
            this.A07.A0F().ACJ();
            this.A01.onAdClosed();
        }
    }

    public void setAdReportingCallbackListener(InterfaceC3208sB interfaceC3208sB) {
        this.A05 = interfaceC3208sB;
    }

    public void setOnAdClosedListener(AdClosedListener adClosedListener) {
        this.A01 = adClosedListener;
    }
}
