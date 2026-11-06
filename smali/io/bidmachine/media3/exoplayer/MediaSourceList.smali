###### Class io.bidmachine.media3.exoplayer.MediaSourceList (io.bidmachine.media3.exoplayer.MediaSourceList)
.class public final Lio/bidmachine/media3/exoplayer/MediaSourceList;
.super Ljava/lang/Object;
.source "MediaSourceList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;,
        Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceListInfoRefreshListener;,
        Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;,
        Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;
    }
.end annotation


# instance fields
.field public final childSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            "Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;",
            ">;"
        }
    .end annotation
.end field

.field public final enabledMediaSourceHolders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final eventHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

.field public final eventListener:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

.field public isPrepared:Z

.field public final mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lio/bidmachine/media3/exoplayer/source/MediaPeriod;",
            "Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSourceByUid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSourceHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaSourceListInfoListener:Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceListInfoRefreshListener;

.field public mediaTransferListener:Lio/bidmachine/media3/datasource/TransferListener;

.field public final playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

.field public shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;


# direct methods
.method public static synthetic $r8$lambda$QmEEfyYFGYmrRUrUfJvhuCBEb8I(Lio/bidmachine/media3/exoplayer/MediaSourceList;Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/common/Timeline;)V
    .registers 3

    .line 469
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceListInfoListener:Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceListInfoRefreshListener;

    .line 469
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceListInfoRefreshListener;->onPlaylistUpdateRequested()V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceListInfoRefreshListener;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;Lio/bidmachine/media3/common/util/HandlerWrapper;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 5

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    .line 111
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceListInfoListener:Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceListInfoRefreshListener;

    .line 112
    new-instance p1, Lio/bidmachine/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Lio/bidmachine/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    .line 113
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 114
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceByUid:Ljava/util/Map;

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    .line 116
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->eventListener:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    .line 117
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->eventHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    .line 118
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->childSources:Ljava/util/HashMap;

    .line 119
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/common/util/HandlerWrapper;
    .registers 1

    .line 64
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->eventHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    return-object p0
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 2

    .line 64
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->getMediaPeriodIdForChildMediaPeriodId(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;I)I
    .registers 2

    .line 64
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->getWindowIndexForChildWindowIndex(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;
    .registers 1

    .line 64
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->eventListener:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    return-object p0
.end method

.method public static getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    .line 495
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/AbstractConcatenatedTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getMediaPeriodIdForChildMediaPeriodId(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 7

    const/4 v0, 0x0

    .line 449
    :goto_1
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 452
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v3, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_24

    .line 454
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {p0, v0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->getPeriodUid(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 455
    invoke-virtual {p1, p0}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMediaSourceHolderUid(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    .line 490
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/AbstractConcatenatedTimeline;->getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getPeriodUid(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 499
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/AbstractConcatenatedTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getWindowIndexForChildWindowIndex(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;I)I
    .registers 2

    .line 463
    iget p0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public addMediaSources(ILjava/util/List;Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)Lio/bidmachine/media3/common/Timeline;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;",
            ")",
            "Lio/bidmachine/media3/common/Timeline;"
        }
    .end annotation

    .line 145
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 146
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    move p3, p1

    .line 147
    :goto_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_6d

    sub-int v0, p3, p1

    .line 148
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    if-lez p3, :cond_35

    .line 150
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 151
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->getTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v2

    .line 152
    iget v1, v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 154
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 152
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->reset(I)V

    goto :goto_39

    :cond_35
    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->reset(I)V

    .line 158
    :goto_39
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->getTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v1

    .line 159
    invoke-virtual {p0, p3, v1}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->correctOffsets(II)V

    .line 162
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 163
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceByUid:Ljava/util/Map;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->isPrepared:Z

    if-eqz v1, :cond_6a

    .line 165
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->prepareChildSource(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V

    .line 166
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 167
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 169
    :cond_67
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->disableChildSource(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V

    :cond_6a
    :goto_6a
    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    .line 174
    :cond_6d
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->createTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object p1

    return-object p1
.end method

.method public final correctOffsets(II)V
    .registers 5

    .line 438
    :goto_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_18

    .line 439
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 440
    iget v1, v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v1, p2

    iput v1, v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_18
    return-void
.end method

.method public createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
    .registers 7

    .line 331
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->getMediaSourceHolderUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 332
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 333
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    .line 334
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceByUid:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 335
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->enableMediaSource(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V

    .line 336
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;

    .line 338
    invoke-virtual {v1, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;

    move-result-object p1

    .line 339
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->disableUnusedMediaSources()V

    return-object p1
.end method

.method public createTimeline()Lio/bidmachine/media3/common/Timeline;
    .registers 4

    .line 378
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 379
    sget-object v0, Lio/bidmachine/media3/common/Timeline;->EMPTY:Lio/bidmachine/media3/common/Timeline;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    .line 382
    :goto_d
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 383
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 384
    iput v1, v2, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 385
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->getTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 387
    :cond_2d
    new-instance v0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/Collection;Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)V

    return-object v0
.end method

.method public final disableChildSource(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V
    .registers 3

    .line 417
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    if-eqz p1, :cond_11

    .line 419
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->caller:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->disable(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    :cond_11
    return-void
.end method

.method public final disableUnusedMediaSources()V
    .registers 4

    .line 406
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 407
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 408
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 409
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 410
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->disableChildSource(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V

    .line 411
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_21
    return-void
.end method

.method public final enableMediaSource(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V
    .registers 3

    .line 398
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    if-eqz p1, :cond_16

    .line 401
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->caller:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->enable(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    :cond_16
    return-void
.end method

.method public getShuffleOrder()Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;
    .registers 2

    .line 392
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 289
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isPrepared()Z
    .registers 2

    .line 284
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->isPrepared:Z

    return v0
.end method

.method public final maybeReleaseChildSource(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V
    .registers 5

    .line 479
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    if-eqz v0, :cond_34

    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 480
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    .line 481
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->caller:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    invoke-interface {v1, v2}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->releaseSource(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    .line 482
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->eventListener:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    invoke-interface {v1, v2}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->removeEventListener(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V

    .line 483
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->eventListener:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    invoke-interface {v1, v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->removeDrmEventListener(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;)V

    .line 484
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_34
    return-void
.end method

.method public moveMediaSourceRange(IIILio/bidmachine/media3/exoplayer/source/ShuffleOrder;)Lio/bidmachine/media3/common/Timeline;
    .registers 8

    const/4 v0, 0x1

    if-ltz p1, :cond_f

    if-gt p1, p2, :cond_f

    .line 236
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->getSize()I

    move-result v1

    if-gt p2, v1, :cond_f

    if-ltz p3, :cond_f

    move v1, v0

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 235
    :goto_10
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 237
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    if-eq p1, p2, :cond_56

    if-ne p1, p3, :cond_1a

    goto :goto_56

    .line 241
    :cond_1a
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p4

    sub-int v1, p2, p1

    add-int/2addr v1, p3

    sub-int/2addr v1, v0

    add-int/lit8 v0, p2, -0x1

    .line 243
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 244
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iget v1, v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 245
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-static {v2, p1, p2, p3}, Lio/bidmachine/media3/common/util/Util;->moveItems(Ljava/util/List;III)V

    :goto_37
    if-gt p4, v0, :cond_51

    .line 247
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 248
    iput v1, p1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 249
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->getTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result p1

    add-int/2addr v1, p1

    add-int/lit8 p4, p4, 0x1

    goto :goto_37

    .line 251
    :cond_51
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->createTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object p1

    return-object p1

    .line 239
    :cond_56
    :goto_56
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->createTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Lio/bidmachine/media3/datasource/TransferListener;)V
    .registers 5

    .line 311
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->isPrepared:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 312
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaTransferListener:Lio/bidmachine/media3/datasource/TransferListener;

    const/4 p1, 0x0

    .line 313
    :goto_a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_25

    .line 314
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 315
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->prepareChildSource(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V

    .line 316
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    .line 318
    :cond_25
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->isPrepared:Z

    return-void
.end method

.method public final prepareChildSource(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V
    .registers 7

    .line 467
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;

    .line 468
    new-instance v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/MediaSourceList;)V

    .line 470
    new-instance v2, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    invoke-direct {v2, p0, p1}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;-><init>(Lio/bidmachine/media3/exoplayer/MediaSourceList;Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V

    .line 471
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->childSources:Ljava/util/HashMap;

    new-instance v4, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    invoke-direct {v4, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    invoke-static {}, Lio/bidmachine/media3/common/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->addEventListener(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V

    .line 473
    invoke-static {}, Lio/bidmachine/media3/common/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->addDrmEventListener(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;)V

    .line 474
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaTransferListener:Lio/bidmachine/media3/datasource/TransferListener;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    invoke-interface {v0, v1, p1, v2}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->prepareSource(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;Lio/bidmachine/media3/datasource/TransferListener;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    return-void
.end method

.method public release()V
    .registers 6

    .line 361
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    .line 363
    :try_start_16
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->caller:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    invoke-interface {v2, v3}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->releaseSource(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_1d} :catch_1e

    goto :goto_26

    :catch_1e
    move-exception v2

    .line 366
    const-string v3, "MediaSourceList"

    const-string v4, "Failed to release child source."

    invoke-static {v3, v4, v2}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    :goto_26
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->eventListener:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    invoke-interface {v2, v3}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->removeEventListener(Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;)V

    .line 369
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->eventListener:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    invoke-interface {v2, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->removeDrmEventListener(Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;)V

    goto :goto_a

    .line 371
    :cond_35
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 372
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 373
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->isPrepared:Z

    return-void
.end method

.method public releasePeriod(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 4

    .line 350
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 351
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {v1, p1}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->releasePeriod(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    .line 352
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 353
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_27

    .line 354
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->disableUnusedMediaSources()V

    .line 356
    :cond_27
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->maybeReleaseChildSource(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V

    return-void
.end method

.method public removeMediaSourceRange(IILio/bidmachine/media3/exoplayer/source/ShuffleOrder;)Lio/bidmachine/media3/common/Timeline;
    .registers 5

    if-ltz p1, :cond_c

    if-gt p1, p2, :cond_c

    .line 194
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->getSize()I

    move-result v0

    if-gt p2, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 195
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    .line 196
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->removeMediaSourcesInternal(II)V

    .line 197
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->createTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object p1

    return-object p1
.end method

.method public final removeMediaSourcesInternal(II)V
    .registers 7

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_2
    if-lt p2, p1, :cond_2d

    .line 425
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 426
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceByUid:Ljava/util/Map;

    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->getTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v2

    .line 429
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v2

    neg-int v2, v2

    .line 428
    invoke-virtual {p0, p2, v2}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->correctOffsets(II)V

    .line 430
    iput-boolean v0, v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    .line 431
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->isPrepared:Z

    if-eqz v2, :cond_2a

    .line 432
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->maybeReleaseChildSource(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V

    :cond_2a
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_2d
    return-void
.end method

.method public setMediaSources(Ljava/util/List;Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)Lio/bidmachine/media3/common/Timeline;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;",
            ")",
            "Lio/bidmachine/media3/common/Timeline;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->removeMediaSourcesInternal(II)V

    .line 131
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->addMediaSources(ILjava/util/List;Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)Lio/bidmachine/media3/common/Timeline;

    move-result-object p1

    return-object p1
.end method

.method public setShuffleOrder(Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)Lio/bidmachine/media3/common/Timeline;
    .registers 4

    .line 298
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->getSize()I

    move-result v0

    .line 299
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;->getLength()I

    move-result v1

    if-eq v1, v0, :cond_13

    .line 302
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;->cloneAndClear()Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    move-result-object p1

    const/4 v1, 0x0

    .line 303
    invoke-interface {p1, v1, v0}, Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;->cloneAndInsert(II)Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    move-result-object p1

    .line 305
    :cond_13
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    .line 306
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->createTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object p1

    return-object p1
.end method

.method public updateMediaSourcesWithMediaItems(IILjava/util/List;)Lio/bidmachine/media3/common/Timeline;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/MediaItem;",
            ">;)",
            "Lio/bidmachine/media3/common/Timeline;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_e

    if-gt p1, p2, :cond_e

    .line 267
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->getSize()I

    move-result v2

    if-gt p2, v2, :cond_e

    move v2, v1

    goto :goto_f

    :cond_e
    move v2, v0

    :goto_f
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 268
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int v3, p2, p1

    if-ne v2, v3, :cond_1b

    move v0, v1

    :cond_1b
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    move v0, p1

    :goto_1f
    if-ge v0, p2, :cond_39

    .line 270
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;

    sub-int v2, v0, p1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/MediaItem;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->updateMediaItem(Lio/bidmachine/media3/common/MediaItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 272
    :cond_39
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->createTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.MediaSourceList.ForwardingEventListener (io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener)
.class public final Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;
.super Ljava/lang/Object;
.source "MediaSourceList.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;
.implements Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForwardingEventListener"
.end annotation


# instance fields
.field public final id:Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;


# direct methods
.method public static synthetic $r8$lambda$1xDhpt-K4HvagWrtEQhovWkrv_A(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V
    .registers 11

    .line 575
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    .line 575
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$300(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    .line 576
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 575
    invoke-interface/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;->onLoadStarted(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5fMrsbiMtHKGtVbJY5wnfxiiC2I(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V
    .registers 3

    .line 700
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    .line 700
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$300(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;->onDrmKeysLoaded(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AfjvW-ksNXVhM5wWRwOoDZgLpgU(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Ljava/lang/Exception;)V
    .registers 4

    .line 713
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    .line 713
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$300(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 714
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 713
    invoke-interface {p0, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;->onDrmSessionManagerError(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BLdGbj6O30PDASukf8YXau7wy5A(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V
    .registers 3

    .line 726
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    .line 726
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$300(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;->onDrmKeysRestored(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EWatO3bzmRV4EnwBFLo6NoI8xyw(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V
    .registers 3

    .line 751
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    .line 751
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$300(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;->onDrmSessionReleased(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N1QhmOpLPJkcm_914HtmYfu54MM(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 653
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    .line 653
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$300(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 654
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 653
    invoke-interface {p0, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;->onUpstreamDiscarded(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U7r9ETDZUTU7bgBfW1SWrl-f_u4(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V
    .registers 4

    .line 687
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    .line 687
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$300(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 688
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 687
    invoke-interface {p0, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;->onDrmSessionAcquired(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cv-rx98wuBq1aTkJdeNO7-2_gaw(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V
    .registers 3

    .line 738
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    .line 738
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$300(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSessionEventListener;->onDrmKeysRemoved(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fSAz1fjp1ZZdsBh9yC06nsE_k2g(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 669
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    .line 669
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$300(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 670
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 669
    invoke-interface {p0, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;->onDownstreamFormatChanged(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$liVxCvY0eW9CStn2Et_8QbmFEUw(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 5

    .line 596
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    .line 596
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$300(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 597
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 596
    invoke-interface {p0, v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;->onLoadCompleted(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mj3E355akKsh1bQCA2xkMIzrlpc(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 13

    .line 632
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    .line 632
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$300(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    .line 633
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 632
    invoke-interface/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;->onLoadError(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$tCi3ESQpOt0qTfG-vrZ8L4U6ufo(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 5

    .line 613
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    .line 613
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$300(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 614
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 613
    invoke-interface {p0, v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MediaSourceEventListener;->onLoadCanceled(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/MediaSourceList;Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V
    .registers 3

    .line 556
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->id:Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    return-void
.end method


# virtual methods
.method public final getEventParameters(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_d

    .line 761
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->id:Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-static {v1, p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$100(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p2

    if-nez p2, :cond_c

    return-object v0

    :cond_c
    move-object v0, p2

    .line 767
    :cond_d
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->id:Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-static {p2, p1}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$200(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;I)I

    move-result p1

    .line 768
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public onDownstreamFormatChanged(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 5

    .line 665
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 667
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$000(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p3}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8;-><init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    invoke-interface {p2, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public onDrmKeysLoaded(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 4

    .line 697
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 699
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$000(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda10;-><init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {p2, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public onDrmKeysRemoved(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 4

    .line 735
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 737
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$000(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda9;-><init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {p2, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public onDrmKeysRestored(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 4

    .line 723
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 725
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$000(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda11;-><init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {p2, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public onDrmSessionAcquired(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V
    .registers 5

    .line 683
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 685
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$000(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V

    invoke-interface {p2, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public onDrmSessionManagerError(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .registers 5

    .line 709
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 711
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$000(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Ljava/lang/Exception;)V

    invoke-interface {p2, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public onDrmSessionReleased(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 4

    .line 747
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 749
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$000(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {p2, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public onLoadCanceled(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 6

    .line 609
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 611
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$000(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p3, p4}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;-><init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    invoke-interface {p2, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public onLoadCompleted(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 6

    .line 592
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 594
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$000(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p3, p4}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;-><init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    invoke-interface {p2, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public onLoadError(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 14

    .line 628
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 630
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$000(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p1

    new-instance v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_19
    return-void
.end method

.method public onLoadStarted(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V
    .registers 12

    .line 571
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 573
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$000(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p1

    new-instance v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V

    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_18
    return-void
.end method

.method public onUpstreamDiscarded(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 5

    .line 649
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 651
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->access$000(Lio/bidmachine/media3/exoplayer/MediaSourceList;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object p2

    new-instance v0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p3}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    invoke-interface {p2, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;->f$1:Landroid/util/Pair;

    iput p3, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;->f$1:Landroid/util/Pair;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->$r8$lambda$U7r9ETDZUTU7bgBfW1SWrl-f_u4(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Ljava/lang/Exception;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;->f$1:Landroid/util/Pair;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Exception;

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->$r8$lambda$AfjvW-ksNXVhM5wWRwOoDZgLpgU(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Ljava/lang/Exception;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda10 (io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda10)
.class public final synthetic Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda10;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda10;->f$1:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda10;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda10;->f$1:Landroid/util/Pair;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->$r8$lambda$5fMrsbiMtHKGtVbJY5wnfxiiC2I(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda11 (io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda11)
.class public final synthetic Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda11;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda11;->f$1:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda11;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda11;->f$1:Landroid/util/Pair;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->$r8$lambda$BLdGbj6O30PDASukf8YXau7wy5A(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->f$1:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;->f$1:Landroid/util/Pair;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->$r8$lambda$EWatO3bzmRV4EnwBFLo6NoI8xyw(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3 (io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$1:Landroid/util/Pair;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->$r8$lambda$N1QhmOpLPJkcm_914HtmYfu54MM(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4 (io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic f$3:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

.field public final synthetic f$4:Ljava/io/IOException;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;->f$2:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;->f$3:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;->f$4:Ljava/io/IOException;

    iput-boolean p6, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;->f$1:Landroid/util/Pair;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;->f$2:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;->f$3:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;->f$4:Ljava/io/IOException;

    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;->f$5:Z

    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->$r8$lambda$mj3E355akKsh1bQCA2xkMIzrlpc(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5 (io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic f$3:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;->f$2:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;->f$3:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    iput p5, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;->f$1:Landroid/util/Pair;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;->f$2:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;->f$3:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    iget v4, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->$r8$lambda$1xDhpt-K4HvagWrtEQhovWkrv_A(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6 (io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic f$3:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$2:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$3:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$1:Landroid/util/Pair;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$2:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;->f$3:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->$r8$lambda$liVxCvY0eW9CStn2Et_8QbmFEUw(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7 (io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7)
.class public final synthetic Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic f$3:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;->f$2:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;->f$3:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;->f$1:Landroid/util/Pair;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;->f$2:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;->f$3:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->$r8$lambda$tCi3ESQpOt0qTfG-vrZ8L4U6ufo(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8 (io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8)
.class public final synthetic Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8;->f$1:Landroid/util/Pair;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8;->f$1:Landroid/util/Pair;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->$r8$lambda$fSAz1fjp1ZZdsBh9yC06nsE_k2g(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda9 (io.bidmachine.media3.exoplayer.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda9)
.class public final synthetic Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final synthetic f$1:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda9;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda9;->f$1:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda9;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda9;->f$1:Landroid/util/Pair;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;->$r8$lambda$cv-rx98wuBq1aTkJdeNO7-2_gaw(Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.MediaSourceList.MediaSourceAndListener (io.bidmachine.media3.exoplayer.MediaSourceList$MediaSourceAndListener)
.class public final Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;
.super Ljava/lang/Object;
.source "MediaSourceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSourceAndListener"
.end annotation


# instance fields
.field public final caller:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;

.field public final eventListener:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

.field public final mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;)V
    .registers 4

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    .line 546
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->caller:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    .line 547
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->eventListener:Lio/bidmachine/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.MediaSourceList.MediaSourceHolder (io.bidmachine.media3.exoplayer.MediaSourceList$MediaSourceHolder)
.class public final Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;
.super Ljava/lang/Object;
.source "MediaSourceList.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/MediaSourceInfoHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSourceHolder"
.end annotation


# instance fields
.field public final activeMediaPeriodIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field

.field public firstWindowIndexInChild:I

.field public isRemoved:Z

.field public final mediaSource:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaSource;Z)V
    .registers 4

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSource;Z)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;

    .line 514
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    .line 515
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getTimeline()Lio/bidmachine/media3/common/Timeline;
    .registers 2

    .line 531
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->getTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getUid()Ljava/lang/Object;
    .registers 2

    .line 526
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    return-object v0
.end method

.method public reset(I)V
    .registers 2

    .line 519
    iput p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    const/4 p1, 0x0

    .line 520
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    .line 521
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.MediaSourceList.MediaSourceListInfoRefreshListener (io.bidmachine.media3.exoplayer.MediaSourceList$MediaSourceListInfoRefreshListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceListInfoRefreshListener;
.super Ljava/lang/Object;
.source "MediaSourceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaSourceListInfoRefreshListener"
.end annotation


# virtual methods
.method public abstract onPlaylistUpdateRequested()V
.end method

###### Class io.bidmachine.media3.exoplayer.MediaSourceList$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.MediaSourceList$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaSourceCaller;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/MediaSourceList;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    return-void
.end method


# virtual methods
.method public final onSourceInfoRefreshed(Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/common/Timeline;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-static {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->$r8$lambda$QmEEfyYFGYmrRUrUfJvhuCBEb8I(Lio/bidmachine/media3/exoplayer/MediaSourceList;Lio/bidmachine/media3/exoplayer/source/MediaSource;Lio/bidmachine/media3/common/Timeline;)V

    return-void
.end method
