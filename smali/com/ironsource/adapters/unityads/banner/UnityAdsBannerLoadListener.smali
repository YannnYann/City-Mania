###### Class com.ironsource.adapters.unityads.banner.UnityAdsBannerLoadListener (com.ironsource.adapters.unityads.banner.UnityAdsBannerLoadListener)
.class public final Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerLoadListener;
.super Ljava/lang/Object;
.source "UnityAdsBannerLoadListener.kt"

# interfaces
.implements Lcom/unity3d/ads/LoadListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity3d/ads/LoadListener<",
        "Lcom/unity3d/ads/BannerAd;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private final listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;Landroid/widget/FrameLayout$LayoutParams;Ljava/lang/ref/WeakReference;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerAdapter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerLoadListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    .line 18
    iput-object p2, p0, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerLoadListener;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 19
    iput-object p3, p0, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerLoadListener;->adapter:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/unity3d/ads/BannerAd;Lcom/unity3d/ads/UnityAdsError;)V
    .registers 7

    if-eqz p1, :cond_20

    .line 24
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 25
    iget-object p2, p0, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerLoadListener;->adapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerAdapter;

    if-eqz p2, :cond_14

    invoke-virtual {p2, p1}, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerAdapter;->setBannerAdView$unityadsadapter_release(Lcom/unity3d/ads/BannerAd;)V

    .line 26
    :cond_14
    iget-object p2, p0, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerLoadListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-virtual {p1}, Lcom/unity3d/ads/BannerAd;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerLoadListener;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-interface {p2, p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdViewListener;->onAdLoadSuccess(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void

    :cond_20
    if-eqz p2, :cond_27

    .line 28
    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAdsError;->getCode()I

    move-result p1

    goto :goto_29

    :cond_27
    const/16 p1, 0x3e8

    :goto_29
    if-eqz p2, :cond_30

    .line 29
    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAdsError;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    if-nez v0, :cond_35

    const-string v0, ""

    .line 30
    :cond_35
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to load, errorCode = %s, errorMessage = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerLoadListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    sget-object v2, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->Companion:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;

    invoke-virtual {v2, p2}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;->getLoadErrorType(Lcom/unity3d/ads/UnityAdsError;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    move-result-object p2

    invoke-interface {v1, p2, p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;Lcom/unity3d/ads/UnityAdsError;)V
    .registers 3

    .line 15
    check-cast p1, Lcom/unity3d/ads/BannerAd;

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerLoadListener;->onAdLoaded(Lcom/unity3d/ads/BannerAd;Lcom/unity3d/ads/UnityAdsError;)V

    return-void
.end method
