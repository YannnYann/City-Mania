package com.ironsource.adqualitysdk.sdk.i;

import com.five_corp.ad.FiveAdInterface;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ऽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0376 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0317 f2000;

    public C0376(C0317 c0317) {
        this.f2000 = c0317;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0317 c0317 = this.f2000;
        FiveAdInterface fiveAdInterface = (FiveAdInterface) arrayList.get(0);
        c0317.getClass();
        return fiveAdInterface.getAdParameter();
    }
}
