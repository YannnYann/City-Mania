package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.vpaid.models.vast.VideoClicks;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴱ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0653 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0108 f2685;

    public C0653(C0108 c0108) {
        this.f2685 = c0108;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0108 c0108 = this.f2685;
        VideoClicks videoClicks = (VideoClicks) arrayList.get(0);
        c0108.getClass();
        return videoClicks.getClickTrackingList();
    }
}
