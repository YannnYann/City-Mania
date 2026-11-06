package com.ironsource.adqualitysdk.sdk.i;

import com.explorestack.protobuf.adcom.Ad;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.к, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0225 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0193 f1493;

    public C0225(C0193 c0193) {
        this.f1493 = c0193;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0193 c0193 = this.f1493;
        Ad.Display.Banner banner = (Ad.Display.Banner) arrayList.get(0);
        c0193.getClass();
        return banner.getExtProtoList();
    }
}
