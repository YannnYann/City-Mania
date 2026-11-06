package com.ironsource.adqualitysdk.sdk.i;

import com.unity3d.ads.core.data.model.AdObject;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᐝ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0455 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C3495m f2206;

    public C0455(C3495m c3495m) {
        this.f2206 = c3495m;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C3495m c3495m = this.f2206;
        AdObject adObject = (AdObject) arrayList.get(0);
        c3495m.getClass();
        return adObject.getLoadOptions();
    }
}
