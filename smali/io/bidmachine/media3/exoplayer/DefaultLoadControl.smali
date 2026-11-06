###### Class io.bidmachine.media3.exoplayer.DefaultLoadControl (io.bidmachine.media3.exoplayer.DefaultLoadControl)
.class public Lio/bidmachine/media3/exoplayer/DefaultLoadControl;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/LoadControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;
    }
.end annotation


# instance fields
.field public final allocator:Lio/bidmachine/media3/exoplayer/upstream/DefaultAllocator;

.field public final backBufferDurationUs:J

.field public final bufferForPlaybackAfterRebufferUs:J

.field public final bufferForPlaybackUs:J

.field public final loadingStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/bidmachine/media3/exoplayer/analytics/PlayerId;",
            "Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;",
            ">;"
        }
    .end annotation
.end field

.field public final maxBufferUs:J

.field public final minBufferUs:J

.field public final prioritizeTimeOverSizeThresholds:Z

.field public final retainBackBufferFromKeyframe:Z

.field public final targetBufferBytesOverwrite:I

.field public threadId:J


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 279
    new-instance v1, Lio/bidmachine/media3/exoplayer/upstream/DefaultAllocator;

    const/4 v0, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v1, v0, v2}, Lio/bidmachine/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZI)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v2, 0xc350

    const v3, 0xc350

    const/16 v4, 0x3e8

    const/16 v5, 0x7d0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;-><init>(Lio/bidmachine/media3/exoplayer/upstream/DefaultAllocator;IIIIIZIZ)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/upstream/DefaultAllocator;IIIIIZIZ)V
    .registers 15

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 301
    const-string v1, "bufferForPlaybackMs"

    const-string v2, "0"

    invoke-static {p4, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v3, "bufferForPlaybackAfterRebufferMs"

    invoke-static {p5, v0, v3, v2}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v4, "minBufferMs"

    invoke-static {p2, p4, v4, v1}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {p2, p5, v4, v3}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v1, "maxBufferMs"

    invoke-static {p3, p2, v1, v4}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v1, "backBufferDurationMs"

    invoke-static {p8, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V

    .line 313
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->allocator:Lio/bidmachine/media3/exoplayer/upstream/DefaultAllocator;

    int-to-long p1, p2

    .line 314
    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->minBufferUs:J

    int-to-long p1, p3

    .line 315
    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->maxBufferUs:J

    int-to-long p1, p4

    .line 316
    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackUs:J

    int-to-long p1, p5

    .line 317
    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    .line 318
    iput p6, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->targetBufferBytesOverwrite:I

    .line 319
    iput-boolean p7, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    int-to-long p1, p8

    .line 320
    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->backBufferDurationUs:J

    .line 321
    iput-boolean p9, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->retainBackBufferFromKeyframe:Z

    .line 322
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    const-wide/16 p1, -0x1

    .line 323
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->threadId:J

    return-void
.end method

.method public static assertGreaterOrEqual(IILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-lt p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    .line 520
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method public static getDefaultBufferSize(I)I
    .registers 3

    const/high16 v0, 0xc80000

    const/high16 v1, 0x20000

    packed-switch p0, :pswitch_data_18

    .line 515
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_d
    return v1

    :pswitch_e
    const/high16 p0, 0x7d00000

    return p0

    :pswitch_11
    return v0

    :pswitch_12
    const/high16 p0, 0x89a0000

    return p0

    :pswitch_15
    return v0

    :pswitch_16
    const/4 p0, 0x0

    return p0

    :pswitch_data_18
    .packed-switch -0x2
        :pswitch_16
        :pswitch_15
        :pswitch_12
        :pswitch_11
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public calculateTargetBufferBytes([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)I
    .registers 6

    .line 444
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_17

    aget-object v3, p1, v1

    if-eqz v3, :cond_14

    .line 446
    invoke-interface {v3}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Lio/bidmachine/media3/common/TrackGroup;

    move-result-object v3

    iget v3, v3, Lio/bidmachine/media3/common/TrackGroup;->type:I

    invoke-static {v3}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->getDefaultBufferSize(I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_17
    const/high16 p1, 0xc80000

    .line 449
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public calculateTotalTargetBufferBytes()I
    .registers 4

    .line 465
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 466
    iget v2, v2, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->targetBufferBytes:I

    add-int/2addr v1, v2

    goto :goto_b

    :cond_1b
    return v1
.end method

.method public getAllocator()Lio/bidmachine/media3/exoplayer/upstream/Allocator;
    .registers 2

    .line 367
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->allocator:Lio/bidmachine/media3/exoplayer/upstream/DefaultAllocator;

    return-object v0
.end method

.method public getBackBufferDurationUs(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)J
    .registers 4

    .line 372
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->backBufferDurationUs:J

    return-wide v0
.end method

.method public onPrepared(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 8

    .line 328
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 329
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->threadId:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_17

    cmp-long v2, v2, v0

    if-nez v2, :cond_15

    goto :goto_17

    :cond_15
    const/4 v2, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v2, 0x1

    :goto_18
    const-string v3, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper)."

    invoke-static {v2, v3}, Lio/bidmachine/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 333
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->threadId:J

    .line 334
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 335
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    new-instance v1, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;-><init>(Lio/bidmachine/media3/exoplayer/DefaultLoadControl$1;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_32
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->resetPlayerLoadingState(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    return-void
.end method

.method public onReleased(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 4

    .line 359
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->removePlayer(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    .line 360
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    const-wide/16 v0, -0x1

    .line 361
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->threadId:J

    :cond_f
    return-void
.end method

.method public onStopped(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 2

    .line 354
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->removePlayer(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    return-void
.end method

.method public onTracksSelected(Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .registers 5

    .line 345
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 346
    iget p2, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_19

    .line 347
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->calculateTargetBufferBytes([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)I

    move-result p2

    .line 348
    :cond_19
    iput p2, p1, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->targetBufferBytes:I

    .line 349
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->updateAllocator()V

    return-void
.end method

.method public final removePlayer(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 3

    .line 481
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 482
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->updateAllocator()V

    :cond_b
    return-void
.end method

.method public final resetPlayerLoadingState(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 4

    .line 472
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 474
    iget v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->targetBufferBytesOverwrite:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    const/high16 v0, 0xc80000

    .line 476
    :cond_15
    iput v0, p1, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->targetBufferBytes:I

    const/4 v0, 0x0

    .line 477
    iput-boolean v0, p1, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    return-void
.end method

.method public retainBackBufferFromKeyframe(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)Z
    .registers 2

    .line 377
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->retainBackBufferFromKeyframe:Z

    return p1
.end method

.method public shouldContinueLoading(Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;)Z
    .registers 13

    .line 382
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 383
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->allocator:Lio/bidmachine/media3/exoplayer/upstream/DefaultAllocator;

    .line 384
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result v1

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->calculateTotalTargetBufferBytes()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_20

    move v1, v3

    goto :goto_21

    :cond_20
    move v1, v4

    .line 385
    :goto_21
    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->minBufferUs:J

    .line 386
    iget v2, p1, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->playbackSpeed:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v2, v7

    if-lez v7, :cond_35

    .line 390
    invoke-static {v5, v6, v2}, Lio/bidmachine/media3/common/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v5

    .line 391
    iget-wide v7, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->maxBufferUs:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_35
    const-wide/32 v7, 0x7a120

    .line 394
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 395
    iget-wide v9, p1, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    cmp-long p1, v9, v5

    if-gez p1, :cond_5a

    .line 396
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez p1, :cond_4a

    if-nez v1, :cond_49

    goto :goto_4a

    :cond_49
    move v3, v4

    :cond_4a
    :goto_4a
    iput-boolean v3, v0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    if-nez v3, :cond_64

    cmp-long p1, v9, v7

    if-gez p1, :cond_64

    .line 398
    const-string p1, "DefaultLoadControl"

    const-string v1, "Target buffer size reached with less than 500ms of buffered media data."

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_64

    .line 402
    :cond_5a
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->maxBufferUs:J

    cmp-long p1, v9, v2

    if-gez p1, :cond_62

    if-eqz v1, :cond_64

    .line 403
    :cond_62
    iput-boolean v4, v0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    .line 405
    :cond_64
    :goto_64
    iget-boolean p1, v0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    return p1
.end method

.method public shouldContinuePreloading(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;J)Z
    .registers 5

    .line 427
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 428
    iget-boolean p2, p2, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->isLoading:Z

    if-eqz p2, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_1c
    const/4 p1, 0x1

    return p1
.end method

.method public shouldStartPlayback(Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;)Z
    .registers 10

    .line 410
    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    iget v2, p1, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->playbackSpeed:F

    .line 411
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/common/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v0

    .line 414
    iget-boolean v2, p1, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->rebuffering:Z

    if-eqz v2, :cond_f

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackAfterRebufferUs:J

    goto :goto_11

    :cond_f
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->bufferForPlaybackUs:J

    .line 415
    :goto_11
    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->targetLiveOffsetUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v4, v6

    if-eqz p1, :cond_23

    const-wide/16 v6, 0x2

    .line 416
    div-long/2addr v4, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_23
    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_40

    cmp-long p1, v0, v2

    if-gez p1, :cond_40

    .line 418
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->prioritizeTimeOverSizeThresholds:Z

    if-nez p1, :cond_3e

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->allocator:Lio/bidmachine/media3/exoplayer/upstream/DefaultAllocator;

    .line 421
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result p1

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->calculateTotalTargetBufferBytes()I

    move-result v0

    if-lt p1, v0, :cond_3e

    goto :goto_40

    :cond_3e
    const/4 p1, 0x0

    return p1

    :cond_40
    :goto_40
    const/4 p1, 0x1

    return p1
.end method

.method public final updateAllocator()V
    .registers 3

    .line 487
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->loadingStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 488
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->allocator:Lio/bidmachine/media3/exoplayer/upstream/DefaultAllocator;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/upstream/DefaultAllocator;->reset()V

    return-void

    .line 490
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->allocator:Lio/bidmachine/media3/exoplayer/upstream/DefaultAllocator;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;->calculateTotalTargetBufferBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.DefaultLoadControl.AnonymousClass1 (io.bidmachine.media3.exoplayer.DefaultLoadControl$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/DefaultLoadControl$1;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/DefaultLoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.DefaultLoadControl.PlayerLoadingState (io.bidmachine.media3.exoplayer.DefaultLoadControl$PlayerLoadingState)
.class public Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/DefaultLoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerLoadingState"
.end annotation


# instance fields
.field public isLoading:Z

.field public targetBufferBytes:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/DefaultLoadControl$1;)V
    .registers 2

    .line 523
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;-><init>()V

    return-void
.end method
