###### Class io.bidmachine.banner.BannerRequest (io.bidmachine.banner.BannerRequest)
.class public final Lio/bidmachine/banner/BannerRequest;
.super Lio/bidmachine/AdRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/banner/BannerRequest$b;,
        Lio/bidmachine/banner/BannerRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest<",
        "Lio/bidmachine/banner/BannerRequest;",
        "Lio/bidmachine/banner/BannerAdRequestParameters;",
        "Lio/bidmachine/unified/UnifiedBannerAdRequestParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/bidmachine/banner/BannerAdRequestParameters;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;-><init>(Lio/bidmachine/AdRequestParameters;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/banner/BannerAdRequestParameters;Lio/bidmachine/banner/BannerRequest$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/banner/BannerRequest;-><init>(Lio/bidmachine/banner/BannerAdRequestParameters;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createUnifiedAdRequestParams(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedAdRequestParams;
    .registers 4

    .line 1
    check-cast p1, Lio/bidmachine/banner/BannerAdRequestParameters;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/banner/BannerRequest;->createUnifiedAdRequestParams(Lio/bidmachine/banner/BannerAdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedBannerAdRequestParams;

    move-result-object p1

    return-object p1
.end method

.method public createUnifiedAdRequestParams(Lio/bidmachine/banner/BannerAdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedBannerAdRequestParams;
    .registers 6

    .line 2
    new-instance v0, Lio/bidmachine/banner/BannerRequest$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lio/bidmachine/banner/BannerRequest$b;-><init>(Lio/bidmachine/banner/BannerAdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;Lio/bidmachine/banner/BannerRequest$a;)V

    return-object v0
.end method

.method public getBannerAdSize()Lio/bidmachine/BannerAdSize;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v0

    check-cast v0, Lio/bidmachine/banner/BannerAdRequestParameters;

    invoke-virtual {v0}, Lio/bidmachine/banner/BannerAdRequestParameters;->getBannerAdSize()Lio/bidmachine/BannerAdSize;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.banner.BannerRequest.Builder (io.bidmachine.banner.BannerRequest$Builder)
.class public final Lio/bidmachine/banner/BannerRequest$Builder;
.super Lio/bidmachine/AdRequest$AdRequestBuilderImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/banner/BannerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest$AdRequestBuilderImpl<",
        "Lio/bidmachine/banner/BannerRequest$Builder;",
        "Lio/bidmachine/banner/BannerRequest;",
        "Lio/bidmachine/banner/BannerAdRequestParameters;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
        since = "3.5.0"
    .end annotation

    .line 1
    invoke-static {}, Lio/bidmachine/AdPlacementConfig;->bannerBuilder()Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig$Builder;->build()Lio/bidmachine/AdPlacementConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/AdPlacementConfig;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lio/bidmachine/AdRequest;
    .registers 2

    .line 1
    invoke-super {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->build()Lio/bidmachine/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/AdRequest;
    .registers 2

    .line 2
    check-cast p1, Lio/bidmachine/banner/BannerAdRequestParameters;

    invoke-virtual {p0, p1}, Lio/bidmachine/banner/BannerRequest$Builder;->build(Lio/bidmachine/banner/BannerAdRequestParameters;)Lio/bidmachine/banner/BannerRequest;

    move-result-object p1

    return-object p1
.end method

.method public build(Lio/bidmachine/banner/BannerAdRequestParameters;)Lio/bidmachine/banner/BannerRequest;
    .registers 4

    .line 3
    new-instance v0, Lio/bidmachine/banner/BannerRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/banner/BannerRequest;-><init>(Lio/bidmachine/banner/BannerAdRequestParameters;Lio/bidmachine/banner/BannerRequest$a;)V

    return-object v0
.end method

.method public bridge synthetic createAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/banner/BannerRequest$Builder;->createAdRequestParameters()Lio/bidmachine/banner/BannerAdRequestParameters;

    move-result-object v0

    return-object v0
.end method

.method public createAdRequestParameters()Lio/bidmachine/banner/BannerAdRequestParameters;
    .registers 3

    .line 2
    new-instance v0, Lio/bidmachine/banner/BannerAdRequestParameters;

    iget-object v1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

    invoke-direct {v0, v1}, Lio/bidmachine/banner/BannerAdRequestParameters;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    return-object v0
.end method

.method public bridge synthetic setBidPayload(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setBidPayload(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCustomParams(Lio/bidmachine/CustomParams;)Lio/bidmachine/models/RequestBuilder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
        since = "3.5.0"
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setCustomParams(Lio/bidmachine/CustomParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Lio/bidmachine/models/RequestBuilder;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLoadingTimeOut(Ljava/lang/Integer;)Lio/bidmachine/models/RequestBuilder;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setLoadingTimeOut(Ljava/lang/Integer;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNetworks(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setNetworks(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNetworks(Ljava/util/List;)Lio/bidmachine/models/RequestBuilder;
    .registers 2

    .line 2
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setNetworks(Ljava/util/List;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPlacementId(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
        since = "3.5.0"
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setPlacementId(Ljava/lang/String;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Lio/bidmachine/models/RequestBuilder;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSessionAdParams(Lio/bidmachine/SessionAdParams;)Lio/bidmachine/models/RequestBuilder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setSessionAdParams(Lio/bidmachine/SessionAdParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTargetingParams(Lio/bidmachine/TargetingParams;)Lio/bidmachine/models/RequestBuilder;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setTargetingParams(Lio/bidmachine/TargetingParams;)Lio/bidmachine/models/RequestBuilder;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.banner.BannerRequest.a (io.bidmachine.banner.BannerRequest$a)
.class public abstract synthetic Lio/bidmachine/banner/BannerRequest$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/banner/BannerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.banner.BannerRequest.b (io.bidmachine.banner.BannerRequest$b)
.class public Lio/bidmachine/banner/BannerRequest$b;
.super Lio/bidmachine/UnifiedAdRequestParamsImpl;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/unified/UnifiedBannerAdRequestParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/banner/BannerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lio/bidmachine/banner/BannerAdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/UnifiedAdRequestParamsImpl;-><init>(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/banner/BannerAdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;Lio/bidmachine/banner/BannerRequest$a;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/banner/BannerRequest$b;-><init>(Lio/bidmachine/banner/BannerAdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAdRequestParameters()Lio/bidmachine/banner/BannerAdRequestParameters;
    .registers 2

    .line 1
    invoke-super {p0}, Lio/bidmachine/UnifiedAdRequestParamsImpl;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v0

    check-cast v0, Lio/bidmachine/banner/BannerAdRequestParameters;

    return-object v0
.end method
