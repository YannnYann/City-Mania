package com.ironsource.adqualitysdk.sdk.i;

import com.yandex.mobile.ads.video.playback.model.VideoAd;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class F0 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ Q0 f98;

    public F0(Q0 q0) {
        this.f98 = q0;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        Q0 q0 = this.f98;
        VideoAd videoAd = (VideoAd) arrayList.get(0);
        q0.getClass();
        return videoAd.getInfo();
    }
}
