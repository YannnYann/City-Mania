package com.ironsource.adqualitysdk.sdk.i;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ܐ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class RunnableC0360 implements Runnable {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ CountDownLatch f1970;

    public RunnableC0360(CountDownLatch countDownLatch) {
        this.f1970 = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f1970.countDown();
    }
}
