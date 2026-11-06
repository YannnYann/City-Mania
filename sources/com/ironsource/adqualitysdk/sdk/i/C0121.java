package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.mediationsdk.impressionData.ImpressionData;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʃ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0121 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0990 f1058;

    public C0121(C0990 c0990) {
        this.f1058 = c0990;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0990 c0990 = this.f1058;
        ImpressionData impressionData = (ImpressionData) arrayList.get(0);
        c0990.getClass();
        return impressionData.getAllData();
    }
}
