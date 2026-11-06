###### Class com.ironsource.adapters.admob.banner.AdMobNativeBannerAdListener (com.ironsource.adapters.admob.banner.AdMobNativeBannerAdListener)
.class public Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;
.super Ljava/lang/Object;
.source "AdMobNativeBannerAdListener.java"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;
.implements Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;


# instance fields
.field private final mAdUnitId:Ljava/lang/String;

.field private final mBannerAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mBannerSize:Lcom/ironsource/mediationsdk/ISBannerSize;

.field private final mListener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

.field private final mTemplateType:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAdUnitId(Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mAdUnitId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBannerAdapter(Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mBannerAdapter:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBannerSize(Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;)Lcom/ironsource/mediationsdk/ISBannerSize;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mBannerSize:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;)Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTemplateType(Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;)Lcom/ironsource/adapters/admob/banner/NativeTemplateType;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mTemplateType:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    return-object p0
.end method

.method public constructor <init>(Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;Ljava/lang/String;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/adapters/admob/banner/NativeTemplateType;)V
    .registers 7

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mBannerAdapter:Ljava/lang/ref/WeakReference;

    .line 35
    iput-object p2, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    .line 36
    iput-object p3, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mAdUnitId:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mBannerSize:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 38
    iput-object p5, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mTemplateType:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 4

    .line 119
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adUnitId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-nez v0, :cond_24

    .line 122
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "listener is null"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 126
    :cond_24
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdClicked()V

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .registers 4

    .line 145
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adUnitId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-nez v0, :cond_24

    .line 148
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "listener is null"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 152
    :cond_24
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdScreenDismissed()V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V
    .registers 5

    .line 87
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adUnitId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-nez v1, :cond_24

    .line 90
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "listener is null"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 94
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;->getCode()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;->getCode()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object p1

    invoke-static {p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->isNoFillError(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 97
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x25e

    invoke-direct {p1, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    goto :goto_5e

    .line 98
    :cond_57
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x1fe

    invoke-direct {p1, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 100
    :goto_5e
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public bridge synthetic onAdFailedToShowFullScreenContent(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdEventCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;)V

    return-void
.end method

.method public onAdImpression()V
    .registers 4

    .line 106
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adUnitId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-nez v0, :cond_24

    .line 109
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "listener is null"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 113
    :cond_24
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdShown()V

    return-void
.end method

.method public bridge synthetic onAdLoadingCompleted()V
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;->onAdLoadingCompleted()V

    return-void
.end method

.method public bridge synthetic onAdPaid(Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdEventCallback;->onAdPaid(Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;)V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .registers 4

    .line 132
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adUnitId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mListener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-nez v0, :cond_24

    .line 135
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "listener is null"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 139
    :cond_24
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdScreenPresented()V

    return-void
.end method

.method public bridge synthetic onAdSwipeGestureClicked()V
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;->onAdSwipeGestureClicked()V

    return-void
.end method

.method public bridge synthetic onBannerAdLoaded(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;->onBannerAdLoaded(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;)V

    return-void
.end method

.method public bridge synthetic onCustomMuteThisAdReported()V
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;->onCustomMuteThisAdReported()V

    return-void
.end method

.method public bridge synthetic onCustomNativeAdLoaded(Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;->onCustomNativeAdLoaded(Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;)V

    return-void
.end method

.method public onNativeAdLoaded(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V
    .registers 5

    .line 43
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adUnitId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;-><init>(Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.ironsource.adapters.admob.banner.AdMobNativeBannerAdListener.AnonymousClass1 (com.ironsource.adapters.admob.banner.AdMobNativeBannerAdListener$1)
.class Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;
.super Ljava/lang/Object;
.source "AdMobNativeBannerAdListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->onNativeAdLoaded(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;

.field final synthetic val$nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;


# direct methods
.method public constructor <init>(Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;->this$0:Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;->val$nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 48
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;->this$0:Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->-$$Nest$fgetmListener(Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;)Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    move-result-object v0

    if-nez v0, :cond_10

    .line 49
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "listener is null"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 53
    :cond_10
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;->this$0:Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->-$$Nest$fgetmBannerAdapter(Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;->this$0:Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->-$$Nest$fgetmBannerAdapter(Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_26

    goto/16 :goto_cb

    .line 59
    :cond_26
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;->val$nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;->this$0:Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;)V

    .line 61
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewHandler;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;->this$0:Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;

    invoke-static {v2}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->-$$Nest$fgetmBannerSize(Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;)Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;->this$0:Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;

    invoke-static {v3}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->-$$Nest$fgetmTemplateType(Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;)Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewHandler;-><init>(Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/adapters/admob/banner/NativeTemplateType;Landroid/content/Context;)V

    .line 63
    new-instance v0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;

    invoke-direct {v0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;-><init>()V

    .line 64
    iget-object v2, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;->val$nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-virtual {v1}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewHandler;->getNativeAdView()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;->this$0:Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;

    invoke-static {v4}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->-$$Nest$fgetmTemplateType(Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;)Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->bindView(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;Lcom/ironsource/adapters/admob/banner/NativeTemplateType;)V

    .line 67
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;->this$0:Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->-$$Nest$fgetmBannerAdapter(Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;

    iget-object v0, v0, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;->mAdUnitIdToNativeBannerAd:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;->this$0:Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;

    invoke-static {v2}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->-$$Nest$fgetmAdUnitId(Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;->val$nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;->val$nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;->getResponseInfo()Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 70
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;->getResponseId()Ljava/lang/String;

    move-result-object v0

    goto :goto_81

    :cond_80
    const/4 v0, 0x0

    .line 72
    :goto_81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 73
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;->this$0:Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->-$$Nest$fgetmListener(Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;)Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewHandler;->getNativeAdView()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewHandler;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoaded(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void

    .line 75
    :cond_99
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 76
    const-string v3, "creativeId"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "creativeId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener$1;->this$0:Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;

    invoke-static {v0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;->-$$Nest$fgetmListener(Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerAdListener;)Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewHandler;->getNativeAdView()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewHandler;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-interface {v0, v3, v1, v2}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoaded(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/Map;)V

    return-void

    .line 54
    :cond_cb
    :goto_cb
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "adapter is null"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method
