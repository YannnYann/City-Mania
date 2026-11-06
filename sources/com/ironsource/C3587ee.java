package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.ironsourceads.rewarded.RewardedAd;
import com.unity3d.ironsourceads.rewarded.RewardedAdLoaderListener;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ee, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3587ee implements U<RewardedAd> {
    private final InterfaceC3643hg a;
    private final RewardedAdLoaderListener b;

    public C3587ee(InterfaceC3643hg threadManager, RewardedAdLoaderListener publisherListener) {
        Intrinsics.checkNotNullParameter(threadManager, "threadManager");
        Intrinsics.checkNotNullParameter(publisherListener, "publisherListener");
        this.a = threadManager;
        this.b = publisherListener;
    }

    @Override // com.ironsource.U
    public void a(final RewardedAd adObject) {
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        this.a.a(new Runnable() { // from class: com.ironsource.ee$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3587ee.a(adObject, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(RewardedAd rewardedAd, C3587ee c3587ee) {
        IronLog.CALLBACK.info("RewardedAdLoaderListener.onRewardedAdLoaded adInfo: " + rewardedAd.getAdInfo());
        c3587ee.b.onRewardedAdLoaded(rewardedAd);
    }

    @Override // com.ironsource.U
    public void a(final IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        IronLog.CALLBACK.info("RewardedAdLoaderListener.onRewardedAdLoadFailed error: " + error);
        this.a.a(new Runnable() { // from class: com.ironsource.ee$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3587ee.a(this.f$0, error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3587ee c3587ee, IronSourceError ironSourceError) {
        c3587ee.b.onRewardedAdLoadFailed(ironSourceError);
    }
}
