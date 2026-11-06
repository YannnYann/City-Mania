package com.ironsource.adqualitysdk.sdk.i;

import com.chartboost.sdk.InPlay.CBInPlay;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ἶ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0756 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0728 f3080;

    public C0756(C0728 c0728) {
        this.f3080 = c0728;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0728 c0728 = this.f3080;
        CBInPlay cBInPlay = (CBInPlay) arrayList.get(0);
        c0728.getClass();
        return cBInPlay.getAppName();
    }
}
