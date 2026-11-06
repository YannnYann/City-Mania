###### Class io.bidmachine.media3.exoplayer.hls.HlsMediaSource (io.bidmachine.media3.exoplayer.hls.HlsMediaSource)
.class public final Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;
.super Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;
.source "HlsMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;
    }
.end annotation


# instance fields
.field public final allowChunklessPreparation:Z

.field public final compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field public final dataSourceFactory:Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;

.field public final drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

.field public final elapsedRealTimeOffsetMs:J

.field public final extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

.field public liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

.field public final loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public mediaItem:Lio/bidmachine/media3/common/MediaItem;

.field public mediaTransferListener:Lio/bidmachine/media3/datasource/TransferListener;

.field public final metadataType:I

.field public final playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

.field public final timestampAdjusterInitializationTimeoutMs:J

.field public final useSessionKeys:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    const-string v0, "media3.exoplayer.hls"

    invoke-static {v0}, Lio/bidmachine/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;JZIZJ)V
    .registers 16

    .line 481
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;-><init>()V

    .line 482
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    .line 483
    iget-object p1, p1, Lio/bidmachine/media3/common/MediaItem;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    .line 484
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->dataSourceFactory:Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;

    .line 485
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    .line 486
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    .line 488
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    .line 489
    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 490
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 491
    iput-wide p9, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->elapsedRealTimeOffsetMs:J

    .line 492
    iput-boolean p11, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->allowChunklessPreparation:Z

    .line 493
    iput p12, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->metadataType:I

    .line 494
    iput-boolean p13, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->useSessionKeys:Z

    .line 495
    iput-wide p14, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->timestampAdjusterInitializationTimeoutMs:J

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;JZIZJLio/bidmachine/media3/exoplayer/hls/HlsMediaSource$1;)V
    .registers 17

    .line 72
    invoke-direct/range {p0 .. p15}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;-><init>(Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;JZIZJ)V

    return-void
.end method

.method public static findClosestPrecedingIndependentPart(Ljava/util/List;J)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;",
            ">;J)",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 762
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 763
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    .line 764
    iget-wide v3, v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    cmp-long v5, v3, p1

    if-gtz v5, :cond_1a

    iget-boolean v5, v2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->isIndependent:Z

    if-eqz v5, :cond_1a

    move-object v0, v2

    goto :goto_1f

    :cond_1a
    cmp-long v2, v3, p1

    if-lez v2, :cond_1f

    goto :goto_22

    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_22
    :goto_22
    return-object v0
.end method

.method public static findClosestPrecedingSegment(Ljava/util/List;J)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;",
            ">;J)",
            "Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;"
        }
    .end annotation

    .line 781
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    .line 780
    invoke-static {p0, p1, p2, p2}, Lio/bidmachine/media3/common/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    .line 782
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    return-object p0
.end method

.method public static getTargetLiveOffsetUs(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;J)J
    .registers 10

    .line 741
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->serverControl:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    .line 743
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_11

    .line 744
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->durationUs:J

    sub-long/2addr v3, v1

    goto :goto_2d

    .line 745
    :cond_11
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->partHoldBackUs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1f

    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->partTargetDurationUs:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_1f

    move-wide v3, v1

    goto :goto_2d

    .line 749
    :cond_1f
    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->holdBackUs:J

    cmp-long v2, v0, v3

    if-eqz v2, :cond_27

    move-wide v3, v0

    goto :goto_2d

    :cond_27
    const-wide/16 v0, 0x3

    .line 753
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    mul-long v3, v2, v0

    :goto_2d
    add-long/2addr v3, p1

    return-wide v3
.end method


# virtual methods
.method public createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
    .registers 24

    move-object/from16 v0, p0

    .line 542
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->createEventDispatcher(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v10

    .line 543
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->createDrmEventDispatcher(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v8

    .line 544
    new-instance v1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->dataSourceFactory:Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->mediaTransferListener:Lio/bidmachine/media3/datasource/TransferListener;

    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    iget-boolean v13, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->allowChunklessPreparation:Z

    iget v14, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->metadataType:I

    iget-boolean v15, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->useSessionKeys:Z

    .line 559
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->getPlayerId()Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    move-result-object v16

    move-object/from16 p1, v1

    move-object v6, v2

    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->timestampAdjusterInitializationTimeoutMs:J

    move-wide/from16 v17, v1

    move-object v2, v6

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    invoke-direct/range {v1 .. v18}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;-><init>(Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;Lio/bidmachine/media3/datasource/TransferListener;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/upstream/Allocator;Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;ZIZLio/bidmachine/media3/exoplayer/analytics/PlayerId;J)V

    return-object v1
.end method

.method public final createTimelineForLive(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJLio/bidmachine/media3/exoplayer/hls/HlsManifest;)Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 602
    iget-wide v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 603
    invoke-interface {v4}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getInitialStartTimeUs()J

    move-result-wide v4

    sub-long v17, v2, v4

    .line 605
    iget-boolean v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1d

    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long v5, v17, v5

    move-wide v13, v5

    goto :goto_1e

    :cond_1d
    move-wide v13, v3

    .line 606
    :goto_1e
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->getLiveEdgeOffsetUs(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)J

    move-result-wide v7

    .line 608
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    iget-wide v5, v2, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_30

    .line 610
    invoke-static {v5, v6}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v2

    :goto_2e
    move-wide v5, v2

    goto :goto_35

    .line 613
    :cond_30
    invoke-static {v1, v7, v8}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->getTargetLiveOffsetUs(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;J)J

    move-result-wide v2

    goto :goto_2e

    .line 616
    :goto_35
    iget-wide v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long v9, v2, v7

    .line 617
    invoke-static/range {v5 .. v10}, Lio/bidmachine/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v2

    .line 619
    invoke-virtual {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->updateLiveConfiguration(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;J)V

    .line 621
    invoke-virtual {v0, v1, v7, v8}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->getLiveWindowDefaultStartPositionUs(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;J)J

    move-result-wide v19

    .line 622
    iget v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->playlistType:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_51

    iget-boolean v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasPositiveStartOffset:Z

    if-eqz v2, :cond_51

    move/from16 v23, v4

    goto :goto_54

    :cond_51
    const/4 v2, 0x0

    move/from16 v23, v2

    .line 625
    :goto_54
    new-instance v6, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;

    iget-wide v2, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->durationUs:J

    iget-boolean v1, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    xor-int/lit8 v22, v1, 0x1

    .line 637
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->getMediaItem()Lio/bidmachine/media3/common/MediaItem;

    move-result-object v25

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v21, 0x1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    move-object/from16 v24, p6

    move-object/from16 v26, v1

    move-wide v15, v2

    invoke-direct/range {v6 .. v26}, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;)V

    return-object v6
.end method

.method public final createTimelineForOnDemand(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJLio/bidmachine/media3/exoplayer/hls/HlsManifest;)Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;
    .registers 31

    move-object/from16 v0, p1

    .line 647
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_31

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_31

    .line 650
    :cond_16
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->preciseStart:Z

    if-nez v1, :cond_2e

    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->durationUs:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_23

    goto :goto_2e

    .line 653
    :cond_23
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 654
    invoke-static {v3, v1, v2}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->findClosestPrecedingSegment(Ljava/util/List;J)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object v1

    iget-wide v1, v1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    :goto_2b
    move-wide/from16 v16, v1

    goto :goto_34

    .line 651
    :cond_2e
    :goto_2e
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    goto :goto_2b

    :cond_31
    :goto_31
    const-wide/16 v1, 0x0

    goto :goto_2b

    .line 658
    :goto_34
    new-instance v3, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;

    iget-wide v10, v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->durationUs:J

    .line 670
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->getMediaItem()Lio/bidmachine/media3/common/MediaItem;

    move-result-object v22

    const/16 v23, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v14, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-wide v12, v10

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v21, p6

    invoke-direct/range {v3 .. v23}, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;)V

    return-object v3
.end method

.method public final getLiveEdgeOffsetUs(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)J
    .registers 6

    .line 675
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    if-eqz v0, :cond_14

    .line 676
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->elapsedRealTimeOffsetMs:J

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->getEndTimeUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_14
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getLiveWindowDefaultStartPositionUs(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;J)J
    .registers 8

    .line 683
    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    goto :goto_18

    .line 687
    :cond_c
    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long/2addr v0, p2

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    iget-wide p2, p2, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {p2, p3}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide p2

    sub-long/2addr v0, p2

    .line 688
    :goto_18
    iget-boolean p2, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->preciseStart:Z

    if-eqz p2, :cond_1d

    return-wide v0

    .line 692
    :cond_1d
    iget-object p2, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->trailingParts:Ljava/util/List;

    .line 693
    invoke-static {p2, v0, v1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->findClosestPrecedingIndependentPart(Ljava/util/List;J)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    move-result-object p2

    if-eqz p2, :cond_28

    .line 695
    iget-wide p1, p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    return-wide p1

    .line 697
    :cond_28
    iget-object p2, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_33

    const-wide/16 p1, 0x0

    return-wide p1

    .line 700
    :cond_33
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 701
    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->findClosestPrecedingSegment(Ljava/util/List;J)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    move-result-object p1

    .line 702
    iget-object p2, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;->parts:Ljava/util/List;

    invoke-static {p2, v0, v1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->findClosestPrecedingIndependentPart(Ljava/util/List;J)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    move-result-object p2

    if-eqz p2, :cond_44

    .line 704
    iget-wide p1, p2, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    return-wide p1

    .line 706
    :cond_44
    iget-wide p1, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->relativeStartTimeUs:J

    return-wide p1
.end method

.method public declared-synchronized getMediaItem()Lio/bidmachine/media3/common/MediaItem;
    .registers 2

    monitor-enter p0

    .line 500
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->mediaItem:Lio/bidmachine/media3/common/MediaItem;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->maybeThrowPrimaryPlaylistRefreshError()V

    return-void
.end method

.method public onPrimaryPlaylistRefreshed(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V
    .registers 14

    .line 577
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_11

    iget-wide v3, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    invoke-static {v3, v4}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v3

    move-wide v9, v3

    goto :goto_12

    :cond_11
    move-wide v9, v1

    .line 582
    :goto_12
    iget v0, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->playlistType:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1d

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1b

    goto :goto_1d

    :cond_1b
    move-wide v7, v1

    goto :goto_1e

    :cond_1d
    :goto_1d
    move-wide v7, v9

    .line 586
    :goto_1e
    new-instance v11, Lio/bidmachine/media3/exoplayer/hls/HlsManifest;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 587
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->getMultivariantPlaylist()Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;

    invoke-direct {v11, v0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsManifest;-><init>(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMultivariantPlaylist;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;)V

    .line 589
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->isLive()Z

    move-result v0

    if-eqz v0, :cond_3e

    move-object v5, p0

    move-object v6, p1

    .line 590
    invoke-virtual/range {v5 .. v11}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->createTimelineForLive(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJLio/bidmachine/media3/exoplayer/hls/HlsManifest;)Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;

    move-result-object p1

    goto :goto_44

    :cond_3e
    move-object v5, p0

    move-object v6, p1

    .line 592
    invoke-virtual/range {v5 .. v11}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->createTimelineForOnDemand(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJLio/bidmachine/media3/exoplayer/hls/HlsManifest;)Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;

    move-result-object p1

    .line 594
    :goto_44
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->refreshSourceInfo(Lio/bidmachine/media3/common/Timeline;)V

    return-void
.end method

.method public prepareSourceInternal(Lio/bidmachine/media3/datasource/TransferListener;)V
    .registers 4

    .line 523
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->mediaTransferListener:Lio/bidmachine/media3/datasource/TransferListener;

    .line 524
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    .line 525
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->getPlayerId()Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    move-result-object v1

    .line 524
    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;->setPlayer(Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    .line 526
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;->prepare()V

    const/4 p1, 0x0

    .line 528
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->createEventDispatcher(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    .line 529
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    .line 530
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->getMediaItem()Lio/bidmachine/media3/common/MediaItem;

    move-result-object v1

    iget-object v1, v1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 529
    invoke-interface {v0, v1, p1, p0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->start(Landroid/net/Uri;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$PrimaryPlaylistListener;)V

    return-void
.end method

.method public releasePeriod(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 2

    .line 565
    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaPeriod;->release()V

    return-void
.end method

.method public releaseSourceInternal()V
    .registers 2

    .line 570
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->playlistTracker:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->stop()V

    .line 571
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;->release()V

    return-void
.end method

.method public final updateLiveConfiguration(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;J)V
    .registers 8

    .line 710
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->getMediaItem()Lio/bidmachine/media3/common/MediaItem;

    move-result-object v0

    iget-object v0, v0, Lio/bidmachine/media3/common/MediaItem;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    .line 711
    iget v1, v0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v2, -0x800001

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2a

    iget v0, v0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2a

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->serverControl:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;

    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->holdBackUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsMediaPlaylist$ServerControl;->partHoldBackUs:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    .line 716
    :goto_2b
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;-><init>()V

    .line 718
    invoke-static {p2, p3}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3e

    move v0, p3

    goto :goto_42

    .line 719
    :cond_3e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    iget v0, v0, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    :goto_42
    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->setMinPlaybackSpeed(F)Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object p2

    if-eqz p1, :cond_49

    goto :goto_4d

    .line 720
    :cond_49
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    iget p3, p1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    :goto_4d
    invoke-virtual {p2, p3}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->setMaxPlaybackSpeed(F)Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object p1

    .line 721
    invoke-virtual {p1}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->build()Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    return-void
.end method

.method public declared-synchronized updateMediaItem(Lio/bidmachine/media3/common/MediaItem;)V
    .registers 2

    monitor-enter p0

    .line 518
    :try_start_1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;->mediaItem:Lio/bidmachine/media3/common/MediaItem;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 519
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

###### Class io.bidmachine.media3.exoplayer.hls.HlsMediaSource.AnonymousClass1 (io.bidmachine.media3.exoplayer.hls.HlsMediaSource$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$1;
.super Ljava/lang/Object;
.source "HlsMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.hls.HlsMediaSource.Factory (io.bidmachine.media3.exoplayer.hls.HlsMediaSource$Factory)
.class public final Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source "HlsMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public allowChunklessPreparation:Z

.field public cmcdConfigurationFactory:Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;

.field public codecsToParseWithinGopSampleDependencies:I

.field public compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field public drmSessionManagerProvider:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

.field public elapsedRealTimeOffsetMs:J

.field public extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

.field public final hlsDataSourceFactory:Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;

.field public loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public metadataType:I

.field public parseSubtitlesDuringExtraction:Z

.field public playlistParserFactory:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

.field public playlistTrackerFactory:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$Factory;

.field public subtitleParserFactoryOverride:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

.field public timestampAdjusterInitializationTimeoutMs:J

.field public useSessionKeys:Z


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSource$Factory;)V
    .registers 3

    .line 145
    new-instance v0, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsDataSourceFactory;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsDataSourceFactory;-><init>(Lio/bidmachine/media3/datasource/DataSource$Factory;)V

    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;-><init>(Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;)V
    .registers 4

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;

    .line 167
    new-instance p1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->drmSessionManagerProvider:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 168
    new-instance p1, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistParserFactory;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistParserFactory;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->playlistParserFactory:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

    .line 169
    sget-object p1, Lio/bidmachine/media3/exoplayer/hls/playlist/DefaultHlsPlaylistTracker;->FACTORY:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$Factory;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->playlistTrackerFactory:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$Factory;

    .line 170
    new-instance p1, Lio/bidmachine/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 171
    new-instance p1, Lio/bidmachine/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    const/4 p1, 0x1

    .line 172
    iput p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->metadataType:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 173
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->elapsedRealTimeOffsetMs:J

    .line 174
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->allowChunklessPreparation:Z

    .line 175
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;

    return-void
.end method


# virtual methods
.method public createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 400
    iget-object v1, v2, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    if-nez v1, :cond_14

    .line 402
    new-instance v1, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/hls/DefaultHlsExtractorFactory;-><init>()V

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    .line 404
    :cond_14
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->subtitleParserFactoryOverride:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    if-eqz v1, :cond_1d

    .line 405
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    invoke-interface {v3, v1}, Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;->setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    .line 407
    :cond_1d
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    iget-boolean v3, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->parseSubtitlesDuringExtraction:Z

    invoke-interface {v1, v3}, Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;->experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    .line 408
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    iget v3, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->codecsToParseWithinGopSampleDependencies:I

    invoke-interface {v1, v3}, Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;->experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    .line 410
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->extractorFactory:Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;

    .line 411
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->playlistParserFactory:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;

    .line 412
    iget-object v3, v2, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    iget-object v3, v3, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 413
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3f

    .line 414
    new-instance v5, Lio/bidmachine/media3/exoplayer/hls/playlist/FilteringHlsPlaylistParserFactory;

    invoke-direct {v5, v1, v3}, Lio/bidmachine/media3/exoplayer/hls/playlist/FilteringHlsPlaylistParserFactory;-><init>(Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;Ljava/util/List;)V

    move-object v1, v5

    .line 419
    :cond_3f
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->cmcdConfigurationFactory:Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    if-nez v3, :cond_44

    goto :goto_47

    .line 421
    :cond_44
    invoke-interface {v3, v2}, Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;->createCmcdConfiguration(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;

    .line 423
    :goto_47
    new-instance v3, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;

    move-object v5, v3

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;

    move-object v6, v5

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->drmSessionManagerProvider:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 429
    invoke-interface {v7, v2}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;->get(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    move-result-object v7

    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->playlistTrackerFactory:Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$Factory;

    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;

    move-object v11, v6

    const/4 v6, 0x0

    .line 431
    invoke-interface {v9, v10, v8, v1, v6}, Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker$Factory;->createTracker(Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistParserFactory;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;)Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    move-result-object v9

    move-object v1, v11

    iget-wide v10, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->elapsedRealTimeOffsetMs:J

    iget-boolean v12, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->allowChunklessPreparation:Z

    iget v13, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->metadataType:I

    iget-boolean v14, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->useSessionKeys:Z

    move-object v15, v7

    iget-wide v6, v0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->timestampAdjusterInitializationTimeoutMs:J

    const/16 v17, 0x0

    move-wide/from16 v18, v6

    move-object v7, v15

    move-wide/from16 v15, v18

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v17}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;-><init>(Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/exoplayer/hls/HlsDataSourceFactory;Lio/bidmachine/media3/exoplayer/hls/HlsExtractorFactory;Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/hls/playlist/HlsPlaylistTracker;JZIZJLio/bidmachine/media3/exoplayer/hls/HlsMediaSource$1;)V

    return-object v1
.end method

.method public bridge synthetic createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/MediaSource;
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->parseSubtitlesDuringExtraction:Z

    return-object p0
.end method

.method public bridge synthetic experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;
    .registers 2

    .line 228
    iput p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->codecsToParseWithinGopSampleDependencies:I

    return-object p0
.end method

.method public bridge synthetic experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setCmcdConfigurationFactory(Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;
    .registers 2

    .line 344
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->cmcdConfigurationFactory:Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    return-object p0
.end method

.method public bridge synthetic setCmcdConfigurationFactory(Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->setCmcdConfigurationFactory(Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;
    .registers 3

    .line 352
    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 353
    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->drmSessionManagerProvider:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

    return-object p0
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;
    .registers 3

    .line 199
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 200
    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;
    .registers 2

    .line 211
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->subtitleParserFactoryOverride:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    return-object p0
.end method

.method public bridge synthetic setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;->setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method
