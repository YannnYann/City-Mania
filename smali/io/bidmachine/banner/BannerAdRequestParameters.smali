###### Class io.bidmachine.banner.BannerAdRequestParameters (io.bidmachine.banner.BannerAdRequestParameters)
.class public final Lio/bidmachine/banner/BannerAdRequestParameters;
.super Lio/bidmachine/AdRequestParameters;
.source "SourceFile"


# instance fields
.field public final bannerAdSize:Lio/bidmachine/BannerAdSize;


# direct methods
.method public constructor <init>(Lio/bidmachine/AdPlacementConfig;)V
    .registers 3

    const-string v0, "adPlacementConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequestParameters;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getAdFormat()Lio/bidmachine/AdFormat;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lio/bidmachine/AdFormat$Banner;

    if-eqz v0, :cond_19

    .line 4
    check-cast p1, Lio/bidmachine/AdFormat$Banner;

    invoke-virtual {p1}, Lio/bidmachine/AdFormat$Banner;->getBannerAdSize()Lio/bidmachine/BannerAdSize;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/banner/BannerAdRequestParameters;->bannerAdSize:Lio/bidmachine/BannerAdSize;

    return-void

    .line 6
    :cond_19
    sget-object p1, Lio/bidmachine/BannerAdSize;->Banner:Lio/bidmachine/BannerAdSize;

    iput-object p1, p0, Lio/bidmachine/banner/BannerAdRequestParameters;->bannerAdSize:Lio/bidmachine/BannerAdSize;

    return-void
.end method


# virtual methods
.method public checkPlacement(Lcom/explorestack/protobuf/adcom/Placement;)Lio/bidmachine/utils/BMError;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/bidmachine/banner/BannerAdRequestParameters;->bannerAdSize:Lio/bidmachine/BannerAdSize;

    invoke-static {p1, v0}, Lio/bidmachine/utils/ProtoUtilsKt;->checkBannerPlacement(Lcom/explorestack/protobuf/adcom/Placement;Lio/bidmachine/BannerAdSize;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1
.end method

.method public final getBannerAdSize()Lio/bidmachine/BannerAdSize;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/banner/BannerAdRequestParameters;->bannerAdSize:Lio/bidmachine/BannerAdSize;

    return-object v0
.end method

.method public isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z
    .registers 3

    const-string v0, "adRequestParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequestParameters;->isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    instance-of v0, p1, Lio/bidmachine/banner/BannerAdRequestParameters;

    if-eqz v0, :cond_19

    .line 3
    check-cast p1, Lio/bidmachine/banner/BannerAdRequestParameters;

    invoke-virtual {p0, p1}, Lio/bidmachine/banner/BannerAdRequestParameters;->isParametersMatchedInternal(Lio/bidmachine/banner/BannerAdRequestParameters;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public final isParametersMatchedInternal(Lio/bidmachine/banner/BannerAdRequestParameters;)Z
    .registers 3

    .line 1
    iget-object p1, p1, Lio/bidmachine/banner/BannerAdRequestParameters;->bannerAdSize:Lio/bidmachine/BannerAdSize;

    .line 2
    iget-object v0, p0, Lio/bidmachine/banner/BannerAdRequestParameters;->bannerAdSize:Lio/bidmachine/BannerAdSize;

    invoke-virtual {v0, p1}, Lio/bidmachine/BannerAdSize;->isSuitable(Lio/bidmachine/BannerAdSize;)Z

    move-result p1

    return p1
.end method
