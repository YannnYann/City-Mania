###### Class io.bidmachine.media3.exoplayer.MediaPeriodInfo (io.bidmachine.media3.exoplayer.MediaPeriodInfo)
.class public final Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;
.super Ljava/lang/Object;
.source "MediaPeriodInfo.java"


# instance fields
.field public final durationUs:J

.field public final endPositionUs:J

.field public final id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final isFinal:Z

.field public final isFollowedByTransitionToSameStream:Z

.field public final isLastInTimelinePeriod:Z

.field public final isLastInTimelineWindow:Z

.field public final isPrecededByTransitionFromSameStream:Z

.field public final requestedContentPositionUs:J

.field public final startPositionUs:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJZZZZZ)V
    .registers 22

    move/from16 v0, p11

    move/from16 v1, p12

    move/from16 v2, p13

    move/from16 v3, p14

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_14

    if-eqz v1, :cond_12

    goto :goto_14

    :cond_12
    move v6, v5

    goto :goto_15

    :cond_14
    :goto_14
    move v6, v4

    .line 98
    :goto_15
    invoke-static {v6}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    if-eqz v2, :cond_1f

    if-eqz v1, :cond_1d

    goto :goto_1f

    :cond_1d
    move v6, v5

    goto :goto_20

    :cond_1f
    :goto_1f
    move v6, v4

    .line 99
    :goto_20
    invoke-static {v6}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    if-eqz v0, :cond_2d

    if-nez v1, :cond_2c

    if-nez v2, :cond_2c

    if-nez v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v4, v5

    .line 100
    :cond_2d
    :goto_2d
    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 103
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 104
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    .line 105
    iput-wide p4, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    .line 106
    iput-wide p6, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    move-wide p1, p8

    .line 107
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    move/from16 p1, p10

    .line 108
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isPrecededByTransitionFromSameStream:Z

    .line 109
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    .line 110
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    .line 111
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isLastInTimelineWindow:Z

    .line 112
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    return-void
.end method


# virtual methods
.method public copyWithRequestedContentPositionUs(J)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;
    .registers 20

    move-object/from16 v0, p0

    .line 140
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_9

    return-object v0

    .line 142
    :cond_9
    new-instance v2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v8, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    iget-wide v10, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-boolean v12, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isPrecededByTransitionFromSameStream:Z

    iget-boolean v13, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    iget-boolean v14, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v15, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isLastInTimelineWindow:Z

    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    move-wide/from16 v6, p1

    move/from16 v16, v1

    invoke-direct/range {v2 .. v16}, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJZZZZZ)V

    return-object v2
.end method

.method public copyWithStartPositionUs(J)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;
    .registers 20

    move-object/from16 v0, p0

    .line 120
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_9

    return-object v0

    .line 122
    :cond_9
    new-instance v2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v6, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-wide v8, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    iget-wide v10, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-boolean v12, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isPrecededByTransitionFromSameStream:Z

    iget-boolean v13, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    iget-boolean v14, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v15, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isLastInTimelineWindow:Z

    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    move-wide/from16 v4, p1

    move/from16 v16, v1

    invoke-direct/range {v2 .. v16}, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJZZZZZ)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5b

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    if-eq v3, v2, :cond_10

    goto :goto_5b

    .line 163
    :cond_10
    check-cast p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    .line 164
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5b

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5b

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5b

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5b

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isPrecededByTransitionFromSameStream:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isPrecededByTransitionFromSameStream:Z

    if-ne v2, v3, :cond_5b

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    if-ne v2, v3, :cond_5b

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    if-ne v2, v3, :cond_5b

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isLastInTimelineWindow:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isLastInTimelineWindow:Z

    if-ne v2, v3, :cond_5b

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-ne v2, v3, :cond_5b

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 173
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    return v0

    :cond_5b
    :goto_5b
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 179
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 180
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 181
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 182
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->endPositionUs:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 183
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 184
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isPrecededByTransitionFromSameStream:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 185
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 186
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 187
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isLastInTimelineWindow:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 188
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    add-int/2addr v1, v0

    return v1
.end method
