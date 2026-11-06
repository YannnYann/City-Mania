package com.facebook.ads.redexgen.X;

import android.os.Bundle;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ig, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC1667Ig implements Runnable {
    public final /* synthetic */ Bundle A00;
    public final /* synthetic */ BinderC1674In A01;

    public RunnableC1667Ig(BinderC1674In binderC1674In, Bundle bundle) {
        this.A01 = binderC1674In;
        this.A00 = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            this.A01.A01.A03(this.A00);
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
