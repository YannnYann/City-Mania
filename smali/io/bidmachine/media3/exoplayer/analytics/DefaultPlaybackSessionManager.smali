###### Class io.bidmachine.media3.exoplayer.analytics.DefaultPlaybackSessionManager (io.bidmachine.media3.exoplayer.analytics.DefaultPlaybackSessionManager)
.class public final Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;
.super Ljava/lang/Object;
.source "DefaultPlaybackSessionManager.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    }
.end annotation


# static fields
.field public static final DEFAULT_SESSION_ID_GENERATOR:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RANDOM:Ljava/util/Random;


# instance fields
.field public currentSessionId:Ljava/lang/String;

.field public currentTimeline:Lio/bidmachine/media3/common/Timeline;

.field public lastRemovedCurrentWindowSequenceNumber:J

.field public listener:Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

.field public final period:Lio/bidmachine/media3/common/Timeline$Period;

.field public final sessionIdGenerator:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final sessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final window:Lio/bidmachine/media3/common/Timeline$Window;


# direct methods
.method public static synthetic $r8$lambda$S1mT740hYpP4vpWThAPCb2WbiLY()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->generateDefaultSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->DEFAULT_SESSION_ID_GENERATOR:Lcom/google/common/base/Supplier;

    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 68
    sget-object v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->DEFAULT_SESSION_ID_GENERATOR:Lcom/google/common/base/Supplier;

    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;-><init>(Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/Supplier;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessionIdGenerator:Lcom/google/common/base/Supplier;

    .line 79
    new-instance p1, Lio/bidmachine/media3/common/Timeline$Window;

    invoke-direct {p1}, Lio/bidmachine/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->window:Lio/bidmachine/media3/common/Timeline$Window;

    .line 80
    new-instance p1, Lio/bidmachine/media3/common/Timeline$Period;

    invoke-direct {p1}, Lio/bidmachine/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 81
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    .line 82
    sget-object p1, Lio/bidmachine/media3/common/Timeline;->EMPTY:Lio/bidmachine/media3/common/Timeline;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentTimeline:Lio/bidmachine/media3/common/Timeline;

    const-wide/16 v0, -0x1

    .line 83
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->lastRemovedCurrentWindowSequenceNumber:J

    return-void
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;)J
    .registers 3

    .line 45
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getMinWindowSequenceNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;)Lio/bidmachine/media3/common/Timeline$Window;
    .registers 1

    .line 45
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->window:Lio/bidmachine/media3/common/Timeline$Window;

    return-object p0
.end method

.method public static synthetic access$800(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;)Lio/bidmachine/media3/common/Timeline$Period;
    .registers 1

    .line 45
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Lio/bidmachine/media3/common/Timeline$Period;

    return-object p0
.end method

.method public static generateDefaultSessionId()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xc

    .line 326
    new-array v0, v0, [B

    .line 327
    sget-object v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const/16 v1, 0xa

    .line 328
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clearCurrentSession(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V
    .registers 6

    .line 281
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 282
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->lastRemovedCurrentWindowSequenceNumber:J

    :cond_10
    const/4 p1, 0x0

    .line 284
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized finishAllSessions(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .registers 6

    monitor-enter p0

    .line 231
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 232
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    goto :goto_19

    :catchall_17
    move-exception p1

    goto :goto_47

    .line 234
    :cond_19
    :goto_19
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 235
    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 237
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 238
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    if-eqz v2, :cond_23

    .line 240
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 239
    invoke-interface {v2, p1, v1, v3}, Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;->onSessionFinished(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_17

    goto :goto_23

    .line 243
    :cond_45
    monitor-exit p0

    return-void

    :goto_47
    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_17

    throw p1
.end method

.method public declared-synchronized getActiveSessionId()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 226
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;
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

.method public final getMinWindowSequenceNumber()J
    .registers 6

    .line 288
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    if-eqz v0, :cond_1b

    .line 289
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1b

    .line 290
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v0

    return-wide v0

    .line 291
    :cond_1b
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->lastRemovedCurrentWindowSequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getOrAddSession(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .registers 12

    .line 302
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 303
    invoke-virtual {v4, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->maybeSetWindowSequenceNumber(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 304
    invoke-virtual {v4, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->belongsToSession(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 305
    invoke-static {v4}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_4a

    cmp-long v7, v5, v2

    if-gez v7, :cond_34

    goto :goto_4a

    :cond_34
    if-nez v7, :cond_10

    .line 311
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-static {v5}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 312
    invoke-static {v4}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v5

    if-eqz v5, :cond_10

    move-object v1, v4

    goto :goto_10

    :cond_4a
    :goto_4a
    move-object v1, v4

    move-wide v2, v5

    goto :goto_10

    :cond_4d
    if-nez v1, :cond_61

    .line 318
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessionIdGenerator:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-direct {v1, p0, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;-><init>(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;Ljava/lang/String;ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 320
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    return-object v1
.end method

.method public declared-synchronized getSessionForMediaPeriodId(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p1

    iget p1, p1, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 95
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object p1

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public setListener(Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    return-void
.end method

.method public final updateCurrentSession(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .registers 8

    .line 247
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 249
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    if-eqz p1, :cond_8d

    .line 250
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    return-void

    .line 254
    :cond_1e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 255
    iget v1, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 256
    invoke-virtual {p0, v1, v2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v1

    .line 257
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    .line 258
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->updateSessions(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    .line 259
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v2, :cond_8d

    .line 260
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_8d

    if-eqz v0, :cond_6f

    .line 262
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v2

    iget-object v4, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v4, v4, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_6f

    .line 264
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 265
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v2

    iget v2, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v2, v3, :cond_6f

    .line 267
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    iget v0, v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v2, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-eq v0, v2, :cond_8d

    .line 270
    :cond_6f
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v4, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v0, v3, v4, v5}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 273
    iget v2, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    .line 274
    invoke-virtual {p0, v2, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v0

    .line 275
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    .line 276
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-interface {v2, p1, v0, v1}, Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;->onAdPlaybackStarted(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    return-void
.end method

.method public declared-synchronized updateSessions(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 110
    :try_start_5
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_44

    if-eqz v2, :cond_14

    .line 113
    monitor-exit p0

    return-void

    .line 115
    :cond_14
    :try_start_14
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v2, :cond_47

    .line 116
    iget-wide v2, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getMinWindowSequenceNumber()J

    move-result-wide v4
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_44

    cmp-long v2, v2, v4

    if-gez v2, :cond_24

    .line 118
    monitor-exit p0

    return-void

    .line 120
    :cond_24
    :try_start_24
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    if-eqz v2, :cond_47

    .line 122
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_47

    .line 123
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$200(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)I

    move-result v2

    iget v3, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I
    :try_end_40
    .catchall {:try_start_24 .. :try_end_40} :catchall_44

    if-eq v2, v3, :cond_47

    .line 126
    monitor-exit p0

    return-void

    :catchall_44
    move-exception v0

    goto/16 :goto_104

    .line 129
    :cond_47
    :try_start_47
    iget v2, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 130
    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v2

    .line 131
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    if-nez v3, :cond_59

    .line 132
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    .line 134
    :cond_59
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    const/4 v4, 0x1

    if-eqz v3, :cond_d0

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 136
    new-instance v10, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v5, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v6, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget v3, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-direct {v10, v5, v6, v7, v3}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    .line 141
    iget v3, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    .line 142
    invoke-virtual {v1, v3, v10}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v3

    .line 143
    invoke-static {v3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v5

    if-nez v5, :cond_d0

    .line 144
    invoke-static {v3, v4}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$302(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z

    .line 145
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v5, v6, v7}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 146
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v6, v6, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 147
    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v5

    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 148
    invoke-virtual {v7}, Lio/bidmachine/media3/common/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v7

    add-long/2addr v5, v7

    const-wide/16 v7, 0x0

    .line 150
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 151
    new-instance v5, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-wide v6, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget v9, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v13, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentTimeline:Lio/bidmachine/media3/common/Timeline;

    iget v14, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    iget-object v15, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object/from16 v16, v5

    iget-wide v4, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    move-object/from16 v20, v3

    move-wide/from16 v17, v4

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    move-object/from16 v5, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v3

    invoke-direct/range {v5 .. v19}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;-><init>(JLio/bidmachine/media3/common/Timeline;ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JLio/bidmachine/media3/common/Timeline;ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)V

    .line 163
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    invoke-static/range {v20 .. v20}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;->onSessionCreated(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 166
    :cond_d0
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v3

    if-nez v3, :cond_e3

    const/4 v3, 0x1

    .line 167
    invoke-static {v2, v3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$302(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z

    .line 168
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;->onSessionCreated(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 170
    :cond_e3
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_102

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$400(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v3

    if-nez v3, :cond_102

    const/4 v3, 0x1

    .line 171
    invoke-static {v2, v3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$402(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z

    .line 172
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;->onSessionActive(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    :try_end_102
    .catchall {:try_start_47 .. :try_end_102} :catchall_44

    .line 174
    :cond_102
    monitor-exit p0

    return-void

    :goto_104
    :try_start_104
    monitor-exit p0
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_44

    throw v0
.end method

.method public declared-synchronized updateSessionsWithDiscontinuity(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .registers 9

    monitor-enter p0

    .line 202
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_c

    move p2, v1

    goto :goto_d

    :cond_c
    move p2, v0

    .line 204
    :goto_d
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 205
    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 206
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 207
    invoke-virtual {v3, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isFinishedAtEventTime(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 208
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 209
    invoke-static {v3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 210
    invoke-static {v3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz p2, :cond_4a

    if-eqz v4, :cond_4a

    .line 212
    invoke-static {v3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$400(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_4a

    move v5, v1

    goto :goto_4b

    :catchall_48
    move-exception p1

    goto :goto_5f

    :cond_4a
    move v5, v0

    :goto_4b
    if-eqz v4, :cond_50

    .line 214
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    .line 216
    :cond_50
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    invoke-static {v3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, p1, v3, v5}, Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;->onSessionFinished(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V

    goto :goto_17

    .line 220
    :cond_5a
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->updateCurrentSession(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_48

    .line 221
    monitor-exit p0

    return-void

    :goto_5f
    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_48

    throw p1
.end method

.method public declared-synchronized updateSessionsWithTimelineChange(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .registers 7

    monitor-enter p0

    .line 178
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentTimeline:Lio/bidmachine/media3/common/Timeline;

    .line 180
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Lio/bidmachine/media3/common/Timeline;

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentTimeline:Lio/bidmachine/media3/common/Timeline;

    .line 181
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 182
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 183
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 184
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentTimeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v2, v0, v3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->tryResolvingToNewTimeline(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/common/Timeline;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 185
    invoke-virtual {v2, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isFinishedAtEventTime(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_33

    :catchall_31
    move-exception p1

    goto :goto_5b

    .line 186
    :cond_33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 187
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 188
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 189
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    .line 191
    :cond_4b
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    .line 192
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 191
    invoke-interface {v3, p1, v2, v4}, Lio/bidmachine/media3/exoplayer/analytics/PlaybackSessionManager$Listener;->onSessionFinished(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V

    goto :goto_16

    .line 196
    :cond_56
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->updateCurrentSession(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_31

    .line 197
    monitor-exit p0

    return-void

    :goto_5b
    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_31

    throw p1
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultPlaybackSessionManager.SessionDescriptor (io.bidmachine.media3.exoplayer.analytics.DefaultPlaybackSessionManager$SessionDescriptor)
.class public final Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
.super Ljava/lang/Object;
.source "DefaultPlaybackSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SessionDescriptor"
.end annotation


# instance fields
.field public adMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public isActive:Z

.field public isCreated:Z

.field public final sessionId:Ljava/lang/String;

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

.field public windowIndex:I

.field public windowSequenceNumber:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;Ljava/lang/String;ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 5

    .line 354
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    .line 356
    iput p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    if-nez p4, :cond_e

    const-wide/16 p1, -0x1

    goto :goto_10

    .line 358
    :cond_e
    iget-wide p1, p4, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    :goto_10
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    if-eqz p4, :cond_1c

    .line 359
    invoke-virtual {p4}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 360
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :cond_1c
    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;
    .registers 1

    .line 342
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J
    .registers 3

    .line 342
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    return-wide v0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)I
    .registers 1

    .line 342
    iget p0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    return p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z
    .registers 1

    .line 342
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z

    return p0
.end method

.method public static synthetic access$302(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z
    .registers 2

    .line 342
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isCreated:Z

    return p1
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z
    .registers 1

    .line 342
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isActive:Z

    return p0
.end method

.method public static synthetic access$402(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z
    .registers 2

    .line 342
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isActive:Z

    return p1
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 1

    .line 342
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-object p0
.end method


# virtual methods
.method public belongsToSession(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_a

    .line 380
    iget p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    if-ne p1, p2, :cond_9

    return v1

    :cond_9
    return v0

    .line 382
    :cond_a
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-nez p1, :cond_1e

    .line 385
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p1

    if-nez p1, :cond_1d

    iget-wide p1, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_1d

    return v1

    :cond_1d
    return v0

    .line 389
    :cond_1e
    iget-wide v2, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_33

    iget v2, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v2, v3, :cond_33

    iget p2, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget p1, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne p2, p1, :cond_33

    return v1

    :cond_33
    return v0
.end method

.method public isFinishedAtEventTime(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Z
    .registers 11

    .line 406
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 409
    iget v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    iget p1, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    if-eq v0, p1, :cond_d

    return v1

    :cond_d
    return v2

    .line 411
    :cond_e
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_17

    return v2

    .line 415
    :cond_17
    iget-wide v5, v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v3, v5, v3

    if-lez v3, :cond_1e

    return v1

    .line 419
    :cond_1e
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-nez v3, :cond_23

    return v2

    .line 423
    :cond_23
    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 424
    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    .line 425
    iget-object v4, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v5, v4, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v7, v7, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_72

    if-ge v0, v3, :cond_44

    goto :goto_72

    :cond_44
    if-le v0, v3, :cond_47

    return v1

    .line 434
    :cond_47
    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 435
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v0, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 436
    iget p1, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 438
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v4, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-gt v0, v4, :cond_61

    if-ne v0, v4, :cond_60

    iget v0, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-le p1, v0, :cond_60

    goto :goto_61

    :cond_60
    return v2

    :cond_61
    :goto_61
    return v1

    .line 443
    :cond_62
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget p1, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_71

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-le p1, v0, :cond_70

    goto :goto_71

    :cond_70
    return v2

    :cond_71
    :goto_71
    return v1

    :cond_72
    :goto_72
    return v2
.end method

.method public maybeSetWindowSequenceNumber(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 7

    .line 396
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    iget v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    if-ne p1, v0, :cond_1e

    if-eqz p2, :cond_1e

    iget-wide v0, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    .line 399
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->access$600(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1e

    .line 401
    iget-wide p1, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowSequenceNumber:J

    :cond_1e
    return-void
.end method

.method public final resolveWindowIndexToNewTimeline(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/common/Timeline;I)I
    .registers 6

    .line 450
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, -0x1

    if-lt p3, v0, :cond_f

    .line 451
    invoke-virtual {p2}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result p1

    if-ge p3, p1, :cond_e

    return p3

    :cond_e
    return v1

    .line 453
    :cond_f
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->access$700(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    .line 454
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    invoke-static {p3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->access$700(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object p3

    iget p3, p3, Lio/bidmachine/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 455
    :goto_20
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->access$700(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v0

    iget v0, v0, Lio/bidmachine/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-gt p3, v0, :cond_44

    .line 457
    invoke-virtual {p1, p3}, Lio/bidmachine/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v0

    .line 458
    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v1, :cond_41

    .line 460
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->this$0:Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->access$800(Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p1

    iget p1, p1, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    return p1

    :cond_41
    add-int/lit8 p3, p3, 0x1

    goto :goto_20

    :cond_44
    return v1
.end method

.method public tryResolvingToNewTimeline(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/common/Timeline;)Z
    .registers 6

    .line 365
    iget v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->resolveWindowIndexToNewTimeline(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/common/Timeline;I)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->windowIndex:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_d

    return v0

    .line 369
    :cond_d
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->adMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    const/4 v2, 0x1

    if-nez p1, :cond_13

    return v2

    .line 372
    :cond_13
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v1, :cond_1c

    return v2

    :cond_1c
    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultPlaybackSessionManager$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.analytics.DefaultPlaybackSessionManager$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Lio/bidmachine/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->$r8$lambda$S1mT740hYpP4vpWThAPCb2WbiLY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
