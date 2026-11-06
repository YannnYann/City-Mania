###### Class io.bidmachine.media3.exoplayer.MediaPeriodQueue (io.bidmachine.media3.exoplayer.MediaPeriodQueue)
.class public final Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;
.super Ljava/lang/Object;
.source "MediaPeriodQueue.java"


# instance fields
.field public final analyticsCollector:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

.field public final analyticsCollectorHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

.field public length:I

.field public loading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

.field public final mediaPeriodHolderFactory:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder$Factory;

.field public nextWindowSequenceNumber:J

.field public oldFrontPeriodUid:Ljava/lang/Object;

.field public oldFrontPeriodWindowSequenceNumber:J

.field public final period:Lio/bidmachine/media3/common/Timeline$Period;

.field public playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

.field public preloadConfiguration:Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;

.field public preloadPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;",
            ">;"
        }
    .end annotation
.end field

.field public preloading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

.field public prewarming:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

.field public reading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

.field public repeatMode:I

.field public shuffleModeEnabled:Z

.field public final window:Lio/bidmachine/media3/common/Timeline$Window;


# direct methods
.method public static synthetic $r8$lambda$TBLg_qNMabn73PskNt5xzfIGYrY(Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;Lcom/google/common/collect/ImmutableList$Builder;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 3

    .line 796
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->analyticsCollector:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    .line 796
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->updateMediaPeriodQueueInfo(Ljava/util/List;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;Lio/bidmachine/media3/common/util/HandlerWrapper;Lio/bidmachine/media3/exoplayer/MediaPeriodHolder$Factory;Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V
    .registers 5

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->analyticsCollector:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    .line 113
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->analyticsCollectorHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    .line 114
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->mediaPeriodHolderFactory:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder$Factory;

    .line 115
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloadConfiguration:Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 116
    new-instance p1, Lio/bidmachine/media3/common/Timeline$Period;

    invoke-direct {p1}, Lio/bidmachine/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 117
    new-instance p1, Lio/bidmachine/media3/common/Timeline$Window;

    invoke-direct {p1}, Lio/bidmachine/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->window:Lio/bidmachine/media3/common/Timeline$Window;

    .line 118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    return-void
.end method

.method public static areDurationsCompatible(JJ)Z
    .registers 6

    .line 0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_10

    cmp-long p0, p0, p2

    if-nez p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method public static isSkippableAdPeriod(Lio/bidmachine/media3/common/Timeline$Period;)Z
    .registers 9

    .line 731
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    .line 733
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v3

    if-nez v3, :cond_49

    .line 734
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v3

    if-eqz v3, :cond_49

    const-wide/16 v3, 0x0

    .line 735
    invoke-virtual {p0, v3, v4}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_24

    goto :goto_49

    .line 738
    :cond_24
    iget-wide v5, p0, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_2b

    return v2

    :cond_2b
    add-int/lit8 v5, v0, -0x1

    .line 743
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v5

    if-eqz v5, :cond_35

    const/4 v5, 0x2

    goto :goto_36

    :cond_35
    move v5, v2

    :goto_36
    sub-int/2addr v0, v5

    move v5, v1

    :goto_38
    if-gt v5, v0, :cond_42

    .line 745
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/common/Timeline$Period;->getContentResumeOffsetUs(I)J

    move-result-wide v6

    add-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 747
    :cond_42
    iget-wide v5, p0, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    cmp-long p0, v5, v3

    if-gtz p0, :cond_49

    return v2

    :cond_49
    :goto_49
    return v1
.end method

.method public static resolveMediaPeriodIdForAds(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;JJLio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 10

    .line 710
    invoke-virtual {p0, p1, p7}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 711
    iget v0, p7, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {p0, v0, p6}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    .line 713
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 714
    :goto_c
    invoke-static {p7}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->isSkippableAdPeriod(Lio/bidmachine/media3/common/Timeline$Period;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget v1, p6, Lio/bidmachine/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-gt v0, v1, :cond_23

    const/4 p1, 0x1

    .line 716
    invoke-virtual {p0, v0, p7, p1}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;

    .line 717
    iget-object p1, p7, Lio/bidmachine/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 719
    :cond_23
    invoke-virtual {p0, p1, p7}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-wide v0, p2

    .line 720
    invoke-virtual {p7, v0, v1}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result p2

    const/4 p0, -0x1

    if-ne p2, p0, :cond_38

    .line 722
    invoke-virtual {p7, v0, v1}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result p0

    .line 723
    new-instance p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p2, p1, p4, p5, p0}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    return-object p2

    .line 725
    :cond_38
    invoke-virtual {p7, p2}, Lio/bidmachine/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result p3

    .line 726
    new-instance p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method


# virtual methods
.method public advancePlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;
    .registers 4

    .line 423
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 426
    :cond_6
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->reading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-ne v0, v2, :cond_10

    .line 427
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->reading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 429
    :cond_10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->prewarming:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-ne v0, v2, :cond_1c

    .line 430
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->prewarming:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 432
    :cond_1c
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->release()V

    .line 433
    iget v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->length:I

    if-nez v0, :cond_39

    .line 435
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->loading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 436
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 437
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    .line 439
    :cond_39
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 440
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    .line 441
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public advancePrewarmingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;
    .registers 2

    .line 410
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->prewarming:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->prewarming:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 411
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    .line 412
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->prewarming:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public advanceReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;
    .registers 3

    .line 396
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->prewarming:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->reading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-ne v0, v1, :cond_12

    .line 397
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->prewarming:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 399
    :cond_12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->reading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->reading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 400
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    .line 401
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->reading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public final canKeepMediaPeriodHolder(Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;)Z
    .registers 7

    .line 872
    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v2, p2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public clear()V
    .registers 4

    .line 519
    iget v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->length:I

    if-nez v0, :cond_5

    return-void

    .line 522
    :cond_5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 523
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 524
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    :goto_19
    if-eqz v0, :cond_23

    .line 526
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->release()V

    .line 527
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    goto :goto_19

    :cond_23
    const/4 v0, 0x0

    .line 529
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 530
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->loading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 531
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->reading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 532
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->prewarming:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    const/4 v0, 0x0

    .line 533
    iput v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->length:I

    .line 534
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    return-void
.end method

.method public enqueueNextMediaPeriodHolder(Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;)Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;
    .registers 6

    .line 222
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->loading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_a

    const-wide v0, 0xe8d4a51000L

    goto :goto_18

    .line 224
    :cond_a
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->loading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v2, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v0, v2

    .line 225
    :goto_18
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->removePreloadedMediaPeriodHolder(Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;)Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    if-nez v2, :cond_25

    .line 227
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->mediaPeriodHolderFactory:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder$Factory;

    invoke-interface {v2, p1, v0, v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder$Factory;->create(Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;J)Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    goto :goto_2a

    .line 229
    :cond_25
    iput-object p1, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    .line 230
    invoke-virtual {v2, v0, v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->setRendererOffset(J)V

    .line 232
    :goto_2a
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->loading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-eqz p1, :cond_32

    .line 233
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->setNext(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)V

    goto :goto_38

    .line 235
    :cond_32
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 236
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->reading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 237
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->prewarming:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    :goto_38
    const/4 p1, 0x0

    .line 239
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 240
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->loading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 241
    iget p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->length:I

    .line 242
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    return-object v2
.end method

.method public final getDefaultPeriodPositionOfNextWindow(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;J)Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/Timeline;",
            "Ljava/lang/Object;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 343
    invoke-virtual {p1, p2, v0}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    iget v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 342
    invoke-virtual {p1, p2, v0, v1}, Lio/bidmachine/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v5

    const/4 p2, -0x1

    if-eq v5, p2, :cond_23

    .line 345
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p1

    move-wide v8, p3

    invoke-virtual/range {v2 .. v9}, Lio/bidmachine/media3/common/Timeline;->getPeriodPositionUs(Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getFirstMediaPeriodInfo(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;
    .registers 9

    .line 933
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v5, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfo(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getFirstMediaPeriodInfoOfNextPeriod(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;J)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    .line 983
    iget-object v10, v9, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    .line 984
    iget-object v2, v10, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    .line 985
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget v5, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    iget-boolean v6, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 986
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/common/Timeline;->getNextPeriodIndex(ILio/bidmachine/media3/common/Timeline$Period;Lio/bidmachine/media3/common/Timeline$Window;IZ)I

    move-result v2

    const/4 v3, -0x1

    const/4 v11, 0x0

    if-ne v2, v3, :cond_21

    return-object v11

    .line 994
    :cond_21
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    const/4 v4, 0x1

    .line 995
    invoke-virtual {v1, v2, v3, v4}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v3

    iget v4, v3, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 996
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget-object v3, v3, Lio/bidmachine/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 997
    iget-object v5, v10, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v5, v5, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 998
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v1, v4, v7}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v7

    iget v7, v7, Lio/bidmachine/media3/common/Timeline$Window;->firstPeriodIndex:I

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v14, 0x0

    if-ne v7, v2, :cond_92

    .line 1004
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v7, p3

    .line 1010
    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 1005
    invoke-virtual/range {v1 .. v8}, Lio/bidmachine/media3/common/Timeline;->getPeriodPositionUs(Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_5d

    return-object v11

    .line 1014
    :cond_5d
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1015
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1016
    invoke-virtual {v9}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 1017
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 1018
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    :goto_7b
    move-object v2, v3

    move-wide v3, v14

    move-wide v14, v12

    goto :goto_94

    .line 1021
    :cond_7f
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->resolvePeriodUidToWindowSequenceNumberInPreloadPeriods(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_90

    .line 1024
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    iput-wide v4, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    :cond_90
    move-wide v5, v1

    goto :goto_7b

    :cond_92
    move-object v2, v3

    move-wide v3, v14

    .line 1030
    :goto_94
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    move-object/from16 v1, p1

    .line 1031
    invoke-static/range {v1 .. v8}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;JJLio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v2

    cmp-long v5, v14, v12

    if-eqz v5, :cond_ba

    .line 1033
    iget-wide v5, v10, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v5, v5, v12

    if-eqz v5, :cond_ba

    .line 1035
    iget-object v5, v10, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v5, v5, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1036
    invoke-virtual {v0, v5, v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->hasServerSideInsertedAds(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline;)Z

    move-result v5

    .line 1038
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v6

    if-eqz v6, :cond_bd

    if-eqz v5, :cond_bd

    .line 1040
    iget-wide v14, v10, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    :cond_ba
    :goto_ba
    move-wide v5, v3

    move-wide v3, v14

    goto :goto_c2

    :cond_bd
    if-eqz v5, :cond_ba

    .line 1043
    iget-wide v3, v10, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    goto :goto_ba

    .line 1046
    :goto_c2
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfo(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    return-object v1
.end method

.method public final getFollowingMediaPeriodInfo(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;J)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;
    .registers 10

    .line 957
    iget-object v0, p2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    .line 962
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v1

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    add-long/2addr v1, v3

    sub-long/2addr v1, p3

    .line 963
    iget-boolean p3, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-eqz p3, :cond_13

    .line 964
    invoke-virtual {p0, p1, p2, v1, v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getFirstMediaPeriodInfoOfNextPeriod(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;J)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object p1

    return-object p1

    .line 965
    :cond_13
    invoke-virtual {p0, p1, p2, v1, v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getFollowingMediaPeriodInfoOfCurrentPeriod(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;J)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getFollowingMediaPeriodInfoOfCurrentPeriod(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;J)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;
    .registers 17

    .line 1061
    iget-object v8, p2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    .line 1062
    iget-object v9, v8, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1063
    iget-object v3, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p1, v3, v4}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 1064
    iget-boolean v3, v8, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    .line 1066
    invoke-virtual {v9}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_84

    move v4, v3

    .line 1067
    iget v3, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 1068
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v2

    const/4 v10, 0x0

    if-ne v2, v5, :cond_21

    return-object v10

    .line 1072
    :cond_21
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget v6, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 1073
    invoke-virtual {v5, v3, v6}, Lio/bidmachine/media3/common/Timeline$Period;->getNextAdIndexToPlay(II)I

    move-result v5

    if-ge v5, v2, :cond_3c

    .line 1076
    iget-object v2, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    move v7, v4

    move v4, v5

    iget-wide v5, v8, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    move v10, v7

    iget-wide v7, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v0, p0

    move-object v1, p1

    move v9, v10

    invoke-virtual/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForAd(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    return-object v1

    :cond_3c
    move v11, v4

    .line 1086
    iget-wide v0, v8, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_6a

    .line 1091
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget v3, v2, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    const-wide/16 v4, 0x0

    move-wide v6, p3

    .line 1097
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p1

    .line 1092
    invoke-virtual/range {v0 .. v7}, Lio/bidmachine/media3/common/Timeline;->getPeriodPositionUs(Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_62

    return-object v10

    .line 1101
    :cond_62
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1103
    :cond_6a
    iget-object v3, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v4, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 1104
    invoke-virtual {p0, p1, v3, v4}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getMinStartPositionAfterAdGroupUs(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;I)J

    move-result-wide v3

    .line 1106
    iget-object v2, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1109
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v5, v8, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-wide v7, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v0, p0

    move-object v1, p1

    move v9, v11

    .line 1106
    invoke-virtual/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForContent(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;JJJZ)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    return-object v1

    :cond_84
    move-wide v6, p3

    move v11, v3

    .line 1114
    iget v1, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v1, v5, :cond_97

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 1115
    invoke-virtual {v3, v1}, Lio/bidmachine/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 1117
    invoke-virtual/range {p0 .. p4}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getFirstMediaPeriodInfoOfNextPeriod(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;J)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    return-object v1

    .line 1120
    :cond_97
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget v2, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    .line 1121
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget v2, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    .line 1122
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v1

    if-eqz v1, :cond_b6

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget v2, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    .line 1123
    invoke-virtual {v1, v2, v4}, Lio/bidmachine/media3/common/Timeline$Period;->getAdState(II)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b6

    const/4 v1, 0x1

    goto :goto_b7

    :cond_b6
    const/4 v1, 0x0

    .line 1125
    :goto_b7
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget v3, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v2

    if-eq v4, v2, :cond_d4

    if-eqz v1, :cond_c4

    goto :goto_d4

    .line 1140
    :cond_c4
    iget-object v2, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v3, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget-wide v5, v8, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-wide v7, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    move-object v0, p0

    move-object v1, p1

    move v9, v11

    invoke-virtual/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForAd(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    return-object v1

    .line 1129
    :cond_d4
    :goto_d4
    iget-object v2, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v3, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    .line 1130
    invoke-virtual {p0, p1, v2, v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getMinStartPositionAfterAdGroupUs(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;I)J

    move-result-wide v3

    .line 1132
    iget-object v2, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v5, v8, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-wide v7, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForContent(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;JJJZ)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    return-object v1
.end method

.method public getLoadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;
    .registers 2

    .line 360
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->loading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public final getMediaPeriodInfo(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;
    .registers 18

    .line 1161
    iget-object v0, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 1162
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1163
    iget-object v3, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v4, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v5, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v8, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v10}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForAd(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object p1

    return-object p1

    .line 1172
    :cond_1e
    iget-object v2, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v7, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p3

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForContent(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;JJJZ)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getMediaPeriodInfoForAd(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;
    .registers 26

    move-object/from16 v0, p0

    .line 1190
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    .line 1192
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    move-object/from16 v4, p1

    .line 1194
    invoke-virtual {v4, v2, v3}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v2

    iget v3, v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v4, v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 1195
    invoke-virtual {v2, v3, v4}, Lio/bidmachine/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v9

    .line 1197
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v2

    const-wide/16 v3, 0x0

    move/from16 v5, p4

    if-ne v5, v2, :cond_36

    .line 1198
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v5

    goto :goto_37

    :cond_36
    move-wide v5, v3

    .line 1200
    :goto_37
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget v7, v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 1201
    invoke-virtual {v2, v7}, Lio/bidmachine/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v12

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v9, v7

    if-eqz v2, :cond_54

    cmp-long v2, v5, v9

    if-ltz v2, :cond_54

    const-wide/16 v5, 0x1

    sub-long v5, v9, v5

    .line 1204
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    :cond_54
    move-object v2, v1

    move-wide v3, v5

    .line 1206
    new-instance v1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    move-wide/from16 v5, p5

    move/from16 v11, p9

    invoke-direct/range {v1 .. v15}, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJZZZZZ)V

    return-object v1
.end method

.method public final getMediaPeriodInfoForContent(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;JJJZ)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 1226
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v5}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 1227
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v5, v3, v4}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-eq v5, v8, :cond_22

    .line 1228
    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 1229
    invoke-virtual {v9, v5}, Lio/bidmachine/media3/common/Timeline$Period;->isLivePostrollPlaceholder(I)Z

    move-result v9

    if-eqz v9, :cond_22

    move v9, v7

    goto :goto_23

    :cond_22
    move v9, v6

    :goto_23
    if-ne v5, v8, :cond_3b

    .line 1233
    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 1234
    invoke-virtual {v10}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v10

    if-lez v10, :cond_5a

    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 1235
    invoke-virtual {v10}, Lio/bidmachine/media3/common/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v11

    invoke-virtual {v10, v11}, Lio/bidmachine/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v10

    if-eqz v10, :cond_5a

    move v10, v7

    goto :goto_5b

    .line 1236
    :cond_3b
    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v10, v5}, Lio/bidmachine/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v10

    if-eqz v10, :cond_5a

    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 1237
    invoke-virtual {v10, v5}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v10

    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget-wide v13, v12, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    cmp-long v10, v10, v13

    if-nez v10, :cond_5a

    .line 1238
    invoke-virtual {v12, v5}, Lio/bidmachine/media3/common/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v10

    if-eqz v10, :cond_5a

    move v10, v7

    move v5, v8

    goto :goto_5b

    :cond_5a
    move v10, v6

    .line 1244
    :goto_5b
    new-instance v12, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-wide/from16 v13, p7

    invoke-direct {v12, v2, v13, v14, v5}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    .line 1245
    invoke-virtual {v0, v12}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->isLastInPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v2

    .line 1246
    invoke-virtual {v0, v1, v12}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->isLastInWindow(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v24

    .line 1247
    invoke-virtual {v0, v1, v12, v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->isLastInTimeline(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z

    move-result v25

    if-eq v5, v8, :cond_7d

    .line 1248
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 1250
    invoke-virtual {v1, v5}, Lio/bidmachine/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v1

    if-eqz v1, :cond_7d

    if-nez v9, :cond_7d

    move/from16 v22, v7

    goto :goto_7f

    :cond_7d
    move/from16 v22, v6

    :goto_7f
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v5, v8, :cond_91

    if-nez v9, :cond_91

    .line 1254
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v1, v5}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v8

    :goto_8e
    move-wide/from16 v17, v8

    goto :goto_9a

    :cond_91
    if-eqz v10, :cond_98

    .line 1255
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget-wide v8, v1, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    goto :goto_8e

    :cond_98
    move-wide/from16 v17, v13

    :goto_9a
    cmp-long v1, v17, v13

    if-eqz v1, :cond_a8

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v1, v17, v8

    if-nez v1, :cond_a5

    goto :goto_a8

    :cond_a5
    move-wide/from16 v19, v17

    goto :goto_ae

    .line 1258
    :cond_a8
    :goto_a8
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget-wide v8, v1, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    move-wide/from16 v19, v8

    :goto_ae
    cmp-long v1, v19, v13

    if-eqz v1, :cond_c4

    cmp-long v1, v3, v19

    if-ltz v1, :cond_c4

    if-nez v25, :cond_ba

    if-nez v10, :cond_bb

    :cond_ba
    move v6, v7

    :cond_bb
    int-to-long v3, v6

    sub-long v3, v19, v3

    const-wide/16 v5, 0x0

    .line 1263
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_c4
    move-wide v13, v3

    .line 1265
    new-instance v11, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-wide/from16 v15, p5

    move/from16 v21, p9

    move/from16 v23, v2

    invoke-direct/range {v11 .. v25}, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJZZZZZ)V

    return-object v11
.end method

.method public final getMediaPeriodInfoForPeriodPosition(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;JJ)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;
    .registers 17

    .line 317
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 318
    invoke-static/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;JJLio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p2

    .line 320
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 321
    iget-object v2, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v3, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v4, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v7, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForAd(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;IIJJZ)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object p1

    return-object p1

    .line 329
    :cond_23
    iget-object v2, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v7, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    const/4 v9, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForContent(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;JJJZ)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getMinStartPositionAfterAdGroupUs(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;I)J
    .registers 6

    .line 1302
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 1303
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p1, p3}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide p1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    .line 1305
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget-wide p1, p1, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    return-wide p1

    .line 1307
    :cond_16
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v0, p3}, Lio/bidmachine/media3/common/Timeline$Period;->getContentResumeOffsetUs(I)J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getNextMediaPeriodInfo(JLio/bidmachine/media3/exoplayer/PlaybackInfo;)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;
    .registers 5

    .line 209
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->loading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_9

    .line 210
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getFirstMediaPeriodInfo(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object p1

    return-object p1

    .line 211
    :cond_9
    iget-object p3, p3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {p0, p3, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;J)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;
    .registers 2

    .line 375
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public getPreloadHolderByMediaPeriod(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;
    .registers 5

    const/4 v0, 0x0

    .line 508
    :goto_1
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 509
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 510
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    if-ne v2, p1, :cond_16

    return-object v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPreloadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;
    .registers 2

    .line 366
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public getPrewarmingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;
    .registers 2

    .line 387
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->prewarming:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;
    .registers 2

    .line 381
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->reading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    return-object v0
.end method

.method public getUpdatedMediaPeriodInfo(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 640
    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 641
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->isLastInPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v13

    .line 642
    invoke-virtual {v0, v1, v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->isLastInWindow(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v14

    .line 643
    invoke-virtual {v0, v1, v3, v13}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->isLastInTimeline(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z

    move-result v15

    .line 644
    iget-object v4, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v1, v4, v5}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 646
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, -0x1

    if-nez v1, :cond_35

    iget v1, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-ne v1, v6, :cond_2e

    goto :goto_35

    .line 648
    :cond_2e
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v7, v1}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v7

    goto :goto_36

    :cond_35
    :goto_35
    move-wide v7, v4

    .line 650
    :goto_36
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 651
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget v4, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v5, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v1, v4, v5}, Lio/bidmachine/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v4

    :goto_46
    move-wide v9, v4

    goto :goto_5c

    :cond_48
    cmp-long v1, v7, v4

    if-eqz v1, :cond_55

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v7, v4

    if-nez v1, :cond_53

    goto :goto_55

    :cond_53
    move-wide v9, v7

    goto :goto_5c

    .line 653
    :cond_55
    :goto_55
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/Timeline$Period;->getDurationUs()J

    move-result-wide v4

    goto :goto_46

    .line 656
    :goto_5c
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 657
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget v4, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v1, v4}, Lio/bidmachine/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v1

    :goto_6a
    move v12, v1

    goto :goto_7c

    .line 658
    :cond_6c
    iget v1, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v1, v6, :cond_7a

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 659
    invoke-virtual {v4, v1}, Lio/bidmachine/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v1

    if-eqz v1, :cond_7a

    const/4 v1, 0x1

    goto :goto_6a

    :cond_7a
    const/4 v1, 0x0

    goto :goto_6a

    .line 660
    :goto_7c
    new-instance v1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-object v5, v3

    iget-wide v3, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    move-object v11, v5

    iget-wide v5, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-boolean v2, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isPrecededByTransitionFromSameStream:Z

    move-object/from16 v16, v11

    move v11, v2

    move-object/from16 v2, v16

    invoke-direct/range {v1 .. v15}, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJZZZZZ)V

    return-object v1
.end method

.method public final hasServerSideInsertedAds(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline;)Z
    .registers 6

    .line 1152
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p2, p1, v0}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result p1

    .line 1153
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/Timeline$Period;->getRemovedAdGroupCount()I

    move-result p2

    if-lez p1, :cond_2a

    .line 1154
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 1155
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    if-gt p1, v0, :cond_29

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 1156
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide p1

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long p1, p1, v1

    if-eqz p1, :cond_2a

    :cond_29
    return v0

    :cond_2a
    const/4 p1, 0x0

    return p1
.end method

.method public invalidatePreloadPool(Lio/bidmachine/media3/common/Timeline;)V
    .registers 16

    .line 248
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloadConfiguration:Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;->targetPreloadDurationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->loading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_13

    :cond_11
    move-object v7, p0

    goto :goto_81

    .line 253
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    const-wide/16 v3, 0x0

    .line 255
    invoke-virtual {p0, p1, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getDefaultPeriodPositionOfNextWindow(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;J)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_7c

    .line 257
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 260
    invoke-virtual {p1, v3, v4}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v3

    iget v3, v3, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->window:Lio/bidmachine/media3/common/Timeline$Window;

    .line 259
    invoke-virtual {p1, v3, v4}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v3

    .line 262
    invoke-virtual {v3}, Lio/bidmachine/media3/common/Timeline$Window;->isLive()Z

    move-result v3

    if-nez v3, :cond_7c

    .line 263
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 264
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->resolvePeriodUidToWindowSequenceNumberInPreloadPeriods(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_4f

    .line 266
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    :cond_4f
    move-wide v12, v3

    .line 269
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 273
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object v7, p0

    move-object v8, p1

    .line 270
    invoke-virtual/range {v7 .. v13}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getMediaPeriodInfoForPeriodPosition(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;JJ)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object p1

    .line 276
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->removePreloadedMediaPeriodHolder(Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;)Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    if-nez v2, :cond_78

    .line 280
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v2

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v4, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v2, v4

    .line 281
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->mediaPeriodHolderFactory:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder$Factory;

    invoke-interface {v0, p1, v2, v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder$Factory;->create(Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;J)Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    .line 283
    :cond_78
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_7c
    move-object v7, p0

    .line 285
    :goto_7d
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->releaseAndResetPreloadPriorityList(Ljava/util/List;)V

    return-void

    .line 249
    :goto_81
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->releasePreloadPool()V

    return-void
.end method

.method public final isLastInPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .registers 3

    .line 1279
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_d

    iget p1, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public final isLastInTimeline(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z
    .registers 10

    .line 1293
    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 1294
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p1, v1, p2}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 1295
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, v0}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object p2

    iget-boolean p2, p2, Lio/bidmachine/media3/common/Timeline$Window;->isDynamic:Z

    if-nez p2, :cond_2b

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget v4, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    move-object v0, p1

    .line 1296
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/common/Timeline;->isLastPeriod(ILio/bidmachine/media3/common/Timeline$Period;Lio/bidmachine/media3/common/Timeline$Window;IZ)Z

    move-result p1

    if-eqz p1, :cond_2b

    if-eqz p3, :cond_2b

    const/4 p1, 0x1

    return p1

    :cond_2b
    const/4 p1, 0x0

    return p1
.end method

.method public final isLastInWindow(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .registers 6

    .line 1283
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->isLastInPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1286
    :cond_8
    iget-object v0, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p1, v0, v2}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 1287
    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p2

    .line 1288
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {p1, v0, v2}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object p1

    iget p1, p1, Lio/bidmachine/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-ne p1, p2, :cond_24

    const/4 p1, 0x1

    return p1

    :cond_24
    return v1
.end method

.method public isLoading(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)Z
    .registers 3

    .line 170
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->loading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    if-ne v0, p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public isPreloading(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)Z
    .registers 3

    .line 175
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    if-ne v0, p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public maybeUpdatePreloadMediaPeriodHolder()V
    .registers 4

    .line 493
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->isFullyPreloaded()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2b

    :cond_b
    const/4 v0, 0x0

    .line 496
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    const/4 v0, 0x0

    .line 497
    :goto_f
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 498
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 499
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->isFullyPreloaded()Z

    move-result v2

    if-nez v2, :cond_28

    .line 500
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    return-void

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final notifyQueueUpdate()V
    .registers 5

    .line 788
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 789
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    :goto_6
    if-eqz v1, :cond_14

    .line 791
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 792
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    goto :goto_6

    .line 794
    :cond_14
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->reading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_1e

    :cond_1a
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 795
    :goto_1e
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->analyticsCollectorHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    new-instance v3, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;Lcom/google/common/collect/ImmutableList$Builder;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    invoke-interface {v2, v3}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reevaluateBuffer(J)V
    .registers 4

    .line 184
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->loading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_7

    .line 185
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->reevaluateBuffer(J)V

    :cond_7
    return-void
.end method

.method public final releaseAndResetPreloadPriorityList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 307
    :goto_1
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 308
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 310
    :cond_17
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    const/4 p1, 0x0

    .line 311
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 312
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->maybeUpdatePreloadMediaPeriodHolder()V

    return-void
.end method

.method public releasePreloadPool()V
    .registers 2

    .line 290
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->releaseAndResetPreloadPriorityList(Ljava/util/List;)V

    :cond_10
    return-void
.end method

.method public removeAfter(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)I
    .registers 4

    .line 462
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->loading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    return v1

    .line 467
    :cond_d
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->loading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 468
    :goto_f
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 469
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 470
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->reading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-ne p1, v0, :cond_2a

    .line 471
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->reading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 472
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->prewarming:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x3

    .line 476
    :cond_2a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->prewarming:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-ne p1, v0, :cond_35

    .line 477
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->reading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->prewarming:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    or-int/lit8 v0, v1, 0x2

    move v1, v0

    .line 480
    :cond_35
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->release()V

    .line 481
    iget v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->length:I

    goto :goto_f

    .line 483
    :cond_3f
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->loading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->setNext(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)V

    .line 484
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->notifyQueueUpdate()V

    return v1
.end method

.method public final removePreloadedMediaPeriodHolder(Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;)Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;
    .registers 4

    const/4 v0, 0x0

    .line 297
    :goto_1
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 298
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 299
    invoke-virtual {v1, p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->canBeUsedForMediaPeriodInfo(Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 300
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    return-object p1

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method public resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;J)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 15

    .line 762
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->resolvePeriodUidToWindowSequenceNumber(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;)J

    move-result-wide v4

    .line 764
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 765
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget v0, v0, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    .line 768
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_18
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget v3, v3, Lio/bidmachine/media3/common/Timeline$Window;->firstPeriodIndex:I

    if-lt v0, v3, :cond_50

    .line 769
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    const/4 v6, 0x1

    invoke-virtual {p1, v0, v3, v6}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;

    .line 770
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v3}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v3

    if-lez v3, :cond_2d

    goto :goto_2e

    :cond_2d
    move v6, v1

    :goto_2e
    or-int/2addr v2, v6

    .line 772
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget-wide v7, v3, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    invoke-virtual {v3, v7, v8}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_42

    .line 774
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget-object p2, p2, Lio/bidmachine/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_42
    if-eqz v2, :cond_52

    if-eqz v6, :cond_50

    .line 776
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget-wide v6, v3, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_52

    :cond_50
    move-object v1, p2

    goto :goto_55

    :cond_52
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 781
    :goto_55
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    move-object v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAds(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;JJLio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public final resolvePeriodUidToWindowSequenceNumber(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;)J
    .registers 8

    .line 809
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 810
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_20

    .line 811
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_20

    .line 813
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p1, v1, v3}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v1

    iget v1, v1, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    if-ne v1, v0, :cond_20

    .line 816
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    return-wide p1

    .line 820
    :cond_20
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    :goto_22
    if-eqz v1, :cond_38

    .line 822
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 824
    iget-object p1, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide p1, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide p1

    .line 826
    :cond_33
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    goto :goto_22

    .line 828
    :cond_38
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    :goto_3a
    if-eqz v1, :cond_5a

    .line 830
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_55

    .line 832
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p1, v3, v4}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v3

    iget v3, v3, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    if-ne v3, v0, :cond_55

    .line 835
    iget-object p1, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide p1, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide p1

    .line 838
    :cond_55
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    goto :goto_3a

    .line 841
    :cond_5a
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->resolvePeriodUidToWindowSequenceNumberInPreloadPeriods(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_65

    return-wide v0

    .line 847
    :cond_65
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->nextWindowSequenceNumber:J

    .line 848
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-nez p1, :cond_74

    .line 850
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodUid:Ljava/lang/Object;

    .line 851
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->oldFrontPeriodWindowSequenceNumber:J

    :cond_74
    return-wide v0
.end method

.method public final resolvePeriodUidToWindowSequenceNumberInPreloadPeriods(Ljava/lang/Object;)J
    .registers 5

    const/4 v0, 0x0

    .line 857
    :goto_1
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 858
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloadPriorityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 859
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 861
    iget-object p1, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    return-wide v0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public shouldLoadNextMediaPeriod()Z
    .registers 5

    .line 191
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->loading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-eqz v0, :cond_28

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v1, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-nez v1, :cond_26

    .line 193
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->loading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    iget v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->length:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_26

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    return v0

    :cond_28
    :goto_28
    const/4 v0, 0x1

    return v0
.end method

.method public final updateForPlaybackModeChange(Lio/bidmachine/media3/common/Timeline;)I
    .registers 9

    .line 892
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 896
    :cond_6
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    move v2, v1

    .line 898
    :goto_d
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget v5, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    iget-boolean v6, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    move-object v1, p1

    .line 899
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/common/Timeline;->getNextPeriodIndex(ILio/bidmachine/media3/common/Timeline$Period;Lio/bidmachine/media3/common/Timeline$Window;IZ)I

    move-result v2

    .line 901
    :goto_1a
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object p1

    if-eqz p1, :cond_31

    iget-object p1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-nez p1, :cond_31

    .line 903
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    goto :goto_1a

    .line 906
    :cond_31
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_47

    if-nez p1, :cond_3b

    goto :goto_47

    .line 910
    :cond_3b
    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->uid:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_44

    goto :goto_47

    :cond_44
    move-object v0, p1

    move-object p1, v1

    goto :goto_d

    .line 920
    :cond_47
    :goto_47
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->removeAfter(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)I

    move-result p1

    .line 923
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    invoke-virtual {p0, v1, v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    return p1
.end method

.method public updatePreloadConfiguration(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V
    .registers 3

    .line 164
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->preloadConfiguration:Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 165
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->invalidatePreloadPool(Lio/bidmachine/media3/common/Timeline;)V

    return-void
.end method

.method public updateQueuedPeriods(Lio/bidmachine/media3/common/Timeline;JJJ)I
    .registers 16

    .line 566
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->playing:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x0

    if-eqz v0, :cond_87

    .line 568
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    if-nez v1, :cond_f

    .line 576
    invoke-virtual {p0, p1, v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    goto :goto_1e

    .line 579
    :cond_f
    invoke-virtual {p0, p1, v1, p2, p3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getFollowingMediaPeriodInfo(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;J)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object v4

    if-eqz v4, :cond_82

    .line 580
    invoke-virtual {p0, v3, v4}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->canKeepMediaPeriodHolder(Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;)Z

    move-result v5

    if-nez v5, :cond_1d

    goto/16 :goto_82

    :cond_1d
    move-object v1, v4

    .line 589
    :goto_1e
    iget-wide v4, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    .line 590
    invoke-virtual {v1, v4, v5}, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->copyWithRequestedContentPositionUs(J)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object v4

    iput-object v4, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    .line 593
    iget-wide v3, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    invoke-static {v3, v4, v5, v6}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->areDurationsCompatible(JJ)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 596
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->updateClipping()V

    .line 598
    iget-wide p1, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v3

    if-nez p3, :cond_44

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_48

    .line 600
    :cond_44
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p1

    .line 601
    :goto_48
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->reading:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    const/4 v1, 0x1

    const-wide/high16 v3, -0x8000000000000000L

    if-ne v0, p3, :cond_5f

    iget-object p3, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-boolean p3, p3, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    if-nez p3, :cond_5f

    cmp-long p3, p4, v3

    if-eqz p3, :cond_5d

    cmp-long p3, p4, p1

    if-ltz p3, :cond_5f

    :cond_5d
    move p3, v1

    goto :goto_60

    :cond_5f
    move p3, v2

    .line 606
    :goto_60
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->prewarming:Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    if-ne v0, p4, :cond_6d

    cmp-long p4, p6, v3

    if-eqz p4, :cond_6c

    cmp-long p1, p6, p1

    if-ltz p1, :cond_6d

    :cond_6c
    move v2, v1

    .line 610
    :cond_6d
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->removeAfter(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)I

    move-result p1

    if-eqz p1, :cond_74

    return p1

    :cond_74
    if-eqz v2, :cond_79

    or-int/lit8 p1, p3, 0x2

    return p1

    :cond_79
    return p3

    .line 625
    :cond_7a
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    .line 583
    :cond_82
    :goto_82
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->removeAfter(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)I

    move-result p1

    return p1

    :cond_87
    return v2
.end method

.method public updateRepeatMode(Lio/bidmachine/media3/common/Timeline;I)I
    .registers 3

    .line 134
    iput p2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->repeatMode:I

    .line 135
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->updateForPlaybackModeChange(Lio/bidmachine/media3/common/Timeline;)I

    move-result p1

    return p1
.end method

.method public updateShuffleModeEnabled(Lio/bidmachine/media3/common/Timeline;Z)I
    .registers 3

    .line 152
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->shuffleModeEnabled:Z

    .line 153
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->updateForPlaybackModeChange(Lio/bidmachine/media3/common/Timeline;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.MediaPeriodQueue$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.MediaPeriodQueue$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/MediaPeriodQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

.field public final synthetic f$1:Lcom/google/common/collect/ImmutableList$Builder;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;Lcom/google/common/collect/ImmutableList$Builder;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue$$ExternalSyntheticLambda0;->f$1:Lcom/google/common/collect/ImmutableList$Builder;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue$$ExternalSyntheticLambda0;->f$1:Lcom/google/common/collect/ImmutableList$Builder;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->$r8$lambda$TBLg_qNMabn73PskNt5xzfIGYrY(Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;Lcom/google/common/collect/ImmutableList$Builder;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method
