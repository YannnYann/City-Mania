package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ɽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0118 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0990 f1055;

    public C0118(C0990 c0990) {
        this.f1055 = c0990;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0990 c0990 = this.f1055;
        ImpressionDataListener impressionDataListener = (ImpressionDataListener) arrayList.get(0);
        c0990.getClass();
        IronSource.addImpressionDataListener(impressionDataListener);
        return null;
    }
}
