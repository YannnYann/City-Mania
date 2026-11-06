package com.ironsource.adqualitysdk.sdk.i;

import com.smaato.sdk.banner.widget.BannerView;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ꭵ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0444 implements InterfaceC0209 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0049 f2193;

    public C0444(C0049 c0049) {
        this.f2193 = c0049;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0209
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1003(ArrayList arrayList, C0875 c0875) {
        C0049 c0049 = this.f2193;
        BannerView bannerView = (BannerView) arrayList.get(0);
        c0049.getClass();
        return bannerView.getCreativeId();
    }
}
