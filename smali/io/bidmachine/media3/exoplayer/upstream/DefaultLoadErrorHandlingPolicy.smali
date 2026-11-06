###### Class io.bidmachine.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy (io.bidmachine.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy)
.class public Lio/bidmachine/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;
.super Ljava/lang/Object;
.source "DefaultLoadErrorHandlingPolicy.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;


# instance fields
.field public final minimumLoadableRetryCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    .line 68
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;->minimumLoadableRetryCount:I

    return-void
.end method


# virtual methods
.method public getFallbackSelectionFor(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;
    .registers 5

    .line 98
    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->exception:Ljava/io/IOException;

    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;->isEligibleForFallback(Ljava/io/IOException;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_a

    return-object v0

    :cond_a
    const/4 p2, 0x1

    .line 102
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->isFallbackAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 103
    new-instance p1, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    const-wide/32 v0, 0x493e0

    invoke-direct {p1, p2, v0, v1}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;-><init>(IJ)V

    return-object p1

    :cond_1a
    const/4 p2, 0x2

    .line 104
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->isFallbackAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 105
    new-instance p1, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    const-wide/32 v0, 0xea60

    invoke-direct {p1, p2, v0, v1}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;-><init>(IJ)V

    return-object p1

    :cond_2a
    return-object v0
.end method

.method public getMinimumLoadableRetryCount(I)I
    .registers 4

    .line 135
    iget v0, p0, Lio/bidmachine/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;->minimumLoadableRetryCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x7

    if-ne p1, v0, :cond_a

    const/4 p1, 0x6

    return p1

    :cond_a
    const/4 p1, 0x3

    return p1

    :cond_c
    return v0
.end method

.method public getRetryDelayMsFor(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J
    .registers 4

    .line 119
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->exception:Ljava/io/IOException;

    .line 124
    instance-of v1, v0, Lio/bidmachine/media3/common/ParserException;

    if-nez v1, :cond_27

    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-nez v1, :cond_27

    instance-of v1, v0, Lio/bidmachine/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    if-nez v1, :cond_27

    instance-of v1, v0, Lio/bidmachine/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;

    if-nez v1, :cond_27

    invoke-static {v0}, Lio/bidmachine/media3/datasource/DataSourceException;->isCausedByPositionOutOfRange(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_27

    .line 126
    :cond_19
    iget p1, p1, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->errorCount:I

    add-int/lit8 p1, p1, -0x1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_27
    :goto_27
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public isEligibleForFallback(Ljava/io/IOException;)Z
    .registers 4

    .line 146
    instance-of v0, p1, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 149
    :cond_6
    check-cast p1, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    .line 151
    iget p1, p1, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v0, 0x193

    if-eq p1, v0, :cond_24

    const/16 v0, 0x194

    if-eq p1, v0, :cond_24

    const/16 v0, 0x19a

    if-eq p1, v0, :cond_24

    const/16 v0, 0x1a0

    if-eq p1, v0, :cond_24

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_24

    const/16 v0, 0x1f7

    if-ne p1, v0, :cond_23

    goto :goto_24

    :cond_23
    return v1

    :cond_24
    :goto_24
    const/4 p1, 0x1

    return p1
.end method
