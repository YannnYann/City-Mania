package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ἳ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0761 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0740 f3086;

    public C0761(C0740 c0740) {
        this.f3086 = c0740;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0740 c0740 = this.f3086;
        WeakHashMap weakHashMap = (WeakHashMap) arrayList.get(0);
        c0740.getClass();
        return new C0760(c0740, weakHashMap, c0875);
    }
}
