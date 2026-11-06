package com.facebook.ads.redexgen.X;

import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.api.MediaViewVideoRendererApi;
import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Gj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1618Gj implements InterfaceC2932nd {
    public final /* synthetic */ MediaViewVideoRendererApi A00;
    public final /* synthetic */ C1614Gf A01;

    public C1618Gj(C1614Gf c1614Gf, MediaViewVideoRendererApi mediaViewVideoRendererApi) {
        this.A01 = c1614Gf;
        this.A00 = mediaViewVideoRendererApi;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2932nd
    public final void AKm() {
        this.A01.A00 = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.A00.setVolume(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2932nd
    public final void AKr(NativeAd nativeAd) {
        this.A01.A02 = nativeAd.getNativeOptions();
        this.A01.A0G();
        this.A01.A0H();
        this.A01.A0Q(GT.A0L(nativeAd.getInternalNativeAd()), null);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2932nd
    public final void ALs() {
        this.A01.A0J();
    }
}
