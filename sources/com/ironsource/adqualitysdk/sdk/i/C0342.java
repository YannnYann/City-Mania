package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ڕ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0342 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0332 f1939;

    public C0342(C0332 c0332) {
        this.f1939 = c0332;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        boolean zMo1492;
        C0967 c0967;
        C0235 c0235 = this.f1939.f1919.f1898;
        if (c0235 != null && (c0967 = c0235.f1539) != null) {
            c0967.f3659 = true;
            HashMap map = c0967.f3665.f1572.f1540;
            Iterator it = ((map == null || map.isEmpty()) ? new ArrayList() : new ArrayList(map.values())).iterator();
            while (true) {
                if (!it.hasNext()) {
                    c0967.m1580(false);
                    break;
                }
                EnumC0299 enumC0299 = ((C0286) it.next()).f1638;
                if (enumC0299 == EnumC0299.f1679 || enumC0299 == EnumC0299.f1678 || enumC0299 == EnumC0299.f1680) {
                    break;
                }
            }
        }
        synchronized (this.f1939.f1919) {
            zMo1492 = AbstractC0885.m1491().mo1492();
        }
        if (zMo1492) {
            C0324.m1229(this.f1939.f1919);
        }
    }
}
