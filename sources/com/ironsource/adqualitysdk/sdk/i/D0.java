package com.ironsource.adqualitysdk.sdk.i;

import com.yandex.mobile.ads.video.playback.model.MediaFile;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class D0 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ Q0 f94;

    public D0(Q0 q0) {
        this.f94 = q0;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        Q0 q0 = this.f94;
        MediaFile mediaFile = (MediaFile) arrayList.get(0);
        q0.getClass();
        return mediaFile.getUrl();
    }
}
