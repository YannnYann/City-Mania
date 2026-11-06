package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.models.Ad;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ɿ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0120 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0108 f1057;

    public C0120(C0108 c0108) {
        this.f1057 = c0108;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0108 c0108 = this.f1057;
        Ad ad = (Ad) arrayList.get(0);
        String str = (String) arrayList.get(1);
        c0108.getClass();
        return ad.getMeta(str);
    }
}
