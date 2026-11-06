package com.ironsource.adqualitysdk.sdk.i;

import com.amazon.device.ads.DTBAdResponse;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.בֿ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0869 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0841 f3342;

    public C0869(C0841 c0841) {
        this.f3342 = c0841;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0841 c0841 = this.f3342;
        DTBAdResponse dTBAdResponse = (DTBAdResponse) arrayList.get(0);
        c0841.getClass();
        return dTBAdResponse.getDTBAds();
    }
}
