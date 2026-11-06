###### Class com.google.android.libraries.ads.mobile.sdk.nativead.MediaView (com.google.android.libraries.ads.mobile.sdk.nativead.MediaView)
.class public final Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;
.super Lcom/google/android/gms/ads/nativead/MediaView;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/ImageView$ScaleType;

.field public b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;

.field public c:Lads_mobile_sdk/av1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/nativead/MediaView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/ads/nativead/MediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/m32;)V
    .registers 3

    .line 2
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;->c:Lads_mobile_sdk/av1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_e

    monitor-exit p0

    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;->a:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_d

    invoke-virtual {p1, v0}, Lads_mobile_sdk/m32;->a(Landroid/widget/ImageView$ScaleType;)V

    :cond_d
    return-void

    :catchall_e
    move-exception p1

    .line 4
    monitor-exit p0

    throw p1
.end method

.method public final getImageScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;->a:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final getMediaContent()Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;

    return-object v0
.end method

.method public final setImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;->a:Landroid/widget/ImageView$ScaleType;

    if-eqz p1, :cond_13

    .line 2
    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;->c:Lads_mobile_sdk/av1;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_10

    monitor-exit p0

    if-eqz v0, :cond_13

    .line 3
    check-cast v0, Lads_mobile_sdk/m32;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/m32;->a(Landroid/widget/ImageView$ScaleType;)V

    return-void

    :catchall_10
    move-exception p1

    .line 4
    monitor-exit p0

    throw p1

    :cond_13
    return-void
.end method

.method public final setMediaContent(Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;

    if-eqz p1, :cond_d

    .line 2
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;->a()Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1, p0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->a(Landroid/view/ViewGroup;)V

    :cond_d
    return-void
.end method
