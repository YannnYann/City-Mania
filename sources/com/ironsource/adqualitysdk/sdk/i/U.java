package com.ironsource.adqualitysdk.sdk.i;

import com.vungle.ads.internal.model.Placement;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class U implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ V f191;

    public U(V v) {
        this.f191 = v;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        V v = this.f191;
        Placement placement = (Placement) arrayList.get(0);
        v.getClass();
        return Boolean.valueOf(placement.isRewardedVideo());
    }
}
