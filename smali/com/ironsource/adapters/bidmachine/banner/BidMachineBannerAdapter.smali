###### Class com.ironsource.adapters.bidmachine.banner.BidMachineBannerAdapter (com.ironsource.adapters.bidmachine.banner.BidMachineBannerAdapter)
.class public final Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;
.super Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner;
.source "BidMachineBannerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner<",
        "Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private bannerAdView:Lio/bidmachine/banner/BannerView;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$tEWJ0jYilDjVTUJCgWZUgV46294(Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;Lio/bidmachine/banner/BannerRequest;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;->loadAd$lambda$1(Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;Lio/bidmachine/banner/BannerRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zLfW8MP5XkKySc3hUniLc7E15JA(Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;->destroyAd$lambda$2(Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 3

    const-string v0, "networkSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    .line 29
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private final createBannerPlacementConfig(Ljava/lang/String;Lio/bidmachine/BannerAdSize;)Lio/bidmachine/AdPlacementConfig;
    .registers 4

    .line 132
    sget-object v0, Lio/bidmachine/AdPlacementConfig;->Companion:Lio/bidmachine/AdPlacementConfig$Companion;

    invoke-virtual {v0, p2}, Lio/bidmachine/AdPlacementConfig$Companion;->bannerBuilder(Lio/bidmachine/BannerAdSize;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object p2

    if-eqz p1, :cond_12

    .line 133
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_12

    .line 134
    :cond_f
    invoke-virtual {p2, p1}, Lio/bidmachine/AdPlacementConfig$Builder;->withPlacementId(Ljava/lang/String;)Lio/bidmachine/AdPlacementConfig$Builder;

    .line 136
    :cond_12
    :goto_12
    invoke-virtual {p2}, Lio/bidmachine/AdPlacementConfig$Builder;->build()Lio/bidmachine/AdPlacementConfig;

    move-result-object p1

    return-object p1
.end method

.method private static final destroyAd$lambda$2(Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;)V
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;->bannerAdView:Lio/bidmachine/banner/BannerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Lio/bidmachine/AdView;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/AdView;

    move-result-object v0

    check-cast v0, Lio/bidmachine/banner/BannerView;

    .line 79
    :cond_b
    iget-object v0, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;->bannerAdView:Lio/bidmachine/banner/BannerView;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lio/bidmachine/AdView;->destroy()V

    .line 80
    :cond_12
    iput-object v1, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;->bannerAdView:Lio/bidmachine/banner/BannerView;

    return-void
.end method

.method private final getBannerSize(Lcom/ironsource/mediationsdk/ISBannerSize;Landroid/content/Context;)Lio/bidmachine/BannerAdSize;
    .registers 4

    .line 122
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_4a

    goto :goto_47

    :sswitch_e
    const-string p2, "BANNER"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_47

    .line 123
    :cond_17
    sget-object p1, Lio/bidmachine/BannerAdSize;->Banner:Lio/bidmachine/BannerAdSize;

    return-object p1

    .line 122
    :sswitch_1a
    const-string p2, "LEADERBOARD"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_47

    .line 124
    :cond_23
    sget-object p1, Lio/bidmachine/BannerAdSize;->Leaderboard:Lio/bidmachine/BannerAdSize;

    return-object p1

    .line 122
    :sswitch_26
    const-string v0, "SMART"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_47

    .line 126
    :cond_2f
    invoke-static {p2}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_38

    sget-object p1, Lio/bidmachine/BannerAdSize;->Leaderboard:Lio/bidmachine/BannerAdSize;

    return-object p1

    :cond_38
    sget-object p1, Lio/bidmachine/BannerAdSize;->Banner:Lio/bidmachine/BannerAdSize;

    return-object p1

    .line 122
    :sswitch_3b
    const-string p2, "RECTANGLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_47

    .line 125
    :cond_44
    sget-object p1, Lio/bidmachine/BannerAdSize;->MediumRectangle:Lio/bidmachine/BannerAdSize;

    return-object p1

    :cond_47
    :goto_47
    const/4 p1, 0x0

    return-object p1

    nop

    :sswitch_data_4a
    .sparse-switch
        -0x171242b1 -> :sswitch_3b
        0x4b59da9 -> :sswitch_26
        0x1aa2fb5d -> :sswitch_1a
        0x7458732c -> :sswitch_e
    .end sparse-switch
.end method

.method private static final loadAd$lambda$1(Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;Lio/bidmachine/banner/BannerRequest;)V
    .registers 2

    .line 71
    iget-object p0, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;->bannerAdView:Lio/bidmachine/banner/BannerView;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Lio/bidmachine/AdView;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdView;

    move-result-object p0

    check-cast p0, Lio/bidmachine/banner/BannerView;

    :cond_a
    return-void
.end method


# virtual methods
.method public collectBiddingData(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .registers 11

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "biddingDataCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    .line 89
    const-string v1, "placementId"

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_14
    move-object v1, v0

    .line 90
    :goto_15
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

    .line 92
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;

    if-nez v2, :cond_47

    .line 94
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "Network adapter is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 95
    invoke-interface {p3, p2}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void

    :cond_47
    if-eqz p1, :cond_55

    .line 99
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getAdUnitData()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_55

    const-string v0, "bannerSize"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    :cond_55
    instance-of p1, v0, Lcom/ironsource/mediationsdk/ISBannerSize;

    const-string v3, "%s - BidMachine"

    if-nez p1, :cond_75

    .line 101
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "Banner size is invalid or not of type ISBannerSize"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 102
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 106
    :cond_75
    check-cast v0, Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v6, "getApplicationContext(...)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;->getBannerSize(Lcom/ironsource/mediationsdk/ISBannerSize;Landroid/content/Context;)Lio/bidmachine/BannerAdSize;

    move-result-object p1

    if-nez p1, :cond_a0

    .line 108
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "Unsupported or null banner size"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 109
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 113
    :cond_a0
    invoke-direct {p0, v1, p1}, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;->createBannerPlacementConfig(Ljava/lang/String;Lio/bidmachine/BannerAdSize;)Lio/bidmachine/AdPlacementConfig;

    move-result-object p1

    .line 114
    invoke-virtual {v2, p2, p3, p1}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->collectBiddingData$bidmachineadapter_release(Landroid/content/Context;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Lio/bidmachine/AdPlacementConfig;)V

    return-void
.end method

.method public destroyAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)V
    .registers 3

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 77
    iget-object p1, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V
    .registers 5

    .line 26
    check-cast p4, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;->loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V

    return-void
.end method

.method public loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V
    .registers 10

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerSize"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const-string v0, "placementId"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    if-nez v0, :cond_21

    const-string v2, ""

    goto :goto_22

    :cond_21
    move-object v2, v0

    :goto_22
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

    .line 43
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 44
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p3, p2}, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;->getBannerSize(Lcom/ironsource/mediationsdk/ISBannerSize;Landroid/content/Context;)Lio/bidmachine/BannerAdSize;

    move-result-object p3

    if-nez p3, :cond_55

    .line 46
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "Unsupported or null banner size"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 48
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 p3, 0x3e8

    .line 47
    invoke-interface {p4, p1, p3, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void

    .line 55
    :cond_55
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 56
    invoke-virtual {p3}, Lio/bidmachine/BannerAdSize;->getWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result v2

    .line 57
    invoke-virtual {p3}, Lio/bidmachine/BannerAdSize;->getHeight()I

    move-result v3

    invoke-static {p2, v3}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0x11

    .line 55
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 61
    new-instance v2, Lio/bidmachine/banner/BannerView;

    invoke-direct {v2, p2}, Lio/bidmachine/banner/BannerView;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance p2, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerListener;

    invoke-direct {p2, p4, v1}, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerListener;-><init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v2, p2}, Lio/bidmachine/AdView;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/AdView;

    .line 61
    iput-object v2, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;->bannerAdView:Lio/bidmachine/banner/BannerView;

    .line 65
    invoke-direct {p0, v0, p3}, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;->createBannerPlacementConfig(Ljava/lang/String;Lio/bidmachine/BannerAdSize;)Lio/bidmachine/AdPlacementConfig;

    move-result-object p2

    .line 66
    new-instance p3, Lio/bidmachine/banner/BannerRequest$Builder;

    invoke-direct {p3, p2}, Lio/bidmachine/banner/BannerRequest$Builder;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    .line 67
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getServerData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/bidmachine/banner/BannerRequest$Builder;->setBidPayload(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/banner/BannerRequest$Builder;

    .line 68
    invoke-virtual {p1}, Lio/bidmachine/banner/BannerRequest$Builder;->build()Lio/bidmachine/AdRequest;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/bidmachine/banner/BannerRequest;

    .line 70
    iget-object p2, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;->mainHandler:Landroid/os/Handler;

    new-instance p3, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;Lio/bidmachine/banner/BannerRequest;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class com.ironsource.adapters.bidmachine.banner.BidMachineBannerAdapter$$ExternalSyntheticLambda0 (com.ironsource.adapters.bidmachine.banner.BidMachineBannerAdapter$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;->$r8$lambda$zLfW8MP5XkKySc3hUniLc7E15JA(Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;)V

    return-void
.end method

###### Class com.ironsource.adapters.bidmachine.banner.BidMachineBannerAdapter$$ExternalSyntheticLambda1 (com.ironsource.adapters.bidmachine.banner.BidMachineBannerAdapter$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;

.field public final synthetic f$1:Lio/bidmachine/banner/BannerRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;Lio/bidmachine/banner/BannerRequest;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/banner/BannerRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/banner/BannerRequest;

    invoke-static {v0, v1}, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;->$r8$lambda$tEWJ0jYilDjVTUJCgWZUgV46294(Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerAdapter;Lio/bidmachine/banner/BannerRequest;)V

    return-void
.end method
