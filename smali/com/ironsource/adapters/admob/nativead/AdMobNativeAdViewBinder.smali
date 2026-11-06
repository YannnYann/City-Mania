###### Class com.ironsource.adapters.admob.nativead.AdMobNativeAdViewBinder (com.ironsource.adapters.admob.nativead.AdMobNativeAdViewBinder)
.class public Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;
.super Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;
.source "AdMobNativeAdViewBinder.java"


# instance fields
.field private final mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

.field private mNativeAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    return-void
.end method


# virtual methods
.method public getNetworkNativeAdView()Landroid/view/ViewGroup;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->mNativeAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    return-object v0
.end method

.method public setNativeAdView(Landroid/view/View;)V
    .registers 6

    if-nez p1, :cond_a

    .line 26
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "nativeAdView is null"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_a
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->mNativeAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    .line 31
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;->getNativeAdViewHolder()Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->mNativeAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->getTitleView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->setHeadlineView(Landroid/view/View;)V

    .line 34
    iget-object v1, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->mNativeAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->getAdvertiserView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;->setAdvertiserView(Landroid/view/View;)V

    .line 35
    iget-object v1, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->mNativeAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->getIconView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->setIconView(Landroid/view/View;)V

    .line 36
    iget-object v1, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->mNativeAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->getBodyView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    .line 38
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->getMediaView()Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayMediaView;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 40
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_51

    :cond_50
    const/4 v2, 0x0

    .line 43
    :goto_51
    iget-object v1, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->mNativeAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->getCallToActionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->setCallToActionView(Landroid/view/View;)V

    .line 45
    iget-object v0, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->mNativeAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    iget-object p1, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->mNativeAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    iget-object v0, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->mNativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;->registerNativeAd(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;)V

    return-void
.end method
