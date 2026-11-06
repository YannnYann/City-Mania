package com.facebook.ads.redexgen.X;

import android.os.Handler;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Qd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1854Qd {
    public final Handler A00;
    public final InterfaceC1855Qe A01;

    public C1854Qd(Handler handler, InterfaceC1855Qe interfaceC1855Qe) {
        this.A00 = interfaceC1855Qe != null ? (Handler) AbstractC1747Ln.A01(handler) : null;
        this.A01 = interfaceC1855Qe;
    }

    @MetaExoPlayerCustomization
    public final void A00(final int i) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.QP
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }

    public final void A01(final int i, final long j, final long j2) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.QT
                @Override // java.lang.Runnable
                public final void run() {
                    this.A03.A02(i, j, j2);
                }
            });
        }
    }

    public final /* synthetic */ void A02(int i, long j, long j2) {
        ((InterfaceC1855Qe) N1.A0f(this.A01)).AE5(i, j, j2);
    }

    public final void A03(final long j) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.QU
                @Override // java.lang.Runnable
                public final void run() {
                    this.A01.A04(j);
                }
            });
        }
    }

    public final /* synthetic */ void A04(long j) {
        ((InterfaceC1855Qe) N1.A0f(this.A01)).AE1(j);
    }

    public final void A05(final VC vc, final OA oa) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.QY
                @Override // java.lang.Runnable
                public final void run() {
                    this.A02.A06(vc, oa);
                }
            });
        }
    }

    public final /* synthetic */ void A06(VC vc, OA oa) {
        ((InterfaceC1855Qe) N1.A0f(this.A01)).ADz(vc);
        ((InterfaceC1855Qe) N1.A0f(this.A01)).AE0(vc, oa);
    }

    public final void A07(final O7 o7) {
        o7.A02();
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.QW
                @Override // java.lang.Runnable
                public final void run() {
                    this.A01.A09(o7);
                }
            });
        }
    }

    public final void A08(final O7 o7) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Qc
                @Override // java.lang.Runnable
                public final void run() {
                    this.A01.A0A(o7);
                }
            });
        }
    }

    public final /* synthetic */ void A09(O7 o7) {
        o7.A02();
        ((InterfaceC1855Qe) N1.A0f(this.A01)).ADx(o7);
    }

    public final /* synthetic */ void A0A(O7 o7) {
        ((InterfaceC1855Qe) N1.A0f(this.A01)).ADy(o7);
    }

    public final void A0B(final C1857Qg c1857Qg) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.QS
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }

    public final void A0C(final C1857Qg c1857Qg) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.QO
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }

    public final void A0D(final Exception exc) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.QV
                @Override // java.lang.Runnable
                public final void run() {
                    this.A00.A0E(exc);
                }
            });
        }
    }

    public final /* synthetic */ void A0E(Exception exc) {
        ((InterfaceC1855Qe) N1.A0f(this.A01)).AE2(exc);
    }

    @MetaExoPlayerCustomization
    public final void A0F(final String str) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.QZ
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }

    public final void A0G(final String str, final long j, final long j2) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.QN
                @Override // java.lang.Runnable
                public final void run() {
                    this.A02.A0H(str, j, j2);
                }
            });
        }
    }

    public final /* synthetic */ void A0H(String str, long j, long j2) {
        ((InterfaceC1855Qe) N1.A0f(this.A01)).ADw(str, j, j2);
    }

    public final void A0I(final boolean z) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.QR
                @Override // java.lang.Runnable
                public final void run() {
                    this.A00.A0J(z);
                }
            });
        }
    }

    public final /* synthetic */ void A0J(boolean z) {
        ((InterfaceC1855Qe) N1.A0f(this.A01)).AH5(z);
    }

    @MetaExoPlayerCustomization
    public final void A0K(final byte[] bArr, final long j) {
        if (this.A00 != null) {
            this.A00.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.Qa
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }
}
