package com.facebook.ads.redexgen.X;

import android.os.Bundle;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Il, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC1672Il implements Runnable {
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ int A02;
    public final /* synthetic */ int A03;
    public final /* synthetic */ int A04;
    public final /* synthetic */ Bundle A05;
    public final /* synthetic */ BinderC1674In A06;

    public RunnableC1672Il(BinderC1674In binderC1674In, int i, int i2, int i3, int i4, int i5, Bundle bundle) {
        this.A06 = binderC1674In;
        this.A01 = i;
        this.A04 = i2;
        this.A02 = i3;
        this.A00 = i4;
        this.A03 = i5;
        this.A05 = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A06.A01.A09(this.A01, this.A04, this.A02, this.A00, this.A03, this.A05);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
