package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import net.pubnative.lite.sdk.vpaid.VideoAdListener;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ị, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0745 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0108 f3059;

    public C0745(C0108 c0108) {
        this.f3059 = c0108;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0108 c0108 = this.f3059;
        VideoAdListener videoAdListener = (VideoAdListener) arrayList.get(0);
        c0108.getClass();
        return new C0110(c0108, videoAdListener, c0875);
    }
}
