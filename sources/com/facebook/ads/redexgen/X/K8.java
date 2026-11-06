package com.facebook.ads.redexgen.X;

import android.os.Message;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class K8 extends AbstractRunnableC2991od {
    public final /* synthetic */ Message A00;
    public final /* synthetic */ K6 A01;

    public K8(K6 k6, Message message) {
        this.A01 = k6;
        this.A00 = message;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2991od
    public final void A01() {
        this.A01.A05.AAN(this.A00);
    }
}
