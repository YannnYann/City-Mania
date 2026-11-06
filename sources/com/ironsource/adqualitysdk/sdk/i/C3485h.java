package com.ironsource.adqualitysdk.sdk.i;

import com.unity3d.ads.IUnityAdsListener;
import com.unity3d.ads.UnityAds;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3485h implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C3495m f268;

    public C3485h(C3495m c3495m) {
        this.f268 = c3495m;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C3495m c3495m = this.f268;
        IUnityAdsListener iUnityAdsListener = (IUnityAdsListener) arrayList.get(0);
        c3495m.getClass();
        UnityAds.addListener(iUnityAdsListener);
        return null;
    }
}
