package com.ironsource.adqualitysdk.sdk.i;

import com.qq.e.ads.LiteAbstractAD;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﹺ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0922 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0688 f3511;

    public C0922(C0688 c0688) {
        this.f3511 = c0688;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0688 c0688 = this.f3511;
        LiteAbstractAD liteAbstractAD = (LiteAbstractAD) arrayList.get(0);
        c0688.getClass();
        return liteAbstractAD.getExtraInfo();
    }
}
