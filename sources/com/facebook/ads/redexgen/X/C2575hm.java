package com.facebook.ads.redexgen.X;

import android.database.DataSetObserver;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2575hm extends DataSetObserver {
    public final /* synthetic */ C2578hp A00;

    public C2575hm(C2578hp c2578hp) {
        this.A00 = c2578hp;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        this.A00.A0g();
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        this.A00.A0g();
    }
}
