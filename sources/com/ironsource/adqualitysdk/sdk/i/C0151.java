package com.ironsource.adqualitysdk.sdk.i;

import com.unity3d.ads.core.data.model.AdObject;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʼ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0151 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C3495m f1110;

    public C0151(C3495m c3495m) {
        this.f1110 = c3495m;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C3495m c3495m = this.f1110;
        AdObject adObject = (AdObject) arrayList.get(0);
        c3495m.getClass();
        return adObject.getOpportunityId();
    }
}
