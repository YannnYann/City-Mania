package com.facebook.ads.redexgen.X;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class AF implements InterfaceC2212bq {
    public final /* synthetic */ C13294o A00;
    public final /* synthetic */ CountDownLatch A01;
    public final /* synthetic */ AtomicReference A02;
    public final /* synthetic */ AtomicReference A03;

    public AF(C13294o c13294o, AtomicReference atomicReference, AtomicReference atomicReference2, CountDownLatch countDownLatch) {
        this.A00 = c13294o;
        this.A03 = atomicReference;
        this.A02 = atomicReference2;
        this.A01 = countDownLatch;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2212bq
    public final void AES(InterfaceC2218bw interfaceC2218bw) {
        C13294o.A06(interfaceC2218bw.A7d(), this.A03, this.A02);
        this.A01.countDown();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2212bq
    public final void AEs(Exception exc) {
        this.A02.set(exc);
        this.A01.countDown();
    }
}
