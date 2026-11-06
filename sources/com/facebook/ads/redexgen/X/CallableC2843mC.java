package com.facebook.ads.redexgen.X;

import java.util.concurrent.Callable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.mC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class CallableC2843mC implements Callable<Boolean> {
    public final /* synthetic */ C3015p1 A00;
    public final /* synthetic */ String A01;

    public CallableC2843mC(C3015p1 c3015p1, String str) {
        this.A00 = c3015p1;
        this.A01 = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final Boolean call() throws Exception {
        this.A00.A05();
        synchronized (C2845mE.A04) {
            C2845mE.A04.put(this.A01, 2);
        }
        return true;
    }
}
