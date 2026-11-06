###### Class io.bidmachine.media3.exoplayer.RendererHolder (io.bidmachine.media3.exoplayer.RendererHolder)
.class public Lio/bidmachine/media3/exoplayer/RendererHolder;
.super Ljava/lang/Object;
.source "RendererHolder.java"


# instance fields
.field public final index:I

.field public prewarmingState:I

.field public final primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

.field public primaryRequiresReset:Z

.field public final secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

.field public secondaryRequiresReset:Z


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/Renderer;Lio/bidmachine/media3/exoplayer/Renderer;I)V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    .line 60
    iput p3, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->index:I

    .line 61
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    .line 63
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    .line 64
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    return-void
.end method

.method public static getFormats(Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)[Lio/bidmachine/media3/common/Format;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 748
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v1

    goto :goto_9

    :cond_8
    move v1, v0

    .line 749
    :goto_9
    new-array v2, v1, [Lio/bidmachine/media3/common/Format;

    :goto_b
    if-ge v0, v1, :cond_1c

    .line 751
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v3, v0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1c
    return-object v2
.end method

.method public static isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z
    .registers 1

    .line 800
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/Renderer;->getState()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public allowsPlayback(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Z
    .registers 3

    .line 401
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Lio/bidmachine/media3/exoplayer/Renderer;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 403
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 404
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/Renderer;->isReady()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 405
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/Renderer;->isEnded()Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1
.end method

.method public disable(Lio/bidmachine/media3/exoplayer/DefaultMediaClock;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->disableRenderer(Lio/bidmachine/media3/exoplayer/Renderer;Lio/bidmachine/media3/exoplayer/DefaultMediaClock;)V

    .line 540
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 542
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    iget v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_18

    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v1

    .line 544
    :goto_19
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-virtual {p0, v3, p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->disableRenderer(Lio/bidmachine/media3/exoplayer/Renderer;Lio/bidmachine/media3/exoplayer/DefaultMediaClock;)V

    .line 545
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->maybeResetRenderer(Z)V

    if-eqz v0, :cond_26

    .line 547
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/RendererHolder;->transferResources(Z)V

    .line 550
    :cond_26
    iput v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    return-void
.end method

.method public disablePrewarming(Lio/bidmachine/media3/exoplayer/DefaultMediaClock;)V
    .registers 7

    .line 578
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isPrewarming()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 581
    :cond_7
    iget v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_14

    const/4 v4, 0x2

    if-ne v0, v4, :cond_12

    goto :goto_14

    :cond_12
    move v4, v2

    goto :goto_15

    :cond_14
    :goto_14
    move v4, v1

    :goto_15
    if-ne v0, v3, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    if-eqz v4, :cond_1e

    .line 587
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    goto :goto_26

    :cond_1e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/Renderer;

    .line 586
    :goto_26
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->disableRenderer(Lio/bidmachine/media3/exoplayer/Renderer;Lio/bidmachine/media3/exoplayer/DefaultMediaClock;)V

    .line 588
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/exoplayer/RendererHolder;->maybeResetRenderer(Z)V

    .line 592
    iput v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    return-void
.end method

.method public final disableRenderer(Lio/bidmachine/media3/exoplayer/Renderer;Lio/bidmachine/media3/exoplayer/DefaultMediaClock;)V
    .registers 4

    .line 639
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eq v0, p1, :cond_b

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-ne v0, p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 640
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 643
    :cond_16
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->onRendererDisabled(Lio/bidmachine/media3/exoplayer/Renderer;)V

    .line 644
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->ensureStopped(Lio/bidmachine/media3/exoplayer/Renderer;)V

    .line 645
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/Renderer;->disable()V

    return-void
.end method

.method public enable(Lio/bidmachine/media3/exoplayer/RendererConfiguration;Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;Lio/bidmachine/media3/exoplayer/source/SampleStream;JZZJJLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/DefaultMediaClock;)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p13

    .line 482
    invoke-static/range {p2 .. p2}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getFormats(Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)[Lio/bidmachine/media3/common/Format;

    move-result-object v3

    .line 483
    iget v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v2, 0x1

    if-eqz v1, :cond_34

    const/4 v4, 0x2

    if-eq v1, v4, :cond_34

    const/4 v4, 0x4

    if-ne v1, v4, :cond_12

    goto :goto_34

    .line 501
    :cond_12
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    .line 502
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/Renderer;

    move-object v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    .line 503
    invoke-interface/range {v1 .. v13}, Lio/bidmachine/media3/exoplayer/Renderer;->enable(Lio/bidmachine/media3/exoplayer/RendererConfiguration;[Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/source/SampleStream;JZZJJLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 513
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->onRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)V

    return-void

    .line 488
    :cond_34
    :goto_34
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    .line 489
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    move-object v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    invoke-interface/range {v1 .. v13}, Lio/bidmachine/media3/exoplayer/Renderer;->enable(Lio/bidmachine/media3/exoplayer/RendererConfiguration;[Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/source/SampleStream;JZZJJLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 499
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->onRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)V

    return-void
.end method

.method public enableMayRenderStartOfStream()V
    .registers 2

    .line 261
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 262
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/Renderer;->enableMayRenderStartOfStream()V

    return-void

    .line 263
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eqz v0, :cond_1d

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 264
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/Renderer;->enableMayRenderStartOfStream()V

    :cond_1d
    return-void
.end method

.method public final ensureStopped(Lio/bidmachine/media3/exoplayer/Renderer;)V
    .registers 4

    .line 445
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 446
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/Renderer;->stop()V

    :cond_a
    return-void
.end method

.method public getEnabledRendererCount()I
    .registers 3

    .line 102
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    .line 103
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eqz v1, :cond_12

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    add-int/2addr v0, v1

    return v0
.end method

.method public getMinDurationToProgressUs(JJ)J
    .registers 8

    .line 241
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 242
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/Renderer;->getDurationToProgressUs(JJ)J

    move-result-wide v0

    goto :goto_14

    :cond_f
    const-wide v0, 0x7fffffffffffffffL

    .line 245
    :goto_14
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eqz v2, :cond_29

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 246
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    .line 249
    invoke-interface {v2, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/Renderer;->getDurationToProgressUs(JJ)J

    move-result-wide p1

    .line 247
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_29
    return-wide v0
.end method

.method public getReadingPositionUs(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)J
    .registers 4

    .line 128
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Lio/bidmachine/media3/exoplayer/Renderer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/Renderer;->getReadingPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getRendererReadingFromPeriod(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Lio/bidmachine/media3/exoplayer/Renderer;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_30

    .line 816
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/SampleStream;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->index:I

    aget-object v1, v1, v2

    if-nez v1, :cond_c

    goto :goto_30

    .line 819
    :cond_c
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/Renderer;->getStream()Lio/bidmachine/media3/exoplayer/source/SampleStream;

    move-result-object v1

    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/SampleStream;

    iget v3, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->index:I

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_1d

    .line 820
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    return-object p1

    .line 821
    :cond_1d
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eqz v1, :cond_30

    .line 822
    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/Renderer;->getStream()Lio/bidmachine/media3/exoplayer/source/SampleStream;

    move-result-object v1

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/SampleStream;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->index:I

    aget-object p1, p1, v2

    if-ne v1, p1, :cond_30

    .line 823
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    return-object p1

    :cond_30
    :goto_30
    return-object v0
.end method

.method public getTrackType()I
    .registers 2

    .line 113
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/Renderer;->getTrackType()I

    move-result v0

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 528
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Lio/bidmachine/media3/exoplayer/Renderer;

    move-result-object p3

    invoke-static {p3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/bidmachine/media3/exoplayer/Renderer;

    .line 529
    invoke-interface {p3, p1, p2}, Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public hasFinishedReadingFromPeriod(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Z
    .registers 3

    .line 328
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->hasFinishedReadingFromPeriodInternal(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    .line 329
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->hasFinishedReadingFromPeriodInternal(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public final hasFinishedReadingFromPeriodInternal(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;Lio/bidmachine/media3/exoplayer/Renderer;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p2, :cond_4

    return v0

    .line 337
    :cond_4
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/SampleStream;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->index:I

    aget-object v1, v1, v2

    .line 338
    invoke-interface {p2}, Lio/bidmachine/media3/exoplayer/Renderer;->getStream()Lio/bidmachine/media3/exoplayer/source/SampleStream;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 339
    invoke-interface {p2}, Lio/bidmachine/media3/exoplayer/Renderer;->getStream()Lio/bidmachine/media3/exoplayer/source/SampleStream;

    move-result-object v2

    if-ne v2, v1, :cond_24

    if-eqz v1, :cond_39

    .line 341
    invoke-interface {p2}, Lio/bidmachine/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    move-result v1

    if-nez v1, :cond_39

    .line 342
    invoke-virtual {p0, p2, p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->hasReachedServerSideInsertedAdsTransition(Lio/bidmachine/media3/exoplayer/Renderer;Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 344
    :cond_24
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 347
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/SampleStream;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->index:I

    aget-object p1, p1, v1

    .line 348
    invoke-interface {p2}, Lio/bidmachine/media3/exoplayer/Renderer;->getStream()Lio/bidmachine/media3/exoplayer/source/SampleStream;

    move-result-object p2

    if-ne p1, p2, :cond_37

    return v0

    :cond_37
    const/4 p1, 0x0

    return p1

    :cond_39
    return v0
.end method

.method public final hasReachedServerSideInsertedAdsTransition(Lio/bidmachine/media3/exoplayer/Renderer;Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Z
    .registers 5

    .line 355
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 361
    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-boolean p2, p2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    if-eqz p2, :cond_26

    if-eqz v0, :cond_26

    iget-boolean p2, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz p2, :cond_26

    instance-of p2, p1, Lio/bidmachine/media3/exoplayer/text/TextRenderer;

    if-nez p2, :cond_24

    instance-of p2, p1, Lio/bidmachine/media3/exoplayer/metadata/MetadataRenderer;

    if-nez p2, :cond_24

    .line 366
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/Renderer;->getReadingPositionUs()J

    move-result-wide p1

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_26

    :cond_24
    const/4 p1, 0x1

    return p1

    :cond_26
    const/4 p1, 0x0

    return p1
.end method

.method public hasReadPeriodToEnd(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Z
    .registers 2

    .line 137
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Lio/bidmachine/media3/exoplayer/Renderer;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/Renderer;

    .line 138
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

    move-result p1

    return p1
.end method

.method public hasSecondary()Z
    .registers 2

    .line 68
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isEnded()Z
    .registers 3

    .line 301
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 302
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/Renderer;->isEnded()Z

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    .line 304
    :goto_10
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eqz v1, :cond_21

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 305
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/Renderer;->isEnded()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_21
    return v0
.end method

.method public isPrewarming()Z
    .registers 2

    .line 82
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isPrimaryRendererPrewarming()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isSecondaryRendererPrewarming()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public final isPrimaryRendererPrewarming()Z
    .registers 3

    .line 92
    iget v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method public isReadingFromPeriod(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Z
    .registers 2

    .line 317
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Lio/bidmachine/media3/exoplayer/Renderer;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public isRendererEnabled()Z
    .registers 3

    .line 790
    iget v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    if-eqz v0, :cond_18

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    goto :goto_18

    .line 796
    :cond_b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    return v0

    .line 795
    :cond_18
    :goto_18
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    return v0
.end method

.method public isRendererPrewarming(I)Z
    .registers 6

    .line 86
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isPrimaryRendererPrewarming()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    iget v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->index:I

    if-ne p1, v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 87
    :goto_f
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isSecondaryRendererPrewarming()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget v3, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->index:I

    if-eq p1, v3, :cond_1b

    move p1, v2

    goto :goto_1c

    :cond_1b
    move p1, v1

    :goto_1c
    if-nez v0, :cond_22

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    return v1

    :cond_22
    :goto_22
    return v2
.end method

.method public final isSecondaryRendererPrewarming()Z
    .registers 3

    .line 97
    iget v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public maybeDisableOrResetPosition(Lio/bidmachine/media3/exoplayer/source/SampleStream;Lio/bidmachine/media3/exoplayer/DefaultMediaClock;JZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 601
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/RendererHolder;->maybeDisableOrResetPositionInternal(Lio/bidmachine/media3/exoplayer/Renderer;Lio/bidmachine/media3/exoplayer/source/SampleStream;Lio/bidmachine/media3/exoplayer/DefaultMediaClock;JZ)V

    .line 603
    iget-object p1, v0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eqz p1, :cond_17

    move v8, v6

    move-wide v6, v4

    move-object v4, v2

    move-object v5, v3

    move-object v3, p1

    move-object v2, v0

    .line 604
    invoke-virtual/range {v2 .. v8}, Lio/bidmachine/media3/exoplayer/RendererHolder;->maybeDisableOrResetPositionInternal(Lio/bidmachine/media3/exoplayer/Renderer;Lio/bidmachine/media3/exoplayer/source/SampleStream;Lio/bidmachine/media3/exoplayer/DefaultMediaClock;JZ)V

    :cond_17
    return-void
.end method

.method public final maybeDisableOrResetPositionInternal(Lio/bidmachine/media3/exoplayer/Renderer;Lio/bidmachine/media3/exoplayer/source/SampleStream;Lio/bidmachine/media3/exoplayer/DefaultMediaClock;JZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 616
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 617
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/Renderer;->getStream()Lio/bidmachine/media3/exoplayer/source/SampleStream;

    move-result-object v0

    if-eq p2, v0, :cond_10

    .line 619
    invoke-virtual {p0, p1, p3}, Lio/bidmachine/media3/exoplayer/RendererHolder;->disableRenderer(Lio/bidmachine/media3/exoplayer/Renderer;Lio/bidmachine/media3/exoplayer/DefaultMediaClock;)V

    return-void

    :cond_10
    if-eqz p6, :cond_15

    .line 622
    invoke-interface {p1, p4, p5}, Lio/bidmachine/media3/exoplayer/Renderer;->resetPosition(J)V

    :cond_15
    return-void
.end method

.method public maybeHandlePrewarmingTransition()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 555
    iget v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v0, v1, :cond_10

    if-ne v0, v3, :cond_a

    goto :goto_10

    :cond_a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    .line 565
    iput v2, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    :cond_f
    return-void

    :cond_10
    :goto_10
    const/4 v1, 0x1

    if-ne v0, v3, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    .line 557
    :goto_16
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->transferResources(Z)V

    .line 561
    iget v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    if-ne v0, v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v1

    .line 563
    :goto_1f
    iput v2, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    return-void
.end method

.method public final maybeResetRenderer(Z)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 676
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    if-eqz p1, :cond_20

    .line 677
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/Renderer;->reset()V

    .line 678
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    return-void

    .line 680
    :cond_f
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    if-eqz p1, :cond_20

    .line 681
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/Renderer;->reset()V

    .line 682
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    :cond_20
    return-void
.end method

.method public maybeSetOldStreamToFinal(Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;J)V
    .registers 9

    .line 171
    iget v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->index:I

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v0

    .line 172
    iget v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->index:I

    invoke-virtual {p2, v1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    .line 173
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eqz v2, :cond_29

    iget v2, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_29

    if-nez v2, :cond_20

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    .line 177
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_29

    .line 178
    :cond_20
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/Renderer;

    goto :goto_2b

    :cond_29
    :goto_29
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    :goto_2b
    if-eqz v0, :cond_5a

    .line 179
    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/Renderer;->isCurrentStreamFinal()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 180
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getTrackType()I

    move-result v0

    const/4 v3, -0x2

    if-ne v0, v3, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    .line 181
    :goto_3d
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    iget v3, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->index:I

    aget-object p1, p1, v3

    .line 182
    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    aget-object p2, p2, v3

    if-eqz v1, :cond_57

    .line 184
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    if-nez v0, :cond_57

    .line 186
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isPrewarming()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 193
    :cond_57
    invoke-virtual {p0, v2, p3, p4}, Lio/bidmachine/media3/exoplayer/RendererHolder;->setCurrentStreamFinalInternal(Lio/bidmachine/media3/exoplayer/Renderer;J)V

    :cond_5a
    return-void
.end method

.method public maybeThrowStreamError(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Lio/bidmachine/media3/exoplayer/Renderer;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/Renderer;->maybeThrowStreamError()V

    return-void
.end method

.method public release()V
    .registers 3

    .line 758
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/Renderer;->release()V

    const/4 v0, 0x0

    .line 759
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRequiresReset:Z

    .line 760
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eqz v1, :cond_11

    .line 761
    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/Renderer;->release()V

    .line 762
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRequiresReset:Z

    :cond_11
    return-void
.end method

.method public render(JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 381
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/Renderer;->render(JJ)V

    .line 383
    :cond_d
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eqz v0, :cond_1c

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 384
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/Renderer;->render(JJ)V

    :cond_1c
    return-void
.end method

.method public replaceStreamsOrDisableRendererForTransition(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;Lio/bidmachine/media3/exoplayer/DefaultMediaClock;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    .line 692
    invoke-virtual {p0, v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/RendererHolder;->replaceStreamsOrDisableRendererForTransitionInternal(Lio/bidmachine/media3/exoplayer/Renderer;Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;Lio/bidmachine/media3/exoplayer/DefaultMediaClock;)I

    move-result v0

    .line 694
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    .line 695
    invoke-virtual {p0, v1, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/RendererHolder;->replaceStreamsOrDisableRendererForTransitionInternal(Lio/bidmachine/media3/exoplayer/Renderer;Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;Lio/bidmachine/media3/exoplayer/DefaultMediaClock;)I

    move-result p1

    const/4 p2, 0x1

    if-ne v0, p2, :cond_10

    return p1

    :cond_10
    return v0
.end method

.method public final replaceStreamsOrDisableRendererForTransitionInternal(Lio/bidmachine/media3/exoplayer/Renderer;Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;Lio/bidmachine/media3/exoplayer/DefaultMediaClock;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_81

    .line 709
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-ne p1, v1, :cond_13

    .line 710
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isPrimaryRendererPrewarming()Z

    move-result v1

    if-nez v1, :cond_81

    :cond_13
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-ne p1, v1, :cond_1e

    .line 711
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isSecondaryRendererPrewarming()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_81

    .line 715
    :cond_1e
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/Renderer;->getStream()Lio/bidmachine/media3/exoplayer/source/SampleStream;

    move-result-object v1

    iget-object v2, p2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/SampleStream;

    iget v3, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->index:I

    aget-object v2, v2, v3

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2d

    move v1, v0

    goto :goto_2e

    :cond_2d
    move v1, v4

    .line 716
    :goto_2e
    invoke-virtual {p3, v3}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_37

    if-nez v1, :cond_37

    return v0

    .line 721
    :cond_37
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/Renderer;->isCurrentStreamFinal()Z

    move-result v1

    if-nez v1, :cond_66

    .line 723
    iget-object p3, p3, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    iget p4, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->index:I

    aget-object p3, p3, p4

    invoke-static {p3}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getFormats(Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)[Lio/bidmachine/media3/common/Format;

    move-result-object v1

    .line 724
    iget-object p3, p2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/SampleStream;

    iget p4, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->index:I

    aget-object p3, p3, p4

    .line 726
    invoke-static {p3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lio/bidmachine/media3/exoplayer/source/SampleStream;

    .line 727
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v3

    .line 728
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v5

    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v7, p2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v0, p1

    .line 724
    invoke-interface/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/Renderer;->replaceStream([Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/source/SampleStream;JJLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    const/4 p1, 0x3

    return p1

    .line 733
    :cond_66
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/Renderer;->isEnded()Z

    move-result p2

    if-eqz p2, :cond_80

    .line 735
    invoke-virtual {p0, p1, p4}, Lio/bidmachine/media3/exoplayer/RendererHolder;->disableRenderer(Lio/bidmachine/media3/exoplayer/Renderer;Lio/bidmachine/media3/exoplayer/DefaultMediaClock;)V

    if-eqz v2, :cond_77

    .line 736
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isPrewarming()Z

    move-result p2

    if-eqz p2, :cond_7f

    .line 737
    :cond_77
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-ne p1, p2, :cond_7c

    move v4, v0

    :cond_7c
    invoke-virtual {p0, v4}, Lio/bidmachine/media3/exoplayer/RendererHolder;->maybeResetRenderer(Z)V

    :cond_7f
    return v0

    :cond_80
    return v4

    :cond_81
    :goto_81
    return v0
.end method

.method public reset()V
    .registers 2

    .line 666
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 667
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->maybeResetRenderer(Z)V

    .line 669
    :cond_c
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eqz v0, :cond_1a

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    .line 670
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->maybeResetRenderer(Z)V

    :cond_1a
    return-void
.end method

.method public resetPosition(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 656
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Lio/bidmachine/media3/exoplayer/Renderer;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 658
    invoke-interface {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/Renderer;->resetPosition(J)V

    :cond_9
    return-void
.end method

.method public setAllNonPrewarmingRendererStreamsFinal(J)V
    .registers 5

    .line 205
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    .line 208
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-virtual {p0, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/RendererHolder;->setCurrentStreamFinalInternal(Lio/bidmachine/media3/exoplayer/Renderer;J)V

    .line 210
    :cond_15
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eqz v0, :cond_29

    .line 211
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    .line 213
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-virtual {p0, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/RendererHolder;->setCurrentStreamFinalInternal(Lio/bidmachine/media3/exoplayer/Renderer;J)V

    :cond_29
    return-void
.end method

.method public setCurrentStreamFinal(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;J)V
    .registers 4

    .line 152
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getRendererReadingFromPeriod(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Lio/bidmachine/media3/exoplayer/Renderer;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/Renderer;

    .line 153
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/RendererHolder;->setCurrentStreamFinalInternal(Lio/bidmachine/media3/exoplayer/Renderer;J)V

    return-void
.end method

.method public final setCurrentStreamFinalInternal(Lio/bidmachine/media3/exoplayer/Renderer;J)V
    .registers 5

    .line 218
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/Renderer;->setCurrentStreamFinal()V

    .line 219
    instance-of v0, p1, Lio/bidmachine/media3/exoplayer/text/TextRenderer;

    if-eqz v0, :cond_c

    .line 220
    check-cast p1, Lio/bidmachine/media3/exoplayer/text/TextRenderer;

    invoke-virtual {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/text/TextRenderer;->setFinalStreamEndPositionUs(J)V

    :cond_c
    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/Renderer;->setPlaybackSpeed(FF)V

    .line 276
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eqz v0, :cond_c

    .line 277
    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/Renderer;->setPlaybackSpeed(FF)V

    :cond_c
    return-void
.end method

.method public setTimeline(Lio/bidmachine/media3/common/Timeline;)V
    .registers 3

    .line 287
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/Renderer;->setTimeline(Lio/bidmachine/media3/common/Timeline;)V

    .line 288
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eqz v0, :cond_c

    .line 289
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/Renderer;->setTimeline(Lio/bidmachine/media3/common/Timeline;)V

    :cond_c
    return-void
.end method

.method public setVideoOutput(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 767
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getTrackType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    return-void

    .line 770
    :cond_8
    iget v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_17

    if-ne v0, v2, :cond_11

    goto :goto_17

    .line 774
    :cond_11
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {v0, v2, p1}, Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    return-void

    .line 772
    :cond_17
    :goto_17
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {v0, v2, p1}, Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setVolume(F)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 780
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getTrackType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_1d

    .line 783
    :cond_8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    .line 784
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eqz v0, :cond_1d

    .line 785
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public start()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    iget v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_14

    .line 426
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/Renderer;->start()V

    return-void

    .line 427
    :cond_14
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eqz v0, :cond_28

    .line 428
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/Renderer;->getState()I

    move-result v0

    if-ne v0, v1, :cond_28

    iget v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    .line 430
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/Renderer;->start()V

    :cond_28
    return-void
.end method

.method public startPrewarming()V
    .registers 2

    .line 72
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isPrewarming()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 74
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x3

    goto :goto_20

    .line 76
    :cond_13
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eqz v0, :cond_1f

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x4

    goto :goto_20

    :cond_1f
    const/4 v0, 0x2

    .line 78
    :goto_20
    iput v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->prewarmingState:I

    return-void
.end method

.method public stop()V
    .registers 2

    .line 436
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 437
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->ensureStopped(Lio/bidmachine/media3/exoplayer/Renderer;)V

    .line 439
    :cond_d
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    if-eqz v0, :cond_1c

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled(Lio/bidmachine/media3/exoplayer/Renderer;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 440
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->ensureStopped(Lio/bidmachine/media3/exoplayer/Renderer;)V

    :cond_1c
    return-void
.end method

.method public final transferResources(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/16 v0, 0x11

    if-eqz p1, :cond_12

    .line 571
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/Renderer;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    return-void

    .line 573
    :cond_12
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->primaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/RendererHolder;->secondaryRenderer:Lio/bidmachine/media3/exoplayer/Renderer;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V

    return-void
.end method
