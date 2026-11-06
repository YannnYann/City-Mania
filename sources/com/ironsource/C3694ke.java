package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: renamed from: com.ironsource.ke, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3694ke extends AbstractC3812r3 {
    private static C3694ke R;
    private String P;
    private final Q8 Q = Pb.k0().s();

    private C3694ke() {
        this.H = "outcome";
        this.G = 3;
        this.I = IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE;
        this.P = "";
    }

    public static synchronized C3694ke i() {
        try {
            if (R == null) {
                C3694ke c3694ke = new C3694ke();
                R = c3694ke;
                c3694ke.e();
            }
        } catch (Throwable th) {
            throw th;
        }
        return R;
    }

    @Override // com.ironsource.AbstractC3812r3
    public int c(C5 c5) {
        return this.Q.a(IronSource.a.REWARDED_VIDEO);
    }

    @Override // com.ironsource.AbstractC3812r3
    public boolean d(C5 c5) {
        int iC = c5.c();
        return iC == D5.b.c() || iC == D5.Q.c() || iC == D5.R.c() || iC == D5.S.c() || iC == D5.a0.c() || iC == D5.b0.c() || iC == D5.y0.c() || iC == D5.d0.c() || iC == D5.L0.c() || iC == D5.M0.c();
    }

    @Override // com.ironsource.AbstractC3812r3
    public String e(int i) {
        return (i == 15 || (i >= 300 && i < 400)) ? this.P : "";
    }

    @Override // com.ironsource.AbstractC3812r3
    public void f(C5 c5) {
        if (c5.c() == 15 || (c5.c() >= 300 && c5.c() < 400)) {
            this.P = c5.b().optString("placement");
        }
    }

    @Override // com.ironsource.AbstractC3812r3
    public boolean j(C5 c5) {
        return false;
    }

    @Override // com.ironsource.AbstractC3812r3
    public void d() {
        this.J.add(Integer.valueOf(D5.X.c()));
        this.J.add(Integer.valueOf(D5.Y.c()));
        this.J.add(Integer.valueOf(D5.Z.c()));
        this.J.add(Integer.valueOf(D5.a0.c()));
        this.J.add(Integer.valueOf(D5.v0.c()));
        this.J.add(Integer.valueOf(D5.E0.c()));
        this.J.add(Integer.valueOf(D5.F0.c()));
        this.J.add(Integer.valueOf(D5.G0.c()));
        this.J.add(Integer.valueOf(D5.H0.c()));
        this.J.add(Integer.valueOf(D5.I0.c()));
        this.J.add(Integer.valueOf(D5.J0.c()));
    }
}
