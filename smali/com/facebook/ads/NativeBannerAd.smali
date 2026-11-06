###### Class com.facebook.ads.NativeBannerAd (com.facebook.ads.NativeBannerAd)
.class public Lcom/facebook/ads/NativeBannerAd;
.super Lcom/facebook/ads/NativeAdBase;
.source "NativeBannerAd.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final mNativeBannerAdApi:Lcom/facebook/ads/internal/api/NativeBannerAdApi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V
    .registers 3

    .line 66
    invoke-direct {p0, p2}, Lcom/facebook/ads/NativeAdBase;-><init>(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)V

    .line 68
    invoke-static {p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {p1, p0, p2}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createNativeBannerAdApi(Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/internal/api/NativeBannerAdApi;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/NativeBannerAd;->mNativeBannerAdApi:Lcom/facebook/ads/internal/api/NativeBannerAdApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/NativeAdBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/ads/NativeAdBase;->mNativeAdBaseApi:Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    invoke-interface {p1, p0, p2}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createNativeBannerAdApi(Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/internal/api/NativeBannerAdApi;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/NativeBannerAd;->mNativeBannerAdApi:Lcom/facebook/ads/internal/api/NativeBannerAdApi;

    return-void
.end method


# virtual methods
.method public getPreferredAdOptionsViewPosition()Lcom/facebook/ads/NativeAdOptionsViewPosition;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/facebook/ads/NativeBannerAd;->mNativeBannerAdApi:Lcom/facebook/ads/internal/api/NativeBannerAdApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeBannerAdApi;->getPreferredAdOptionsViewPosition()Lcom/facebook/ads/NativeAdOptionsViewPosition;

    move-result-object v0

    return-object v0
.end method

.method public registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;)V
    .registers 4

    .line 139
    invoke-static {}, Lcom/facebook/ads/internal/util/common/Preconditions;->checkIsOnMainThread()V

    .line 140
    iget-object v0, p0, Lcom/facebook/ads/NativeBannerAd;->mNativeBannerAdApi:Lcom/facebook/ads/internal/api/NativeBannerAdApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/NativeBannerAdApi;->registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/ImageView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-static {}, Lcom/facebook/ads/internal/util/common/Preconditions;->checkIsOnMainThread()V

    .line 156
    iget-object v0, p0, Lcom/facebook/ads/NativeBannerAd;->mNativeBannerAdApi:Lcom/facebook/ads/internal/api/NativeBannerAdApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/NativeBannerAdApi;->registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;)V
    .registers 4

    .line 109
    invoke-static {}, Lcom/facebook/ads/internal/util/common/Preconditions;->checkIsOnMainThread()V

    .line 110
    iget-object v0, p0, Lcom/facebook/ads/NativeBannerAd;->mNativeBannerAdApi:Lcom/facebook/ads/internal/api/NativeBannerAdApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/NativeBannerAdApi;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/facebook/ads/MediaView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 125
    invoke-static {}, Lcom/facebook/ads/internal/util/common/Preconditions;->checkIsOnMainThread()V

    .line 126
    iget-object v0, p0, Lcom/facebook/ads/NativeBannerAd;->mNativeBannerAdApi:Lcom/facebook/ads/internal/api/NativeBannerAdApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/NativeBannerAdApi;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    return-void
.end method

.method public setPreferredAdOptionsViewPosition(Lcom/facebook/ads/NativeAdOptionsViewPosition;)V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/facebook/ads/NativeBannerAd;->mNativeBannerAdApi:Lcom/facebook/ads/internal/api/NativeBannerAdApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/NativeBannerAdApi;->setPreferredAdOptionsViewPosition(Lcom/facebook/ads/NativeAdOptionsViewPosition;)V

    return-void
.end method
