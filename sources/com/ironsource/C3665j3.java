package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.ironsourceads.banner.BannerAdLoaderListener;
import com.unity3d.ironsourceads.banner.BannerAdView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.j3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3665j3 implements U<BannerAdView> {
    private final InterfaceC3643hg a;
    private final BannerAdLoaderListener b;

    public C3665j3(InterfaceC3643hg threadManager, BannerAdLoaderListener publisherListener) {
        Intrinsics.checkNotNullParameter(threadManager, "threadManager");
        Intrinsics.checkNotNullParameter(publisherListener, "publisherListener");
        this.a = threadManager;
        this.b = publisherListener;
    }

    @Override // com.ironsource.U
    public void a(final BannerAdView adObject) {
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        this.a.a(new Runnable() { // from class: com.ironsource.j3$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3665j3.a(adObject, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(BannerAdView bannerAdView, C3665j3 c3665j3) {
        IronLog.CALLBACK.info("BannerAdLoaderListener.onBannerAdLoaded adInfo: " + bannerAdView.getAdInfo());
        c3665j3.b.onBannerAdLoaded(bannerAdView);
    }

    @Override // com.ironsource.U
    public void a(final IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.a(new Runnable() { // from class: com.ironsource.j3$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3665j3.a(error, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(IronSourceError ironSourceError, C3665j3 c3665j3) {
        IronLog.CALLBACK.info("BannerAdLoaderListener.onBannerAdLoadFailed error: " + ironSourceError);
        c3665j3.b.onBannerAdLoadFailed(ironSourceError);
    }
}
