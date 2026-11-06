###### Class com.ironsource.adapters.bidmachine.rewarded.BidMachineRewardedAdapter (com.ironsource.adapters.bidmachine.rewarded.BidMachineRewardedAdapter)
.class public final Lcom/ironsource/adapters/bidmachine/rewarded/BidMachineRewardedAdapter;
.super Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseRewardedVideo;
.source "BidMachineRewardedAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseRewardedVideo<",
        "Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private rewardedAd:Lio/bidmachine/rewarded/RewardedAd;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 3

    const-string v0, "networkSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseRewardedVideo;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    return-void
.end method

.method private final createRewardedPlacementConfig(Ljava/lang/String;)Lio/bidmachine/AdPlacementConfig;
    .registers 5

    .line 101
    sget-object v0, Lio/bidmachine/AdPlacementConfig;->Companion:Lio/bidmachine/AdPlacementConfig$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lio/bidmachine/AdPlacementConfig$Companion;->rewardedBuilder$default(Lio/bidmachine/AdPlacementConfig$Companion;Lio/bidmachine/AdContentType;ILjava/lang/Object;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object v0

    if-eqz p1, :cond_14

    .line 102
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_14

    .line 103
    :cond_11
    invoke-virtual {v0, p1}, Lio/bidmachine/AdPlacementConfig$Builder;->withPlacementId(Ljava/lang/String;)Lio/bidmachine/AdPlacementConfig$Builder;

    .line 105
    :cond_14
    :goto_14
    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig$Builder;->build()Lio/bidmachine/AdPlacementConfig;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public collectBiddingData(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "biddingDataCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_13

    .line 82
    const-string v0, "placementId"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 83
    :goto_14
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    if-nez p1, :cond_1b

    const-string v1, ""

    goto :goto_1c

    :cond_1b
    move-object v1, p1

    :goto_1c
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "placementId = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;

    if-nez v0, :cond_46

    .line 87
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "Network adapter is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 88
    invoke-interface {p3, p2}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 92
    :cond_46
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/bidmachine/rewarded/BidMachineRewardedAdapter;->createRewardedPlacementConfig(Ljava/lang/String;)Lio/bidmachine/AdPlacementConfig;

    move-result-object p1

    .line 93
    invoke-virtual {v0, p2, p3, p1}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->collectBiddingData$bidmachineadapter_release(Landroid/content/Context;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Lio/bidmachine/AdPlacementConfig;)V

    return-void
.end method

.method public destroyAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)V
    .registers 3

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 72
    iget-object p1, p0, Lcom/ironsource/adapters/bidmachine/rewarded/BidMachineRewardedAdapter;->rewardedAd:Lio/bidmachine/rewarded/RewardedAd;

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    invoke-virtual {p1, v0}, Lio/bidmachine/BidMachineAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rewarded/RewardedAd;

    .line 73
    :cond_15
    iget-object p1, p0, Lcom/ironsource/adapters/bidmachine/rewarded/BidMachineRewardedAdapter;->rewardedAd:Lio/bidmachine/rewarded/RewardedAd;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lio/bidmachine/BidMachineAd;->destroy()V

    .line 74
    :cond_1c
    iput-object v0, p0, Lcom/ironsource/adapters/bidmachine/rewarded/BidMachineRewardedAdapter;->rewardedAd:Lio/bidmachine/rewarded/RewardedAd;

    return-void
.end method

.method public isAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Z
    .registers 4

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/ironsource/adapters/bidmachine/rewarded/BidMachineRewardedAdapter;->rewardedAd:Lio/bidmachine/rewarded/RewardedAd;

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 66
    invoke-virtual {p1}, Lio/bidmachine/BidMachineAd;->canShow()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p1}, Lio/bidmachine/BidMachineAd;->isExpired()Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    return v0
.end method

.method public bridge synthetic loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V
    .registers 4

    .line 18
    check-cast p3, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/bidmachine/rewarded/BidMachineRewardedAdapter;->loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;)V

    return-void
.end method

.method public loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;)V
    .registers 8

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    const-string v0, "placementId"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    if-nez v0, :cond_1c

    const-string v2, ""

    goto :goto_1d

    :cond_1c
    move-object v2, v0

    :goto_1d
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "placementId = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 33
    new-instance v1, Lio/bidmachine/rewarded/RewardedAd;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v1, p2}, Lio/bidmachine/rewarded/RewardedAd;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance p2, Lcom/ironsource/adapters/bidmachine/rewarded/BidMachineRewardedListener;

    invoke-direct {p2, p3}, Lcom/ironsource/adapters/bidmachine/rewarded/BidMachineRewardedListener;-><init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;)V

    invoke-virtual {v1, p2}, Lio/bidmachine/BidMachineAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    .line 33
    iput-object v1, p0, Lcom/ironsource/adapters/bidmachine/rewarded/BidMachineRewardedAdapter;->rewardedAd:Lio/bidmachine/rewarded/RewardedAd;

    .line 37
    invoke-direct {p0, v0}, Lcom/ironsource/adapters/bidmachine/rewarded/BidMachineRewardedAdapter;->createRewardedPlacementConfig(Ljava/lang/String;)Lio/bidmachine/AdPlacementConfig;

    move-result-object p2

    .line 38
    new-instance p3, Lio/bidmachine/rewarded/RewardedRequest$Builder;

    invoke-direct {p3, p2}, Lio/bidmachine/rewarded/RewardedRequest$Builder;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    .line 39
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getServerData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/rewarded/RewardedRequest$Builder;->setBidPayload(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rewarded/RewardedRequest$Builder;

    .line 40
    invoke-virtual {p1}, Lio/bidmachine/rewarded/RewardedRequest$Builder;->build()Lio/bidmachine/AdRequest;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/bidmachine/rewarded/RewardedRequest;

    .line 42
    iget-object p2, p0, Lcom/ironsource/adapters/bidmachine/rewarded/BidMachineRewardedAdapter;->rewardedAd:Lio/bidmachine/rewarded/RewardedAd;

    if-eqz p2, :cond_6f

    invoke-virtual {p2, p1}, Lio/bidmachine/BidMachineAd;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;

    move-result-object p1

    check-cast p1, Lio/bidmachine/rewarded/RewardedAd;

    :cond_6f
    return-void
.end method

.method public bridge synthetic showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V
    .registers 4

    .line 18
    check-cast p3, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/bidmachine/rewarded/BidMachineRewardedAdapter;->showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;)V

    return-void
.end method

.method public showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;)V
    .registers 5

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "listener"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/bidmachine/rewarded/BidMachineRewardedAdapter;->isAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 53
    const-string p1, "Ad is not ready"

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const/16 p2, 0x3e9

    .line 54
    invoke-interface {p3, p2, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdShowFailed(ILjava/lang/String;)V

    return-void

    .line 61
    :cond_25
    iget-object p1, p0, Lcom/ironsource/adapters/bidmachine/rewarded/BidMachineRewardedAdapter;->rewardedAd:Lio/bidmachine/rewarded/RewardedAd;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Lio/bidmachine/FullScreenAd;->show()V

    :cond_2c
    return-void
.end method
