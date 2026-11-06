package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ku, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class CallableC2766ku implements Callable<Boolean> {
    public final BlockingQueue<Boolean> A00 = new LinkedBlockingQueue();
    public final /* synthetic */ C2771kz A01;

    public CallableC2766ku(C2771kz c2771kz, C2767kv c2767kv) {
        this.A01 = c2771kz;
        new Handler(Looper.getMainLooper()).post(new C1646Hl(this, c2771kz, c2767kv));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final Boolean call() throws Exception {
        return this.A00.take();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03(C2767kv c2767kv) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        C2247cP c2247cPA06 = C2247cP.A06(this.A01.A04.A02());
        Uri uriA00 = AbstractC3036pP.A00(c2767kv.A08);
        long jA0Q = c2767kv.A00;
        if (jA0Q == -1) {
            jA0Q = C2888mv.A0Q(this.A01.A04);
        }
        c2247cPA06.A0I(uriA00, new C1645Hk(this, c2767kv, jA0Q, jCurrentTimeMillis), jA0Q);
    }
}
