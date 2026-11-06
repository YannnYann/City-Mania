package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺰ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0952 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0893 f3620;

    public C0952(C0893 c0893) {
        this.f3620 = c0893;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0893 c0893 = this.f3620;
        synchronized (c0893) {
            c0893.f3412 = true;
        }
        C0497 c0497 = this.f3620.f3416;
        if (c0497 != null) {
            c0497.mo1077();
        }
        Iterator it = new ArrayList(this.f3620.f3415).iterator();
        while (it.hasNext()) {
            ((InterfaceC0074) it.next()).mo1077();
        }
        this.f3620.f3415.clear();
        Iterator it2 = new ArrayList(this.f3620.f3414).iterator();
        while (it2.hasNext()) {
            ((InterfaceC0074) it2.next()).mo1077();
        }
    }
}
