###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingAdapter (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingAdapter)
.class public final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter;
.super Lio/bidmachine/HeaderBiddingAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter;->Companion:Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    sget-object v1, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    sget-object v2, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    filled-new-array {v0, v1, v2}, [Lio/bidmachine/AdsType;

    move-result-object v8

    .line 2
    const-string v6, "3.8.0.1"

    const/4 v7, 0x1

    const-string v4, "adaptive_rendering"

    const-string v5, "3.8.0"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/HeaderBiddingAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method public createBanner()Lio/bidmachine/unified/UnifiedBannerAd;
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAd;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingBannerAd;-><init>()V

    return-object v0
.end method

.method public createInterstitial()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAd;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAd;-><init>()V

    return-object v0
.end method

.method public createRewarded()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAd;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingFullscreenAd;-><init>()V

    return-object v0
.end method

.method public isNetworkInitializationStatusCheckSupported()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkInitialized(Lio/bidmachine/ContextProvider;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 0
    const-string v0, "contextProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onCollectHeaderBiddingParams(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/HeaderBiddingAdRequestParams;Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "contextProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequestParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "networkAdUnit"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "hbAdRequestParams"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "collectCallback"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidNativeFeature;->getSupportedFeatures(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const-string p1, "getSupportedFeatures(con\u2026.getApplicationContext())"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x3e

    const/4 v8, 0x0

    .line 4
    const-string v1, ","

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    const-string p3, "features"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p5, p2}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFinished(Ljava/util/Map;)V

    return-void
.end method

.method public onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "contextProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "networkConfigParams"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "callback"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "contextProvider.getApplicationContext()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lio/bidmachine/internal/s;->a(Landroid/content/Context;)V

    .line 3
    sget-object p2, Lio/bidmachine/rendering/Rendering;->INSTANCE:Lio/bidmachine/rendering/Rendering;

    .line 5
    new-instance p3, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder;

    invoke-direct {p3}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingNetworkRequestBuilder;-><init>()V

    .line 6
    new-instance v0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter$a;

    invoke-direct {v0, p1}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1, p3, v0}, Lio/bidmachine/rendering/Rendering;->initialize(Landroid/content/Context;Lio/bidmachine/rendering/utils/NetworkRequestBuilder;Lkotlin/jvm/functions/Function0;)V

    .line 13
    invoke-interface {p4}, Lio/bidmachine/NetworkInitializationCallback;->onSuccess()V

    return-void
.end method

.method public setLogging(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/rendering/Rendering;->INSTANCE:Lio/bidmachine/rendering/Rendering;

    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/Rendering;->setLoggingEnabled(Z)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingAdapter.Companion (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingAdapter$Companion)
.class public final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter$Companion;-><init>()V

    return-void
.end method

###### Class io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingAdapter.a (io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingAdapter$a)
.class public final Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter;->onNetworkInitialize(Lio/bidmachine/ContextProvider;Lio/bidmachine/InitializationParams;Lio/bidmachine/NetworkConfigParams;Lio/bidmachine/NetworkInitializationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter$a;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/util/cache/MediaFileCacheManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/internal/g;->a(Landroid/content/Context;)Lio/bidmachine/util/cache/MediaFileCacheManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ads/networks/adaptiverendering/AdaptiveRenderingAdapter$a;->a()Lio/bidmachine/util/cache/MediaFileCacheManager;

    move-result-object v0

    return-object v0
.end method
