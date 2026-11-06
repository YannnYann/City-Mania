package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ヶ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0826 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0825 f3178;

    public C0826(C0825 c0825) {
        this.f3178 = c0825;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        ArrayList arrayList = new ArrayList(this.f3178.f3175.values());
        this.f3178.f3175.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((B) it.next()).m967();
        }
    }
}
