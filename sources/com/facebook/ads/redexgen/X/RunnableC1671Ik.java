package com.facebook.ads.redexgen.X;

import android.os.Bundle;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ik, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC1671Ik implements Runnable {
    public final /* synthetic */ Bundle A00;
    public final /* synthetic */ BinderC1674In A01;

    public RunnableC1671Ik(BinderC1674In binderC1674In, Bundle bundle) {
        this.A01 = binderC1674In;
        this.A00 = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A01.A01.A06(this.A00);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
