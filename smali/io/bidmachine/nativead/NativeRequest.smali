###### Class io.bidmachine.nativead.NativeRequest (io.bidmachine.nativead.NativeRequest)
.class public final Lio/bidmachine/nativead/NativeRequest;
.super Lio/bidmachine/AdRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/NativeRequest$b;,
        Lio/bidmachine/nativead/NativeRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest<",
        "Lio/bidmachine/nativead/NativeRequest;",
        "Lio/bidmachine/nativead/NativeAdRequestParameters;",
        "Lio/bidmachine/unified/UnifiedNativeAdRequestParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/NativeAdRequestParameters;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;-><init>(Lio/bidmachine/AdRequestParameters;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/nativead/NativeRequest$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/NativeRequest;-><init>(Lio/bidmachine/nativead/NativeAdRequestParameters;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createUnifiedAdRequestParams(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedAdRequestParams;
    .registers 4

    .line 1
    check-cast p1, Lio/bidmachine/nativead/NativeAdRequestParameters;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/nativead/NativeRequest;->createUnifiedAdRequestParams(Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedNativeAdRequestParams;

    move-result-object p1

    return-object p1
.end method

.method public createUnifiedAdRequestParams(Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedNativeAdRequestParams;
    .registers 6

    .line 2
    new-instance v0, Lio/bidmachine/nativead/NativeRequest$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lio/bidmachine/nativead/NativeRequest$b;-><init>(Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;Lio/bidmachine/nativead/NativeRequest$a;)V

    return-object v0
.end method

.method public processBidPayload(Lio/bidmachine/protobuf/ResponsePayload;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v0

    check-cast v0, Lio/bidmachine/nativead/NativeAdRequestParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/NativeAdRequestParameters;->setValidateAssets(Z)V

    .line 2
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest;->processBidPayload(Lio/bidmachine/protobuf/ResponsePayload;)V

    return-void
.end method

###### Class io.bidmachine.nativead.NativeRequest.Builder (io.bidmachine.nativead.NativeRequest$Builder)
.class public final Lio/bidmachine/nativead/NativeRequest$Builder;
.super Lio/bidmachine/AdRequest$AdRequestBuilderImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/NativeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest$AdRequestBuilderImpl<",
        "Lio/bidmachine/nativead/NativeRequest$Builder;",
        "Lio/bidmachine/nativead/NativeRequest;",
        "Lio/bidmachine/nativead/NativeAdRequestParameters;",
        ">;"
    }
.end annotation


# direct methods
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
    check-cast p1, Lio/bidmachine/nativead/NativeAdRequestParameters;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/NativeRequest$Builder;->build(Lio/bidmachine/nativead/NativeAdRequestParameters;)Lio/bidmachine/nativead/NativeRequest;

    move-result-object p1

    return-object p1
.end method

.method public build(Lio/bidmachine/nativead/NativeAdRequestParameters;)Lio/bidmachine/nativead/NativeRequest;
    .registers 4

    .line 3
    new-instance v0, Lio/bidmachine/nativead/NativeRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/nativead/NativeRequest;-><init>(Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/nativead/NativeRequest$a;)V

    return-object v0
.end method

.method public bridge synthetic createAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeRequest$Builder;->createAdRequestParameters()Lio/bidmachine/nativead/NativeAdRequestParameters;

    move-result-object v0

    return-object v0
.end method

.method public createAdRequestParameters()Lio/bidmachine/nativead/NativeAdRequestParameters;
    .registers 3

    .line 2
    new-instance v0, Lio/bidmachine/nativead/NativeAdRequestParameters;

    iget-object v1, p0, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->adPlacementConfig:Lio/bidmachine/AdPlacementConfig;

    invoke-direct {v0, v1}, Lio/bidmachine/nativead/NativeAdRequestParameters;-><init>(Lio/bidmachine/AdPlacementConfig;)V

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

###### Class io.bidmachine.nativead.NativeRequest.a (io.bidmachine.nativead.NativeRequest$a)
.class public abstract synthetic Lio/bidmachine/nativead/NativeRequest$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/NativeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.nativead.NativeRequest.b (io.bidmachine.nativead.NativeRequest$b)
.class public Lio/bidmachine/nativead/NativeRequest$b;
.super Lio/bidmachine/UnifiedAdRequestParamsImpl;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/unified/UnifiedNativeAdRequestParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/NativeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/UnifiedAdRequestParamsImpl;-><init>(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;Lio/bidmachine/nativead/NativeRequest$a;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/nativead/NativeRequest$b;-><init>(Lio/bidmachine/nativead/NativeAdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAdRequestParameters()Lio/bidmachine/nativead/NativeAdRequestParameters;
    .registers 2

    .line 1
    invoke-super {p0}, Lio/bidmachine/UnifiedAdRequestParamsImpl;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v0

    check-cast v0, Lio/bidmachine/nativead/NativeAdRequestParameters;

    return-object v0
.end method
