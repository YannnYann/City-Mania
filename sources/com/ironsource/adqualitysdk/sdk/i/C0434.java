package com.ironsource.adqualitysdk.sdk.i;

import com.five_corp.ad.FiveAdConfig;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.າ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0434 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0317 f2182;

    public C0434(C0317 c0317) {
        this.f2182 = c0317;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0317 c0317 = this.f2182;
        FiveAdConfig fiveAdConfig = (FiveAdConfig) arrayList.get(0);
        c0317.getClass();
        return fiveAdConfig.appId;
    }
}
