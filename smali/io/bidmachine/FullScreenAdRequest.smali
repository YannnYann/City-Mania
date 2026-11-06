###### Class io.bidmachine.FullScreenAdRequest (io.bidmachine.FullScreenAdRequest)
.class public abstract Lio/bidmachine/FullScreenAdRequest;
.super Lio/bidmachine/AdRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/FullScreenAdRequest$b;,
        Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType:",
        "Lio/bidmachine/FullScreenAdRequest<",
        "TSelfType;>;>",
        "Lio/bidmachine/AdRequest<",
        "TSelfType;",
        "Lio/bidmachine/FullScreenAdRequestParameters;",
        "Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/bidmachine/FullScreenAdRequestParameters;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;-><init>(Lio/bidmachine/AdRequestParameters;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createUnifiedAdRequestParams(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedAdRequestParams;
    .registers 4

    .line 1
    check-cast p1, Lio/bidmachine/FullScreenAdRequestParameters;

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/FullScreenAdRequest;->createUnifiedAdRequestParams(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;

    move-result-object p1

    return-object p1
.end method

.method public createUnifiedAdRequestParams(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;
    .registers 6

    .line 2
    new-instance v0, Lio/bidmachine/FullScreenAdRequest$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lio/bidmachine/FullScreenAdRequest$b;-><init>(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;Lio/bidmachine/FullScreenAdRequest$a;)V

    return-object v0
.end method

.method public getAdContentType()Lio/bidmachine/AdContentType;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v0

    check-cast v0, Lio/bidmachine/FullScreenAdRequestParameters;

    invoke-virtual {v0}, Lio/bidmachine/FullScreenAdRequestParameters;->getAdContentType()Lio/bidmachine/AdContentType;

    move-result-object v0

    return-object v0
.end method

.method public isPlacementBuilderMatch(Lio/bidmachine/displays/PlacementBuilder;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest;->isPlacementBuilderMatch(Lio/bidmachine/displays/PlacementBuilder;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v0

    check-cast v0, Lio/bidmachine/FullScreenAdRequestParameters;

    invoke-virtual {p1}, Lio/bidmachine/displays/PlacementBuilder;->getAdContentType()Lio/bidmachine/AdContentType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/FullScreenAdRequestParameters;->isContentTypeMatch(Lio/bidmachine/AdContentType;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

###### Class io.bidmachine.FullScreenAdRequest.FullScreenRequestBuilder (io.bidmachine.FullScreenAdRequest$FullScreenRequestBuilder)
.class public abstract Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;
.super Lio/bidmachine/AdRequest$AdRequestBuilderImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/FullScreenAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FullScreenRequestBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType:",
        "Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder<",
        "TSelfType;TReturnType;>;ReturnType:",
        "Lio/bidmachine/FullScreenAdRequest<",
        "TReturnType;>;>",
        "Lio/bidmachine/AdRequest$AdRequestBuilderImpl<",
        "TSelfType;TReturnType;",
        "Lio/bidmachine/FullScreenAdRequestParameters;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/bidmachine/AdPlacementConfig;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    return-void
.end method


# virtual methods
.method public setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdContentType;",
            ")TSelfType;"
        }
    .end annotation

    .line 0
    return-object p0
.end method

###### Class io.bidmachine.FullScreenAdRequest.a (io.bidmachine.FullScreenAdRequest$a)
.class public abstract synthetic Lio/bidmachine/FullScreenAdRequest$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/FullScreenAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.FullScreenAdRequest.b (io.bidmachine.FullScreenAdRequest$b)
.class public Lio/bidmachine/FullScreenAdRequest$b;
.super Lio/bidmachine/UnifiedAdRequestParamsImpl;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/FullScreenAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/UnifiedAdRequestParamsImpl;-><init>(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;Lio/bidmachine/FullScreenAdRequest$a;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/FullScreenAdRequest$b;-><init>(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/models/TargetingInfo;Lio/bidmachine/models/DataRestrictions;)V

    return-void
.end method
