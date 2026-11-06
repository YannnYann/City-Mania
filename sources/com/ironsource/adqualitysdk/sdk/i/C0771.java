package com.ironsource.adqualitysdk.sdk.i;

import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ῑ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0771 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0768 f3104;

    public C0771(C0768 c0768) {
        this.f3104 = c0768;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        HashSet hashSet;
        C0767.m1442(this.f3104.f3099, true);
        C0767 c0767 = this.f3104.f3099;
        synchronized (c0767) {
            hashSet = new HashSet(c0767.f3096);
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((InterfaceC0418) it.next()).mo1268();
        }
    }
}
