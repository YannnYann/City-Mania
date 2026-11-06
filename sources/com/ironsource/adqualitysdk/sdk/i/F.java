package com.ironsource.adqualitysdk.sdk.i;

import com.vungle.warren.model.Placement;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class F implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ J f97;

    public F(J j) {
        this.f97 = j;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        J j = this.f97;
        Placement placement = (Placement) arrayList.get(0);
        j.getClass();
        return Boolean.valueOf(placement.isIncentivized());
    }
}
