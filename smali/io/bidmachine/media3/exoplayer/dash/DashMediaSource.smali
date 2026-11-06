###### Class io.bidmachine.media3.exoplayer.dash.DashMediaSource (io.bidmachine.media3.exoplayer.dash.DashMediaSource)
.class public final Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;
.super Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DefaultPlayerEmsgCallback;,
        Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestCallback;,
        Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestLoadErrorThrower;,
        Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Iso8601Parser;,
        Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$XsDateTimeParser;,
        Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$UtcTimestampCallback;,
        Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;,
        Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;
    }
.end annotation


# instance fields
.field public final baseUrlExclusionList:Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;

.field public final chunkSourceFactory:Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;

.field public final compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field public dataSource:Lio/bidmachine/media3/datasource/DataSource;

.field public final drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

.field public elapsedRealtimeOffsetMs:J

.field public expiredManifestPublishTimeUs:J

.field public final fallbackTargetLiveOffsetMs:J

.field public firstPeriodId:I

.field public handler:Landroid/os/Handler;

.field public initialManifestUri:Landroid/net/Uri;

.field public liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

.field public final loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

.field public manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

.field public final manifestCallback:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestCallback;

.field public final manifestDataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

.field public final manifestEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public manifestFatalError:Ljava/io/IOException;

.field public manifestLoadEndTimestampMs:J

.field public final manifestLoadErrorThrower:Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;

.field public manifestLoadPending:Z

.field public manifestLoadStartTimestampMs:J

.field public final manifestParser:Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "+",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;",
            ">;"
        }
    .end annotation
.end field

.field public manifestUri:Landroid/net/Uri;

.field public final manifestUriLock:Ljava/lang/Object;

.field public mediaItem:Lio/bidmachine/media3/common/MediaItem;

.field public mediaTransferListener:Lio/bidmachine/media3/datasource/TransferListener;

.field public final minLiveStartPositionUs:J

.field public final periodsById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field public final playerEmsgCallback:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;

.field public final refreshManifestRunnable:Ljava/lang/Runnable;

.field public final sideloadedManifest:Z

.field public final simulateManifestRefreshRunnable:Ljava/lang/Runnable;

.field public staleManifestReloadAttempt:I


# direct methods
.method public static synthetic $r8$lambda$1Nbw2jMZNtu5NfMkRHn6iMBVoi4(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V
    .registers 2

    const/4 v0, 0x0

    .line 510
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->processManifest(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$EJ2mPZgccb8FT5elmiVyZXaozBY(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->startLoadingManifest()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 106
    const-string v0, "media3.exoplayer.dash"

    invoke-static {v0}, Lio/bidmachine/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;Lio/bidmachine/media3/datasource/DataSource$Factory;Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;JJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/MediaItem;",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;",
            "Lio/bidmachine/media3/datasource/DataSource$Factory;",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "+",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;",
            "Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;",
            "Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;",
            "Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;",
            "Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "JJ)V"
        }
    .end annotation

    .line 477
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;-><init>()V

    .line 478
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    .line 479
    iget-object p7, p1, Lio/bidmachine/media3/common/MediaItem;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    .line 480
    iget-object p7, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    invoke-static {p7}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    iget-object p7, p7, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 481
    iget-object p1, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    iget-object p1, p1, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->initialManifestUri:Landroid/net/Uri;

    .line 482
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    .line 483
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestDataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    .line 484
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestParser:Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;

    .line 485
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->chunkSourceFactory:Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;

    .line 487
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    .line 488
    iput-object p9, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 489
    iput-wide p10, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->fallbackTargetLiveOffsetMs:J

    .line 490
    iput-wide p12, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->minLiveStartPositionUs:J

    .line 491
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    .line 492
    new-instance p1, Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->baseUrlExclusionList:Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;

    const/4 p1, 0x1

    if-eqz p2, :cond_39

    move p3, p1

    goto :goto_3a

    :cond_39
    const/4 p3, 0x0

    .line 493
    :goto_3a
    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->sideloadedManifest:Z

    const/4 p4, 0x0

    .line 494
    invoke-virtual {p0, p4}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->createEventDispatcher(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p5

    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 495
    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    .line 496
    new-instance p5, Landroid/util/SparseArray;

    invoke-direct {p5}, Landroid/util/SparseArray;-><init>()V

    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 497
    new-instance p5, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DefaultPlayerEmsgCallback;

    invoke-direct {p5, p0, p4}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DefaultPlayerEmsgCallback;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$1;)V

    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->playerEmsgCallback:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    .line 498
    iput-wide p5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    .line 499
    iput-wide p5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    if-eqz p3, :cond_77

    .line 501
    iget-boolean p2, p2, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    xor-int/2addr p1, p2

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 502
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestCallback:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestCallback;

    .line 503
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    .line 504
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    .line 505
    new-instance p1, Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower$Placeholder;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower$Placeholder;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestLoadErrorThrower:Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;

    return-void

    .line 507
    :cond_77
    new-instance p1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestCallback;

    invoke-direct {p1, p0, p4}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestCallback;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$1;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestCallback:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestCallback;

    .line 508
    new-instance p1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestLoadErrorThrower;

    invoke-direct {p1, p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestLoadErrorThrower;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestLoadErrorThrower:Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;

    .line 509
    new-instance p1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    .line 510
    new-instance p1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;Lio/bidmachine/media3/datasource/DataSource$Factory;Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;JJLio/bidmachine/media3/exoplayer/dash/DashMediaSource$1;)V
    .registers 15

    .line 103
    invoke-direct/range {p0 .. p13}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;-><init>(Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;Lio/bidmachine/media3/datasource/DataSource$Factory;Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;JJ)V

    return-void
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;J)V
    .registers 3

    .line 103
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->onUtcTimestampResolved(J)V

    return-void
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;Ljava/io/IOException;)V
    .registers 2

    .line 103
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    return-void
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)Lio/bidmachine/media3/exoplayer/upstream/Loader;
    .registers 1

    .line 103
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    return-object p0
.end method

.method public static synthetic access$800(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)Ljava/io/IOException;
    .registers 1

    .line 103
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    return-object p0
.end method

.method public static getAvailableEndTimeInManifestUs(Lio/bidmachine/media3/exoplayer/dash/manifest/Period;JJ)J
    .registers 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1223
    iget-wide v5, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->startMs:J

    invoke-static {v5, v6}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v5

    .line 1225
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->hasVideoOrAudioAdaptationSets(Lio/bidmachine/media3/exoplayer/dash/manifest/Period;)Z

    move-result v7

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x0

    move v11, v10

    .line 1226
    :goto_17
    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_71

    .line 1227
    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 1228
    iget-object v13, v12, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 1231
    iget v12, v12, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->type:I

    const/4 v14, 0x1

    if-eq v12, v14, :cond_32

    const/4 v15, 0x2

    if-eq v12, v15, :cond_32

    goto :goto_33

    :cond_32
    move v14, v10

    :goto_33
    if-eqz v7, :cond_37

    if-nez v14, :cond_6e

    .line 1234
    :cond_37
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3e

    goto :goto_6e

    .line 1237
    :cond_3e
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    invoke-virtual {v12}, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->getIndex()Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    move-result-object v12

    if-nez v12, :cond_4c

    add-long/2addr v5, v1

    return-wide v5

    .line 1241
    :cond_4c
    invoke-interface {v12, v1, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getAvailableSegmentCount(JJ)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-nez v15, :cond_57

    return-wide v5

    .line 1246
    :cond_57
    invoke-interface {v12, v1, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide v15

    add-long/2addr v15, v13

    const-wide/16 v13, 0x1

    sub-long v13, v15, v13

    .line 1250
    invoke-interface {v12, v13, v14}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v15

    add-long/2addr v15, v5

    .line 1251
    invoke-interface {v12, v13, v14, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide v12

    add-long/2addr v12, v15

    .line 1253
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    :cond_6e
    :goto_6e
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    :cond_71
    return-wide v8
.end method

.method public static getAvailableStartTimeInManifestUs(Lio/bidmachine/media3/exoplayer/dash/manifest/Period;JJ)J
    .registers 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1189
    iget-wide v5, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->startMs:J

    invoke-static {v5, v6}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v5

    .line 1191
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->hasVideoOrAudioAdaptationSets(Lio/bidmachine/media3/exoplayer/dash/manifest/Period;)Z

    move-result v7

    const/4 v8, 0x0

    move-wide v10, v5

    move v9, v8

    .line 1192
    :goto_13
    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_62

    .line 1193
    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;

    .line 1194
    iget-object v13, v12, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 1197
    iget v12, v12, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->type:I

    const/4 v14, 0x1

    if-eq v12, v14, :cond_2e

    const/4 v15, 0x2

    if-eq v12, v15, :cond_2e

    goto :goto_2f

    :cond_2e
    move v14, v8

    :goto_2f
    if-eqz v7, :cond_33

    if-nez v14, :cond_5f

    .line 1200
    :cond_33
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3a

    goto :goto_5f

    .line 1203
    :cond_3a
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    invoke-virtual {v12}, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->getIndex()Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    move-result-object v12

    if-nez v12, :cond_47

    goto :goto_51

    .line 1207
    :cond_47
    invoke-interface {v12, v1, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getAvailableSegmentCount(JJ)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_52

    :goto_51
    return-wide v5

    .line 1212
    :cond_52
    invoke-interface {v12, v1, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide v13

    .line 1214
    invoke-interface {v12, v13, v14}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v12

    add-long/2addr v12, v5

    .line 1216
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :cond_5f
    :goto_5f
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_62
    return-wide v10
.end method

.method public static getIntervalUntilNextManifestRefreshMs(Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;J)J
    .registers 23

    move-object/from16 v0, p0

    .line 1146
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1147
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriod(I)Lio/bidmachine/media3/exoplayer/dash/manifest/Period;

    move-result-object v2

    .line 1148
    iget-wide v3, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->startMs:J

    invoke-static {v3, v4}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v3

    .line 1149
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v5

    .line 1150
    invoke-static/range {p1 .. p2}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v7

    .line 1151
    iget-wide v9, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    invoke-static {v9, v10}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v9

    .line 1153
    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v0, v11

    const-wide/32 v12, 0x4c4b40

    if-eqz v11, :cond_37

    cmp-long v11, v0, v12

    if-gez v11, :cond_37

    goto :goto_38

    :cond_37
    move-wide v0, v12

    :goto_38
    const/4 v11, 0x0

    move v12, v11

    .line 1157
    :goto_3a
    iget-object v13, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_86

    .line 1158
    iget-object v13, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;

    iget-object v13, v13, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 1159
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_53

    goto :goto_83

    .line 1162
    :cond_53
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    invoke-virtual {v13}, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->getIndex()Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    move-result-object v13

    if-eqz v13, :cond_83

    add-long v14, v9, v3

    .line 1167
    invoke-interface {v13, v5, v6, v7, v8}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getNextSegmentAvailableTimeUs(JJ)J

    move-result-wide v16

    add-long v14, v14, v16

    sub-long/2addr v14, v7

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_6f

    goto :goto_83

    :cond_6f
    const-wide/32 v16, 0x186a0

    sub-long v18, v0, v16

    cmp-long v13, v14, v18

    if-ltz v13, :cond_82

    cmp-long v13, v14, v0

    if-lez v13, :cond_83

    add-long v16, v0, v16

    cmp-long v13, v14, v16

    if-gez v13, :cond_83

    :cond_82
    move-wide v0, v14

    :cond_83
    :goto_83
    add-int/lit8 v12, v12, 0x1

    goto :goto_3a

    :cond_86
    const-wide/16 v2, 0x3e8

    .line 1184
    sget-object v4, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasVideoOrAudioAdaptationSets(Lio/bidmachine/media3/exoplayer/dash/manifest/Period;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 1270
    :goto_2
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 1271
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;

    iget v2, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1e

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1b

    goto :goto_1e

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1e
    :goto_1e
    return v3

    :cond_1f
    return v0
.end method

.method public static isIndexExplicit(Lio/bidmachine/media3/exoplayer/dash/manifest/Period;)Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 1259
    :goto_2
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 1261
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->getIndex()Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 1262
    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->isExplicit()Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_2a

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2a
    :goto_2a
    const/4 p0, 0x1

    return p0

    :cond_2c
    return v0
.end method


# virtual methods
.method public createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 573
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->firstPeriodId:I

    sub-int v8, v2, v3

    .line 574
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->createEventDispatcher(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v15

    .line 575
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->createDrmEventDispatcher(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v13

    .line 576
    new-instance v4, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;

    iget v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->firstPeriodId:I

    add-int v5, v1, v8

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->baseUrlExclusionList:Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;

    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->chunkSourceFactory:Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;

    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->mediaTransferListener:Lio/bidmachine/media3/datasource/TransferListener;

    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    iget-object v14, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestLoadErrorThrower:Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;

    iget-object v11, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    move-wide/from16 v16, v1

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->playerEmsgCallback:Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    .line 594
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->getPlayerId()Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    move-result-object v22

    move-object/from16 v20, v11

    const/4 v11, 0x0

    move-object/from16 v19, p2

    move-object/from16 v21, v1

    move-object/from16 v18, v3

    invoke-direct/range {v4 .. v22}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;-><init>(ILio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;ILio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;Lio/bidmachine/media3/datasource/TransferListener;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;JLio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;Lio/bidmachine/media3/exoplayer/upstream/Allocator;Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    .line 595
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    iget v2, v4, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->id:I

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v4
.end method

.method public final getManifestLoadRetryDelayMillis()J
    .registers 3

    .line 1134
    iget v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->staleManifestReloadAttempt:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public declared-synchronized getMediaItem()Lio/bidmachine/media3/common/MediaItem;
    .registers 2

    monitor-enter p0

    .line 530
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->mediaItem:Lio/bidmachine/media3/common/MediaItem;
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

.method public final loadNtpTimeOffset()V
    .registers 3

    .line 880
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    new-instance v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$1;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$1;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->initialize(Lio/bidmachine/media3/exoplayer/upstream/Loader;Lio/bidmachine/media3/exoplayer/util/SntpClient$InitializationCallback;)V

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestLoadErrorThrower:Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method public onDashManifestPublishTimeExpired(J)V
    .registers 7

    .line 638
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    cmp-long v0, v0, p1

    if-gez v0, :cond_10

    goto :goto_11

    :cond_10
    return-void

    .line 640
    :cond_11
    :goto_11
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    return-void
.end method

.method public onDashManifestRefreshRequested()V
    .registers 3

    .line 633
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 634
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->startLoadingManifest()V

    return-void
.end method

.method public onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJ)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "*>;JJ)V"
        }
    .end annotation

    .line 826
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v1, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 830
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 831
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    .line 834
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v0 .. v11}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 835
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 836
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget p1, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->type:I

    invoke-virtual {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;I)V

    return-void
.end method

.method public onManifestLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJ)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;",
            ">;JJ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 667
    new-instance v2, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 671
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 672
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 675
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v12

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 676
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v4, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v3, v4, v5}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 677
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v4, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->type:I

    invoke-virtual {v3, v2, v4}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;I)V

    .line 678
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    .line 680
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    const/4 v4, 0x0

    if-nez v3, :cond_38

    move v3, v4

    goto :goto_3c

    :cond_38
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v3

    .line 682
    :goto_3c
    invoke-virtual {v2, v4}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriod(I)Lio/bidmachine/media3/exoplayer/dash/manifest/Period;

    move-result-object v5

    iget-wide v5, v5, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->startMs:J

    move v7, v4

    :goto_43
    if-ge v7, v3, :cond_54

    .line 683
    iget-object v10, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    .line 684
    invoke-virtual {v10, v7}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriod(I)Lio/bidmachine/media3/exoplayer/dash/manifest/Period;

    move-result-object v10

    iget-wide v10, v10, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->startMs:J

    cmp-long v10, v10, v5

    if-gez v10, :cond_54

    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    .line 688
    :cond_54
    iget-boolean v5, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_bf

    sub-int/2addr v3, v7

    .line 690
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v5

    if-le v3, v5, :cond_6c

    .line 695
    const-string v2, "DashMediaSource"

    const-string v3, "Loaded out of sync manifest"

    invoke-static {v2, v3}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9d

    .line 697
    :cond_6c
    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    cmp-long v3, v5, v10

    if-eqz v3, :cond_bd

    iget-wide v12, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->publishTimeMs:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    cmp-long v3, v12, v5

    if-gtz v3, :cond_bd

    .line 702
    const-string v3, "DashMediaSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded stale dynamic manifest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->publishTimeMs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :goto_9d
    iget v2, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->staleManifestReloadAttempt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->staleManifestReloadAttempt:I

    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->type:I

    .line 713
    invoke-interface {v3, v0}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v0

    if-ge v2, v0, :cond_b5

    .line 714
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->getManifestLoadRetryDelayMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->scheduleManifestRefresh(J)V

    return-void

    .line 716
    :cond_b5
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/DashManifestStaleException;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/dash/DashManifestStaleException;-><init>()V

    iput-object v0, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    return-void

    .line 720
    :cond_bd
    iput v4, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->staleManifestReloadAttempt:I

    .line 723
    :cond_bf
    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    .line 724
    iget-boolean v3, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestLoadPending:Z

    iget-boolean v2, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    and-int/2addr v2, v3

    iput-boolean v2, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestLoadPending:Z

    sub-long v2, v8, p4

    .line 725
    iput-wide v2, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    .line 726
    iput-wide v8, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    .line 727
    iget v2, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->firstPeriodId:I

    add-int/2addr v2, v7

    iput v2, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->firstPeriodId:I

    .line 729
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v2

    .line 734
    :try_start_d6
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    iget-object v3, v3, Lio/bidmachine/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    if-ne v3, v4, :cond_ee

    .line 739
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    if-eqz v3, :cond_e5

    goto :goto_e9

    :cond_e5
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v3

    :goto_e9
    iput-object v3, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    goto :goto_ee

    :catchall_ec
    move-exception v0

    goto :goto_10c

    .line 741
    :cond_ee
    :goto_ee
    monitor-exit v2
    :try_end_ef
    .catchall {:try_start_d6 .. :try_end_ef} :catchall_ec

    .line 743
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-boolean v2, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v2, :cond_107

    iget-wide v2, v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_107

    .line 745
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->utcTiming:Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;

    if-eqz v0, :cond_103

    .line 746
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->resolveUtcTimingElement(Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;)V

    return-void

    .line 748
    :cond_103
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loadNtpTimeOffset()V

    return-void

    :cond_107
    const/4 v0, 0x1

    .line 751
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->processManifest(Z)V

    return-void

    .line 741
    :goto_10c
    :try_start_10c
    monitor-exit v2
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_ec

    throw v0
.end method

.method public onManifestLoadError(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    move-object/from16 v0, p6

    .line 761
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v4, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 765
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 766
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    .line 769
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v11

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v1 .. v12}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 770
    new-instance v2, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    iget v3, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->type:I

    invoke-direct {v2, v3}, Lio/bidmachine/media3/exoplayer/source/MediaLoadData;-><init>(I)V

    .line 771
    new-instance v3, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move/from16 v4, p7

    invoke-direct {v3, v1, v2, v0, v4}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    .line 773
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-interface {v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-nez v4, :cond_3a

    .line 776
    sget-object v2, Lio/bidmachine/media3/exoplayer/upstream/Loader;->DONT_RETRY_FATAL:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    goto :goto_3f

    :cond_3a
    const/4 v4, 0x0

    .line 777
    invoke-static {v4, v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->createRetryAction(ZJ)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object v2

    .line 778
    :goto_3f
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    .line 779
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v6, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->type:I

    invoke-virtual {v5, v1, v6, v0, v4}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadError(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;ILjava/io/IOException;Z)V

    if-nez v3, :cond_55

    .line 781
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v3, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v0, v3, v4}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    :cond_55
    return-object v2
.end method

.method public onManifestLoadStarted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJI)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;",
            ">;JJI)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p6

    if-nez v1, :cond_12

    .line 653
    new-instance v2, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    move-wide/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;J)V

    goto :goto_2c

    .line 654
    :cond_12
    new-instance v3, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v4, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 657
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 658
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 661
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v13

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v2, v3

    .line 662
    :goto_2c
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->type:I

    invoke-virtual {v3, v2, v0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;II)V

    return-void
.end method

.method public onUtcTimestampLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJ)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 788
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v1, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 792
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 793
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v5

    .line 796
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v10

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v0 .. v11}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 797
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 798
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v2, p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->type:I

    invoke-virtual {v1, v0, v2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;I)V

    .line 799
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->onUtcTimestampResolved(J)V

    return-void
.end method

.method public onUtcTimestampLoadError(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJLjava/io/IOException;)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    .line 807
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestEventDispatcher:Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    new-instance v4, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->dataSpec:Lio/bidmachine/media3/datasource/DataSpec;

    .line 811
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 812
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v9

    .line 815
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v14

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v4 .. v15}, Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;-><init>(JLio/bidmachine/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget v5, v1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->type:I

    const/4 v6, 0x1

    .line 807
    invoke-virtual {v3, v4, v5, v2, v6}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->loadError(Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;ILjava/io/IOException;Z)V

    .line 819
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v4, v1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v3, v4, v5}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 820
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    .line 821
    sget-object v1, Lio/bidmachine/media3/exoplayer/upstream/Loader;->DONT_RETRY:Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    return-object v1
.end method

.method public final onUtcTimestampResolutionError(Ljava/io/IOException;)V
    .registers 6

    .line 901
    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve time offset."

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 903
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    const/4 p1, 0x1

    .line 904
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->processManifest(Z)V

    return-void
.end method

.method public final onUtcTimestampResolved(J)V
    .registers 3

    .line 896
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    const/4 p1, 0x1

    .line 897
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->processManifest(Z)V

    return-void
.end method

.method public prepareSourceInternal(Lio/bidmachine/media3/datasource/TransferListener;)V
    .registers 4

    .line 553
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->mediaTransferListener:Lio/bidmachine/media3/datasource/TransferListener;

    .line 554
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->getPlayerId()Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;->setPlayer(Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    .line 555
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;->prepare()V

    .line 556
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->sideloadedManifest:Z

    if-eqz p1, :cond_1d

    const/4 p1, 0x0

    .line 557
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->processManifest(Z)V

    return-void

    .line 559
    :cond_1d
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestDataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    invoke-interface {p1}, Lio/bidmachine/media3/datasource/DataSource$Factory;->createDataSource()Lio/bidmachine/media3/datasource/DataSource;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    .line 560
    new-instance p1, Lio/bidmachine/media3/exoplayer/upstream/Loader;

    const-string v0, "DashMediaSource"

    invoke-direct {p1, v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    .line 561
    invoke-static {}, Lio/bidmachine/media3/common/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 562
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->startLoadingManifest()V

    return-void
.end method

.method public final processManifest(Z)V
    .registers 37

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    .line 909
    :goto_4
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 910
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 911
    iget v4, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->firstPeriodId:I

    if-lt v3, v4, :cond_26

    .line 912
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget v6, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->firstPeriodId:I

    sub-int/2addr v3, v6

    invoke-virtual {v4, v5, v3}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->updateManifest(Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;I)V

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 918
    :cond_29
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    invoke-virtual {v2, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriod(I)Lio/bidmachine/media3/exoplayer/dash/manifest/Period;

    move-result-object v2

    .line 919
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 920
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    invoke-virtual {v5, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriod(I)Lio/bidmachine/media3/exoplayer/dash/manifest/Period;

    move-result-object v5

    .line 921
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    invoke-virtual {v6, v3}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v6

    .line 922
    iget-wide v8, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    invoke-static {v8, v9}, Lio/bidmachine/media3/common/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v8

    .line 923
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    .line 925
    invoke-virtual {v3, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v10

    .line 924
    invoke-static {v2, v10, v11, v8, v9}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->getAvailableStartTimeInManifestUs(Lio/bidmachine/media3/exoplayer/dash/manifest/Period;JJ)J

    move-result-wide v10

    .line 927
    invoke-static {v5, v6, v7, v8, v9}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->getAvailableEndTimeInManifestUs(Lio/bidmachine/media3/exoplayer/dash/manifest/Period;JJ)J

    move-result-wide v6

    .line 928
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-boolean v3, v3, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v3, :cond_69

    invoke-static {v5}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->isIndexExplicit(Lio/bidmachine/media3/exoplayer/dash/manifest/Period;)Z

    move-result v3

    if-nez v3, :cond_69

    move v3, v4

    goto :goto_6a

    :cond_69
    move v3, v1

    :goto_6a
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_83

    .line 929
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-wide v14, v5, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    cmp-long v5, v14, v12

    if-eqz v5, :cond_83

    .line 932
    invoke-static {v14, v15}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v14

    sub-long v14, v6, v14

    .line 934
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :cond_83
    sub-long/2addr v6, v10

    .line 939
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-boolean v14, v5, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    move-wide/from16 v31, v12

    if-eqz v14, :cond_cd

    .line 940
    iget-wide v14, v5, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    cmp-long v5, v14, v31

    if-eqz v5, :cond_93

    move v1, v4

    :cond_93
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 941
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-wide v4, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 943
    invoke-static {v4, v5}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    sub-long/2addr v8, v4

    sub-long/2addr v8, v10

    .line 945
    invoke-virtual {v0, v8, v9, v6, v7}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->updateLiveConfiguration(JJ)V

    .line 946
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-wide v4, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 947
    invoke-static {v10, v11}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v14

    add-long/2addr v4, v14

    .line 948
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    iget-wide v14, v1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {v14, v15}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v14

    sub-long/2addr v8, v14

    .line 949
    iget-wide v14, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->minLiveStartPositionUs:J

    const-wide/16 v16, 0x2

    const-wide/16 v33, 0x0

    div-long v12, v6, v16

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    cmp-long v1, v8, v12

    move-wide/from16 v17, v4

    if-gez v1, :cond_ca

    move-wide/from16 v26, v12

    goto :goto_d3

    :cond_ca
    move-wide/from16 v26, v8

    goto :goto_d3

    :cond_cd
    const-wide/16 v33, 0x0

    move-wide/from16 v17, v31

    move-wide/from16 v26, v33

    .line 957
    :goto_d3
    iget-wide v1, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->startMs:J

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    sub-long v22, v10, v1

    .line 958
    new-instance v14, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-wide v4, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    iget-wide v8, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    iget v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->firstPeriodId:I

    .line 968
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->getMediaItem()Lio/bidmachine/media3/common/MediaItem;

    move-result-object v29

    .line 969
    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-boolean v10, v10, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v10, :cond_fd

    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    :goto_f1
    move-object/from16 v28, v1

    move/from16 v21, v2

    move-wide v15, v4

    move-wide/from16 v24, v6

    move-wide/from16 v19, v8

    move-object/from16 v30, v10

    goto :goto_ff

    :cond_fd
    const/4 v10, 0x0

    goto :goto_f1

    :goto_ff
    invoke-direct/range {v14 .. v30}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;-><init>(JJJIJJJLio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;)V

    .line 970
    invoke-virtual {v0, v14}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->refreshSourceInfo(Lio/bidmachine/media3/common/Timeline;)V

    .line 972
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->sideloadedManifest:Z

    if-nez v1, :cond_152

    .line 974
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v3, :cond_125

    .line 977
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-wide v4, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 980
    invoke-static {v4, v5}, Lio/bidmachine/media3/common/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v4

    .line 979
    invoke-static {v3, v4, v5}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->getIntervalUntilNextManifestRefreshMs(Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;J)J

    move-result-wide v3

    .line 977
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 982
    :cond_125
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestLoadPending:Z

    if-eqz v1, :cond_12d

    .line 983
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->startLoadingManifest()V

    return-void

    :cond_12d
    if-eqz p1, :cond_152

    .line 984
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-boolean v2, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v2, :cond_152

    iget-wide v1, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    cmp-long v3, v1, v31

    if-eqz v3, :cond_152

    cmp-long v3, v1, v33

    if-nez v3, :cond_141

    const-wide/16 v1, 0x1388

    .line 996
    :cond_141
    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    add-long/2addr v3, v1

    .line 997
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v3, v1

    move-wide/from16 v1, v33

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 998
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->scheduleManifestRefresh(J)V

    :cond_152
    return-void
.end method

.method public releasePeriod(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 3

    .line 601
    check-cast p1, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;

    .line 602
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->release()V

    .line 603
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    iget p1, p1, Lio/bidmachine/media3/exoplayer/dash/DashMediaPeriod;->id:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public releaseSourceInternal()V
    .registers 5

    const/4 v0, 0x0

    .line 608
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestLoadPending:Z

    const/4 v1, 0x0

    .line 609
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    .line 610
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    if-eqz v2, :cond_f

    .line 611
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->release()V

    .line 612
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    :cond_f
    const-wide/16 v2, 0x0

    .line 614
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    .line 615
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    .line 616
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->initialManifestUri:Landroid/net/Uri;

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 617
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    .line 618
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_24

    .line 619
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 620
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->handler:Landroid/os/Handler;

    :cond_24
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 622
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 623
    iput v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->staleManifestReloadAttempt:I

    .line 624
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    .line 625
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 626
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->baseUrlExclusionList:Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/dash/BaseUrlExclusionList;->reset()V

    .line 627
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;->release()V

    return-void
.end method

.method public final resolveUtcTimingElement(Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;)V
    .registers 4

    .line 842
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;->schemeIdUri:Ljava/lang/String;

    .line 843
    const-string v1, "urn:mpeg:dash:utc:direct:2014"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    const-string v1, "urn:mpeg:dash:utc:direct:2012"

    .line 844
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_68

    .line 846
    :cond_13
    const-string v1, "urn:mpeg:dash:utc:http-iso:2014"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "urn:mpeg:dash:utc:http-iso:2012"

    .line 847
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_5f

    .line 849
    :cond_24
    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    .line 850
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_55

    .line 852
    :cond_35
    const-string p1, "urn:mpeg:dash:utc:ntp:2014"

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    const-string p1, "urn:mpeg:dash:utc:ntp:2012"

    .line 853
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    goto :goto_51

    .line 857
    :cond_46
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unsupported UTC timing scheme"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    return-void

    .line 854
    :cond_51
    :goto_51
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loadNtpTimeOffset()V

    return-void

    .line 851
    :cond_55
    :goto_55
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$XsDateTimeParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$XsDateTimeParser;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$1;)V

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->resolveUtcTimingElementHttp(Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;)V

    return-void

    .line 848
    :cond_5f
    :goto_5f
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Iso8601Parser;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Iso8601Parser;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->resolveUtcTimingElementHttp(Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;)V

    return-void

    .line 845
    :cond_68
    :goto_68
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->resolveUtcTimingElementDirect(Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;)V

    return-void
.end method

.method public final resolveUtcTimingElementDirect(Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;)V
    .registers 6

    .line 863
    :try_start_0
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 864
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->onUtcTimestampResolved(J)V
    :try_end_c
    .catch Lio/bidmachine/media3/common/ParserException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    .line 866
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    return-void
.end method

.method public final resolveUtcTimingElementHttp(Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 872
    new-instance v0, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    .line 874
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x5

    invoke-direct {v0, v1, p1, v2, p2}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;-><init>(Lio/bidmachine/media3/datasource/DataSource;Landroid/net/Uri;ILio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;)V

    new-instance p1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$UtcTimestampCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$UtcTimestampCallback;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$1;)V

    const/4 p2, 0x1

    .line 872
    invoke-virtual {p0, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->startLoading(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;I)V

    return-void
.end method

.method public final scheduleManifestRefresh(J)V
    .registers 5

    .line 1099
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final startLoading(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "TT;>;",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback<",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1141
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->startLoading(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;I)J

    return-void
.end method

.method public final startLoadingManifest()V
    .registers 6

    .line 1103
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1104
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 1107
    :cond_10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loader:Lio/bidmachine/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->isLoading()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 1108
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestLoadPending:Z

    return-void

    .line 1112
    :cond_1c
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1113
    :try_start_1f
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 1114
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_4c

    const/4 v0, 0x0

    .line 1115
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestLoadPending:Z

    .line 1116
    new-instance v0, Lio/bidmachine/media3/datasource/DataSpec$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/datasource/DataSpec$Builder;-><init>()V

    .line 1117
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->setFlags(I)Lio/bidmachine/media3/datasource/DataSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/datasource/DataSpec$Builder;->build()Lio/bidmachine/media3/datasource/DataSpec;

    move-result-object v0

    .line 1127
    new-instance v1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->dataSource:Lio/bidmachine/media3/datasource/DataSource;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestParser:Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;

    const/4 v4, 0x4

    invoke-direct {v1, v2, v0, v4, v3}, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;-><init>(Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/datasource/DataSpec;ILio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;)V

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifestCallback:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestCallback;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 1130
    invoke-interface {v2, v4}, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v2

    .line 1127
    invoke-virtual {p0, v1, v0, v2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->startLoading(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;I)V

    return-void

    :catchall_4c
    move-exception v1

    .line 1114
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public final updateLiveConfiguration(JJ)V
    .registers 23

    move-object/from16 v0, p0

    .line 1004
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->getMediaItem()Lio/bidmachine/media3/common/MediaItem;

    move-result-object v1

    iget-object v1, v1, Lio/bidmachine/media3/common/MediaItem;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    .line 1006
    invoke-static/range {p1 .. p2}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    .line 1009
    iget-wide v2, v1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v8

    if-eqz v4, :cond_1d

    .line 1010
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_1b
    move-wide v10, v2

    goto :goto_2f

    .line 1011
    :cond_1d
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->serviceDescription:Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;

    if-eqz v2, :cond_2e

    iget-wide v2, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;->maxOffsetMs:J

    cmp-long v4, v2, v8

    if-eqz v4, :cond_2e

    .line 1013
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_1b

    :cond_2e
    move-wide v10, v6

    :goto_2f
    sub-long v2, p1, p3

    .line 1016
    invoke-static {v2, v3}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v12, v2, v4

    if-gez v12, :cond_40

    cmp-long v12, v10, v4

    if-lez v12, :cond_40

    move-wide v2, v4

    .line 1022
    :cond_40
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-wide v4, v4, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->minBufferTimeMs:J

    cmp-long v12, v4, v8

    if-eqz v12, :cond_4d

    add-long/2addr v2, v4

    .line 1024
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_4d
    move-wide v4, v2

    .line 1028
    iget-wide v2, v1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v12, v2, v8

    if-eqz v12, :cond_5a

    .line 1030
    invoke-static/range {v2 .. v7}, Lio/bidmachine/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v4

    :cond_58
    :goto_58
    move-wide v14, v4

    goto :goto_6b

    .line 1032
    :cond_5a
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->serviceDescription:Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;

    if-eqz v2, :cond_58

    iget-wide v2, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;->minOffsetMs:J

    cmp-long v12, v2, v8

    if-eqz v12, :cond_58

    .line 1035
    invoke-static/range {v2 .. v7}, Lio/bidmachine/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v4

    goto :goto_58

    :goto_6b
    cmp-long v2, v14, v10

    if-lez v2, :cond_72

    move-wide/from16 v16, v14

    goto :goto_74

    :cond_72
    move-wide/from16 v16, v10

    .line 1044
    :goto_74
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    iget-wide v2, v2, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v4, v2, v8

    if-eqz v4, :cond_7d

    goto :goto_94

    .line 1047
    :cond_7d
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->serviceDescription:Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;

    if-eqz v3, :cond_8b

    iget-wide v3, v3, Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;->targetOffsetMs:J

    cmp-long v5, v3, v8

    if-eqz v5, :cond_8b

    move-wide v2, v3

    goto :goto_94

    .line 1050
    :cond_8b
    iget-wide v2, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->suggestedPresentationDelayMs:J

    cmp-long v4, v2, v8

    if-eqz v4, :cond_92

    goto :goto_94

    .line 1053
    :cond_92
    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->fallbackTargetLiveOffsetMs:J

    :goto_94
    cmp-long v4, v2, v14

    if-gez v4, :cond_99

    move-wide v2, v14

    :cond_99
    cmp-long v4, v2, v16

    if-lez v4, :cond_b1

    .line 1059
    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->minLiveStartPositionUs:J

    const-wide/16 v4, 0x2

    div-long v4, p3, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long v2, p1, v2

    .line 1061
    invoke-static {v2, v3}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v12

    .line 1063
    invoke-static/range {v12 .. v17}, Lio/bidmachine/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v2

    :cond_b1
    move-wide/from16 v10, v16

    .line 1067
    iget v4, v1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v5, -0x800001

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_bd

    goto :goto_c7

    .line 1069
    :cond_bd
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-object v4, v4, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->serviceDescription:Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;

    if-eqz v4, :cond_c6

    .line 1070
    iget v4, v4, Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;->minPlaybackSpeed:F

    goto :goto_c7

    :cond_c6
    move v4, v5

    .line 1073
    :goto_c7
    iget v1, v1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_ce

    goto :goto_d8

    .line 1075
    :cond_ce
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->serviceDescription:Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;

    if-eqz v1, :cond_d7

    .line 1076
    iget v1, v1, Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;->maxPlaybackSpeed:F

    goto :goto_d8

    :cond_d7
    move v1, v5

    :goto_d8
    cmpl-float v6, v4, v5

    if-nez v6, :cond_ef

    cmpl-float v5, v1, v5

    if-nez v5, :cond_ef

    .line 1078
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-object v5, v5, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->serviceDescription:Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;

    if-eqz v5, :cond_ec

    iget-wide v5, v5, Lio/bidmachine/media3/exoplayer/dash/manifest/ServiceDescriptionElement;->targetOffsetMs:J

    cmp-long v5, v5, v8

    if-nez v5, :cond_ef

    :cond_ec
    const/high16 v4, 0x3f800000    # 1.0f

    move v1, v4

    .line 1088
    :cond_ef
    new-instance v5, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v5}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;-><init>()V

    .line 1090
    invoke-virtual {v5, v2, v3}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v2

    .line 1091
    invoke-virtual {v2, v14, v15}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->setMinOffsetMs(J)Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v2

    .line 1092
    invoke-virtual {v2, v10, v11}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->setMaxOffsetMs(J)Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v2

    .line 1093
    invoke-virtual {v2, v4}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->setMinPlaybackSpeed(F)Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v2

    .line 1094
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->setMaxPlaybackSpeed(F)Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    .line 1095
    invoke-virtual {v1}, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration$Builder;->build()Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    return-void
.end method

.method public declared-synchronized updateMediaItem(Lio/bidmachine/media3/common/MediaItem;)V
    .registers 2

    monitor-enter p0

    .line 548
    :try_start_1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->mediaItem:Lio/bidmachine/media3/common/MediaItem;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 549
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

###### Class io.bidmachine.media3.exoplayer.dash.DashMediaSource.AnonymousClass1 (io.bidmachine.media3.exoplayer.dash.DashMediaSource$1)
.class public Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$1;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/util/SntpClient$InitializationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->loadNtpTimeOffset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V
    .registers 2

    .line 882
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$1;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationFailed(Ljava/io/IOException;)V
    .registers 3

    .line 890
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$1;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->access$600(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;Ljava/io/IOException;)V

    return-void
.end method

.method public onInitialized()V
    .registers 4

    .line 885
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$1;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    invoke-static {}, Lio/bidmachine/media3/exoplayer/util/SntpClient;->getElapsedRealtimeOffsetMs()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->access$500(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;J)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.dash.DashMediaSource.DashTimeline (io.bidmachine.media3.exoplayer.dash.DashMediaSource$DashTimeline)
.class public final Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;
.super Lio/bidmachine/media3/common/Timeline;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DashTimeline"
.end annotation


# instance fields
.field public final elapsedRealtimeEpochOffsetMs:J

.field public final firstPeriodId:I

.field public final liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

.field public final manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

.field public final mediaItem:Lio/bidmachine/media3/common/MediaItem;

.field public final offsetInFirstPeriodUs:J

.field public final presentationStartTimeMs:J

.field public final windowDefaultStartPositionUs:J

.field public final windowDurationUs:J

.field public final windowStartTimeMs:J


# direct methods
.method public constructor <init>(JJJIJJJLio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;)V
    .registers 23

    move-object/from16 v0, p14

    move-object/from16 v1, p16

    .line 1303
    invoke-direct {p0}, Lio/bidmachine/media3/common/Timeline;-><init>()V

    .line 1304
    iget-boolean v2, v0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_f

    move v5, v4

    goto :goto_10

    :cond_f
    move v5, v3

    :goto_10
    if-ne v2, v5, :cond_13

    move v3, v4

    :cond_13
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 1305
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    .line 1306
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    .line 1307
    iput-wide p5, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->elapsedRealtimeEpochOffsetMs:J

    .line 1308
    iput p7, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    .line 1309
    iput-wide p8, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    move-wide/from16 p1, p10

    .line 1310
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    move-wide/from16 p1, p12

    .line 1311
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    .line 1312
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    move-object/from16 p1, p15

    .line 1313
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    .line 1314
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    return-void
.end method

.method public static isMovingLiveWindow(Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;)Z
    .registers 5

    .line 1423
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v0, :cond_17

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->durationMs:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getAdjustedWindowDefaultStartPositionUs(J)J
    .registers 13

    .line 1374
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    .line 1375
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->isMovingLiveWindow(Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;)Z

    move-result v2

    if-nez v2, :cond_b

    return-wide v0

    :cond_b
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1e

    add-long/2addr v0, p1

    .line 1380
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_1e

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1

    .line 1387
    :cond_1e
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    add-long/2addr p1, v0

    .line 1388
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v6

    move v4, v5

    .line 1389
    :goto_29
    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    invoke-virtual {v8}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_41

    cmp-long v8, p1, v6

    if-ltz v8, :cond_41

    sub-long/2addr p1, v6

    add-int/lit8 v4, v4, 0x1

    .line 1393
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    invoke-virtual {v6, v4}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v6

    goto :goto_29

    .line 1395
    :cond_41
    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    invoke-virtual {v8, v4}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriod(I)Lio/bidmachine/media3/exoplayer/dash/manifest/Period;

    move-result-object v4

    const/4 v8, 0x2

    .line 1396
    invoke-virtual {v4, v8}, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_50

    goto :goto_79

    .line 1404
    :cond_50
    iget-object v4, v4, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 1405
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;

    iget-object v4, v4, Lio/bidmachine/media3/exoplayer/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;

    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/dash/manifest/Representation;->getIndex()Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;

    move-result-object v4

    if-eqz v4, :cond_79

    .line 1406
    invoke-interface {v4, v6, v7}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getSegmentCount(J)J

    move-result-wide v8

    cmp-long v2, v8, v2

    if-nez v2, :cond_6f

    goto :goto_79

    .line 1410
    :cond_6f
    invoke-interface {v4, p1, p2, v6, v7}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide v2

    .line 1412
    invoke-interface {v4, v2, v3}, Lio/bidmachine/media3/exoplayer/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    sub-long/2addr v0, p1

    :cond_79
    :goto_79
    return-wide v0
.end method

.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .registers 4

    .line 1365
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 1368
    :cond_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1369
    iget v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_19

    .line 1370
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v0

    if-lt p1, v0, :cond_18

    goto :goto_19

    :cond_18
    return p1

    :cond_19
    :goto_19
    return v1
.end method

.method public getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;
    .registers 15

    .line 1324
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lio/bidmachine/media3/common/util/Assertions;->checkIndex(III)I

    const/4 v0, 0x0

    if-eqz p3, :cond_15

    .line 1325
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    invoke-virtual {v2, p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriod(I)Lio/bidmachine/media3/exoplayer/dash/manifest/Period;

    move-result-object v2

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->id:Ljava/lang/String;

    move-object v4, v2

    goto :goto_16

    :cond_15
    move-object v4, v0

    :goto_16
    if-eqz p3, :cond_1f

    .line 1326
    iget p3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    add-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1f
    move-object v5, v0

    .line 1327
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    .line 1331
    invoke-virtual {p3, p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v7

    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    .line 1332
    invoke-virtual {p3, p1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriod(I)Lio/bidmachine/media3/exoplayer/dash/manifest/Period;

    move-result-object p1

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->startMs:J

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriod(I)Lio/bidmachine/media3/exoplayer/dash/manifest/Period;

    move-result-object p1

    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/dash/manifest/Period;->startMs:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    sub-long v9, v0, v2

    const/4 v6, 0x0

    move-object v3, p2

    .line 1327
    invoke-virtual/range {v3 .. v10}, Lio/bidmachine/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public getPeriodCount()I
    .registers 2

    .line 1319
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v0

    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    .line 1418
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v1

    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/common/util/Assertions;->checkIndex(III)I

    .line 1419
    iget v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getWindow(ILio/bidmachine/media3/common/Timeline$Window;J)Lio/bidmachine/media3/common/Timeline$Window;
    .registers 29

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    .line 1343
    invoke-static {v3, v1, v2}, Lio/bidmachine/media3/common/util/Assertions;->checkIndex(III)I

    move-wide/from16 v3, p3

    .line 1345
    invoke-virtual {v0, v3, v4}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->getAdjustedWindowDefaultStartPositionUs(J)J

    move-result-wide v16

    .line 1346
    sget-object v4, Lio/bidmachine/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->manifest:Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;

    iget-wide v7, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    iget-wide v9, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    iget-wide v11, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->elapsedRealtimeEpochOffsetMs:J

    .line 1354
    invoke-static {v6}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->isMovingLiveWindow(Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;)Z

    move-result v14

    iget-object v15, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    move v1, v2

    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    .line 1359
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v13

    add-int/lit8 v21, v13, -0x1

    move-wide/from16 v18, v2

    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    const/4 v13, 0x1

    const/16 v20, 0x0

    move-object/from16 v3, p2

    move-wide/from16 v22, v1

    .line 1346
    invoke-virtual/range {v3 .. v23}, Lio/bidmachine/media3/common/Timeline$Window;->set(Ljava/lang/Object;Lio/bidmachine/media3/common/MediaItem;Ljava/lang/Object;JJJZZLio/bidmachine/media3/common/MediaItem$LiveConfiguration;JJIIJ)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v1

    return-object v1
.end method

.method public getWindowCount()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.dash.DashMediaSource.DefaultPlayerEmsgCallback (io.bidmachine.media3.exoplayer.dash.DashMediaSource$DefaultPlayerEmsgCallback)
.class public final Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DefaultPlayerEmsgCallback;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/dash/PlayerEmsgHandler$PlayerEmsgCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DefaultPlayerEmsgCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V
    .registers 2

    .line 1429
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DefaultPlayerEmsgCallback;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$1;)V
    .registers 3

    .line 1429
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DefaultPlayerEmsgCallback;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V

    return-void
.end method


# virtual methods
.method public onDashManifestPublishTimeExpired(J)V
    .registers 4

    .line 1438
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DefaultPlayerEmsgCallback;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->onDashManifestPublishTimeExpired(J)V

    return-void
.end method

.method public onDashManifestRefreshRequested()V
    .registers 2

    .line 1433
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$DefaultPlayerEmsgCallback;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->onDashManifestRefreshRequested()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.dash.DashMediaSource.Factory (io.bidmachine.media3.exoplayer.dash.DashMediaSource$Factory)
.class public final Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final chunkSourceFactory:Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;

.field public cmcdConfigurationFactory:Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;

.field public compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field public drmSessionManagerProvider:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

.field public fallbackTargetLiveOffsetMs:J

.field public loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public final manifestDataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

.field public manifestParser:Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "+",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;",
            ">;"
        }
    .end annotation
.end field

.field public minLiveStartPositionUs:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSource$Factory;)V
    .registers 3

    .line 140
    new-instance v0, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/dash/DefaultDashChunkSource$Factory;-><init>(Lio/bidmachine/media3/datasource/DataSource$Factory;)V

    invoke-direct {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;Lio/bidmachine/media3/datasource/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;Lio/bidmachine/media3/datasource/DataSource$Factory;)V
    .registers 3

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->chunkSourceFactory:Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;

    .line 164
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->manifestDataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    .line 165
    new-instance p1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->drmSessionManagerProvider:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 166
    new-instance p1, Lio/bidmachine/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    const-wide/16 p1, 0x7530

    .line 167
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->fallbackTargetLiveOffsetMs:J

    const-wide/32 p1, 0x4c4b40

    .line 168
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->minLiveStartPositionUs:J

    .line 169
    new-instance p1, Lio/bidmachine/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    const/4 p1, 0x1

    .line 170
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;

    return-void
.end method


# virtual methods
.method public createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 362
    iget-object v1, v2, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->manifestParser:Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;

    if-nez v1, :cond_12

    .line 365
    new-instance v1, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifestParser;-><init>()V

    .line 367
    :cond_12
    iget-object v3, v2, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    iget-object v3, v3, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 368
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    .line 369
    new-instance v4, Lio/bidmachine/media3/exoplayer/offline/FilteringManifestParser;

    invoke-direct {v4, v1, v3}, Lio/bidmachine/media3/exoplayer/offline/FilteringManifestParser;-><init>(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;Ljava/util/List;)V

    move-object v5, v4

    goto :goto_24

    :cond_23
    move-object v5, v1

    .line 373
    :goto_24
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->cmcdConfigurationFactory:Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    if-nez v1, :cond_29

    goto :goto_2c

    .line 375
    :cond_29
    invoke-interface {v1, v2}, Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;->createCmcdConfiguration(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;

    .line 377
    :goto_2c
    new-instance v1, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->manifestDataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->chunkSourceFactory:Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;

    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->compositeSequenceableLoaderFactory:Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->drmSessionManagerProvider:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 385
    invoke-interface {v3, v2}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;->get(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    move-result-object v9

    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-wide v11, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->fallbackTargetLiveOffsetMs:J

    iget-wide v13, v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->minLiveStartPositionUs:J

    const/4 v15, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v15}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;-><init>(Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;Lio/bidmachine/media3/datasource/DataSource$Factory;Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;Lio/bidmachine/media3/exoplayer/source/CompositeSequenceableLoaderFactory;Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;JJLio/bidmachine/media3/exoplayer/dash/DashMediaSource$1;)V

    return-object v1
.end method

.method public bridge synthetic createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/MediaSource;
    .registers 2

    .line 110
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->chunkSourceFactory:Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;->experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;

    return-object p0
.end method

.method public bridge synthetic experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->experimentalParseSubtitlesDuringExtraction(Z)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;
    .registers 3

    .line 225
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->chunkSourceFactory:Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;->experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;

    return-object p0
.end method

.method public bridge synthetic experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 110
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->experimentalSetCodecsToParseWithinGopSampleDependencies(I)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setCmcdConfigurationFactory(Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;
    .registers 2

    .line 176
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->cmcdConfigurationFactory:Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    return-object p0
.end method

.method public bridge synthetic setCmcdConfigurationFactory(Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 110
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->setCmcdConfigurationFactory(Lio/bidmachine/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;
    .registers 3

    .line 184
    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 185
    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->drmSessionManagerProvider:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

    return-object p0
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 110
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;
    .registers 3

    .line 196
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 197
    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 110
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;
    .registers 3

    .line 208
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->chunkSourceFactory:Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;->setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/dash/DashChunkSource$Factory;

    return-object p0
.end method

.method public bridge synthetic setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 110
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;->setSubtitleParserFactory(Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.dash.DashMediaSource.Iso8601Parser (io.bidmachine.media3.exoplayer.dash.DashMediaSource$Iso8601Parser)
.class public final Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Iso8601Parser;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Iso8601Parser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TIMESTAMP_WITH_TIMEZONE_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1518
    const-string v0, "(.+?)(Z|((\\+|-|\u2212)(\\d\\d)(:?(\\d\\d))?))"

    .line 1519
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Iso8601Parser;->TIMESTAMP_WITH_TIMEZONE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Long;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1523
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1524
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 1526
    :try_start_11
    sget-object v0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Iso8601Parser;->TIMESTAMP_WITH_TIMEZONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1527
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_88

    const/4 p1, 0x1

    .line 1532
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 1533
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1534
    const-string v2, "UTC"

    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1535
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const/4 p1, 0x2

    .line 1537
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 1538
    const-string v3, "Z"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    goto :goto_81

    .line 1541
    :cond_4a
    const-string p1, "+"

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    const-wide/16 v3, 0x1

    goto :goto_5c

    :cond_5a
    const-wide/16 v3, -0x1

    :goto_5c
    const/4 p1, 0x5

    .line 1542
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 p1, 0x7

    .line 1543
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 1544
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    const-wide/16 v7, 0x0

    goto :goto_77

    :cond_73
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :goto_77
    const-wide/16 v9, 0x3c

    mul-long/2addr v5, v9

    add-long/2addr v5, v7

    const-wide/32 v7, 0xea60

    mul-long/2addr v5, v7

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    .line 1548
    :goto_81
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :catch_86
    move-exception p1

    goto :goto_9e

    .line 1528
    :cond_88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t parse timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
    :try_end_9e
    .catch Ljava/text/ParseException; {:try_start_11 .. :try_end_9e} :catch_86

    .line 1550
    :goto_9e
    invoke-static {p2, p1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1516
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$Iso8601Parser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.dash.DashMediaSource.ManifestCallback (io.bidmachine.media3.exoplayer.dash.DashMediaSource$ManifestCallback)
.class public final Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestCallback;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ManifestCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback<",
        "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
        "Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V
    .registers 2

    .line 1442
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestCallback;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$1;)V
    .registers 3

    .line 1442
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestCallback;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .registers 7

    .line 1442
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestCallback;->onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;",
            ">;JJZ)V"
        }
    .end annotation

    move-wide p5, p4

    move-wide p3, p2

    move-object p2, p1

    .line 1465
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestCallback;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    invoke-virtual/range {p1 .. p6}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .registers 6

    .line 1442
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestCallback;->onLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;",
            ">;JJ)V"
        }
    .end annotation

    .line 1456
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestCallback;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->onManifestLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public bridge synthetic onLoadError(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .registers 8

    .line 1442
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p7}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestCallback;->onLoadError(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoadError(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    .line 1475
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestCallback;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->onManifestLoadError(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onLoadStarted(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJI)V
    .registers 7

    .line 1442
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestCallback;->onLoadStarted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJI)V

    return-void
.end method

.method public onLoadStarted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJI)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Lio/bidmachine/media3/exoplayer/dash/manifest/DashManifest;",
            ">;JJI)V"
        }
    .end annotation

    .line 1450
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestCallback;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->onManifestLoadStarted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJI)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.dash.DashMediaSource.ManifestLoadErrorThrower (io.bidmachine.media3.exoplayer.dash.DashMediaSource$ManifestLoadErrorThrower)
.class public final Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestLoadErrorThrower;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/LoaderErrorThrower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ManifestLoadErrorThrower"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V
    .registers 2

    .line 1559
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public maybeThrowError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1563
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->access$700(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)Lio/bidmachine/media3/exoplayer/upstream/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/Loader;->maybeThrowError()V

    .line 1564
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestLoadErrorThrower;->maybeThrowManifestError()V

    return-void
.end method

.method public final maybeThrowManifestError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1574
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->access$800(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1575
    :cond_9
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$ManifestLoadErrorThrower;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->access$800(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

###### Class io.bidmachine.media3.exoplayer.dash.DashMediaSource.UtcTimestampCallback (io.bidmachine.media3.exoplayer.dash.DashMediaSource$UtcTimestampCallback)
.class public final Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$UtcTimestampCallback;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UtcTimestampCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/upstream/Loader$Callback<",
        "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V
    .registers 2

    .line 1479
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$UtcTimestampCallback;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$1;)V
    .registers 3

    .line 1479
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$UtcTimestampCallback;-><init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .registers 7

    .line 1479
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$UtcTimestampCallback;->onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJZ)V"
        }
    .end annotation

    move-wide p5, p4

    move-wide p3, p2

    move-object p2, p1

    .line 1493
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$UtcTimestampCallback;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    invoke-virtual/range {p1 .. p6}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->onLoadCanceled(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .registers 6

    .line 1479
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$UtcTimestampCallback;->onLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 1484
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$UtcTimestampCallback;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->onUtcTimestampLoadCompleted(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public bridge synthetic onLoadError(Lio/bidmachine/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .registers 8

    .line 1479
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p7}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$UtcTimestampCallback;->onLoadError(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoadError(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    move-object p7, p6

    move-wide p5, p4

    move-wide p3, p2

    move-object p2, p1

    .line 1503
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$UtcTimestampCallback;->this$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    invoke-virtual/range {p1 .. p7}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->onUtcTimestampLoadError(Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable;JJLjava/io/IOException;)Lio/bidmachine/media3/exoplayer/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.dash.DashMediaSource.XsDateTimeParser (io.bidmachine.media3.exoplayer.dash.DashMediaSource$XsDateTimeParser)
.class public final Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$XsDateTimeParser;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XsDateTimeParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/media3/exoplayer/upstream/ParsingLoadable$Parser<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$1;)V
    .registers 2

    .line 1507
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$XsDateTimeParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Long;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1511
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 1512
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1507
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$XsDateTimeParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.dash.DashMediaSource$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.dash.DashMediaSource$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->$r8$lambda$EJ2mPZgccb8FT5elmiVyZXaozBY(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.dash.DashMediaSource$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.dash.DashMediaSource$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->$r8$lambda$1Nbw2jMZNtu5NfMkRHn6iMBVoi4(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V

    return-void
.end method
