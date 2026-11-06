###### Class io.bidmachine.media3.exoplayer.dash.DefaultDashChunkSource (io.bidmachine.media3.exoplayer.dash.DefaultDashChunkSource)
.class public Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/dash/DashChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;,
        Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationSegmentIterator;,
        Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;
    }
.end annotation


# instance fields
.field public final adaptationSetIndices:[I

.field public final baseUrlExclusionList:Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;

.field public final dataSource:Lio/bidmachine/media3/datasource/DataSource;

.field public final elapsedRealtimeOffsetMs:J

.field public fatalError:Ljava/io/IOException;

.field public lastChunkRequestRealtimeMs:J

.field public manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

.field public final manifestLoaderErrorThrower:Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;

.field public final maxSegmentsPerLoad:I

.field public missingLastSegment:Z

.field public periodIndex:I

.field public final playerTrackEmsgHandler:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

.field public final representationHolders:[Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

.field public trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

.field public final trackType:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;I[ILio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;ILio/bidmachine/media3/datasource/DataSource;JIZLjava/util/List;Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;)V
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;",
            "Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;",
            "Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;",
            "I[I",
            "Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;",
            "I",
            "Lio/bidmachine/media3/datasource/DataSource;",
            "JIZ",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;",
            "Lio/bidmachine/media3/exoplayer/analytics/PlayerId;",
            "Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p7

    .line 257
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v5, p2

    .line 258
    iput-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;

    .line 259
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    .line 260
    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->baseUrlExclusionList:Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;

    move-object/from16 v5, p6

    .line 261
    iput-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->adaptationSetIndices:[I

    .line 262
    iput-object v4, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    move/from16 v6, p8

    .line 263
    iput v6, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackType:I

    move-object/from16 v5, p9

    .line 264
    iput-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    .line 265
    iput v3, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->periodIndex:I

    move-wide/from16 v7, p10

    .line 266
    iput-wide v7, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    move/from16 v5, p12

    .line 267
    iput v5, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->maxSegmentsPerLoad:I

    move-object/from16 v10, p15

    .line 268
    iput-object v10, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 270
    iput-wide v7, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->lastChunkRequestRealtimeMs:J

    .line 272
    invoke-virtual {v1, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v12

    .line 274
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->getRepresentations()Ljava/util/ArrayList;

    move-result-object v1

    .line 275
    invoke-interface {v4}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v3

    new-array v3, v3, [Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    iput-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    const/4 v3, 0x0

    move v14, v3

    .line 276
    :goto_4a
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v5, v5

    if-ge v14, v5, :cond_9f

    .line 277
    invoke-interface {v4, v14}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    .line 279
    iget-object v5, v15, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v5}, Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;->selectBaseUrl(Ljava/util/List;)Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    move-result-object v5

    .line 280
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    new-instance v16, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    if-eqz v5, :cond_6a

    :goto_66
    move-object/from16 v17, v5

    move-object v5, v7

    goto :goto_73

    .line 284
    :cond_6a
    iget-object v5, v15, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    goto :goto_66

    :goto_73
    iget-object v7, v15, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->format:Lio/bidmachine/media3/common/Format;

    move/from16 v8, p13

    move-object/from16 v9, p14

    move-object/from16 v11, p16

    move-object/from16 v18, v5

    move-object/from16 v5, p1

    .line 285
    invoke-interface/range {v5 .. v11}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;->createProgressiveMediaExtractor(ILio/bidmachine/media3/common/Format;ZLjava/util/List;Lio/bidmachine/media3/extractor/TrackOutput;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    move-result-object v7

    move-object v5, v15

    move-object/from16 v9, v16

    const-wide/16 v15, 0x0

    move-wide v10, v12

    move-object/from16 v13, v17

    .line 293
    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->getIndex()Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    move-result-object v17

    move-object v12, v5

    move v5, v14

    move-object v14, v7

    invoke-direct/range {v9 .. v17}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLio/bidmachine/media3/exoplayer/dash/manifest/Representation;Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;JLio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;)V

    aput-object v9, v18, v5

    add-int/lit8 v14, v5, 0x1

    move/from16 v6, p8

    move-wide v12, v10

    move-object/from16 v10, p15

    goto :goto_4a

    :cond_9f
    return-void
.end method


# virtual methods
.method public final createFallbackOptions(Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;",
            ">;)",
            "Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;"
        }
    .end annotation

    .line 652
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 653
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v3, v2, :cond_17

    .line 656
    invoke-interface {p1, v3, v0, v1}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->isTrackExcluded(IJ)Z

    move-result v5

    if-eqz v5, :cond_14

    add-int/lit8 v4, v4, 0x1

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 660
    :cond_17
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;->getPriorityCount(Ljava/util/List;)I

    move-result p1

    .line 661
    new-instance v0, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->baseUrlExclusionList:Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;

    .line 664
    invoke-virtual {v1, p2}, Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;->getPriorityCountAfterExclusion(Ljava/util/List;)I

    move-result p2

    sub-int p2, p1, p2

    invoke-direct {v0, p1, p2, v2, v4}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;-><init>(IIII)V

    return-object v0
.end method

.method public getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J
    .registers 20

    move-wide/from16 v1, p1

    move-object/from16 v7, p0

    .line 300
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_4f

    aget-object v5, v0, v4

    .line 301
    iget-object v6, v5, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    if-eqz v6, :cond_4a

    .line 302
    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_1b

    goto :goto_4a

    .line 306
    :cond_1b
    invoke-virtual {v5, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)J

    move-result-wide v3

    move-wide v10, v3

    .line 307
    invoke-virtual {v5, v10, v11}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_43

    const-wide/16 v12, -0x1

    cmp-long v0, v8, v12

    const-wide/16 v12, 0x1

    if-eqz v0, :cond_3a

    .line 312
    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstSegmentNum()J

    move-result-wide v14

    add-long/2addr v14, v8

    sub-long/2addr v14, v12

    cmp-long v0, v10, v14

    if-gez v0, :cond_43

    :cond_3a
    add-long v8, v10, v12

    .line 313
    invoke-virtual {v5, v8, v9}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v5

    :goto_40
    move-object/from16 v0, p3

    goto :goto_45

    :cond_43
    move-wide v5, v3

    goto :goto_40

    .line 315
    :goto_45
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/SeekParameters;->resolveSeekPositionUs(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_4a
    :goto_4a
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v1, p1

    goto :goto_8

    :cond_4f
    return-wide p1
.end method

.method public final getAvailableLiveDurationUs(JJ)J
    .registers 11

    .line 695
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_16

    goto :goto_34

    .line 698
    :cond_16
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getLastAvailableSegmentNum(J)J

    move-result-wide v2

    .line 699
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide v0

    .line 700
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->getNowPeriodTimeUs(J)J

    move-result-wide p1

    .line 701
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    sub-long/2addr p1, p3

    .line 702
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_34
    :goto_34
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public getNextChunk(Lio/bidmachine/media3/exoplayer/LoadingInfo;JLjava/util/List;Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;)V
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/LoadingInfo;",
            "J",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p5

    .line 376
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v1, :cond_9

    goto :goto_32

    :cond_9
    move-object/from16 v1, p1

    .line 380
    iget-wide v9, v1, Lio/bidmachine/media3/exoplayer/LoadingInfo;->playbackPositionUs:J

    sub-long v11, p2, v9

    .line 382
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-wide v1, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 383
    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget v4, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->periodIndex:I

    .line 384
    invoke-virtual {v3, v4}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriod(I)Lio/bidmachine/media3/exoplayer/dash/manifest/Period;

    move-result-object v3

    iget-wide v3, v3, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->startMs:J

    invoke-static {v3, v4}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v3

    add-long/2addr v1, v3

    add-long v1, v1, p2

    .line 387
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    if-eqz v3, :cond_33

    .line 388
    invoke-virtual {v3, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->maybeRefreshManifestBeforeLoadingNextChunk(J)Z

    move-result v1

    if-eqz v1, :cond_33

    :goto_32
    return-void

    .line 393
    :cond_33
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v13

    .line 394
    invoke-virtual {v0, v13, v14}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->getNowPeriodTimeUs(J)J

    move-result-wide v16

    .line 395
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v18, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_4f

    move-object/from16 v3, p4

    move-object/from16 v1, v18

    goto :goto_5c

    :cond_4f
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    move-object/from16 v3, p4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;

    .line 396
    :goto_5c
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v4}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v4

    new-array v5, v4, [Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;

    const/16 v19, 0x0

    move/from16 v6, v19

    :goto_68
    if-ge v6, v4, :cond_cd

    .line 398
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v7, v7, v6

    .line 399
    iget-object v8, v7, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    if-nez v8, :cond_82

    .line 400
    sget-object v7, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;->EMPTY:Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;

    aput-object v7, v5, v6

    move-object v8, v0

    move-object/from16 v20, v1

    move/from16 v22, v2

    move-object/from16 v21, v5

    move-wide/from16 v23, v11

    move v12, v4

    move v11, v6

    goto :goto_be

    :cond_82
    move-object v8, v5

    move/from16 v20, v6

    .line 403
    invoke-virtual {v7, v13, v14}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstAvailableSegmentNum(J)J

    move-result-wide v5

    move/from16 v22, v2

    move-object/from16 v21, v8

    move-object v2, v1

    move-object v1, v7

    .line 405
    invoke-virtual {v1, v13, v14}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getLastAvailableSegmentNum(J)J

    move-result-wide v7

    move-wide/from16 v23, v11

    move/from16 v11, v20

    move v12, v4

    move-wide/from16 v3, p2

    .line 407
    invoke-virtual/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->getSegmentNum(Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;JJJ)J

    move-result-wide v25

    move-wide/from16 v27, v7

    move-object v8, v0

    move-wide/from16 v0, v27

    move-object/from16 v20, v2

    cmp-long v2, v25, v5

    if-gez v2, :cond_ae

    .line 414
    sget-object v0, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;->EMPTY:Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;

    aput-object v0, v21, v11

    goto :goto_be

    :cond_ae
    move-wide v4, v0

    .line 416
    invoke-virtual {v8, v11}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->updateSelectedBaseUrl(I)Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    move-result-object v1

    .line 417
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationSegmentIterator;

    move-wide/from16 v6, v16

    move-wide/from16 v2, v25

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationSegmentIterator;-><init>(Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;JJJ)V

    aput-object v0, v21, v11

    :goto_be
    add-int/lit8 v6, v11, 0x1

    move-object/from16 v3, p4

    move-object v0, v8

    move v4, v12

    move-object/from16 v1, v20

    move-object/from16 v5, v21

    move/from16 v2, v22

    move-wide/from16 v11, v23

    goto :goto_68

    :cond_cd
    move-object v8, v0

    move-object/from16 v20, v1

    move/from16 v22, v2

    move-object/from16 v21, v5

    move-wide/from16 v23, v11

    .line 424
    invoke-virtual {v8, v13, v14, v9, v10}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->getAvailableLiveDurationUs(JJ)J

    move-result-wide v5

    .line 425
    iget-object v0, v8, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    move-object/from16 v7, p4

    move-wide v1, v9

    move-wide/from16 v3, v23

    move-object v9, v8

    move-object/from16 v8, v21

    invoke-interface/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunkIterator;)V

    .line 427
    iget-object v0, v9, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndex()I

    move-result v0

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v9, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->lastChunkRequestRealtimeMs:J

    .line 442
    invoke-virtual {v9, v0}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->updateSelectedBaseUrl(I)Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    move-result-object v1

    .line 443
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    const/4 v8, 0x0

    if-eqz v0, :cond_11b

    .line 444
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    .line 447
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;->getSampleFormats()[Lio/bidmachine/media3/common/Format;

    move-result-object v0

    if-nez v0, :cond_10a

    .line 448
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->getInitializationUri()Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object v0

    move-object v6, v0

    goto :goto_10c

    :cond_10a
    move-object/from16 v6, v18

    .line 450
    :goto_10c
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    if-nez v0, :cond_114

    .line 451
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->getIndexUri()Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object v18

    :cond_114
    move-object/from16 v7, v18

    if-nez v6, :cond_11e

    if-eqz v7, :cond_11b

    goto :goto_11e

    :cond_11b
    move-object v0, v9

    move-object v9, v8

    goto :goto_13a

    .line 455
    :cond_11e
    :goto_11e
    iget-object v2, v9, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    iget-object v0, v9, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 459
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Lio/bidmachine/media3/common/Format;

    move-result-object v3

    iget-object v0, v9, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 460
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionReason()I

    move-result v4

    iget-object v0, v9, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 461
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v9

    .line 456
    invoke-virtual/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->newInitializationChunk(Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/common/Format;ILjava/lang/Object;Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;Lio/bidmachine/media3/exoplayer/upstream/CmcdData$Factory;)Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    move-result-object v1

    iput-object v1, v15, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;->chunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    return-void

    .line 469
    :goto_13a
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->access$000(Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;)J

    move-result-wide v10

    .line 470
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-boolean v3, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v3, :cond_151

    iget v3, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->periodIndex:I

    .line 471
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_151

    move/from16 v2, v22

    goto :goto_153

    :cond_151
    move/from16 v2, v19

    :goto_153
    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_162

    cmp-long v3, v10, v23

    if-eqz v3, :cond_15f

    goto :goto_162

    :cond_15f
    move/from16 v3, v19

    goto :goto_164

    :cond_162
    :goto_162
    move/from16 v3, v22

    .line 474
    :goto_164
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_171

    .line 476
    iput-boolean v3, v15, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;->endOfStream:Z

    return-void

    .line 480
    :cond_171
    invoke-virtual {v1, v13, v14}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstAvailableSegmentNum(J)J

    move-result-wide v5

    .line 481
    invoke-virtual {v1, v13, v14}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getLastAvailableSegmentNum(J)J

    move-result-wide v7

    if-eqz v2, :cond_191

    .line 484
    invoke-virtual {v1, v7, v8}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide v12

    .line 487
    invoke-virtual {v1, v7, v8}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v25

    sub-long v25, v12, v25

    add-long v12, v12, v25

    cmp-long v2, v12, v10

    if-ltz v2, :cond_18e

    move/from16 v2, v22

    goto :goto_190

    :cond_18e
    move/from16 v2, v19

    :goto_190
    and-int/2addr v3, v2

    :cond_191
    move v12, v3

    move-object/from16 v2, v20

    move-wide/from16 v3, p2

    .line 493
    invoke-virtual/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->getSegmentNum(Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;JJJ)J

    move-result-wide v13

    cmp-long v2, v13, v5

    if-gez v2, :cond_1a6

    .line 501
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/BehindLiveWindowException;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/source/BehindLiveWindowException;-><init>()V

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    return-void

    :cond_1a6
    cmp-long v2, v13, v7

    if-gtz v2, :cond_213

    .line 505
    iget-boolean v3, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->missingLastSegment:Z

    if-eqz v3, :cond_1b1

    if-ltz v2, :cond_1b1

    goto :goto_213

    :cond_1b1
    if-eqz v12, :cond_1c0

    .line 512
    invoke-virtual {v1, v13, v14}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-ltz v2, :cond_1c0

    move/from16 v2, v22

    .line 514
    iput-boolean v2, v15, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;->endOfStream:Z

    return-void

    .line 518
    :cond_1c0
    iget v2, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->maxSegmentsPerLoad:I

    int-to-long v2, v2

    sub-long/2addr v7, v13

    const-wide/16 v4, 0x1

    add-long/2addr v7, v4

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    cmp-long v3, v10, v23

    if-eqz v3, :cond_1e1

    const/4 v3, 0x1

    :goto_1d1
    if-le v2, v3, :cond_1e1

    int-to-long v6, v2

    add-long/2addr v6, v13

    sub-long/2addr v6, v4

    .line 521
    invoke-virtual {v1, v6, v7}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-ltz v6, :cond_1e1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1d1

    .line 529
    :cond_1e1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1ec

    move-wide/from16 v10, p2

    :goto_1e9
    move-object v8, v9

    move v9, v2

    goto :goto_1ef

    :cond_1ec
    move-wide/from16 v10, v23

    goto :goto_1e9

    .line 530
    :goto_1ef
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    iget v3, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackType:I

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 535
    invoke-interface {v4}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Lio/bidmachine/media3/common/Format;

    move-result-object v4

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 536
    invoke-interface {v5}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionReason()I

    move-result v5

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 537
    invoke-interface {v6}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v6

    move-wide/from16 v27, v13

    move-object v14, v8

    move-wide/from16 v7, v27

    move-wide/from16 v12, v16

    .line 531
    invoke-virtual/range {v0 .. v14}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->newMediaChunk(Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;Lio/bidmachine/media3/datasource/DataSource;ILio/bidmachine/media3/common/Format;ILjava/lang/Object;JIJJLio/bidmachine/media3/exoplayer/upstream/CmcdData$Factory;)Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    move-result-object v1

    iput-object v1, v15, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;->chunk:Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;

    return-void

    .line 508
    :cond_213
    :goto_213
    iput-boolean v12, v15, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkHolder;->endOfStream:Z

    return-void
.end method

.method public final getNextObjectAndRangeRequest(JLio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;",
            "Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 898
    invoke-virtual {p4}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    const/4 p1, 0x0

    return-object p1

    .line 901
    :cond_d
    invoke-virtual {p4, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(J)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object p1

    .line 902
    iget-object p2, p4, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 903
    iget-object p3, p4, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object p3, p3, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 904
    invoke-static {p2, p3}, Lio/bidmachine/media3/common/util/UriUtil;->getRelativePath(Landroid/net/Uri;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    .line 906
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->start:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, "-"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 907
    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->length:J

    const-wide/16 v2, -0x1

    cmp-long p4, v0, v2

    if-eqz p4, :cond_54

    .line 908
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->start:J

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->length:J

    add-long/2addr v0, v2

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 910
    :cond_54
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final getNowPeriodTimeUs(J)J
    .registers 9

    .line 706
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_e

    return-wide v3

    .line 709
    :cond_e
    iget v3, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->periodIndex:I

    .line 710
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriod(I)Lio/bidmachine/media3/exoplayer/dash/manifest/Period;

    move-result-object v0

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->startMs:J

    add-long/2addr v1, v3

    .line 709
    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public getPreferredQueueSize(JLjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_15

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_e

    goto :goto_15

    .line 358
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result p1

    return p1

    .line 356
    :cond_15
    :goto_15
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final getRepresentations()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;",
            ">;"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriod(I)Lio/bidmachine/media3/exoplayer/dash/manifest/Period;

    move-result-object v0

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 687
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 688
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->adaptationSetIndices:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_25

    aget v5, v2, v4

    .line 689
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;

    iget-object v5, v5, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_25
    return-object v1
.end method

.method public final getSegmentNum(Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;JJJ)J
    .registers 9

    if-eqz p2, :cond_7

    .line 676
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;->getNextChunkIndex()J

    move-result-wide p1

    return-wide p1

    .line 678
    :cond_7
    invoke-virtual {p1, p3, p4}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)J

    move-result-wide p3

    .line 677
    invoke-static/range {p3 .. p8}, Lio/bidmachine/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_a

    .line 349
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void

    .line 347
    :cond_a
    throw v0
.end method

.method public newInitializationChunk(Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/common/Format;ILjava/lang/Object;Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;Lio/bidmachine/media3/exoplayer/upstream/CmcdData$Factory;)Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;
    .registers 21

    move-object/from16 v0, p6

    .line 737
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    if-eqz v0, :cond_15

    .line 742
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    move-object/from16 v3, p7

    .line 743
    invoke-virtual {v0, v3, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->attemptMerge(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object v2

    if-nez v2, :cond_13

    goto :goto_1d

    :cond_13
    move-object v0, v2

    goto :goto_1d

    :cond_15
    move-object/from16 v3, p7

    .line 748
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    .line 750
    :goto_1d
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    const/4 v3, 0x0

    .line 756
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    .line 751
    invoke-static {v1, v2, v0, v3, v4}, Lio/bidmachine/media3/exoplayer/dash/DashUtil;->buildDataSpec(Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;ILjava/util/Map;)Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object v7

    .line 763
    new-instance v5, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;

    iget-object v11, p1, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    move-object v6, p2

    move-object v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v11}, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;-><init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Lio/bidmachine/media3/common/Format;ILjava/lang/Object;Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;)V

    return-object v5
.end method

.method public newMediaChunk(Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;Lio/bidmachine/media3/datasource/DataSource;ILio/bidmachine/media3/common/Format;ILjava/lang/Object;JIJJLio/bidmachine/media3/exoplayer/upstream/CmcdData$Factory;)Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;
    .registers 35

    move-object/from16 v0, p1

    move-wide/from16 v10, p7

    move-wide/from16 v1, p12

    .line 787
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    .line 788
    invoke-virtual {v0, v10, v11}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v6

    .line 789
    invoke-virtual {v0, v10, v11}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(J)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object v4

    .line 790
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-nez v5, :cond_42

    move v5, v8

    move v12, v9

    .line 791
    invoke-virtual {v0, v10, v11}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide v8

    .line 793
    invoke-virtual {v0, v10, v11, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->isSegmentAvailableAtFullNetworkSpeed(JJ)Z

    move-result v1

    if-eqz v1, :cond_24

    move v5, v12

    .line 797
    :cond_24
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 803
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 798
    invoke-static {v3, v0, v4, v5, v1}, Lio/bidmachine/media3/exoplayer/dash/DashUtil;->buildDataSpec(Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;ILjava/util/Map;)Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object v2

    .line 818
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/chunk/SingleSampleMediaChunk;

    move-object/from16 v13, p4

    move-object/from16 v1, p2

    move/from16 v12, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v13}, Lio/bidmachine/media3/exoplayer/source/chunk/SingleSampleMediaChunk;-><init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Lio/bidmachine/media3/common/Format;ILjava/lang/Object;JJJILio/bidmachine/media3/common/Format;)V

    return-object v0

    :cond_42
    move v5, v8

    move v12, v9

    const/4 v8, 0x1

    move/from16 v10, p9

    move v9, v8

    :goto_48
    if-ge v8, v10, :cond_62

    int-to-long v13, v8

    add-long v13, p7, v13

    .line 832
    invoke-virtual {v0, v13, v14}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(J)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object v11

    .line 834
    iget-object v13, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object v13, v13, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 835
    invoke-virtual {v4, v11, v13}, Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;->attemptMerge(Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;Ljava/lang/String;)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object v11

    if-nez v11, :cond_5c

    goto :goto_62

    :cond_5c
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object v4, v11

    goto :goto_48

    :cond_62
    :goto_62
    int-to-long v10, v9

    add-long v10, p7, v10

    const-wide/16 v13, 0x1

    sub-long/2addr v10, v13

    move/from16 v16, v9

    .line 844
    invoke-virtual {v0, v10, v11}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide v8

    .line 845
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->access$000(Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;)J

    move-result-wide v13

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v15, v13, v17

    if-eqz v15, :cond_80

    cmp-long v15, v13, v8

    if-gtz v15, :cond_80

    goto :goto_82

    :cond_80
    move-wide/from16 v13, v17

    .line 851
    :goto_82
    invoke-virtual {v0, v10, v11, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->isSegmentAvailableAtFullNetworkSpeed(JJ)Z

    move-result v1

    if-eqz v1, :cond_89

    move v5, v12

    .line 854
    :cond_89
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 860
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    .line 855
    invoke-static {v3, v1, v4, v5, v2}, Lio/bidmachine/media3/exoplayer/dash/DashUtil;->buildDataSpec(Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;ILjava/util/Map;)Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object v2

    .line 874
    iget-wide v3, v3, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->presentationTimeOffsetUs:J

    neg-long v3, v3

    move-object/from16 v1, p4

    .line 875
    iget-object v5, v1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v5}, Lio/bidmachine/media3/common/MimeTypes;->isImage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a3

    add-long/2addr v3, v6

    :cond_a3
    move-wide/from16 v17, v3

    .line 878
    new-instance v3, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-wide/from16 v10, p10

    move-object/from16 v19, v0

    move-object v0, v3

    move-wide v12, v13

    move-wide/from16 v14, p7

    move-object v3, v1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v19}, Lio/bidmachine/media3/exoplayer/source/chunk/ContainerMediaChunk;-><init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;Lio/bidmachine/media3/common/Format;ILjava/lang/Object;JJJJJIJLio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;)V

    return-object v0
.end method

.method public onChunkLoadCompleted(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)V
    .registers 9

    .line 547
    instance-of v0, p1, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;

    if-eqz v0, :cond_36

    .line 548
    move-object v0, p1

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/chunk/InitializationChunk;

    .line 549
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    invoke-interface {v1, v0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->indexOf(Lio/bidmachine/media3/common/Format;)I

    move-result v0

    .line 550
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v1, v1, v0

    .line 554
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    if-nez v2, :cond_36

    .line 556
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 557
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;->getChunkIndex()Lio/bidmachine/media3/extractor/ChunkIndex;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 559
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    new-instance v4, Lio/bidmachine/media3/exoplayer/dash/DashWrappingSegmentIndex;

    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    iget-wide v5, v5, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->presentationTimeOffsetUs:J

    invoke-direct {v4, v2, v5, v6}, Lio/bidmachine/media3/exoplayer/dash/DashWrappingSegmentIndex;-><init>(Lio/bidmachine/media3/extractor/ChunkIndex;J)V

    .line 560
    invoke-virtual {v1, v4}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->copyWithNewSegmentIndex(Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;)Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    move-result-object v1

    aput-object v1, v3, v0

    .line 566
    :cond_36
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    if-eqz v0, :cond_3d

    .line 567
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->onChunkLoadCompleted(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)V

    :cond_3d
    return-void
.end method

.method public onChunkLoadError(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;ZLio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 580
    :cond_4
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    const/4 v1, 0x1

    if-eqz p2, :cond_10

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->onChunkLoadError(Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;)Z

    move-result p2

    if-eqz p2, :cond_10

    return v1

    .line 584
    :cond_10
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-boolean p2, p2, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    if-nez p2, :cond_5a

    instance-of p2, p1, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;

    if-eqz p2, :cond_5a

    iget-object p2, p3, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->exception:Ljava/io/IOException;

    instance-of v2, p2, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v2, :cond_5a

    check-cast p2, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget p2, p2, Lio/bidmachine/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v2, 0x194

    if-ne p2, v2, :cond_5a

    .line 588
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    .line 589
    invoke-interface {v2, v3}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->indexOf(Lio/bidmachine/media3/common/Format;)I

    move-result v2

    aget-object p2, p2, v2

    .line 590
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_5a

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_5a

    .line 592
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstSegmentNum()J

    move-result-wide v4

    add-long/2addr v4, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v4, v2

    .line 593
    move-object p2, p1

    check-cast p2, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;

    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;->getNextChunkIndex()J

    move-result-wide v2

    cmp-long p2, v2, v4

    if-lez p2, :cond_5a

    .line 594
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->missingLastSegment:Z

    return v1

    .line 600
    :cond_5a
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    invoke-interface {p2, v2}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->indexOf(Lio/bidmachine/media3/common/Format;)I

    move-result p2

    .line 601
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object p2, v2, p2

    .line 603
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->baseUrlExclusionList:Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;

    iget-object v3, p2, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    .line 604
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;->selectBaseUrl(Ljava/util/List;)Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    move-result-object v2

    if-eqz v2, :cond_7b

    .line 605
    iget-object v3, p2, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    invoke-virtual {v3, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    return v1

    .line 611
    :cond_7b
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v3, p2, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    .line 612
    invoke-virtual {p0, v2, v3}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->createFallbackOptions(Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    move-result-object v2

    const/4 v3, 0x2

    .line 613
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->isFallbackAvailable(I)Z

    move-result v4

    if-nez v4, :cond_93

    .line 614
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->isFallbackAvailable(I)Z

    move-result v4

    if-nez v4, :cond_93

    return v0

    .line 619
    :cond_93
    invoke-interface {p4, v2, p3}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getFallbackSelectionFor(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    move-result-object p3

    if-eqz p3, :cond_c1

    .line 620
    iget p4, p3, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    invoke-virtual {v2, p4}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;->isFallbackAvailable(I)Z

    move-result p4

    if-nez p4, :cond_a2

    goto :goto_c1

    .line 626
    :cond_a2
    iget p4, p3, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    if-ne p4, v3, :cond_b5

    .line 627
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;->trackFormat:Lio/bidmachine/media3/common/Format;

    .line 629
    invoke-interface {p2, p1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->indexOf(Lio/bidmachine/media3/common/Format;)I

    move-result p1

    iget-wide p3, p3, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    .line 628
    invoke-interface {p2, p1, p3, p4}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->excludeTrack(IJ)Z

    move-result p1

    return p1

    :cond_b5
    if-ne p4, v1, :cond_c1

    .line 631
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->baseUrlExclusionList:Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;

    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    iget-wide p3, p3, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    invoke-virtual {p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;->exclude(Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;J)V

    return v1

    :cond_c1
    :goto_c1
    return v0
.end method

.method public release()V
    .registers 5

    .line 640
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 641
    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    if-eqz v3, :cond_f

    .line 643
    invoke-interface {v3}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;->release()V

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    return-void
.end method

.method public shouldCancelLoad(JLio/bidmachine/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/bidmachine/media3/exoplayer/source/chunk/Chunk;",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 367
    :cond_6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->shouldCancelChunkLoad(JLio/bidmachine/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public updateManifest(Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;I)V
    .registers 8

    .line 325
    :try_start_0
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    .line 326
    iput p2, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->periodIndex:I

    .line 327
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide p1

    .line 328
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->getRepresentations()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 329
    :goto_d
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_2e

    .line 330
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v2, v1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    .line 331
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v4, v3, v1

    .line 332
    invoke-virtual {v4, p1, p2, v2}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->copyWithNewRepresentation(JLio/bidmachine/media3/exoplayer/dash/manifest/Representation;)Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_28
    .catch Lio/bidmachine/media3/exoplayer/source/BehindLiveWindowException; {:try_start_0 .. :try_end_28} :catch_2b

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :catch_2b
    move-exception p1

    .line 335
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    :cond_2e
    return-void
.end method

.method public final updateSelectedBaseUrl(I)Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;
    .registers 5

    .line 914
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v0, v0, p1

    .line 916
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->baseUrlExclusionList:Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    .line 917
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;->selectBaseUrl(Ljava/util/List;)Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 918
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 919
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->copyWithNewSelectedBaseUrl(Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;)Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    move-result-object v0

    .line 920
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->representationHolders:[Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    aput-object v0, v1, p1

    :cond_20
    return-object v0
.end method

.method public updateTrackSelection(Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;->trackSelection:Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.dash.DefaultDashChunkSource.Factory (io.bidmachine.media3.exoplayer.dash.DefaultDashChunkSource$Factory)
.class public final Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final chunkExtractorFactory:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;

.field public final dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

.field public final maxSegmentsPerLoad:I


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSource$Factory;)V
    .registers 3

    const/4 v0, 0x1

    .line 89
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;-><init>(Lio/bidmachine/media3/datasource/DataSource$Factory;I)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSource$Factory;I)V
    .registers 4

    .line 97
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/source/chunk/BundledChunkExtractor$Factory;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;-><init>(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;Lio/bidmachine/media3/datasource/DataSource$Factory;I)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;Lio/bidmachine/media3/datasource/DataSource$Factory;I)V
    .registers 4

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;->chunkExtractorFactory:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;

    .line 113
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    .line 114
    iput p3, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;->maxSegmentsPerLoad:I

    return-void
.end method


# virtual methods
.method public createDashChunkSource(Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;I[ILio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;IJZLjava/util/List;Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;Lio/bidmachine/media3/datasource/TransferListener;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;)Lio/bidmachine/media3/exoplayer/dash/DashChunkSource;
    .registers 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;",
            "Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;",
            "I[I",
            "Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;",
            "IJZ",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/Format;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;",
            "Lio/bidmachine/media3/datasource/TransferListener;",
            "Lio/bidmachine/media3/exoplayer/analytics/PlayerId;",
            "Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;",
            ")",
            "Lio/bidmachine/media3/exoplayer/dash/DashChunkSource;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p13

    .line 158
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    invoke-interface {v2}, Lio/bidmachine/media3/datasource/DataSource$Factory;->createDataSource()Lio/bidmachine/media3/datasource/DataSource;

    move-result-object v12

    if-eqz v1, :cond_f

    .line 160
    invoke-interface {v12, v1}, Lio/bidmachine/media3/datasource/DataSource;->addTransferListener(Lio/bidmachine/media3/datasource/TransferListener;)V

    .line 162
    :cond_f
    new-instance v3, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;->chunkExtractorFactory:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;

    iget v15, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;->maxSegmentsPerLoad:I

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v13, p8

    move/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p14

    move-object/from16 v20, p15

    invoke-direct/range {v3 .. v20}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;-><init>(Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;I[ILio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;ILio/bidmachine/media3/datasource/DataSource;JIZLjava/util/List;Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;)V

    return-object v3
.end method

.method public bridge synthetic experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;->experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;
    .registers 3

    .line 128
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;->chunkExtractorFactory:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;->experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;

    return-object p0
.end method

.method public bridge synthetic experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;->experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;
    .registers 3

    .line 137
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;->chunkExtractorFactory:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;->experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;

    return-object p0
.end method

.method public getOutputTextFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;
    .registers 3

    .line 189
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;->chunkExtractorFactory:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;->getOutputTextFormat(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;->setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;
    .registers 3

    .line 120
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;->chunkExtractorFactory:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;->setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor$Factory;

    return-object p0
.end method

###### Class io.bidmachine.media3.exoplayer.dash.DefaultDashChunkSource.RepresentationHolder (io.bidmachine.media3.exoplayer.dash.DefaultDashChunkSource$RepresentationHolder)
.class public final Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RepresentationHolder"
.end annotation


# instance fields
.field public final chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

.field public final periodDurationUs:J

.field public final representation:Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

.field public final segmentIndex:Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

.field public final segmentNumShift:J

.field public final selectedBaseUrl:Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;


# direct methods
.method public constructor <init>(JLio/bidmachine/media3/exoplayer/dash/manifest/Representation;Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;JLio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;)V
    .registers 9

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 1002
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    .line 1003
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    .line 1004
    iput-wide p6, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    .line 1005
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    .line 1006
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;)J
    .registers 3

    .line 983
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    return-wide v0
.end method


# virtual methods
.method public copyWithNewRepresentation(JLio/bidmachine/media3/exoplayer/dash/manifest/Representation;)Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/source/BehindLiveWindowException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1013
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->getIndex()Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    move-result-object v9

    move-object v1, v9

    .line 1014
    invoke-virtual/range {p3 .. p3}, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->getIndex()Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    move-result-object v9

    if-nez v1, :cond_20

    move-object v9, v1

    .line 1018
    new-instance v1, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    iget-wide v7, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLio/bidmachine/media3/exoplayer/dash/manifest/Representation;Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;JLio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;)V

    return-object v1

    :cond_20
    move-object/from16 v20, v9

    move-object v9, v1

    move-object/from16 v1, v20

    .line 1027
    invoke-interface {v9}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->isExplicit()Z

    move-result v2

    if-nez v2, :cond_3c

    move-object v9, v1

    .line 1029
    new-instance v1, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    iget-wide v7, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLio/bidmachine/media3/exoplayer/dash/manifest/Representation;Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;JLio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;)V

    return-object v1

    :cond_3c
    move-object v2, v9

    move-object v9, v1

    move-object v1, v2

    move-wide/from16 v2, p1

    .line 1038
    invoke-interface {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getSegmentCount(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_59

    .line 1041
    new-instance v1, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    iget-wide v7, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLio/bidmachine/media3/exoplayer/dash/manifest/Representation;Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;JLio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;)V

    return-object v1

    .line 1050
    :cond_59
    invoke-static {v9}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v6

    .line 1053
    invoke-interface {v1, v6, v7}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v10

    add-long/2addr v4, v6

    const-wide/16 v12, 0x1

    sub-long v12, v4, v12

    .line 1056
    invoke-interface {v1, v12, v13}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v14

    .line 1057
    invoke-interface {v1, v12, v13, v2, v3}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide v12

    add-long/2addr v14, v12

    .line 1058
    invoke-interface {v9}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v12

    move-wide/from16 v16, v4

    .line 1059
    invoke-interface {v9, v12, v13}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v4

    move-wide/from16 v18, v6

    .line 1060
    iget-wide v6, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    cmp-long v8, v14, v4

    if-nez v8, :cond_89

    sub-long v4, v16, v12

    :goto_86
    add-long/2addr v6, v4

    :goto_87
    move-wide v7, v6

    goto :goto_9d

    :cond_89
    if-ltz v8, :cond_a9

    cmp-long v8, v4, v10

    if-gez v8, :cond_97

    .line 1072
    invoke-interface {v9, v10, v11, v2, v3}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide v4

    sub-long v4, v4, v18

    sub-long/2addr v6, v4

    goto :goto_87

    .line 1077
    :cond_97
    invoke-interface {v1, v4, v5, v2, v3}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide v4

    sub-long/2addr v4, v12

    goto :goto_86

    .line 1080
    :goto_9d
    new-instance v1, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLio/bidmachine/media3/exoplayer/dash/manifest/Representation;Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;JLio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;)V

    return-object v1

    .line 1067
    :cond_a9
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/BehindLiveWindowException;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/source/BehindLiveWindowException;-><init>()V

    throw v1
.end method

.method public copyWithNewSegmentIndex(Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;)Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;
    .registers 11

    .line 1091
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;

    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    iget-wide v6, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLio/bidmachine/media3/exoplayer/dash/manifest/Representation;Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;JLio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;)V

    return-object v0
.end method

.method public copyWithNewSelectedBaseUrl(Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;)Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;
    .registers 11

    .line 1102
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;

    iget-wide v6, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLio/bidmachine/media3/exoplayer/dash/manifest/Representation;Lio/bidmachine/media3/exoplayer/dash/manifest/BaseUrl;Lio/bidmachine/media3/exoplayer/source/chunk/ChunkExtractor;JLio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;)V

    return-object v0
.end method

.method public getFirstAvailableSegmentNum(J)J
    .registers 6

    .line 1116
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 1117
    invoke-interface {v0, v1, v2, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getFirstSegmentNum()J
    .registers 5

    .line 1112
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v0

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getLastAvailableSegmentNum(J)J
    .registers 8

    .line 1145
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstAvailableSegmentNum(J)J

    move-result-wide v0

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    .line 1146
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 1147
    invoke-interface {v2, v3, v4, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getAvailableSegmentCount(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    const-wide/16 p1, 0x1

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public getSegmentCount()J
    .registers 4

    .line 1122
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getSegmentCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentEndTimeUs(J)J
    .registers 8

    .line 1130
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v0

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    .line 1131
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    sub-long/2addr p1, v3

    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    .line 1132
    invoke-interface {v2, p1, p2, v3, v4}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public getSegmentNum(J)J
    .registers 6

    .line 1136
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->periodDurationUs:J

    invoke-interface {v0, p1, p2, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide p1

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getSegmentStartTimeUs(J)J
    .registers 6

    .line 1126
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getSegmentUrl(J)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;
    .registers 6

    .line 1141
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentNumShift:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getSegmentUrl(J)Lio/bidmachine/media3/exoplayer/dash/manifest/RangedUri;

    move-result-object p1

    return-object p1
.end method

.method public isSegmentAvailableAtFullNetworkSpeed(JJ)Z
    .registers 9

    .line 1152
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->isExplicit()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    return v1

    :cond_10
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v2

    if-eqz v0, :cond_24

    .line 1158
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-gtz p1, :cond_22

    goto :goto_24

    :cond_22
    const/4 p1, 0x0

    return p1

    :cond_24
    :goto_24
    return v1
.end method

###### Class io.bidmachine.media3.exoplayer.dash.DefaultDashChunkSource.RepresentationSegmentIterator (io.bidmachine.media3.exoplayer.dash.DefaultDashChunkSource$RepresentationSegmentIterator)
.class public final Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationSegmentIterator;
.super Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkIterator;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RepresentationSegmentIterator"
.end annotation


# instance fields
.field public final nowPeriodTimeUs:J

.field public final representationHolder:Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;JJJ)V
    .registers 8

    .line 947
    invoke-direct {p0, p2, p3, p4, p5}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkIterator;-><init>(JJ)V

    .line 948
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 949
    iput-wide p6, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->nowPeriodTimeUs:J

    return-void
.end method


# virtual methods
.method public getChunkEndTimeUs()J
    .registers 4

    .line 977
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkIterator;->checkInBounds()V

    .line 978
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkIterator;->getCurrentIndex()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChunkStartTimeUs()J
    .registers 4

    .line 971
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkIterator;->checkInBounds()V

    .line 972
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/chunk/BaseMediaChunkIterator;->getCurrentIndex()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v0

    return-wide v0
.end method
