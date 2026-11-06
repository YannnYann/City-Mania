package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.mediationsdk.model.Placement;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ξ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0183 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0990 f1197;

    public C0183(C0990 c0990) {
        this.f1197 = c0990;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0990 c0990 = this.f1197;
        Placement placement = (Placement) arrayList.get(0);
        c0990.getClass();
        if (placement != null) {
            return placement.getPlacementName();
        }
        return null;
    }
}
