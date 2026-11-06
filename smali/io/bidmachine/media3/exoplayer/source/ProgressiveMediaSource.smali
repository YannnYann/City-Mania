###### Class io.bidmachine.media3.exoplayer.source.ProgressiveMediaSource (io.bidmachine.media3.exoplayer.source.ProgressiveMediaSource)
.class public final Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;
.super Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;
    }
.end annotation


# instance fields
.field public final continueLoadingCheckIntervalBytes:I

.field public final dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

.field public final downloadExecutorSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field public final drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

.field public final loadableLoadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public mediaItem:Lio/bidmachine/media3/common/MediaItem;

.field public final progressiveMediaExtractorFactory:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

.field public final singleTrackFormat:Lio/bidmachine/media3/common/Format;

.field public final singleTrackId:I

.field public timelineDurationUs:J

.field public timelineIsLive:Z

.field public timelineIsPlaceholder:Z

.field public timelineIsSeekable:Z

.field public transferListener:Lio/bidmachine/media3/datasource/TransferListener;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/datasource/DataSource$Factory;Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;IILio/bidmachine/media3/common/Format;Lcom/google/common/base/Supplier;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/MediaItem;",
            "Lio/bidmachine/media3/datasource/DataSource$Factory;",
            "Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;",
            "Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;",
            "Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "II",
            "Lio/bidmachine/media3/common/Format;",
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;",
            ">;)V"
        }
    .end annotation

    .line 341
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;-><init>()V

    .line 342
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    .line 343
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    .line 344
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->progressiveMediaExtractorFactory:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    .line 345
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    .line 346
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 347
    iput p6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    .line 348
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->singleTrackFormat:Lio/bidmachine/media3/common/Format;

    .line 349
    iput p7, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->singleTrackId:I

    const/4 p1, 0x1

    .line 350
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 351
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    .line 352
    iput-object p9, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->downloadExecutorSupplier:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/datasource/DataSource$Factory;Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;IILio/bidmachine/media3/common/Format;Lcom/google/common/base/Supplier;Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$1;)V
    .registers 11

    .line 64
    invoke-direct/range {p0 .. p9}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;-><init>(Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/datasource/DataSource$Factory;Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;IILio/bidmachine/media3/common/Format;Lcom/google/common/base/Supplier;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
    .registers 22

    move-object/from16 v8, p0

    .line 391
    iget-object v0, v8, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    invoke-interface {v0}, Lio/bidmachine/media3/datasource/DataSource$Factory;->createDataSource()Lio/bidmachine/media3/datasource/DataSource;

    move-result-object v2

    .line 392
    iget-object v0, v8, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->transferListener:Lio/bidmachine/media3/datasource/TransferListener;

    if-eqz v0, :cond_f

    .line 393
    invoke-interface {v2, v0}, Lio/bidmachine/media3/datasource/DataSource;->addTransferListener(Lio/bidmachine/media3/datasource/TransferListener;)V

    .line 395
    :cond_f
    invoke-virtual {v8}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->getLocalConfiguration()Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    move-result-object v0

    .line 396
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    move-object v3, v1

    iget-object v1, v0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v4, v8, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->progressiveMediaExtractorFactory:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    .line 399
    invoke-virtual {v8}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->getPlayerId()Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;->createProgressiveMediaExtractor(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

    move-result-object v4

    move-object v5, v3

    move-object v3, v4

    iget-object v4, v8, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    move-object v6, v5

    .line 401
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->createDrmEventDispatcher(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v5

    move-object v7, v6

    iget-object v6, v8, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 403
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->createEventDispatcher(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v9

    iget-object v10, v0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iget v11, v8, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    iget v12, v8, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->singleTrackId:I

    iget-object v13, v8, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->singleTrackFormat:Lio/bidmachine/media3/common/Format;

    iget-wide v14, v0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    .line 410
    invoke-static {v14, v15}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v14

    .line 411
    iget-object v0, v8, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->downloadExecutorSupplier:Lcom/google/common/base/Supplier;

    if-eqz v0, :cond_51

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;

    :goto_4a
    move-object/from16 v16, v0

    move-object v0, v7

    move-object v7, v9

    move-object/from16 v9, p2

    goto :goto_53

    :cond_51
    const/4 v0, 0x0

    goto :goto_4a

    :goto_53
    invoke-direct/range {v0 .. v16}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;-><init>(Landroid/net/Uri;Lio/bidmachine/media3/datasource/DataSource;Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;Lio/bidmachine/media3/exoplayer/upstream/Allocator;Ljava/lang/String;IILio/bidmachine/media3/common/Format;JLio/bidmachine/media3/exoplayer/util/ReleasableExecutor;)V

    return-object v0
.end method

.method public final getLocalConfiguration()Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;
    .registers 2

    .line 469
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->getMediaItem()Lio/bidmachine/media3/common/MediaItem;

    move-result-object v0

    iget-object v0, v0, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    return-object v0
.end method

.method public declared-synchronized getMediaItem()Lio/bidmachine/media3/common/MediaItem;
    .registers 2

    monitor-enter p0

    .line 357
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->mediaItem:Lio/bidmachine/media3/common/MediaItem;
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
    .registers 1

    .line 0
    return-void
.end method

.method public final notifySourceInfoRefreshed()V
    .registers 9

    .line 475
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    iget-boolean v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsLive:Z

    const/4 v6, 0x0

    .line 482
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->getMediaItem()Lio/bidmachine/media3/common/MediaItem;

    move-result-object v7

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Lio/bidmachine/media3/common/MediaItem;)V

    .line 483
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    if-eqz v1, :cond_1b

    .line 486
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$1;

    invoke-direct {v1, p0, v0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$1;-><init>(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;Lio/bidmachine/media3/common/Timeline;)V

    move-object v0, v1

    .line 504
    :cond_1b
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->refreshSourceInfo(Lio/bidmachine/media3/common/Timeline;)V

    return-void
.end method

.method public onSourceInfoRefreshed(JLio/bidmachine/media3/extractor/SeekMap;Z)V
    .registers 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    .line 447
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    .line 448
    :cond_b
    invoke-interface {p3}, Lio/bidmachine/media3/extractor/SeekMap;->isSeekable()Z

    move-result p3

    .line 449
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    if-nez v0, :cond_22

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    if-ne v0, p3, :cond_22

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsLive:Z

    if-ne v0, p4, :cond_22

    return-void

    .line 456
    :cond_22
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    .line 457
    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    .line 458
    iput-boolean p4, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsLive:Z

    const/4 p1, 0x0

    .line 459
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    .line 460
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V

    return-void
.end method

.method public prepareSourceInternal(Lio/bidmachine/media3/datasource/TransferListener;)V
    .registers 4

    .line 377
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->transferListener:Lio/bidmachine/media3/datasource/TransferListener;

    .line 378
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    .line 379
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->getPlayerId()Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    move-result-object v1

    .line 378
    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;->setPlayer(Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    .line 380
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;->prepare()V

    .line 381
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V

    return-void
.end method

.method public releasePeriod(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 2

    .line 416
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaPeriod;->release()V

    return-void
.end method

.method public releaseSourceInternal()V
    .registers 2

    .line 421
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;->release()V

    return-void
.end method

.method public declared-synchronized updateMediaItem(Lio/bidmachine/media3/common/MediaItem;)V
    .registers 2

    monitor-enter p0

    .line 372
    :try_start_1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->mediaItem:Lio/bidmachine/media3/common/MediaItem;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 373
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

###### Class io.bidmachine.media3.exoplayer.source.ProgressiveMediaSource.AnonymousClass1 (io.bidmachine.media3.exoplayer.source.ProgressiveMediaSource$1)
.class public Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$1;
.super Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;
.source "ProgressiveMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;Lio/bidmachine/media3/common/Timeline;)V
    .registers 3

    .line 487
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$1;->this$0:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;

    invoke-direct {p0, p2}, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;-><init>(Lio/bidmachine/media3/common/Timeline;)V

    return-void
.end method


# virtual methods
.method public getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;
    .registers 4

    .line 498
    invoke-super {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;

    const/4 p1, 0x1

    .line 499
    iput-boolean p1, p2, Lio/bidmachine/media3/common/Timeline$Period;->isPlaceholder:Z

    return-object p2
.end method

.method public getWindow(ILio/bidmachine/media3/common/Timeline$Window;J)Lio/bidmachine/media3/common/Timeline$Window;
    .registers 5

    .line 491
    invoke-super {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;J)Lio/bidmachine/media3/common/Timeline$Window;

    const/4 p1, 0x1

    .line 492
    iput-boolean p1, p2, Lio/bidmachine/media3/common/Timeline$Window;->isPlaceholder:Z

    return-object p2
.end method

###### Class io.bidmachine.media3.exoplayer.source.ProgressiveMediaSource.Factory (io.bidmachine.media3.exoplayer.source.ProgressiveMediaSource$Factory)
.class public final Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;
.super Ljava/lang/Object;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public continueLoadingCheckIntervalBytes:I

.field public final dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

.field public downloadExecutorSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/util/ReleasableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field public drmSessionManagerProvider:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

.field public loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public progressiveMediaExtractorFactory:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

.field public singleTrackFormat:Lio/bidmachine/media3/common/Format;

.field public singleTrackId:I


# direct methods
.method public static synthetic $r8$lambda$qtFqj3VUCLZTt9mVIyVG-ORgciM(Lio/bidmachine/media3/extractor/ExtractorsFactory;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;
    .registers 2

    .line 134
    new-instance p1, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;

    invoke-direct {p1, p0}, Lio/bidmachine/media3/exoplayer/source/BundledExtractorsAdapter;-><init>(Lio/bidmachine/media3/extractor/ExtractorsFactory;)V

    return-object p1
.end method

.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSource$Factory;Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;)V
    .registers 9

    .line 155
    new-instance v3, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {v3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;-><init>()V

    new-instance v4, Lio/bidmachine/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v4}, Lio/bidmachine/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    const/high16 v5, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Lio/bidmachine/media3/datasource/DataSource$Factory;Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;I)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSource$Factory;Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;I)V
    .registers 6

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    .line 184
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->progressiveMediaExtractorFactory:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    .line 185
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 186
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 187
    iput p5, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/datasource/DataSource$Factory;Lio/bidmachine/media3/extractor/ExtractorsFactory;)V
    .registers 4

    .line 134
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/extractor/ExtractorsFactory;)V

    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Lio/bidmachine/media3/datasource/DataSource$Factory;Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/MediaSource;
    .registers 2

    .line 86
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;
    .registers 14

    .line 276
    iget-object v0, p1, Lio/bidmachine/media3/common/MediaItem;->localConfiguration:Lio/bidmachine/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->dataSourceFactory:Lio/bidmachine/media3/datasource/DataSource$Factory;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->progressiveMediaExtractorFactory:Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 281
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;->get(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;

    move-result-object v5

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget v7, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    iget v8, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->singleTrackId:I

    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->singleTrackFormat:Lio/bidmachine/media3/common/Format;

    iget-object v10, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->downloadExecutorSupplier:Lcom/google/common/base/Supplier;

    const/4 v11, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v11}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource;-><init>(Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/datasource/DataSource$Factory;Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Lio/bidmachine/media3/exoplayer/drm/DrmSessionManager;Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;IILio/bidmachine/media3/common/Format;Lcom/google/common/base/Supplier;Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$1;)V

    return-object v1
.end method

.method public enableLazyLoadingWithSingleTrack(ILio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;
    .registers 3

    .line 232
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->singleTrackId:I

    .line 233
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/Format;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->singleTrackFormat:Lio/bidmachine/media3/common/Format;

    return-object p0
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 86
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;)Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;
    .registers 3

    .line 241
    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 242
    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Lio/bidmachine/media3/exoplayer/drm/DrmSessionManagerProvider;

    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 2

    .line 86
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setLoadErrorHandlingPolicy(Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;
    .registers 3

    .line 193
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 194
    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Lio/bidmachine/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method

###### Class io.bidmachine.media3.exoplayer.source.ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.source.ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/extractor/ExtractorsFactory;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/extractor/ExtractorsFactory;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    return-void
.end method


# virtual methods
.method public final createProgressiveMediaExtractor(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaSource$Factory;->$r8$lambda$qtFqj3VUCLZTt9mVIyVG-ORgciM(Lio/bidmachine/media3/extractor/ExtractorsFactory;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)Lio/bidmachine/media3/exoplayer/source/ProgressiveMediaExtractor;

    move-result-object p1

    return-object p1
.end method
