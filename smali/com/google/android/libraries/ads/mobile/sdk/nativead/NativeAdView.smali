###### Class com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdView (com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdView)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;
.super Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;)Lads_mobile_sdk/p32;
    .registers 1

    .line 26
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->getNativeAdViewContainer()Lads_mobile_sdk/p32;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAdvertiserView()Landroid/view/View;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->getNativeAdViewContainer()Lads_mobile_sdk/p32;

    move-result-object v0

    const-string v1, "3005"

    invoke-virtual {v0, v1}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getBodyView()Landroid/view/View;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->getNativeAdViewContainer()Lads_mobile_sdk/p32;

    move-result-object v0

    const-string v1, "3004"

    invoke-virtual {v0, v1}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getCreativeSummaryView()Landroid/view/View;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->getNativeAdViewContainer()Lads_mobile_sdk/p32;

    move-result-object v0

    const-string v1, "3014"

    invoke-virtual {v0, v1}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getMediaView()Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->getNativeAdViewContainer()Lads_mobile_sdk/p32;

    move-result-object v0

    const-string v1, "3010"

    invoke-virtual {v0, v1}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPriceView()Landroid/view/View;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->getNativeAdViewContainer()Lads_mobile_sdk/p32;

    move-result-object v0

    const-string v1, "3007"

    invoke-virtual {v0, v1}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getStoreView()Landroid/view/View;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->getNativeAdViewContainer()Lads_mobile_sdk/p32;

    move-result-object v0

    const-string v1, "3006"

    invoke-virtual {v0, v1}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final registerNativeAd(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;)V
    .registers 5

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->getNativeAdViewContainer()Lads_mobile_sdk/p32;

    move-result-object v0

    const-string v1, "3010"

    invoke-virtual {v0, p2, v1}, Lads_mobile_sdk/p32;->a(Landroid/view/View;Ljava/lang/String;)V

    if-nez p2, :cond_11

    goto :goto_19

    .line 3
    :cond_11
    new-instance v0, Lads_mobile_sdk/m32;

    invoke-direct {v0, p0}, Lads_mobile_sdk/m32;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;)V

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;->a(Lads_mobile_sdk/m32;)V

    .line 10
    :goto_19
    instance-of p2, p1, Lads_mobile_sdk/l12;

    if-nez p2, :cond_24

    .line 11
    const-string p1, "Internal Error: Cannot display Native Ad"

    const/4 p2, 0x0

    .line 12
    invoke-static {p1, p2}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 13
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->getNativeAdViewContainer()Lads_mobile_sdk/p32;

    move-result-object p2

    check-cast p1, Lads_mobile_sdk/l12;

    .line 14
    iget-object p1, p1, Lads_mobile_sdk/l12;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 15
    invoke-virtual {p2, p1}, Lads_mobile_sdk/p32;->a(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V

    return-void
.end method

.method public final setAdvertiserView(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->getNativeAdViewContainer()Lads_mobile_sdk/p32;

    move-result-object v0

    const-string v1, "3005"

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/p32;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final setBodyView(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->getNativeAdViewContainer()Lads_mobile_sdk/p32;

    move-result-object v0

    const-string v1, "3004"

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/p32;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final setCreativeSummaryView(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->getNativeAdViewContainer()Lads_mobile_sdk/p32;

    move-result-object v0

    const-string v1, "3014"

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/p32;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final setPriceView(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->getNativeAdViewContainer()Lads_mobile_sdk/p32;

    move-result-object v0

    const-string v1, "3007"

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/p32;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final setStoreView(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->getNativeAdViewContainer()Lads_mobile_sdk/p32;

    move-result-object v0

    const-string v1, "3006"

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/p32;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
