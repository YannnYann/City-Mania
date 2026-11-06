###### Class com.ironsource.adapters.bidmachine.banner.BidMachineBannerListener (com.ironsource.adapters.bidmachine.banner.BidMachineBannerListener)
.class public final Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerListener;
.super Ljava/lang/Object;
.source "BidMachineBannerListener.kt"

# interfaces
.implements Lio/bidmachine/banner/BannerListener;


# instance fields
.field private final layoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private final listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    .line 14
    iput-object p2, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerListener;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public bridge synthetic onAdClicked(Lio/bidmachine/IAd;)V
    .registers 2

    .line 12
    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerListener;->onAdClicked(Lio/bidmachine/banner/BannerView;)V

    return-void
.end method

.method public onAdClicked(Lio/bidmachine/banner/BannerView;)V
    .registers 3

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 68
    iget-object p1, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdClicked()V

    return-void
.end method

.method public bridge synthetic onAdExpired(Lio/bidmachine/IAd;)V
    .registers 2

    .line 12
    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerListener;->onAdExpired(Lio/bidmachine/banner/BannerView;)V

    return-void
.end method

.method public onAdExpired(Lio/bidmachine/banner/BannerView;)V
    .registers 3

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    return-void
.end method

.method public bridge synthetic onAdImpression(Lio/bidmachine/IAd;)V
    .registers 2

    .line 12
    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerListener;->onAdImpression(Lio/bidmachine/banner/BannerView;)V

    return-void
.end method

.method public onAdImpression(Lio/bidmachine/banner/BannerView;)V
    .registers 3

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 50
    iget-object p1, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdOpened()V

    return-void
.end method

.method public bridge synthetic onAdLoadFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .registers 3

    .line 12
    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerListener;->onAdLoadFailed(Lio/bidmachine/banner/BannerView;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdLoadFailed(Lio/bidmachine/banner/BannerView;Lio/bidmachine/utils/BMError;)V
    .registers 5

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lio/bidmachine/utils/BMError;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Failed to load, errorCode = %s, errorMessage = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 40
    sget-object p1, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter;->Companion:Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion;

    invoke-virtual {p1, p2}, Lcom/ironsource/adapters/bidmachine/BidMachineAdapter$Companion;->getLoadErrorType(Lio/bidmachine/utils/BMError;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-virtual {p2}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v1

    invoke-virtual {p2}, Lio/bidmachine/utils/BMError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Lio/bidmachine/IAd;)V
    .registers 2

    .line 12
    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerListener;->onAdLoaded(Lio/bidmachine/banner/BannerView;)V

    return-void
.end method

.method public onAdLoaded(Lio/bidmachine/banner/BannerView;)V
    .registers 6

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lio/bidmachine/AdView;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lio/bidmachine/models/AuctionResult;->getCreativeId()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 23
    :goto_11
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    if-nez v0, :cond_18

    const-string v2, ""

    goto :goto_19

    :cond_18
    move-object v2, v0

    :goto_19
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "creativeId = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    if-eqz v0, :cond_4b

    .line 25
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_39

    goto :goto_4b

    .line 28
    :cond_39
    const-string v1, "creativeId"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    iget-object v2, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerListener;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-interface {v1, p1, v2, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdViewListener;->onAdLoadSuccess(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/Map;)V

    return-void

    .line 26
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    iget-object v1, p0, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerListener;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-interface {v0, p1, v1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdViewListener;->onAdLoadSuccess(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic onAdShowFailed(Lio/bidmachine/IAd;Lio/bidmachine/utils/BMError;)V
    .registers 3

    .line 12
    check-cast p1, Lio/bidmachine/banner/BannerView;

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adapters/bidmachine/banner/BidMachineBannerListener;->onAdShowFailed(Lio/bidmachine/banner/BannerView;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onAdShowFailed(Lio/bidmachine/banner/BannerView;Lio/bidmachine/utils/BMError;)V
    .registers 4

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lio/bidmachine/utils/BMError;->getMessage()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Failed to show, errorCode = %s, errorMessage = %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "format(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method
