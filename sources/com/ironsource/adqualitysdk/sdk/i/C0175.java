package com.ironsource.adqualitysdk.sdk.i;

import com.unity3d.services.banners.BannerView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ͺ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0175 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C3495m f1182;

    public C0175(C3495m c3495m) {
        this.f1182 = c3495m;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C3495m c3495m = this.f1182;
        BannerView bannerView = (BannerView) arrayList.get(0);
        c3495m.getClass();
        return bannerView.getListener();
    }
}
