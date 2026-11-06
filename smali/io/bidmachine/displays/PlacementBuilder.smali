###### Class io.bidmachine.displays.PlacementBuilder (io.bidmachine.displays.PlacementBuilder)
.class public abstract Lio/bidmachine/displays/PlacementBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdRequestParamsType::",
        "Lio/bidmachine/unified/UnifiedAdRequestParams;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final contentType:Lio/bidmachine/AdContentType;

.field public final headerBiddingPlacementBuilder:Lio/bidmachine/displays/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/displays/b;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ix1psIexUIUoSbzff73uRVbkf0o(Lio/bidmachine/protobuf/sdk/Placement$Builder;Lio/bidmachine/CustomParams;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lio/bidmachine/CustomParams;->fillStructBuilder(Lcom/explorestack/protobuf/Struct$Builder;)V

    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct$Builder;->getFieldsCount()I

    move-result p1

    if-lez p1, :cond_10

    .line 4
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setCustomData(Lcom/explorestack/protobuf/Struct$Builder;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    :cond_10
    return-void
.end method

.method public constructor <init>(Lio/bidmachine/AdContentType;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/displays/PlacementBuilder;->contentType:Lio/bidmachine/AdContentType;

    .line 3
    new-instance p1, Lio/bidmachine/displays/b;

    invoke-direct {p1}, Lio/bidmachine/displays/b;-><init>()V

    iput-object p1, p0, Lio/bidmachine/displays/PlacementBuilder;->headerBiddingPlacementBuilder:Lio/bidmachine/displays/b;

    return-void
.end method


# virtual methods
.method public abstract createAdObjectParams(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;
.end method

.method public createHeaderBiddingAdObjectParams(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/displays/PlacementBuilder;->headerBiddingPlacementBuilder:Lio/bidmachine/displays/b;

    invoke-virtual {v0, p1}, Lio/bidmachine/displays/b;->a(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/models/AdObjectParams;

    move-result-object p1

    return-object p1
.end method

.method public createHeaderBiddingPlacement(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdsType;Ljava/util/Collection;Ljava/util/List;I)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;I)",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/displays/PlacementBuilder;->headerBiddingPlacementBuilder:Lio/bidmachine/displays/b;

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/displays/PlacementBuilder;->getAdContentType()Lio/bidmachine/AdContentType;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 5
    invoke-virtual/range {v0 .. v7}, Lio/bidmachine/displays/b;->a(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdsType;Lio/bidmachine/AdContentType;Ljava/util/Collection;Ljava/util/List;I)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public abstract createPlacement(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/AdsType;Ljava/util/Collection;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;I)Lcom/explorestack/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Collection<",
            "Lio/bidmachine/NetworkConfig;",
            ">;",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkAdUnit;",
            ">;",
            "Lio/bidmachine/AdPlacementConfig;",
            "I)",
            "Lcom/explorestack/protobuf/Message$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public createSdkPlacement(Lio/bidmachine/AdPlacementConfig;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;)Lio/bidmachine/protobuf/sdk/Placement;
    .registers 6

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Placement;->newBuilder()Lio/bidmachine/protobuf/sdk/Placement$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getAdFormat()Lio/bidmachine/AdFormat;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lio/bidmachine/utils/ProtoUtils;->createAdFormatBuilder(Lio/bidmachine/AdFormat;)Lio/bidmachine/protobuf/sdk/AdFormat$Builder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setAdFormat(Lio/bidmachine/protobuf/sdk/AdFormat$Builder;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 4
    invoke-virtual {v1}, Lio/bidmachine/AdFormat;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setAdType(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 7
    invoke-static {v1}, Lcom/explorestack/protobuf/StringValue;->of(Ljava/lang/String;)Lcom/explorestack/protobuf/StringValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setPlacementId(Lcom/explorestack/protobuf/StringValue;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 9
    :cond_2b
    invoke-virtual {p1}, Lio/bidmachine/AdPlacementConfig;->getCustomParams()Lio/bidmachine/CustomParams;

    move-result-object p1

    new-instance v1, Lio/bidmachine/displays/PlacementBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lio/bidmachine/displays/PlacementBuilder$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/protobuf/sdk/Placement$Builder;)V

    invoke-static {p1, v1}, Lio/bidmachine/core/Utils;->ifNotNull(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    if-eqz p2, :cond_3c

    .line 17
    invoke-virtual {v0, p2}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->setHbPlacement(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;)Lio/bidmachine/protobuf/sdk/Placement$Builder;

    .line 19
    :cond_3c
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Placement$Builder;->build()Lio/bidmachine/protobuf/sdk/Placement;

    move-result-object p1

    return-object p1
.end method

.method public getAdContentType()Lio/bidmachine/AdContentType;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/displays/PlacementBuilder;->contentType:Lio/bidmachine/AdContentType;

    return-object v0
.end method

.method public obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/displays/PlacementBuilder;->headerBiddingPlacementBuilder:Lio/bidmachine/displays/b;

    invoke-virtual {v0, p1}, Lio/bidmachine/displays/b;->b(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.displays.PlacementBuilder$$ExternalSyntheticLambda0 (io.bidmachine.displays.PlacementBuilder$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/displays/PlacementBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/protobuf/sdk/Placement$Builder;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/protobuf/sdk/Placement$Builder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/displays/PlacementBuilder$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/protobuf/sdk/Placement$Builder;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/displays/PlacementBuilder$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/protobuf/sdk/Placement$Builder;

    check-cast p1, Lio/bidmachine/CustomParams;

    invoke-static {v0, p1}, Lio/bidmachine/displays/PlacementBuilder;->$r8$lambda$ix1psIexUIUoSbzff73uRVbkf0o(Lio/bidmachine/protobuf/sdk/Placement$Builder;Lio/bidmachine/CustomParams;)V

    return-void
.end method
