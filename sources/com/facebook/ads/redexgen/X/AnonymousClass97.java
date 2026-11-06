package com.facebook.ads.redexgen.X;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.97, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AnonymousClass97 implements InterfaceC1909Sg, InterfaceC1838Pe {
    public static String[] A0E = {"U7Imei8o4AuFxf2c4RWOjnn4xFyDhyeE", "GQSH8QUBAJRZGyD", "Mwf3HtQh3hUEgZCZCmn77UnrLKGKrjyT", "", "SxInJUtUll9gTpwbUal7CE", "jdf5BrpQa10M8xq", "gbBgASlNzcbfWFpsgoVfBXv53dyMmgZ2", "NwniVTDIGWaHvQ2bNmdt1p"};
    public int A00;
    public int A01;
    public long A02;
    public long A04;
    public C1839Ph A05;
    public QD A06;
    public VF A07;
    public boolean A08;
    public boolean A09;
    public VC[] A0A;
    public final int A0C;

    @MetaExoPlayerCustomization
    public EnumC2047Xz A0B = EnumC2047Xz.A09;
    public final C1825Oo A0D = new C1825Oo();
    public long A03 = Long.MIN_VALUE;

    public abstract void A1Z();

    public abstract void A1a(long j, boolean z) throws AnonymousClass96;

    public abstract void A1c(VC[] vcArr, long j, long j2) throws AnonymousClass96;

    public AnonymousClass97(int i) {
        this.A0C = i;
    }

    private final int A1O() {
        return this.A00;
    }

    private void A1P(long j, boolean z) throws AnonymousClass96 {
        this.A08 = false;
        this.A02 = j;
        this.A03 = j;
        A1a(j, z);
    }

    public final int A1Q(long j) {
        return ((VF) AbstractC1747Ln.A01(this.A07)).ALK(j - this.A04);
    }

    @MetaExoPlayerCustomization
    public final int A1R(C1825Oo c1825Oo, T2 t2, int i) {
        int iAIc = ((VF) AbstractC1747Ln.A01(this.A07)).AIc(c1825Oo, t2, i);
        if (iAIc == -4) {
            if (t2.A05()) {
                this.A03 = Long.MIN_VALUE;
                return this.A08 ? -4 : -3;
            }
            t2.A00 = t2.A01;
            t2.A01 += this.A04;
            this.A03 = Math.max(this.A03, t2.A01);
        } else if (iAIc == -5) {
            VC vc = (VC) AbstractC1747Ln.A01(c1825Oo.A00);
            if (vc.A0M != Long.MAX_VALUE) {
                c1825Oo.A00 = vc.A07().A0s(vc.A0M + this.A04).A14();
            }
        }
        return iAIc;
    }

    public final AnonymousClass96 A1S(Throwable th, VC vc, int i) {
        return A1T(th, vc, false, i);
    }

    public final AnonymousClass96 A1T(Throwable th, VC vc, boolean z, int i) {
        int iA03 = 4;
        if (vc != null && !this.A09) {
            this.A09 = true;
            try {
                int formatSupport = ALf(vc);
                iA03 = PX.A03(formatSupport);
            } catch (AnonymousClass96 unused) {
            } catch (Throwable th2) {
                this.A09 = false;
                throw th2;
            }
            this.A09 = false;
        }
        String name = getName();
        int iA1O = A1O();
        if (A0E[2].charAt(28) == 'I') {
            throw new RuntimeException();
        }
        A0E[2] = "dElzHzE3fsarjB2Hsty7dzBM9TAWgOKi";
        return AnonymousClass96.A04(th, name, iA1O, vc, iA03, z, i);
    }

    public final C1825Oo A1U() {
        this.A0D.A00();
        return this.A0D;
    }

    public final C1839Ph A1V() {
        return (C1839Ph) AbstractC1747Ln.A01(this.A05);
    }

    public final QD A1W() {
        return (QD) AbstractC1747Ln.A01(this.A06);
    }

    public void A1X() throws AnonymousClass96 {
    }

    public void A1Y() {
    }

    public void A1b(boolean z, boolean z2) throws AnonymousClass96 {
    }

    public final boolean A1d() {
        return AAT() ? this.A08 : ((VF) AbstractC1747Ln.A01(this.A07)).ABM();
    }

    public final VC[] A1e() {
        return (VC[]) AbstractC1747Ln.A01(this.A0A);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final void A6W() {
        AbstractC1747Ln.A08(this.A01 == 1);
        this.A0D.A00();
        this.A01 = 0;
        this.A07 = null;
        this.A0A = null;
        this.A08 = false;
        A1Z();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final void A6u(C1839Ph c1839Ph, VC[] vcArr, VF vf, long j, boolean z, boolean z2, long j2, long j3) throws AnonymousClass96 {
        AbstractC1747Ln.A08(this.A01 == 0);
        this.A05 = c1839Ph;
        this.A01 = 1;
        A1b(z, z2);
        AJs(vcArr, vf, j2, j3);
        A1P(j, z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final InterfaceC1838Pe A7n() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public InterfaceC1834Ox A95() {
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    @MetaExoPlayerCustomization
    public final EnumC2047Xz A9m() {
        return this.A0B;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final int A9n() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final VF A9q() {
        return this.A07;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg, com.facebook.ads.redexgen.X.InterfaceC1838Pe
    public final int AA0() {
        return this.A0C;
    }

    @Override // com.facebook.ads.redexgen.X.PR
    public void AAM(int i, Object obj) throws AnonymousClass96 {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final boolean AAT() {
        return this.A03 == Long.MIN_VALUE;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final void AAn(int i, QD qd) {
        this.A00 = i;
        this.A06 = qd;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final boolean AB5() {
        return this.A08;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final void ADL() throws IOException {
        ((VF) AbstractC1747Ln.A01(this.A07)).ADI();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final void AJs(VC[] vcArr, VF vf, long j, long j2) throws AnonymousClass96 {
        AbstractC1747Ln.A08(!this.A08);
        this.A07 = vf;
        if (this.A03 == Long.MIN_VALUE) {
            this.A03 = j;
        }
        this.A0A = vcArr;
        this.A04 = j2;
        A1c(vcArr, j, j2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final void AK4(long j) throws AnonymousClass96 {
        A1P(j, false);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final void AKf() {
        this.A08 = true;
    }

    public int ALh() throws AnonymousClass96 {
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final void start() throws AnonymousClass96 {
        AbstractC1747Ln.A08(this.A01 == 1);
        this.A01 = 2;
        A1X();
        String[] strArr = A0E;
        if (strArr[7].length() != strArr[4].length()) {
            throw new RuntimeException();
        }
        A0E[3] = "";
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1909Sg
    public final void stop() {
        AbstractC1747Ln.A08(this.A01 == 2);
        this.A01 = 1;
        A1Y();
    }
}
