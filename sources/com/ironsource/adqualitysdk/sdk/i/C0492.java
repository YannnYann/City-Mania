package com.ironsource.adqualitysdk.sdk.i;

import com.smaato.sdk.video.vast.model.VastBeacon;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒢ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0492 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0049 f2300;

    public C0492(C0049 c0049) {
        this.f2300 = c0049;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0049 c0049 = this.f2300;
        VastBeacon vastBeacon = (VastBeacon) arrayList.get(0);
        c0049.getClass();
        return vastBeacon.uri;
    }
}
