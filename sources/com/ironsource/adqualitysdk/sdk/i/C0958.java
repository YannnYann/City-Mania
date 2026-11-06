package com.ironsource.adqualitysdk.sdk.i;

import com.my.target.ads.Reward;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻟ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0958 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0941 f3628;

    public C0958(C0941 c0941) {
        this.f3628 = c0941;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0941 c0941 = this.f3628;
        Reward reward = (Reward) arrayList.get(0);
        c0941.getClass();
        return reward.type;
    }
}
