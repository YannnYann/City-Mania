###### Class io.bidmachine.media3.exoplayer.MediaPeriodHolder (io.bidmachine.media3.exoplayer.MediaPeriodHolder)
.class public final Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;
.super Ljava/lang/Object;
.source "MediaPeriodHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/MediaPeriodHolder$Factory;
    }
.end annotation


# instance fields
.field public allRenderersInCorrectState:Z

.field public hasEnabledTracks:Z

.field public info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

.field public final mayRetainStreamFlags:[Z

.field public final mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

.field public final mediaSourceList:Lio/bidmachine/media3/exoplayer/MediaSourceList;

.field public next:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

.field public prepareCalled:Z

.field public prepared:Z

.field public final rendererCapabilities:[Lio/bidmachine/media3/exoplayer/RendererCapabilities;

.field public rendererPositionOffsetUs:J

.field public final sampleStreams:[Lio/bidmachine/media3/exoplayer/source/SampleStream;

.field public final targetPreloadBufferDurationUs:J

.field public trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

.field public final trackSelector:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;

.field public trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Lio/bidmachine/media3/exoplayer/RendererCapabilities;JLio/bidmachine/media3/exoplayer/trackselection/TrackSelector;Lio/bidmachine/media3/exoplayer/upstream/Allocator;Lio/bidmachine/media3/exoplayer/MediaSourceList;Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;J)V
    .registers 11

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Lio/bidmachine/media3/exoplayer/RendererCapabilities;

    .line 115
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 116
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->trackSelector:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;

    .line 117
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaSourceList:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    move-object p2, p1

    .line 118
    iget-object p1, p7, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p3, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    .line 119
    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    .line 120
    iput-wide p9, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->targetPreloadBufferDurationUs:J

    .line 121
    sget-object p3, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->EMPTY:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 122
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 123
    array-length p3, p2

    new-array p3, p3, [Lio/bidmachine/media3/exoplayer/source/SampleStream;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/SampleStream;

    .line 124
    array-length p2, p2

    new-array p2, p2, [Z

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    move-object p3, p5

    .line 125
    iget-wide p4, p7, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    move-object p2, p6

    move-object p8, p7

    iget-wide p6, p8, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    iget-boolean p8, p8, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isPrecededByTransitionFromSameStream:Z

    .line 126
    invoke-static/range {p1 .. p8}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->createMediaPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/MediaSourceList;Lio/bidmachine/media3/exoplayer/upstream/Allocator;JJZ)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    return-void
.end method

.method public static createMediaPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/MediaSourceList;Lio/bidmachine/media3/exoplayer/upstream/Allocator;JJZ)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
    .registers 8

    .line 498
    invoke-virtual {p1, p0, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    move-result-object p1

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p5, p2

    if-eqz p0, :cond_17

    .line 500
    new-instance p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    xor-int/lit8 p2, p7, 0x1

    const-wide/16 p3, 0x0

    invoke-direct/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;ZJJ)V

    return-object p0

    :cond_17
    return-object p1
.end method

.method public static releaseMediaPeriod(Lio/bidmachine/media3/exoplayer/MediaSourceList;Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 3

    .line 513
    :try_start_0
    instance-of v0, p1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    if-eqz v0, :cond_c

    .line 514
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->releasePeriod(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    return-void

    .line 516
    :cond_c
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->releasePeriod(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 520
    const-string p1, "MediaPeriodHolder"

    const-string v0, "Period release failed."

    invoke-static {p1, v0, p0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public applyTrackSelection(Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;JZ)J
    .registers 12

    .line 302
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Lio/bidmachine/media3/exoplayer/RendererCapabilities;

    array-length v0, v0

    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public applyTrackSelection(Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J
    .registers 17

    const/4 v0, 0x0

    move v1, v0

    .line 326
    :goto_2
    iget v2, p1, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1a

    .line 327
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    if-nez p4, :cond_14

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 328
    invoke-virtual {p1, v4, v1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isEquivalent(Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;I)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_15

    :cond_14
    move v3, v0

    :goto_15
    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 333
    :cond_1a
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/SampleStream;

    invoke-virtual {p0, p4}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->disassociateNoSampleRenderersWithEmptySampleStream([Lio/bidmachine/media3/exoplayer/source/SampleStream;)V

    .line 334
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    .line 335
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 336
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->enableTrackSelectionsInResult()V

    .line 338
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    iget-object v5, p1, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/SampleStream;

    move-wide v9, p2

    move-object/from16 v8, p5

    .line 339
    invoke-interface/range {v4 .. v10}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->selectTracks([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Lio/bidmachine/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide p2

    .line 345
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/SampleStream;

    invoke-virtual {p0, p4}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->associateNoSampleRenderersWithEmptySampleStream([Lio/bidmachine/media3/exoplayer/source/SampleStream;)V

    .line 348
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    move p4, v0

    .line 349
    :goto_3e
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/SampleStream;

    array-length v2, v1

    if-ge p4, v2, :cond_6b

    .line 350
    aget-object v1, v1, p4

    if-eqz v1, :cond_5c

    .line 351
    invoke-virtual {p1, p4}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 353
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Lio/bidmachine/media3/exoplayer/RendererCapabilities;

    aget-object v1, v1, p4

    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_68

    .line 354
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    goto :goto_68

    .line 357
    :cond_5c
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v1, v1, p4

    if-nez v1, :cond_64

    move v1, v3

    goto :goto_65

    :cond_64
    move v1, v0

    :goto_65
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    :cond_68
    :goto_68
    add-int/lit8 p4, p4, 0x1

    goto :goto_3e

    :cond_6b
    return-wide p2
.end method

.method public final associateNoSampleRenderersWithEmptySampleStream([Lio/bidmachine/media3/exoplayer/source/SampleStream;)V
    .registers 5

    const/4 v0, 0x0

    .line 478
    :goto_1
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Lio/bidmachine/media3/exoplayer/RendererCapabilities;

    array-length v2, v1

    if-ge v0, v2, :cond_21

    .line 479
    aget-object v1, v1, v0

    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1e

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 480
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 481
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/EmptySampleStream;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/source/EmptySampleStream;-><init>()V

    aput-object v1, p1, v0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    return-void
.end method

.method public canBeUsedForMediaPeriodInfo(Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;)Z
    .registers 7

    .line 525
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->areDurationsCompatible(JJ)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v3, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_22

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 527
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    return p1

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method public continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)V
    .registers 3

    .line 252
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 253
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)Z

    return-void
.end method

.method public final disableTrackSelectionsInResult()V
    .registers 4

    .line 447
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_22

    :cond_7
    const/4 v0, 0x0

    .line 450
    :goto_8
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    iget v2, v1, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    if-ge v0, v2, :cond_22

    .line 451
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    .line 452
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1f

    if-eqz v2, :cond_1f

    .line 454
    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->disable()V

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_22
    :goto_22
    return-void
.end method

.method public final disassociateNoSampleRenderersWithEmptySampleStream([Lio/bidmachine/media3/exoplayer/source/SampleStream;)V
    .registers 5

    const/4 v0, 0x0

    .line 465
    :goto_1
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Lio/bidmachine/media3/exoplayer/RendererCapabilities;

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 466
    aget-object v1, v1, v0

    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_12

    const/4 v1, 0x0

    .line 467
    aput-object v1, p1, v0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public final enableTrackSelectionsInResult()V
    .registers 4

    .line 434
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_22

    :cond_7
    const/4 v0, 0x0

    .line 437
    :goto_8
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    iget v2, v1, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    if-ge v0, v2, :cond_22

    .line 438
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    .line 439
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1f

    if-eqz v2, :cond_1f

    .line 441
    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->enable()V

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_22
    :goto_22
    return-void
.end method

.method public getBufferedPositionUs()J
    .registers 6

    .line 190
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_9

    .line 191
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    return-wide v0

    .line 194
    :cond_9
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_16

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v3

    goto :goto_17

    :cond_16
    move-wide v3, v1

    :goto_17
    cmp-long v0, v3, v1

    if-nez v0, :cond_20

    .line 195
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    return-wide v0

    :cond_20
    return-wide v3
.end method

.method public getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;
    .registers 2

    .line 390
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->next:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public getNextLoadPositionUs()J
    .registers 3

    .line 203
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRendererOffset()J
    .registers 3

    .line 153
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    return-wide v0
.end method

.method public getStartPositionRendererTime()J
    .registers 5

    .line 167
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;
    .registers 2

    .line 395
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    return-object v0
.end method

.method public getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;
    .registers 2

    .line 400
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    return-object v0
.end method

.method public handlePrepared(FLio/bidmachine/media3/common/Timeline;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    .line 217
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 218
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->selectTracks(FLio/bidmachine/media3/common/Timeline;Z)Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object p1

    .line 219
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, p2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    .line 220
    iget-wide p2, p2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v2

    if-eqz v2, :cond_2b

    cmp-long v2, v0, p2

    if-ltz v2, :cond_2b

    const-wide/16 v0, 0x1

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    .line 222
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_2b
    const/4 p2, 0x0

    .line 225
    invoke-virtual {p0, p1, v0, v1, p2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;JZ)J

    move-result-wide p1

    .line 227
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v2, p3, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 228
    invoke-virtual {p3, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->copyWithStartPositionUs(J)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    return-void
.end method

.method public hasLoadingError()Z
    .registers 6

    .line 418
    :try_start_0
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 419
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_1b

    .line 421
    :cond_b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/SampleStream;

    array-length v2, v0

    move v3, v1

    :goto_f
    if-ge v3, v2, :cond_1b

    aget-object v4, v0, v3

    if-eqz v4, :cond_18

    .line 423
    invoke-interface {v4}, Lio/bidmachine/media3/exoplayer/source/SampleStream;->maybeThrowError()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_1c

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1b
    :goto_1b
    return v1

    :catch_1c
    const/4 v0, 0x1

    return v0
.end method

.method public isFullyBuffered()Z
    .registers 5

    .line 172
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    .line 173
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public isFullyPreloaded()Z
    .registers 5

    .line 178
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1b

    .line 179
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-nez v0, :cond_19

    .line 180
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v0

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v2, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->targetPreloadBufferDurationUs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1b

    :cond_19
    const/4 v0, 0x1

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public final isLoadingMediaPeriod()Z
    .registers 2

    .line 487
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->next:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .registers 5

    const/4 v0, 0x1

    .line 531
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepareCalled:Z

    .line 532
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V

    return-void
.end method

.method public reevaluateBuffer(J)V
    .registers 4

    .line 238
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->isLoadingMediaPeriod()Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 239
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_14

    .line 240
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->reevaluateBuffer(J)V

    :cond_14
    return-void
.end method

.method public release()V
    .registers 3

    .line 365
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    .line 366
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaSourceList:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->releaseMediaPeriod(Lio/bidmachine/media3/exoplayer/MediaSourceList;Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public selectTracks(FLio/bidmachine/media3/common/Timeline;Z)Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->trackSelector:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Lio/bidmachine/media3/exoplayer/RendererCapabilities;

    .line 271
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1, v2, v3, p2}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;->selectTracks([Lio/bidmachine/media3/exoplayer/RendererCapabilities;Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;)Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 272
    :goto_12
    iget v2, p2, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->length:I

    if-ge v1, v2, :cond_42

    .line 273
    invoke-virtual {p2, v1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    .line 274
    iget-object v2, p2, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, v1

    if-nez v2, :cond_30

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->rendererCapabilities:[Lio/bidmachine/media3/exoplayer/RendererCapabilities;

    aget-object v2, v2, v1

    .line 276
    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v2

    const/4 v4, -0x2

    if-ne v2, v4, :cond_2f

    goto :goto_30

    :cond_2f
    move v3, v0

    .line 274
    :cond_30
    :goto_30
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    goto :goto_3f

    .line 278
    :cond_34
    iget-object v2, p2, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, v1

    if-nez v2, :cond_3b

    goto :goto_3c

    :cond_3b
    move v3, v0

    :goto_3c
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 281
    :cond_42
    iget-object v1, p2, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v2, v1

    :goto_45
    if-ge v0, v2, :cond_54

    aget-object v3, v1, v0

    if-eqz v3, :cond_51

    .line 283
    invoke-interface {v3, p1}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    .line 284
    invoke-interface {v3, p3}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->onPlayWhenReadyChanged(Z)V

    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_54
    return-object p2
.end method

.method public setNext(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)V
    .registers 3

    .line 376
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->next:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-ne p1, v0, :cond_5

    return-void

    .line 379
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->disableTrackSelectionsInResult()V

    .line 380
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->next:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 381
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->enableTrackSelectionsInResult()V

    return-void
.end method

.method public setRendererOffset(J)V
    .registers 3

    .line 162
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->rendererPositionOffsetUs:J

    return-void
.end method

.method public toPeriodTime(J)J
    .registers 5

    .line 148
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public toRendererTime(J)J
    .registers 5

    .line 140
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public updateClipping()V
    .registers 6

    .line 405
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    instance-of v1, v0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    if-eqz v1, :cond_1c

    .line 407
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v1, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-nez v3, :cond_15

    const-wide/high16 v1, -0x8000000000000000L

    .line 408
    :cond_15
    check-cast v0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->updateClipping(JJ)V

    :cond_1c
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.MediaPeriodHolder.Factory (io.bidmachine.media3.exoplayer.MediaPeriodHolder$Factory)
.class public interface abstract Lio/bidmachine/media3/exoplayer/MediaPeriodHolder$Factory;
.super Ljava/lang/Object;
.source "MediaPeriodHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract create(Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;J)Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;
.end method
