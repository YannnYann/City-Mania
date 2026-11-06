###### Class io.bidmachine.media3.common.BasePlayer (io.bidmachine.media3.common.BasePlayer)
.class public abstract Lio/bidmachine/media3/common/BasePlayer;
.super Ljava/lang/Object;
.source "BasePlayer.java"

# interfaces
.implements Lio/bidmachine/media3/common/Player;


# instance fields
.field public final window:Lio/bidmachine/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lio/bidmachine/media3/common/Timeline$Window;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/common/BasePlayer;->window:Lio/bidmachine/media3/common/Timeline$Window;

    return-void
.end method


# virtual methods
.method public final getContentDuration()J
    .registers 4

    .line 433
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 436
    :cond_10
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lio/bidmachine/media3/common/BasePlayer;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNextMediaItemIndex()I
    .registers 5

    .line 310
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, -0x1

    return v0

    .line 314
    :cond_c
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-virtual {p0}, Lio/bidmachine/media3/common/BasePlayer;->getRepeatModeForNavigation()I

    move-result v2

    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getShuffleModeEnabled()Z

    move-result v3

    .line 313
    invoke-virtual {v0, v1, v2, v3}, Lio/bidmachine/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v0

    return v0
.end method

.method public final getPreviousMediaItemIndex()I
    .registers 5

    .line 328
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, -0x1

    return v0

    .line 332
    :cond_c
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-virtual {p0}, Lio/bidmachine/media3/common/BasePlayer;->getRepeatModeForNavigation()I

    move-result v2

    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getShuffleModeEnabled()Z

    move-result v3

    .line 331
    invoke-virtual {v0, v1, v2, v3}, Lio/bidmachine/media3/common/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v0

    return v0
.end method

.method public final getRepeatModeForNavigation()I
    .registers 3

    .line 440
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getRepeatMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    :cond_8
    return v0
.end method

.method public final hasNextMediaItem()Z
    .registers 3

    .line 209
    invoke-virtual {p0}, Lio/bidmachine/media3/common/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPreviousMediaItem()Z
    .registers 3

    .line 151
    invoke-virtual {p0}, Lio/bidmachine/media3/common/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final ignoreSeek(I)V
    .registers 8

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    const/4 v1, -0x1

    move-object v0, p0

    move v4, p1

    .line 445
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/common/BasePlayer;->seekTo(IJIZ)V

    return-void
.end method

.method public final isCommandAvailable(I)Z
    .registers 3

    .line 98
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getAvailableCommands()Lio/bidmachine/media3/common/Player$Commands;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/Player$Commands;->contains(I)Z

    move-result p1

    return p1
.end method

.method public final isCurrentMediaItemDynamic()Z
    .registers 4

    .line 383
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lio/bidmachine/media3/common/BasePlayer;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lio/bidmachine/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final isCurrentMediaItemLive()Z
    .registers 4

    .line 398
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lio/bidmachine/media3/common/BasePlayer;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline$Window;->isLive()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public final isCurrentMediaItemSeekable()Z
    .registers 4

    .line 427
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lio/bidmachine/media3/common/BasePlayer;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lio/bidmachine/media3/common/Timeline$Window;->isSeekable:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final isPlaying()Z
    .registers 3

    .line 123
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    .line 124
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 125
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getPlaybackSuppressionReason()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .registers 2

    const/4 v0, 0x0

    .line 118
    invoke-interface {p0, v0}, Lio/bidmachine/media3/common/Player;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final play()V
    .registers 2

    const/4 v0, 0x1

    .line 113
    invoke-interface {p0, v0}, Lio/bidmachine/media3/common/Player;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final repeatCurrentMediaItem(I)V
    .registers 8

    .line 503
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x1

    move-object v0, p0

    move v4, p1

    .line 502
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/common/BasePlayer;->seekTo(IJIZ)V

    return-void
.end method

.method public final seekBack()V
    .registers 4

    .line 141
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getSeekBackIncrement()J

    move-result-wide v0

    neg-long v0, v0

    const/16 v2, 0xb

    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/media3/common/BasePlayer;->seekToOffset(JI)V

    return-void
.end method

.method public final seekForward()V
    .registers 4

    .line 146
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getSeekForwardIncrement()J

    move-result-wide v0

    const/16 v2, 0xc

    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/media3/common/BasePlayer;->seekToOffset(JI)V

    return-void
.end method

.method public final seekTo(IJ)V
    .registers 10

    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 258
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/common/BasePlayer;->seekTo(IJIZ)V

    return-void
.end method

.method public abstract seekTo(IJIZ)V
.end method

.method public final seekTo(J)V
    .registers 4

    const/4 v0, 0x5

    .line 253
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/media3/common/BasePlayer;->seekToCurrentItem(JI)V

    return-void
.end method

.method public final seekToCurrentItem(JI)V
    .registers 10

    .line 454
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    .line 453
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/common/BasePlayer;->seekTo(IJIZ)V

    return-void
.end method

.method public final seekToDefaultPosition()V
    .registers 3

    .line 131
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v0

    const/4 v1, 0x4

    .line 130
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/common/BasePlayer;->seekToDefaultPositionInternal(II)V

    return-void
.end method

.method public final seekToDefaultPositionInternal(II)V
    .registers 9

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    .line 468
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/common/BasePlayer;->seekTo(IJIZ)V

    return-void
.end method

.method public final seekToNext()V
    .registers 3

    .line 237
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const/16 v1, 0x9

    if-nez v0, :cond_35

    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_35

    .line 242
    :cond_13
    invoke-virtual {p0}, Lio/bidmachine/media3/common/BasePlayer;->hasNextMediaItem()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 243
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/BasePlayer;->seekToNextMediaItemInternal(I)V

    return-void

    .line 244
    :cond_1d
    invoke-virtual {p0}, Lio/bidmachine/media3/common/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lio/bidmachine/media3/common/BasePlayer;->isCurrentMediaItemDynamic()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 245
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/common/BasePlayer;->seekToDefaultPositionInternal(II)V

    return-void

    .line 247
    :cond_31
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/BasePlayer;->ignoreSeek(I)V

    return-void

    .line 239
    :cond_35
    :goto_35
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/BasePlayer;->ignoreSeek(I)V

    return-void
.end method

.method public final seekToNextMediaItemInternal(I)V
    .registers 4

    .line 476
    invoke-virtual {p0}, Lio/bidmachine/media3/common/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 478
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/BasePlayer;->ignoreSeek(I)V

    return-void

    .line 481
    :cond_b
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 482
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/BasePlayer;->repeatCurrentMediaItem(I)V

    return-void

    .line 484
    :cond_15
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/common/BasePlayer;->seekToDefaultPositionInternal(II)V

    return-void
.end method

.method public final seekToOffset(JI)V
    .registers 8

    .line 458
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 459
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getDuration()J

    move-result-wide p1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v2

    if-eqz v2, :cond_16

    .line 461
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_16
    const-wide/16 p1, 0x0

    .line 463
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 464
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/common/BasePlayer;->seekToCurrentItem(JI)V

    return-void
.end method

.method public final seekToPrevious()V
    .registers 7

    .line 170
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const/4 v1, 0x7

    if-nez v0, :cond_44

    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_44

    .line 175
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/media3/common/BasePlayer;->hasPreviousMediaItem()Z

    move-result v0

    .line 176
    invoke-virtual {p0}, Lio/bidmachine/media3/common/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {p0}, Lio/bidmachine/media3/common/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v2

    if-nez v2, :cond_2c

    if-eqz v0, :cond_28

    .line 178
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/BasePlayer;->seekToPreviousMediaItemInternal(I)V

    return-void

    .line 180
    :cond_28
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/BasePlayer;->ignoreSeek(I)V

    return-void

    :cond_2c
    if-eqz v0, :cond_3e

    .line 182
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentPosition()J

    move-result-wide v2

    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getMaxSeekToPreviousPosition()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3e

    .line 183
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/BasePlayer;->seekToPreviousMediaItemInternal(I)V

    return-void

    :cond_3e
    const-wide/16 v2, 0x0

    .line 185
    invoke-virtual {p0, v2, v3, v1}, Lio/bidmachine/media3/common/BasePlayer;->seekToCurrentItem(JI)V

    return-void

    .line 172
    :cond_44
    :goto_44
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/BasePlayer;->ignoreSeek(I)V

    return-void
.end method

.method public final seekToPreviousMediaItemInternal(I)V
    .registers 4

    .line 489
    invoke-virtual {p0}, Lio/bidmachine/media3/common/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 491
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/BasePlayer;->ignoreSeek(I)V

    return-void

    .line 494
    :cond_b
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 495
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/BasePlayer;->repeatCurrentMediaItem(I)V

    return-void

    .line 497
    :cond_15
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/common/BasePlayer;->seekToDefaultPositionInternal(II)V

    return-void
.end method

.method public final setMediaItem(Lio/bidmachine/media3/common/MediaItem;)V
    .registers 2

    .line 40
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/common/BasePlayer;->setMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public final setMediaItems(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 55
    invoke-interface {p0, p1, v0}, Lio/bidmachine/media3/common/Player;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method
