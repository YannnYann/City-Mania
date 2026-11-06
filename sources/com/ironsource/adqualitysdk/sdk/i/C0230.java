package com.ironsource.adqualitysdk.sdk.i;

import com.mbridge.msdk.out.BannerAdListener;
import com.mbridge.msdk.out.MBBannerView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.с, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0230 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0211 f1531;

    public C0230(C0211 c0211) {
        this.f1531 = c0211;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0211 c0211 = this.f1531;
        MBBannerView mBBannerView = (MBBannerView) arrayList.get(0);
        BannerAdListener bannerAdListener = (BannerAdListener) arrayList.get(1);
        c0211.getClass();
        mBBannerView.setBannerAdListener(bannerAdListener);
        return null;
    }
}
