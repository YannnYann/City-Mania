package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.र, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0374 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0324 f1998;

    public C0374(C0324 c0324) {
        this.f1998 = c0324;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0324 c0324 = this.f1998;
        Iterator it = (c0324.f1905 != null ? new ArrayList(c0324.f1905) : new ArrayList()).iterator();
        while (it.hasNext()) {
            ((C0937) it.next()).m1550();
        }
        List listM1224 = C0324.m1224(this.f1998);
        if (listM1224 != null) {
            ((ArrayList) listM1224).clear();
        }
        this.f1998.f1905 = null;
        this.f1998.f1900 = null;
    }
}
