###### Class com.google.android.libraries.ads.mobile.sdk.common.BaseAdAssetViewContainer (com.google.android.libraries.ads.mobile.sdk.common.BaseAdAssetViewContainer)
.class public abstract Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/p32;

.field public final b:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->b:Landroid/widget/FrameLayout;

    .line 3
    new-instance v0, Lads_mobile_sdk/p32;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/p32;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->b:Landroid/widget/FrameLayout;

    .line 6
    new-instance p2, Lads_mobile_sdk/p32;

    invoke-direct {p2, p0, p1}, Lads_mobile_sdk/p32;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .registers 4

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->b:Landroid/widget/FrameLayout;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->b:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 5
    iget-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->b:Landroid/widget/FrameLayout;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_10
    return-void
.end method

.method public final getAdChoicesView()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesView;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3011"

    invoke-virtual {v0, v1}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesView;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesView;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCallToActionView()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3002"

    invoke-virtual {v0, v1}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadlineView()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3001"

    invoke-virtual {v0, v1}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getIconView()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3003"

    invoke-virtual {v0, v1}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getNativeAdViewContainer()Lads_mobile_sdk/p32;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    return-object v0
.end method

.method public final getStarRatingView()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3009"

    invoke-virtual {v0, v1}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v1, "view"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "motionEvent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    monitor-enter v0

    .line 296
    :try_start_15
    iget-object v1, v0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_3b

    if-eqz v1, :cond_1f

    monitor-exit v0

    goto :goto_72

    .line 297
    :cond_1f
    :try_start_1f
    iget-object v1, v0, Lads_mobile_sdk/p32;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    if-eqz v1, :cond_71

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->r()Lads_mobile_sdk/j12;

    move-result-object v1

    if-nez v1, :cond_2a

    goto :goto_71

    .line 298
    :cond_2a
    iget-object v2, v0, Lads_mobile_sdk/p32;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    const/4 v3, 0x1

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->y()Z

    move-result v2

    if-ne v2, v3, :cond_3d

    .line 299
    iget-object v2, v0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, p1}, Lads_mobile_sdk/j12;->a(Landroid/widget/FrameLayout;Landroid/view/MotionEvent;)V

    goto :goto_3d

    :catchall_3b
    move-exception p1

    goto :goto_74

    .line 301
    :cond_3d
    :goto_3d
    iget-object v2, v0, Lads_mobile_sdk/p32;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    if-eqz v2, :cond_6f

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->w()Z

    move-result v2

    if-ne v2, v3, :cond_6f

    .line 302
    iget-object v2, v0, Lads_mobile_sdk/p32;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    if-eqz v2, :cond_56

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->o()Lads_mobile_sdk/nr3;

    move-result-object v2

    if-eqz v2, :cond_56

    check-cast v2, Lads_mobile_sdk/tk0;

    invoke-virtual {v2, p1}, Lads_mobile_sdk/tk0;->a(Landroid/view/MotionEvent;)V

    .line 303
    :cond_56
    invoke-virtual {v1}, Lads_mobile_sdk/j12;->e()I

    move-result v2

    if-eqz v2, :cond_6f

    .line 304
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 305
    const-string v3, "<set-?>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iput-object v2, v1, Lads_mobile_sdk/j12;->f:Ljava/lang/ref/WeakReference;

    .line 346
    iget-object v1, v0, Lads_mobile_sdk/p32;->g:Landroid/view/GestureDetector;

    if-eqz v1, :cond_6f

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_6f
    .catchall {:try_start_1f .. :try_end_6f} :catchall_3b

    .line 347
    :cond_6f
    monitor-exit v0

    goto :goto_72

    .line 348
    :cond_71
    :goto_71
    monitor-exit v0

    :goto_72
    const/4 p1, 0x0

    return p1

    .line 356
    :goto_74
    monitor-exit v0

    throw p1
.end method

.method public removeAllViews()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->b:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->b:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2
    :cond_9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final setAdChoicesView(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesView;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3011"

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/p32;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final setCallToActionView(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3002"

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/p32;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final setHeadlineView(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3001"

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/p32;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final setIconView(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3003"

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/p32;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final setStarRatingView(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3009"

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/p32;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
