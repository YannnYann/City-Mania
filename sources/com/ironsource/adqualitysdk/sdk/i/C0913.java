package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﹰ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0913 implements InterfaceC0074 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0872 f3482;

    public C0913(C0872 c0872) {
        this.f3482 = c0872;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0074
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1077() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.f3482.f3346);
            this.f3482.f3346.clear();
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }
}
