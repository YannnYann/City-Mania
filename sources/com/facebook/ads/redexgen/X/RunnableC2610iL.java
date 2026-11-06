package com.facebook.ads.redexgen.X;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.iL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC2610iL implements Runnable {
    public final /* synthetic */ C7S A00;
    public final /* synthetic */ ArrayList A01;

    public RunnableC2610iL(C7S c7s, ArrayList arrayList) {
        this.A00 = c7s;
        this.A01 = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (C2619iU c2619iU : this.A01) {
            this.A00.A0e(c2619iU.A04, c2619iU.A00, c2619iU.A01, c2619iU.A02, c2619iU.A03);
        }
        this.A01.clear();
        this.A00.A05.remove(this.A01);
    }
}
