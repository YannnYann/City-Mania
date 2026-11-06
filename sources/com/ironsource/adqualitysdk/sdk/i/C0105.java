package com.ironsource.adqualitysdk.sdk.i;

import com.moloco.sdk.publisher.Banner;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ɟ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0105 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0086 f913;

    public C0105(C0086 c0086) {
        this.f913 = c0086;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0086 c0086 = this.f913;
        Banner banner = (Banner) arrayList.get(0);
        c0086.getClass();
        return banner.getAdShowListener();
    }
}
