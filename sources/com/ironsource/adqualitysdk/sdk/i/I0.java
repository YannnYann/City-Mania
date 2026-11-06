package com.ironsource.adqualitysdk.sdk.i;

import com.yandex.mobile.ads.common.ImpressionData;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class I0 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ Q0 f104;

    public I0(Q0 q0) {
        this.f104 = q0;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        Q0 q0 = this.f104;
        ImpressionData impressionData = (ImpressionData) arrayList.get(0);
        q0.getClass();
        return impressionData.getRawData();
    }
}
