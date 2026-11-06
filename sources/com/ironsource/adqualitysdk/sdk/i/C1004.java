package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｷ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C1004 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0841 f3806;

    public C1004(C0841 c0841) {
        this.f3806 = c0841;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0841 c0841 = this.f3806;
        HashMap map = (HashMap) arrayList.get(0);
        c0841.getClass();
        return new C0849(c0841, map, c0875);
    }
}
