package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﬤ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0848 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0825 f3306;

    public C0848(C0825 c0825) {
        this.f3306 = c0825;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        ArrayList<C0865> arrayList = new ArrayList(this.f3306.f3177.values());
        this.f3306.f3177.clear();
        for (C0865 c0865 : arrayList) {
            c0865.f3173 = null;
            c0865.f3336 = null;
            AbstractC1013 abstractC1013M1594 = AbstractC1013.m1594();
            synchronized (abstractC1013M1594) {
                abstractC1013M1594.f3815.remove(c0865);
            }
        }
    }
}
