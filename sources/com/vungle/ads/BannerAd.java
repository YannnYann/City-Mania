package com.vungle.ads;

import android.content.Context;
import android.os.Handler;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.h;
import com.vungle.ads.internal.i0;
import com.vungle.ads.internal.j0;
import com.vungle.ads.internal.j2;
import com.vungle.ads.internal.model.j3;
import com.vungle.ads.internal.p1;
import com.vungle.ads.internal.presenter.b;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.r;
import com.vungle.ads.internal.signals.j;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import com.vungle.ads.internal.util.z;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class BannerAd extends BaseAd {
    public final VungleAdSize t;
    public BannerView u;
    public final i0 v;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BannerAdSize.values().length];
            iArr[BannerAdSize.BANNER.ordinal()] = 1;
            iArr[BannerAdSize.BANNER_SHORT.ordinal()] = 2;
            iArr[BannerAdSize.BANNER_LEADERBOARD.ordinal()] = 3;
            iArr[BannerAdSize.VUNGLE_MREC.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public BannerAd(Context context, String str, VungleAdSize vungleAdSize, AdConfig adConfig) throws Throwable {
        super(context, str, adConfig);
        this.t = vungleAdSize;
        AnalyticsClient.INSTANCE.a(new j2(Sdk.SDKMetric.SDKMetricType.DEPRECATED_API_USED), getLogEntry$vungle_ads_release(), "BannerAd is deprecated");
        r adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.checkNotNull(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.BannerAdInternal");
        this.v = ((j0) adInternal$vungle_ads_release).a(new b() { // from class: com.vungle.ads.BannerAd$adPlayCallback$1
            @Override // com.vungle.ads.internal.presenter.b
            public void onAdClick(String str2) throws Throwable {
                Handler handler = z.a;
                final BannerAd bannerAd = this.a;
                z.a(new Function0<Unit>() { // from class: com.vungle.ads.BannerAd$adPlayCallback$1$onAdClick$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BaseAdListener adListener = bannerAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdClicked(bannerAd);
                        }
                    }
                });
                this.a.getDisplayToClickMetric$vungle_ads_release().d();
                AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                p1 displayToClickMetric$vungle_ads_release = this.a.getDisplayToClickMetric$vungle_ads_release();
                analyticsClient.a(displayToClickMetric$vungle_ads_release, this.a.getLogEntry$vungle_ads_release(), displayToClickMetric$vungle_ads_release.b);
            }

            @Override // com.vungle.ads.internal.presenter.b
            public void onAdEnd(String str2) {
                Handler handler = z.a;
                final BannerAd bannerAd = this.a;
                z.a(new Function0<Unit>() { // from class: com.vungle.ads.BannerAd$adPlayCallback$1$onAdEnd$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BaseAdListener adListener = bannerAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdEnd(bannerAd);
                        }
                    }
                });
            }

            @Override // com.vungle.ads.internal.presenter.b
            public void onAdImpression(String str2) throws Throwable {
                Handler handler = z.a;
                final BannerAd bannerAd = this.a;
                z.a(new Function0<Unit>() { // from class: com.vungle.ads.BannerAd$adPlayCallback$1$onAdImpression$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BaseAdListener adListener = bannerAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdImpression(bannerAd);
                        }
                    }
                });
                this.a.getPresentToDisplayMetric$vungle_ads_release().d();
                AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                p1 presentToDisplayMetric$vungle_ads_release = this.a.getPresentToDisplayMetric$vungle_ads_release();
                analyticsClient.a(presentToDisplayMetric$vungle_ads_release, this.a.getLogEntry$vungle_ads_release(), presentToDisplayMetric$vungle_ads_release.b);
                this.a.getDisplayToClickMetric$vungle_ads_release().e();
            }

            @Override // com.vungle.ads.internal.presenter.b
            public void onAdLeftApplication(String str2) {
                Handler handler = z.a;
                final BannerAd bannerAd = this.a;
                z.a(new Function0<Unit>() { // from class: com.vungle.ads.BannerAd$adPlayCallback$1$onAdLeftApplication$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BaseAdListener adListener = bannerAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdLeftApplication(bannerAd);
                        }
                    }
                });
            }

            @Override // com.vungle.ads.internal.presenter.b
            public void onAdRewarded(String str2) {
            }

            @Override // com.vungle.ads.internal.presenter.b
            public void onAdStart(String str2) throws Throwable {
                j signalManager$vungle_ads_release = this.a.getSignalManager$vungle_ads_release();
                synchronized (signalManager$vungle_ads_release) {
                    signalManager$vungle_ads_release.h.f++;
                }
                this.a.getAdInternal$vungle_ads_release().l.d();
                AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                p1 p1Var = this.a.getAdInternal$vungle_ads_release().l;
                analyticsClient.a(p1Var, this.a.getLogEntry$vungle_ads_release(), p1Var.b);
                this.a.getPresentToDisplayMetric$vungle_ads_release().e();
                Handler handler = z.a;
                final BannerAd bannerAd = this.a;
                z.a(new Function0<Unit>() { // from class: com.vungle.ads.BannerAd$adPlayCallback$1$onAdStart$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BaseAdListener adListener = bannerAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdStart(bannerAd);
                        }
                    }
                });
            }

            @Override // com.vungle.ads.internal.presenter.b
            public void onFailure(final VungleError error) throws Throwable {
                Intrinsics.checkNotNullParameter(error, "error");
                this.a.getShowToFailMetric$vungle_ads_release().d();
                AnalyticsClient.INSTANCE.a(this.a.getShowToFailMetric$vungle_ads_release(), this.a.getLogEntry$vungle_ads_release(), String.valueOf(error.getCode()));
                Handler handler = z.a;
                final BannerAd bannerAd = this.a;
                z.a(new Function0<Unit>() { // from class: com.vungle.ads.BannerAd$adPlayCallback$1$onFailure$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        BaseAdListener adListener = bannerAd.getAdListener();
                        if (adListener != null) {
                            adListener.onAdFailedToPlay(bannerAd, error);
                        }
                    }
                });
            }
        });
    }

    public final void finishAd() {
        Handler handler = z.a;
        z.a(new Function0<Unit>() { // from class: com.vungle.ads.BannerAd.finishAd.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                BannerView bannerView = BannerAd.this.u;
                if (bannerView != null) {
                    bannerView.finishAdInternal(true);
                }
            }
        });
    }

    public final VungleAdSize getAdViewSize() {
        r adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.checkNotNull(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.BannerAdInternal");
        return ((j0) adInternal$vungle_ads_release).k();
    }

    public final BannerView getBannerView() throws Throwable {
        j3 j3Var;
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        AnalyticsClient.a(analyticsClient, new j2(Sdk.SDKMetric.SDKMetricType.PLAY_AD_API), getLogEntry$vungle_ads_release(), 4);
        BannerView bannerView = this.u;
        if (bannerView != null) {
            return bannerView;
        }
        getAdInternal$vungle_ads_release().k.e();
        final VungleError vungleErrorA = getAdInternal$vungle_ads_release().a(true);
        if (vungleErrorA != null) {
            if (getAdInternal$vungle_ads_release().a(vungleErrorA.getCode())) {
                getAdInternal$vungle_ads_release().a(h.g);
            }
            Handler handler = z.a;
            z.a(new Function0<Unit>() { // from class: com.vungle.ads.BannerAd.getBannerView.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    BaseAdListener adListener = BannerAd.this.getAdListener();
                    if (adListener != null) {
                        adListener.onAdFailedToPlay(BannerAd.this, vungleErrorA);
                    }
                }
            });
            return null;
        }
        com.vungle.ads.internal.model.i0 i0Var = getAdInternal$vungle_ads_release().c;
        if (i0Var == null || (j3Var = getAdInternal$vungle_ads_release().d) == null) {
            return null;
        }
        getAdInternal$vungle_ads_release().a();
        try {
            try {
                this.u = new BannerView(getContext(), j3Var, i0Var, getAdViewSize(), getAdConfig(), this.v);
                getResponseToShowMetric$vungle_ads_release().d();
                p1 responseToShowMetric$vungle_ads_release = getResponseToShowMetric$vungle_ads_release();
                analyticsClient.a(responseToShowMetric$vungle_ads_release, getLogEntry$vungle_ads_release(), responseToShowMetric$vungle_ads_release.b);
                getAdInternal$vungle_ads_release().k.d();
                p1 p1Var = getAdInternal$vungle_ads_release().k;
                analyticsClient.a(p1Var, getLogEntry$vungle_ads_release(), p1Var.b);
                getAdInternal$vungle_ads_release().l.e();
                return this.u;
            } catch (InstantiationException e) {
                boolean z = v.a;
                u.a("BannerAd", "Can not create banner view: " + e.getMessage(), e);
                getResponseToShowMetric$vungle_ads_release().d();
                AnalyticsClient analyticsClient2 = AnalyticsClient.INSTANCE;
                p1 responseToShowMetric$vungle_ads_release2 = getResponseToShowMetric$vungle_ads_release();
                analyticsClient2.a(responseToShowMetric$vungle_ads_release2, getLogEntry$vungle_ads_release(), responseToShowMetric$vungle_ads_release2.b);
                return null;
            }
        } catch (Throwable th) {
            getResponseToShowMetric$vungle_ads_release().d();
            AnalyticsClient analyticsClient3 = AnalyticsClient.INSTANCE;
            p1 responseToShowMetric$vungle_ads_release3 = getResponseToShowMetric$vungle_ads_release();
            analyticsClient3.a(responseToShowMetric$vungle_ads_release3, getLogEntry$vungle_ads_release(), responseToShowMetric$vungle_ads_release3.b);
            throw th;
        }
    }

    @Override // com.vungle.ads.BaseAd
    public j0 constructAdInternal$vungle_ads_release(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new j0(context, this.t);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BannerAd(Context context, String placementId, VungleAdSize adSize) {
        this(context, placementId, adSize, new AdConfig());
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public BannerAd(Context context, String placementId, BannerAdSize adSize) {
        VungleAdSize vungleAdSize;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        VungleAdSize.Companion companion = VungleAdSize.Companion;
        int i = WhenMappings.$EnumSwitchMapping$0[adSize.ordinal()];
        if (i == 1) {
            vungleAdSize = VungleAdSize.BANNER;
        } else if (i == 2) {
            vungleAdSize = VungleAdSize.BANNER_SHORT;
        } else if (i == 3) {
            vungleAdSize = VungleAdSize.BANNER_LEADERBOARD;
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            vungleAdSize = VungleAdSize.MREC;
        }
        this(context, placementId, vungleAdSize, new AdConfig());
    }
}
