package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ko, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1724Ko implements InterfaceC2735kO {
    public static String[] A05 = {"SGxBKOT0PnlxeQ2jGccieZy3bFeI", "1PQaT", "uVEahNbfwTxCxKVGO7p", "rVPhbhRBlKfAg8fviAhE", "2ov", "KrP87Bn8e271VzBAE5Wi", "4No2VIB7eIWgh7ub8hExBeYUcY", "mEjh"};
    public final /* synthetic */ LA A00;
    public final /* synthetic */ InterfaceC2452fk A01;
    public final /* synthetic */ C2453fl A02;
    public final /* synthetic */ C1643Hi A03;
    public final /* synthetic */ boolean A04;

    public C1724Ko(C2453fl c2453fl, C1643Hi c1643Hi, boolean z, LA la, InterfaceC2452fk interfaceC2452fk) {
        this.A02 = c2453fl;
        this.A03 = c1643Hi;
        this.A04 = z;
        this.A00 = la;
        this.A01 = interfaceC2452fk;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2735kO
    public final void ADt() {
        if (C2888mv.A1q(this.A03) && this.A04) {
            this.A02.A02.add(M1.A01(this.A03, this.A00, 1, new C1726Kq(this)));
            return;
        }
        InterfaceC2452fk interfaceC2452fk = this.A01;
        if (A05[2].length() != 19) {
            throw new RuntimeException();
        }
        String[] strArr = A05;
        strArr[5] = "X6BBoGIR5wPjpoFUlFYz";
        strArr[3] = "SlUPa0nBeexeGnx3tyWk";
        interfaceC2452fk.ADl();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2735kO
    public final void ADu() {
        this.A01.ADk(AdError.CACHE_ERROR);
    }
}
