###### Class io.bidmachine.ads.networks.mraid.MraidAdapter (io.bidmachine.ads.networks.mraid.MraidAdapter)
.class public final Lio/bidmachine/ads/networks/mraid/MraidAdapter;
.super Lio/bidmachine/HeaderBiddingAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/mraid/MraidAdapter$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/ads/networks/mraid/MraidAdapter$Companion;

.field public static final IS_JS_BRIDGE_ADDED:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/bidmachine/ads/networks/mraid/MraidAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/mraid/MraidAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/bidmachine/ads/networks/mraid/MraidAdapter;->Companion:Lio/bidmachine/ads/networks/mraid/MraidAdapter$Companion;

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lio/bidmachine/ads/networks/mraid/MraidAdapter;->IS_JS_BRIDGE_ADDED:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    const-string v4, "mraid"

    const-string v5, "3.8.0"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/HeaderBiddingAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lio/bidmachine/AdsType;)V

    return-void
.end method


# virtual methods
.method public createBanner()Lio/bidmachine/unified/UnifiedBannerAd;
    .registers 2

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;

    invoke-direct {v0}, Lio/bidmachine/ads/networks/mraid/MraidBannerAd;-><init>()V

    return-object v0
.end method

.method public createInterstitial()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;

    sget-object v1, Lio/bidmachine/iab/mraid/MraidType;->Static:Lio/bidmachine/iab/mraid/MraidType;

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;-><init>(Lio/bidmachine/iab/mraid/MraidType;)V

    return-object v0
.end method

.method public createRewarded()Lio/bidmachine/unified/UnifiedFullscreenAd;
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;

    sget-object v1, Lio/bidmachine/iab/mraid/MraidType;->Rewarded:Lio/bidmachine/iab/mraid/MraidType;

    invoke-direct {v0, v1}, Lio/bidmachine/ads/networks/mraid/MraidFullScreenAd;-><init>(Lio/bidmachine/iab/mraid/MraidType;)V

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
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "contextProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adRequestParams"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkAdUnit"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "hbAdRequestParams"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "collectCallback"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p5, p1}, Lio/bidmachine/HeaderBiddingCollectParamsCallback;->onCollectFinished(Ljava/util/Map;)V

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
    sget-object p2, Lio/bidmachine/ads/networks/mraid/MraidAdapter;->IS_JS_BRIDGE_ADDED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 2
    new-instance p2, Lio/bidmachine/iab/bridge/NativeStorageJsBridge;

    invoke-direct {p2}, Lio/bidmachine/iab/bridge/NativeStorageJsBridge;-><init>()V

    invoke-static {p2}, Lio/bidmachine/iab/bridge/JsBridgeHandler;->addBridge(Lio/bidmachine/iab/bridge/JsBridge;)Z

    .line 4
    :cond_26
    invoke-interface {p1}, Lio/bidmachine/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/internal/s;->a(Landroid/content/Context;)V

    .line 6
    invoke-interface {p4}, Lio/bidmachine/NetworkInitializationCallback;->onSuccess()V

    return-void
.end method

.method public setLogging(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidLog;->setEnabled(Z)V

    return-void
.end method

###### Class io.bidmachine.ads.networks.mraid.MraidAdapter.Companion (io.bidmachine.ads.networks.mraid.MraidAdapter$Companion)
.class public final Lio/bidmachine/ads/networks/mraid/MraidAdapter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/mraid/MraidAdapter;
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
    invoke-direct {p0}, Lio/bidmachine/ads/networks/mraid/MraidAdapter$Companion;-><init>()V

    return-void
.end method
