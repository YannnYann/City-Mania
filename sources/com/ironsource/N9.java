package com.ironsource;

import com.ironsource.AbstractC3812r3;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes3.dex */
public class N9 extends AbstractC3812r3 {
    private static N9 R;
    private String P;
    private final Q8 Q = Pb.k0().s();

    private N9() {
        this.H = "ironbeast";
        this.G = 2;
        this.I = IronSourceConstants.INTERSTITIAL_EVENT_TYPE;
        this.P = "";
    }

    public static synchronized N9 i() {
        try {
            if (R == null) {
                N9 n9 = new N9();
                R = n9;
                n9.e();
            }
        } catch (Throwable th) {
            throw th;
        }
        return R;
    }

    @Override // com.ironsource.AbstractC3812r3
    public int c(C5 c5) {
        int iF = f(c5.c());
        return iF == AbstractC3812r3.e.BANNER.b() ? this.Q.a(IronSource.a.BANNER) : iF == AbstractC3812r3.e.NATIVE_AD.b() ? this.Q.a(IronSource.a.NATIVE_AD) : this.Q.a(IronSource.a.INTERSTITIAL);
    }

    @Override // com.ironsource.AbstractC3812r3
    public boolean d(C5 c5) {
        int iC = c5.c();
        return iC == D5.j1.c() || iC == D5.k1.c() || iC == D5.E1.c() || iC == D5.M1.c() || iC == D5.L1.c() || iC == D5.k2.c() || iC == D5.X2.c() || iC == D5.W2.c() || iC == D5.i3.c() || iC == D5.l3.c() || iC == D5.B3.c() || iC == D5.A3.c();
    }

    @Override // com.ironsource.AbstractC3812r3
    public String e(int i) {
        return this.P;
    }

    @Override // com.ironsource.AbstractC3812r3
    public void f(C5 c5) {
        this.P = c5.b().optString("placement");
    }

    @Override // com.ironsource.AbstractC3812r3
    public boolean j(C5 c5) {
        return false;
    }

    @Override // com.ironsource.AbstractC3812r3
    public void d() {
        this.J.add(Integer.valueOf(D5.g1.c()));
        this.J.add(Integer.valueOf(D5.h1.c()));
        this.J.add(Integer.valueOf(D5.i1.c()));
        this.J.add(Integer.valueOf(D5.j1.c()));
        this.J.add(Integer.valueOf(D5.B1.c()));
        this.J.add(Integer.valueOf(D5.K1.c()));
        this.J.add(Integer.valueOf(D5.I1.c()));
        this.J.add(Integer.valueOf(D5.J1.c()));
        this.J.add(Integer.valueOf(D5.f2.c()));
        this.J.add(Integer.valueOf(D5.A2.c()));
        this.J.add(Integer.valueOf(D5.m2.c()));
        this.J.add(Integer.valueOf(D5.J2.c()));
        this.J.add(Integer.valueOf(D5.F2.c()));
        this.J.add(Integer.valueOf(D5.g2.c()));
        this.J.add(Integer.valueOf(D5.n2.c()));
        this.J.add(Integer.valueOf(D5.h2.c()));
        this.J.add(Integer.valueOf(D5.L2.c()));
        this.J.add(Integer.valueOf(D5.o2.c()));
        this.J.add(Integer.valueOf(D5.M2.c()));
        this.J.add(Integer.valueOf(D5.i2.c()));
        this.J.add(Integer.valueOf(D5.p2.c()));
        this.J.add(Integer.valueOf(D5.k2.c()));
        this.J.add(Integer.valueOf(D5.g3.c()));
        this.J.add(Integer.valueOf(D5.s3.c()));
        this.J.add(Integer.valueOf(D5.h3.c()));
        this.J.add(Integer.valueOf(D5.i3.c()));
        this.J.add(Integer.valueOf(D5.v3.c()));
        this.J.add(Integer.valueOf(D5.l3.c()));
    }
}
