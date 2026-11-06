package com.facebook.ads.redexgen.X;

import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3128qt {
    public static C3128qt A02;
    public final C1608Fz A00;
    public final C3130qv A01;

    public C3128qt(C1643Hi c1643Hi, Executor executor, C2830ly c2830ly) {
        this.A01 = new C3130qv(c1643Hi);
        this.A00 = new C1608Fz(executor, c2830ly, c1643Hi);
    }

    private void A00() {
        this.A01.A03(this.A00);
    }

    public static void A01(C1643Hi c1643Hi, Executor executor, C2830ly c2830ly) {
        if (!C2888mv.A1c(c1643Hi)) {
            return;
        }
        if (A02 == null) {
            A02 = new C3128qt(c1643Hi, executor, c2830ly);
            A02.A00();
        } else {
            A02.A02(c2830ly);
        }
    }

    private void A02(C2830ly c2830ly) {
        this.A00.A07(c2830ly);
    }
}
