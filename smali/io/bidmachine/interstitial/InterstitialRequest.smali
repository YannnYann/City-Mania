###### Class io.bidmachine.interstitial.InterstitialRequest (io.bidmachine.interstitial.InterstitialRequest)
.class public final Lio/bidmachine/interstitial/InterstitialRequest;
.super Lio/bidmachine/FullScreenAdRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/interstitial/InterstitialRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/FullScreenAdRequest<",
        "Lio/bidmachine/interstitial/InterstitialRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/bidmachine/FullScreenAdRequestParameters;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/FullScreenAdRequest;-><init>(Lio/bidmachine/FullScreenAdRequestParameters;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/interstitial/InterstitialRequest$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/interstitial/InterstitialRequest;-><init>(Lio/bidmachine/FullScreenAdRequestParameters;)V

    return-void
.end method

###### Class io.bidmachine.interstitial.InterstitialRequest.Builder (io.bidmachine.interstitial.InterstitialRequest$Builder)
.class public final Lio/bidmachine/interstitial/InterstitialRequest$Builder;
.super Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/interstitial/InterstitialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder<",
        "Lio/bidmachine/interstitial/InterstitialRequest$Builder;",
        "Lio/bidmachine/interstitial/InterstitialRequest;",
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
    invoke-static {}, Lio/bidmachine/AdPlacementConfig;->interstitialBuilder()Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig$Builder;->build()Lio/bidmachine/AdPlacementConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/bidmachine/interstitial/InterstitialRequest$Builder;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/AdPlacementConfig;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;-><init>(Lio/bidmachine/AdPlacementConfig;)V

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
    check-cast p1, Lio/bidmachine/FullScreenAdRequestParameters;

    invoke-virtual {p0, p1}, Lio/bidmachine/interstitial/InterstitialRequest$Builder;->build(Lio/bidmachine/FullScreenAdRequestParameters;)Lio/bidmachine/interstitial/InterstitialRequest;

    move-result-object p1

    return-object p1
.end method

.method public build(Lio/bidmachine/FullScreenAdRequestParameters;)Lio/bidmachine/interstitial/InterstitialRequest;
    .registers 4

    .line 3
    new-instance v0, Lio/bidmachine/interstitial/InterstitialRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/interstitial/InterstitialRequest;-><init>(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/interstitial/InterstitialRequest$a;)V

    return-object v0
.end method

.method public bridge synthetic createAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/interstitial/InterstitialRequest$Builder;->createAdRequestParameters()Lio/bidmachine/FullScreenAdRequestParameters;

    move-result-object v0

    return-object v0
.end method

.method public createAdRequestParameters()Lio/bidmachine/FullScreenAdRequestParameters;
    .registers 3

    .line 2
    new-instance v0, Lio/bidmachine/interstitial/InterstitialAdRequestParameters;

    iget-object v1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

    invoke-direct {v0, v1}, Lio/bidmachine/interstitial/InterstitialAdRequestParameters;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    return-object v0
.end method

.method public bridge synthetic setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
        since = "3.5.0"
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/interstitial/InterstitialRequest$Builder;->setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/interstitial/InterstitialRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/interstitial/InterstitialRequest$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
        since = "3.5.0"
    .end annotation

    .line 2
    iget-object v0, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

    invoke-static {p1}, Lio/bidmachine/AdFormat;->createInterstitial(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/AdPlacementConfig;->newBuilder(Lio/bidmachine/AdFormat;)Lio/bidmachine/AdPlacementConfig$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig$Builder;->build()Lio/bidmachine/AdPlacementConfig;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

    return-object p0
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

###### Class io.bidmachine.interstitial.InterstitialRequest.a (io.bidmachine.interstitial.InterstitialRequest$a)
.class public abstract synthetic Lio/bidmachine/interstitial/InterstitialRequest$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/interstitial/InterstitialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation
