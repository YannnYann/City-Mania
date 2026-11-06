package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.乁, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0836 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0825 f3190;

    public C0836(C0825 c0825) {
        this.f3190 = c0825;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        ArrayList<B0> arrayList = new ArrayList(this.f3190.f3176.values());
        this.f3190.f3176.clear();
        for (B0 b0 : arrayList) {
            b0.f3173 = null;
            C0665.m1413().m1414(b0);
        }
    }
}
