package com.ironsource.adqualitysdk.sdk.i;

import com.tapjoy.TJPlacementData;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᐩ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0467 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0158 f2231;

    public C0467(C0158 c0158) {
        this.f2231 = c0158;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0158 c0158 = this.f2231;
        TJPlacementData tJPlacementData = (TJPlacementData) arrayList.get(0);
        c0158.getClass();
        return tJPlacementData.getHttpResponse();
    }
}
