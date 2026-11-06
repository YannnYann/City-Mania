###### Class com.vungle.ads.NativeAd (com.vungle.ads.NativeAd)
.class public final Lcom/vungle/ads/NativeAd;
.super Lcom/vungle/ads/BaseAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/NativeAd$AdOptionsPosition;,
        Lcom/vungle/ads/NativeAd$Companion;
    }
.end annotation


# static fields
.field public static final BOTTOM_LEFT:I = 0x2

.field public static final BOTTOM_RIGHT:I = 0x3

.field public static final Companion:Lcom/vungle/ads/NativeAd$Companion;

.field public static final TOP_LEFT:I = 0x0

.field public static final TOP_RIGHT:I = 0x1


# instance fields
.field public A:I

.field public final B:Lcom/vungle/ads/internal/k2;

.field public final C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final D:Lcom/vungle/ads/NativeAd$adPlayCallback$1;

.field public t:Landroid/widget/ImageView;

.field public u:Lcom/vungle/ads/internal/ui/view/MediaView;

.field public v:Landroid/widget/FrameLayout;

.field public w:Ljava/util/Collection;

.field public x:Lcom/vungle/ads/internal/ui/view/k;

.field public y:I

.field public final z:Lcom/vungle/ads/internal/o1;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/vungle/ads/NativeAd$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/NativeAd$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/NativeAd;->Companion:Lcom/vungle/ads/NativeAd$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/vungle/ads/AdConfig;

    invoke-direct {v0}, Lcom/vungle/ads/AdConfig;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/AdConfig;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/AdConfig;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/BaseAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/AdConfig;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/vungle/ads/NativeAd;->y:I

    .line 3
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.vungle.ads.internal.NativeAdInternal"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/vungle/ads/internal/o1;

    iput-object p1, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    .line 7
    new-instance p1, Lcom/vungle/ads/internal/k2;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->NATIVE_AD_DISPLAY_DURATION:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {p1, p2}, Lcom/vungle/ads/internal/k2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object p1, p0, Lcom/vungle/ads/NativeAd;->B:Lcom/vungle/ads/internal/k2;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/vungle/ads/NativeAd;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance p1, Lcom/vungle/ads/NativeAd$adPlayCallback$1;

    invoke-direct {p1, p0}, Lcom/vungle/ads/NativeAd$adPlayCallback$1;-><init>(Lcom/vungle/ads/NativeAd;)V

    iput-object p1, p0, Lcom/vungle/ads/NativeAd;->D:Lcom/vungle/ads/NativeAd$adPlayCallback$1;

    return-void
.end method

.method public static final a(Lcom/vungle/ads/NativeAd;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    invoke-virtual {p0}, Lcom/vungle/ads/internal/o1;->w()V

    return-void
.end method

.method public static synthetic getAdOptionsPosition$annotations()V
    .registers 0
    .annotation runtime Lcom/vungle/ads/NativeAd$AdOptionsPosition;
    .end annotation

    .line 0
    return-void
.end method


# virtual methods
.method public final adOptionsPositionMeta$vungle_ads_release()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Lcom/vungle/ads/NativeAd;->y:I

    if-eqz v0, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 5
    const-string v0, "top_right"

    return-object v0

    .line 6
    :cond_d
    const-string v0, "bottom_right"

    return-object v0

    .line 7
    :cond_10
    const-string v0, "bottom_left"

    return-object v0

    .line 8
    :cond_13
    const-string v0, "top_left"

    return-object v0
.end method

.method public constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/o1;
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/vungle/ads/internal/o1;

    invoke-direct {v0, p1}, Lcom/vungle/ads/internal/o1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/r;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/vungle/ads/NativeAd;->constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/o1;

    move-result-object p1

    return-object p1
.end method

.method public final getAdBodyText()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_12

    .line 3
    const-string v1, "APP_DESCRIPTION"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_11

    goto :goto_12

    :cond_11
    return-object v0

    :cond_12
    :goto_12
    const-string v0, ""

    return-object v0
.end method

.method public final getAdCallToActionText()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_12

    .line 3
    const-string v1, "CTA_BUTTON_TEXT"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_11

    goto :goto_12

    :cond_11
    return-object v0

    :cond_12
    :goto_12
    const-string v0, ""

    return-object v0
.end method

.method public final getAdOptionsPosition()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/vungle/ads/NativeAd;->y:I

    return v0
.end method

.method public final getAdSponsoredText()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_12

    .line 3
    const-string v1, "SPONSORED_BY"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_11

    goto :goto_12

    :cond_11
    return-object v0

    :cond_12
    :goto_12
    const-string v0, ""

    return-object v0
.end method

.method public final getAdStarRating()Ljava/lang/Double;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/o1;->m()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final getAdTitle()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_12

    .line 3
    const-string v1, "APP_NAME"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_11

    goto :goto_12

    :cond_11
    return-object v0

    :cond_12
    :goto_12
    const-string v0, ""

    return-object v0
.end method

.method public final getAppIcon()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_12

    .line 3
    const-string v1, "APP_ICON"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_11

    goto :goto_12

    :cond_11
    return-object v0

    :cond_12
    :goto_12
    const-string v0, ""

    return-object v0
.end method

.method public final getMediaAspectRatio()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    .line 2
    iget v0, v0, Lcom/vungle/ads/internal/o1;->z:F

    return v0
.end method

.method public final getMediaView()Lcom/vungle/ads/internal/ui/view/MediaView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->u:Lcom/vungle/ads/internal/ui/view/MediaView;

    return-object v0
.end method

.method public final getNativeDisplayDurationMetric$vungle_ads_release()Lcom/vungle/ads/internal/k2;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->B:Lcom/vungle/ads/internal/k2;

    return-object v0
.end method

.method public final getVideoOptions()Lcom/vungle/ads/nativead/NativeVideoOptions;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/o1;->q()Lcom/vungle/ads/nativead/NativeVideoOptions;

    move-result-object v0

    return-object v0
.end method

.method public final hasCallToAction()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    .line 2
    iget-object v0, v0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_10

    .line 3
    const-string v1, "CTA_BUTTON_URL"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_12

    :cond_10
    const-string v0, ""

    .line 4
    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final hasVideoContent()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/o1;->r()Z

    move-result v0

    return v0
.end method

.method public final performCTA()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    .line 2
    iget-object v1, v0, Lcom/vungle/ads/internal/o1;->t:Lcom/vungle/ads/internal/presenter/w;

    if-eqz v1, :cond_1c

    .line 4
    iget-object v0, v0, Lcom/vungle/ads/internal/o1;->u:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_14

    const-string v2, "CTA_BUTTON_URL"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_16

    :cond_14
    const-string v0, ""

    :cond_16
    const/4 v2, 0x0

    .line 5
    const-string v3, "download"

    invoke-virtual {v1, v3, v2, v0}, Lcom/vungle/ads/internal/presenter/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public final registerViewForInteraction(Landroid/widget/FrameLayout;Lcom/vungle/ads/internal/ui/view/MediaView;Landroid/widget/ImageView;Ljava/util/Collection;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/FrameLayout;",
            "Lcom/vungle/ads/internal/ui/view/MediaView;",
            "Landroid/widget/ImageView;",
            "Ljava/util/Collection<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 2
    const-string v0, "registerViewForInteraction "

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeAd"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 240
    new-instance v2, Lcom/vungle/ads/internal/j2;

    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->PLAY_AD_API:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v2, v3}, Lcom/vungle/ads/internal/j2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    .line 241
    const-string v3, "ad_options_position: "

    invoke-static {v3}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 480
    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd;->adOptionsPositionMeta$vungle_ads_release()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/e1;->a(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v3

    const/4 v4, 0x4

    .line 482
    invoke-static {v0, v2, v3, v4}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    .line 487
    iget v2, p0, Lcom/vungle/ads/NativeAd;->A:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/vungle/ads/NativeAd;->A:I

    .line 488
    iget-object v2, p0, Lcom/vungle/ads/NativeAd;->B:Lcom/vungle/ads/internal/k2;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/k2;->e()V

    .line 489
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/ads/internal/p1;->d()V

    .line 490
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getResponseToShowMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;)V

    .line 491
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/r;->g()Lcom/vungle/ads/internal/p1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/p1;->e()V

    .line 492
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getShowToFailMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/p1;->e()V

    .line 493
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getShowToCloseMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/p1;->e()V

    .line 495
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/r;->i()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 496
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->v:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 497
    const-string p1, "no-op when re-play it on the same root view"

    invoke-static {v1, p1}, Lcom/vungle/ads/internal/util/u;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 501
    :cond_95
    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd;->unregisterView()V

    .line 504
    :cond_98
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 506
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/vungle/ads/internal/r;->a(Z)Lcom/vungle/ads/VungleError;

    move-result-object v0

    if-eqz v0, :cond_e5

    .line 507
    const-string p1, "registerViewForInteraction can NOT play. "

    invoke-static {p1}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 770
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object p1

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/r;->a(I)Z

    move-result p1

    if-eqz p1, :cond_db

    .line 772
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object p1

    sget-object p2, Lcom/vungle/ads/internal/h;->g:Lcom/vungle/ads/internal/a;

    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/r;->a(Lcom/vungle/ads/internal/h;)V

    .line 774
    :cond_db
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object p1

    if-eqz p1, :cond_112

    invoke-interface {p1, p0, v0}, Lcom/vungle/ads/BaseAdListener;->onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    return-void

    .line 783
    :cond_e5
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/o1;->k()Z

    move-result v0

    if-nez v0, :cond_113

    .line 784
    new-instance p1, Lcom/vungle/ads/NativeAssetError;

    const-string p2, "privacy icon or AI label is required to display."

    invoke-direct {p1, p2}, Lcom/vungle/ads/NativeAssetError;-><init>(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/t;)Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    .line 786
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object p2

    sget-object p3, Lcom/vungle/ads/internal/h;->g:Lcom/vungle/ads/internal/a;

    invoke-virtual {p2, p3}, Lcom/vungle/ads/internal/r;->a(Lcom/vungle/ads/internal/h;)V

    .line 787
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object p2

    if-eqz p2, :cond_112

    invoke-interface {p2, p0, p1}, Lcom/vungle/ads/BaseAdListener;->onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    :cond_112
    return-void

    .line 791
    :cond_113
    iput-object p1, p0, Lcom/vungle/ads/NativeAd;->v:Landroid/widget/FrameLayout;

    .line 792
    iput-object p2, p0, Lcom/vungle/ads/NativeAd;->u:Lcom/vungle/ads/internal/ui/view/MediaView;

    .line 793
    iput-object p3, p0, Lcom/vungle/ads/NativeAd;->t:Landroid/widget/ImageView;

    .line 794
    iput-object p4, p0, Lcom/vungle/ads/NativeAd;->w:Ljava/util/Collection;

    .line 796
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    iget-object v1, p0, Lcom/vungle/ads/NativeAd;->D:Lcom/vungle/ads/NativeAd$adPlayCallback$1;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/ads/internal/o1;->a(Landroid/view/View;Lcom/vungle/ads/NativeAd$adPlayCallback$1;)V

    .line 798
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->x:Lcom/vungle/ads/internal/ui/view/k;

    if-nez v0, :cond_131

    .line 799
    new-instance v0, Lcom/vungle/ads/internal/ui/view/k;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/ui/view/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/ads/NativeAd;->x:Lcom/vungle/ads/internal/ui/view/k;

    :cond_131
    if-nez p4, :cond_137

    .line 802
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    .line 836
    :cond_137
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_13b
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_150

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 837
    new-instance v1, Lcom/vungle/ads/NativeAd$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/vungle/ads/NativeAd$$ExternalSyntheticLambda0;-><init>(Lcom/vungle/ads/NativeAd;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_13b

    .line 843
    :cond_150
    iget-object p4, p0, Lcom/vungle/ads/NativeAd;->x:Lcom/vungle/ads/internal/ui/view/k;

    if-eqz p4, :cond_15b

    iget v0, p0, Lcom/vungle/ads/NativeAd;->y:I

    iget-object v1, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    invoke-virtual {p4, p1, v0, v1}, Lcom/vungle/ads/internal/ui/view/k;->a(Landroid/widget/FrameLayout;ILcom/vungle/ads/internal/o1;)V

    .line 846
    :cond_15b
    iget-object p4, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    invoke-virtual {p4, p2}, Lcom/vungle/ads/internal/o1;->a(Landroid/view/View;)V

    .line 848
    iget-object p4, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    invoke-virtual {p2, p4}, Lcom/vungle/ads/internal/ui/view/MediaView;->a(Lcom/vungle/ads/internal/o1;)V

    .line 850
    iget-object p2, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    invoke-virtual {p2, p3}, Lcom/vungle/ads/internal/o1;->b(Landroid/widget/ImageView;)V

    .line 852
    iget-object p2, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdConfig()Lcom/vungle/ads/AdConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/vungle/ads/AdConfig;->getWatermark$vungle_ads_release()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/vungle/ads/internal/o1;->a(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 854
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/r;->g()Lcom/vungle/ads/internal/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->d()V

    .line 855
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vungle/ads/internal/r;->g()Lcom/vungle/ads/internal/p1;

    move-result-object p2

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;)V

    .line 856
    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/r;->h()Lcom/vungle/ads/internal/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->e()V

    return-void
.end method

.method public final setAdOptionsPosition(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/vungle/ads/NativeAd;->y:I

    return-void
.end method

.method public final unregisterView()V
    .registers 6

    .line 1
    sget-boolean v0, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 2
    const-string v0, "unregisterView  "

    invoke-static {v0}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeAd"

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_22

    return-void

    .line 190
    :cond_22
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->B:Lcom/vungle/ads/internal/k2;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/k2;->d()V

    .line 191
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->B:Lcom/vungle/ads/internal/k2;

    iget v2, p0, Lcom/vungle/ads/NativeAd;->A:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/e1;->a(Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v2, p0, Lcom/vungle/ads/NativeAd;->B:Lcom/vungle/ads/internal/k2;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v0, v2, v3, v4}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/k2;Lcom/vungle/ads/internal/util/t;I)V

    .line 194
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->w:Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v0, :cond_57

    .line 329
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 330
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_47

    .line 332
    :cond_57
    iput-object v2, p0, Lcom/vungle/ads/NativeAd;->w:Ljava/util/Collection;

    .line 334
    iput-object v2, p0, Lcom/vungle/ads/NativeAd;->v:Landroid/widget/FrameLayout;

    .line 335
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->u:Lcom/vungle/ads/internal/ui/view/MediaView;

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/MediaView;->a()V

    .line 336
    :cond_62
    iput-object v2, p0, Lcom/vungle/ads/NativeAd;->u:Lcom/vungle/ads/internal/ui/view/MediaView;

    .line 337
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->x:Lcom/vungle/ads/internal/ui/view/k;

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/k;->a()V

    .line 338
    :cond_6b
    iput-object v2, p0, Lcom/vungle/ads/NativeAd;->x:Lcom/vungle/ads/internal/ui/view/k;

    .line 340
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->z:Lcom/vungle/ads/internal/o1;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/o1;->l()V

    .line 342
    :try_start_72
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 343
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->t:Landroid/widget/ImageView;

    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_80

    :catchall_7d
    move-exception v0

    goto :goto_9a

    :cond_7f
    move-object v0, v2

    .line 344
    :goto_80
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_93

    .line 345
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_93

    .line 347
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 350
    :cond_93
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 351
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_99
    .catchall {:try_start_72 .. :try_end_99} :catchall_7d

    goto :goto_a4

    :goto_9a
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 359
    :goto_a4
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_c0

    .line 360
    sget-boolean v3, Lcom/vungle/ads/internal/util/v;->a:Z

    .line 361
    const-string v3, "error msg: "

    invoke-static {v3}, Lcom/iab/omid/library/vungle/internal/l;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 575
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/ads/internal/util/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_c0
    iget-object v0, p0, Lcom/vungle/ads/NativeAd;->t:Landroid/widget/ImageView;

    if-eqz v0, :cond_c7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 578
    :cond_c7
    iput-object v2, p0, Lcom/vungle/ads/NativeAd;->t:Landroid/widget/ImageView;

    return-void
.end method

###### Class com.vungle.ads.NativeAd.AdOptionsPosition (com.vungle.ads.NativeAd$AdOptionsPosition)
.class public interface abstract annotation Lcom/vungle/ads/NativeAd$AdOptionsPosition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AdOptionsPosition"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.vungle.ads.NativeAd.Companion (com.vungle.ads.NativeAd$Companion)
.class public final Lcom/vungle/ads/NativeAd$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/vungle/ads/NativeAd$Companion;-><init>()V

    return-void
.end method

###### Class com.vungle.ads.NativeAd$$ExternalSyntheticLambda0 (com.vungle.ads.NativeAd$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/vungle/ads/NativeAd$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/vungle/ads/NativeAd;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/NativeAd;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/NativeAd$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/NativeAd;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/vungle/ads/NativeAd$$ExternalSyntheticLambda0;->f$0:Lcom/vungle/ads/NativeAd;

    invoke-static {v0, p1}, Lcom/vungle/ads/NativeAd;->a(Lcom/vungle/ads/NativeAd;Landroid/view/View;)V

    return-void
.end method

###### Class com.vungle.ads.NativeAd$adPlayCallback$1 (com.vungle.ads.NativeAd$adPlayCallback$1)
.class public final Lcom/vungle/ads/NativeAd$adPlayCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/ads/internal/presenter/b;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/NativeAd;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/NativeAd;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdClick$1;

    iget-object v0, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-direct {p1, v0}, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdClick$1;-><init>(Lcom/vungle/ads/NativeAd;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    .line 4
    iget-object p1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getDisplayToClickMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->d()V

    .line 5
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v0, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getDisplayToClickMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    .line 6
    iget-object v2, v0, Lcom/vungle/ads/internal/e1;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    return-void
.end method

.method public onAdEnd(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/r;->i()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 2
    iget-object p1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object p1

    sget-object v0, Lcom/vungle/ads/internal/h;->c:Lcom/vungle/ads/internal/g;

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/r;->a(Lcom/vungle/ads/internal/h;)V

    .line 4
    :cond_17
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdEnd$1;

    iget-object v0, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-direct {p1, v0}, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdEnd$1;-><init>(Lcom/vungle/ads/NativeAd;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    .line 7
    iget-object p1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getShowToCloseMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->d()V

    .line 8
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v0, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getShowToCloseMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    .line 9
    iget-object v2, v0, Lcom/vungle/ads/internal/e1;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object p1

    sget-object v0, Lcom/vungle/ads/internal/h;->e:Lcom/vungle/ads/internal/c;

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/r;->a(Lcom/vungle/ads/internal/h;)V

    .line 2
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdImpression$1;

    iget-object v0, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-direct {p1, v0}, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdImpression$1;-><init>(Lcom/vungle/ads/NativeAd;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    .line 5
    iget-object p1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPresentToDisplayMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->d()V

    .line 6
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v0, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getPresentToDisplayMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    .line 7
    iget-object v2, v0, Lcom/vungle/ads/internal/e1;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getDisplayToClickMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->e()V

    return-void
.end method

.method public onAdLeftApplication(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdLeftApplication$1;

    iget-object v0, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-direct {p1, v0}, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdLeftApplication$1;-><init>(Lcom/vungle/ads/NativeAd;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    .line 4
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v0, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getLeaveApplicationMetric$vungle_ads_release()Lcom/vungle/ads/internal/j2;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/AnalyticsClient;Lcom/vungle/ads/internal/j2;Lcom/vungle/ads/internal/util/t;I)V

    return-void
.end method

.method public onAdRewarded(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object p1

    sget-object v0, Lcom/vungle/ads/internal/h;->d:Lcom/vungle/ads/internal/f;

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/r;->a(Lcom/vungle/ads/internal/h;)V

    .line 2
    iget-object p1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getSignalManager$vungle_ads_release()Lcom/vungle/ads/internal/signals/j;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_12
    iget-object v0, p1, Lcom/vungle/ads/internal/signals/j;->h:Lcom/vungle/ads/internal/signals/c;

    .line 4
    iget v1, v0, Lcom/vungle/ads/internal/signals/c;->f:I

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, v0, Lcom/vungle/ads/internal/signals/c;->f:I
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_51

    monitor-exit p1

    .line 6
    iget-object p1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/vungle/ads/internal/r;->l:Lcom/vungle/ads/internal/p1;

    .line 8
    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->d()V

    .line 9
    sget-object p1, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    iget-object v0, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/vungle/ads/internal/r;->l:Lcom/vungle/ads/internal/p1;

    .line 11
    iget-object v1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v1

    .line 12
    iget-object v2, v0, Lcom/vungle/ads/internal/e1;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0, v1, v2}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->getPresentToDisplayMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/p1;->e()V

    .line 15
    sget-object p1, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance p1, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdStart$1;

    iget-object v0, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-direct {p1, v0}, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdStart$1;-><init>(Lcom/vungle/ads/NativeAd;)V

    invoke-static {p1}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    return-void

    :catchall_51
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public onFailure(Lcom/vungle/ads/VungleError;)V
    .registers 7

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/r;

    move-result-object v0

    sget-object v1, Lcom/vungle/ads/internal/h;->g:Lcom/vungle/ads/internal/a;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/r;->a(Lcom/vungle/ads/internal/h;)V

    .line 2
    sget-object v0, Lcom/vungle/ads/internal/util/z;->a:Landroid/os/Handler;

    new-instance v0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onFailure$1;

    iget-object v1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-direct {v0, v1, p1}, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onFailure$1;-><init>(Lcom/vungle/ads/NativeAd;Lcom/vungle/ads/VungleError;)V

    invoke-static {v0}, Lcom/vungle/ads/internal/util/z;->a(Lkotlin/jvm/functions/Function0;)V

    .line 5
    iget-object v0, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getShowToFailMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/p1;->d()V

    .line 6
    sget-object v0, Lcom/vungle/ads/internal/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/internal/AnalyticsClient;

    .line 7
    iget-object v1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v1}, Lcom/vungle/ads/BaseAd;->getShowToFailMetric$vungle_ads_release()Lcom/vungle/ads/internal/p1;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v2}, Lcom/vungle/ads/BaseAd;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/t;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, v1, v2, p1}, Lcom/vungle/ads/internal/AnalyticsClient;->a(Lcom/vungle/ads/internal/p1;Lcom/vungle/ads/internal/util/t;Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.ads.NativeAd$adPlayCallback$1$onAdClick$1 (com.vungle.ads.NativeAd$adPlayCallback$1$onAdClick$1)
.class final Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/NativeAd$adPlayCallback$1;->onAdClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/NativeAd;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/NativeAd;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdClick$1;->a:Lcom/vungle/ads/NativeAd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdClick$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdClick$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdClick$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-interface {v0, v1}, Lcom/vungle/ads/BaseAdListener;->onAdClicked(Lcom/vungle/ads/BaseAd;)V

    :cond_d
    return-void
.end method

###### Class com.vungle.ads.NativeAd$adPlayCallback$1$onAdEnd$1 (com.vungle.ads.NativeAd$adPlayCallback$1$onAdEnd$1)
.class final Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdEnd$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/NativeAd$adPlayCallback$1;->onAdEnd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/NativeAd;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/NativeAd;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdEnd$1;->a:Lcom/vungle/ads/NativeAd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdEnd$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdEnd$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdEnd$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-interface {v0, v1}, Lcom/vungle/ads/BaseAdListener;->onAdEnd(Lcom/vungle/ads/BaseAd;)V

    :cond_d
    return-void
.end method

###### Class com.vungle.ads.NativeAd$adPlayCallback$1$onAdImpression$1 (com.vungle.ads.NativeAd$adPlayCallback$1$onAdImpression$1)
.class final Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdImpression$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/NativeAd$adPlayCallback$1;->onAdImpression(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/NativeAd;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/NativeAd;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdImpression$1;->a:Lcom/vungle/ads/NativeAd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdImpression$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdImpression$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdImpression$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-interface {v0, v1}, Lcom/vungle/ads/BaseAdListener;->onAdImpression(Lcom/vungle/ads/BaseAd;)V

    :cond_d
    return-void
.end method

###### Class com.vungle.ads.NativeAd$adPlayCallback$1$onAdLeftApplication$1 (com.vungle.ads.NativeAd$adPlayCallback$1$onAdLeftApplication$1)
.class final Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdLeftApplication$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/NativeAd$adPlayCallback$1;->onAdLeftApplication(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/NativeAd;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/NativeAd;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdLeftApplication$1;->a:Lcom/vungle/ads/NativeAd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdLeftApplication$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdLeftApplication$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdLeftApplication$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-interface {v0, v1}, Lcom/vungle/ads/BaseAdListener;->onAdLeftApplication(Lcom/vungle/ads/BaseAd;)V

    :cond_d
    return-void
.end method

###### Class com.vungle.ads.NativeAd$adPlayCallback$1$onAdStart$1 (com.vungle.ads.NativeAd$adPlayCallback$1$onAdStart$1)
.class final Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdStart$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/NativeAd$adPlayCallback$1;->onAdStart(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/NativeAd;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/NativeAd;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdStart$1;->a:Lcom/vungle/ads/NativeAd;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdStart$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdStart$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onAdStart$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-interface {v0, v1}, Lcom/vungle/ads/BaseAdListener;->onAdStart(Lcom/vungle/ads/BaseAd;)V

    :cond_d
    return-void
.end method

###### Class com.vungle.ads.NativeAd$adPlayCallback$1$onFailure$1 (com.vungle.ads.NativeAd$adPlayCallback$1$onFailure$1)
.class final Lcom/vungle/ads/NativeAd$adPlayCallback$1$onFailure$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/NativeAd$adPlayCallback$1;->onFailure(Lcom/vungle/ads/VungleError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/vungle/ads/NativeAd;

.field public final synthetic b:Lcom/vungle/ads/VungleError;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/NativeAd;Lcom/vungle/ads/VungleError;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onFailure$1;->a:Lcom/vungle/ads/NativeAd;

    iput-object p2, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onFailure$1;->b:Lcom/vungle/ads/VungleError;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onFailure$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onFailure$1;->a:Lcom/vungle/ads/NativeAd;

    invoke-virtual {v0}, Lcom/vungle/ads/BaseAd;->getAdListener()Lcom/vungle/ads/BaseAdListener;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onFailure$1;->a:Lcom/vungle/ads/NativeAd;

    iget-object v2, p0, Lcom/vungle/ads/NativeAd$adPlayCallback$1$onFailure$1;->b:Lcom/vungle/ads/VungleError;

    invoke-interface {v0, v1, v2}, Lcom/vungle/ads/BaseAdListener;->onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    :cond_f
    return-void
.end method
