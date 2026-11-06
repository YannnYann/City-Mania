package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.models.Ad;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʟ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0135 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0108 f1085;

    public C0135(C0108 c0108) {
        this.f1085 = c0108;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0108 c0108 = this.f1085;
        Ad ad = (Ad) arrayList.get(0);
        c0108.getClass();
        return ad.getZoneId();
    }
}
