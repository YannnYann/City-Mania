package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.vpaid.models.vast.Wrapper;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ง, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0405 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0108 f2139;

    public C0405(C0108 c0108) {
        this.f2139 = c0108;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0108 c0108 = this.f2139;
        Wrapper wrapper = (Wrapper) arrayList.get(0);
        c0108.getClass();
        return wrapper.getCreatives();
    }
}
