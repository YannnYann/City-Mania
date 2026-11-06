###### Class io.bidmachine.FullScreenAdRequestParameters (io.bidmachine.FullScreenAdRequestParameters)
.class public abstract Lio/bidmachine/FullScreenAdRequestParameters;
.super Lio/bidmachine/AdRequestParameters;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/bidmachine/AdPlacementConfig;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequestParameters;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/AdsFormat;Lio/bidmachine/AdContentType;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
        since = "3.5.0"
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/AdPlacementConfig$Builder;

    invoke-virtual {p1, p2}, Lio/bidmachine/AdsFormat;->toAdFormat(Lio/bidmachine/AdContentType;)Lio/bidmachine/AdFormat;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/bidmachine/AdPlacementConfig$Builder;-><init>(Lio/bidmachine/AdFormat;)V

    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig$Builder;->build()Lio/bidmachine/AdPlacementConfig;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/bidmachine/FullScreenAdRequestParameters;-><init>(Lio/bidmachine/AdPlacementConfig;)V

    return-void
.end method

.method private isParametersMatchedInternal(Lio/bidmachine/FullScreenAdRequestParameters;)Z
    .registers 2

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/FullScreenAdRequestParameters;->getAdContentType()Lio/bidmachine/AdContentType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/FullScreenAdRequestParameters;->isContentTypeMatch(Lio/bidmachine/AdContentType;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getAdContentType()Lio/bidmachine/AdContentType;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequestParameters;->getAdPlacementConfig()Lio/bidmachine/AdPlacementConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/AdPlacementConfig;->getAdFormat()Lio/bidmachine/AdFormat;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lio/bidmachine/AdFormat$Interstitial;

    if-eqz v1, :cond_13

    .line 3
    check-cast v0, Lio/bidmachine/AdFormat$Interstitial;

    invoke-virtual {v0}, Lio/bidmachine/AdFormat$Interstitial;->getAdContentType()Lio/bidmachine/AdContentType;

    move-result-object v0

    return-object v0

    .line 4
    :cond_13
    instance-of v1, v0, Lio/bidmachine/AdFormat$Rewarded;

    if-eqz v1, :cond_1e

    .line 5
    check-cast v0, Lio/bidmachine/AdFormat$Rewarded;

    invoke-virtual {v0}, Lio/bidmachine/AdFormat$Rewarded;->getAdContentType()Lio/bidmachine/AdContentType;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1e
    sget-object v0, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    return-object v0
.end method

.method public isContentTypeMatch(Lio/bidmachine/AdContentType;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/FullScreenAdRequestParameters;->getAdContentType()Lio/bidmachine/AdContentType;

    move-result-object v0

    .line 2
    sget-object v1, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    if-eq v0, v1, :cond_d

    if-ne v0, p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    return p1

    :cond_d
    :goto_d
    const/4 p1, 0x1

    return p1
.end method

.method public isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequestParameters;->isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z

    move-result v0

    if-eqz v0, :cond_14

    instance-of v0, p1, Lio/bidmachine/FullScreenAdRequestParameters;

    if-eqz v0, :cond_14

    check-cast p1, Lio/bidmachine/FullScreenAdRequestParameters;

    .line 3
    invoke-direct {p0, p1}, Lio/bidmachine/FullScreenAdRequestParameters;->isParametersMatchedInternal(Lio/bidmachine/FullScreenAdRequestParameters;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method
