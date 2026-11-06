###### Class ads_mobile_sdk.rh2 (ads_mobile_sdk.rh2)
.class public final Lads_mobile_sdk/rh2;
.super Lads_mobile_sdk/nh2;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lads_mobile_sdk/sh2;

.field public final synthetic c:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

.field public final synthetic d:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/sh2;Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;Landroid/widget/ImageView$ScaleType;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/rh2;->a:Landroid/content/Context;

    iput-object p2, p0, Lads_mobile_sdk/rh2;->b:Lads_mobile_sdk/sh2;

    iput-object p3, p0, Lads_mobile_sdk/rh2;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    iput-object p4, p0, Lads_mobile_sdk/rh2;->d:Landroid/widget/ImageView$ScaleType;

    .line 307
    invoke-direct {p0}, Lads_mobile_sdk/nh2;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/activity/ComponentActivity;Landroid/widget/LinearLayout;)V
    .registers 10

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;-><init>(Landroid/content/Context;)V

    .line 310
    const-string v1, "ad_view_tag"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 313
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    .line 314
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 318
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 320
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 322
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 323
    const-string v1, "layout_tag"

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 324
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 325
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 328
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    .line 329
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 333
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 336
    iget-object v1, p0, Lads_mobile_sdk/rh2;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_49

    return-void

    .line 337
    :cond_49
    sget v2, Lcom/google/android/libraries/ads/mobile/sdk/R$string;->native_headline:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    iget-object v4, p0, Lads_mobile_sdk/rh2;->b:Lads_mobile_sdk/sh2;

    const-string v5, "headline_header_tag"

    invoke-static {v4, p1, v2, v5}, Lads_mobile_sdk/sh2;->a(Lads_mobile_sdk/sh2;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 340
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 344
    iget-object v2, p0, Lads_mobile_sdk/rh2;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v2

    iget-object v2, v2, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    const-string v4, "headline"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ""

    if-nez v2, :cond_74

    move-object v2, v4

    .line 345
    :cond_74
    iget-object v5, p0, Lads_mobile_sdk/rh2;->b:Lads_mobile_sdk/sh2;

    const-string v6, "headline_tag"

    invoke-static {v5, p1, v2, v6}, Lads_mobile_sdk/sh2;->b(Lads_mobile_sdk/sh2;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 346
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->setHeadlineView(Landroid/view/View;)V

    .line 347
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 349
    sget v2, Lcom/google/android/libraries/ads/mobile/sdk/R$string;->native_body:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    iget-object v5, p0, Lads_mobile_sdk/rh2;->b:Lads_mobile_sdk/sh2;

    const-string v6, "body_header_tag"

    invoke-static {v5, p1, v2, v6}, Lads_mobile_sdk/sh2;->a(Lads_mobile_sdk/sh2;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 352
    iget-object v2, p0, Lads_mobile_sdk/rh2;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v2

    iget-object v2, v2, Lads_mobile_sdk/s02;->d:Ljava/util/Map;

    const-string v5, "body"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_a9

    goto :goto_aa

    :cond_a9
    move-object v4, v2

    .line 353
    :goto_aa
    iget-object v2, p0, Lads_mobile_sdk/rh2;->b:Lads_mobile_sdk/sh2;

    const-string v5, "body_tag"

    invoke-static {v2, p1, v4, v5}, Lads_mobile_sdk/sh2;->b(Lads_mobile_sdk/sh2;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 354
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    .line 355
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 357
    sget v2, Lcom/google/android/libraries/ads/mobile/sdk/R$string;->native_media_view:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Lads_mobile_sdk/rh2;->b:Lads_mobile_sdk/sh2;

    const-string v3, "media_view_header_tag"

    invoke-static {v2, p1, v1, v3}, Lads_mobile_sdk/sh2;->a(Lads_mobile_sdk/sh2;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 360
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 363
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;

    invoke-direct {v1, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;-><init>(Landroid/content/Context;)V

    .line 364
    const-string p1, "media_view_tag"

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 365
    iget-object p1, p0, Lads_mobile_sdk/rh2;->d:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 366
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 367
    new-instance p1, Lads_mobile_sdk/l12;

    iget-object p2, p0, Lads_mobile_sdk/rh2;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-direct {p1, p2}, Lads_mobile_sdk/l12;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;->registerNativeAd(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;)V

    return-void
.end method

.method public final onDestroy()V
    .registers 2

    .line 365
    iget-object v0, p0, Lads_mobile_sdk/rh2;->c:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->destroy()V

    return-void
.end method
