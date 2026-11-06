package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.vpaid.models.vast.StaticResource;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ว, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0420 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0108 f2153;

    public C0420(C0108 c0108) {
        this.f2153 = c0108;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0108 c0108 = this.f2153;
        StaticResource staticResource = (StaticResource) arrayList.get(0);
        c0108.getClass();
        return staticResource.getCreativeType();
    }
}
