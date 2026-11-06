###### Class com.ironsource.adapters.vungle.interstitial.VungleInterstitialAdapter (com.ironsource.adapters.vungle.interstitial.VungleInterstitialAdapter)
.class public final Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;
.super Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseInterstitial;
.source "VungleInterstitialAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseInterstitial<",
        "Lcom/ironsource/adapters/vungle/VungleAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private interstitialAd:Lcom/vungle/ads/InterstitialAd;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$Yiq0gOcBj1nlSNcX6ETKEckiQXU(Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;->showAd$lambda$1(Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 3

    const-string v0, "networkSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseInterstitial;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private static final showAd$lambda$1(Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;)V
    .registers 3

    .line 63
    iget-object p0, p0, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;->interstitialAd:Lcom/vungle/ads/InterstitialAd;

    if-eqz p0, :cond_9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/vungle/ads/FullscreenAd$DefaultImpls;->play$default(Lcom/vungle/ads/FullscreenAd;Landroid/content/Context;ILjava/lang/Object;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public collectBiddingData(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .registers 4

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "biddingDataCallback"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 83
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adapters/vungle/VungleAdapter;

    if-nez p1, :cond_22

    .line 85
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "Network adapter is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 86
    invoke-interface {p3, p2}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 90
    :cond_22
    invoke-virtual {p1, p2, p3}, Lcom/ironsource/adapters/vungle/VungleAdapter;->collectBiddingData$vungleadapter_release(Landroid/content/Context;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V

    return-void
.end method

.method public destroyAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)V
    .registers 3

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;->interstitialAd:Lcom/vungle/ads/InterstitialAd;

    return-void
.end method

.method public isAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Z
    .registers 4

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;->interstitialAd:Lcom/vungle/ads/InterstitialAd;

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->canPlayAd()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public bridge synthetic loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V
    .registers 4

    .line 21
    check-cast p3, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;->loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V

    return-void
.end method

.method public loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V
    .registers 10

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    const-string v0, "PlacementId"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    if-nez v1, :cond_1c

    const-string v3, ""

    goto :goto_1d

    :cond_1c
    move-object v3, v1

    :goto_1d
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "placementId = %s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "format(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    if-eqz v1, :cond_67

    .line 33
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_67

    .line 45
    :cond_3d
    new-instance v0, Lcom/vungle/ads/InterstitialAd;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "getApplicationContext(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/vungle/ads/AdConfig;

    invoke-direct {v2}, Lcom/vungle/ads/AdConfig;-><init>()V

    invoke-direct {v0, p2, v1, v2}, Lcom/vungle/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/AdConfig;)V

    .line 46
    new-instance p2, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialListener;

    invoke-direct {p2, p3}, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialListener;-><init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V

    invoke-virtual {v0, p2}, Lcom/vungle/ads/BaseAd;->setAdListener(Lcom/vungle/ads/BaseAdListener;)V

    .line 47
    const-string p2, "ISVungleInterstitial"

    invoke-virtual {v0, p2}, Lcom/vungle/ads/BaseAd;->setAdapterAdFormat(Ljava/lang/String;)V

    .line 45
    iput-object v0, p0, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;->interstitialAd:Lcom/vungle/ads/InterstitialAd;

    .line 49
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getServerData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vungle/ads/BaseFullscreenAd;->load(Ljava/lang/String;)V

    return-void

    .line 34
    :cond_67
    :goto_67
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Missing params - %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 36
    const-string v0, "NoPlacementId:Interstitial"

    invoke-static {p2, v0}, Lcom/vungle/ads/VungleMediationLogger;->logError(Lcom/vungle/ads/VungleAdType;Ljava/lang/String;)V

    .line 38
    sget-object p2, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 v0, 0x3ea

    .line 37
    invoke-interface {p3, p2, v0, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V
    .registers 4

    .line 21
    check-cast p3, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;->showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V

    return-void
.end method

.method public showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V
    .registers 5

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "listener"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;->isAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 56
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "Ad is not available"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;->interstitialAd:Lcom/vungle/ads/InterstitialAd;

    const-string v0, "NoAdsToShow:Interstitial"

    invoke-static {p1, v0}, Lcom/vungle/ads/VungleMediationLogger;->logError(Lcom/vungle/ads/VungleAdType;Ljava/lang/String;)V

    const/16 p1, 0x3e9

    .line 58
    invoke-interface {p3, p1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdShowFailed(ILjava/lang/String;)V

    return-void

    .line 62
    :cond_2e
    iget-object p1, p0, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.ironsource.adapters.vungle.interstitial.VungleInterstitialAdapter$$ExternalSyntheticLambda0 (com.ironsource.adapters.vungle.interstitial.VungleInterstitialAdapter$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;->$r8$lambda$Yiq0gOcBj1nlSNcX6ETKEckiQXU(Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;)V

    return-void
.end method
