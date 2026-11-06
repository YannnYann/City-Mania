###### Class io.bidmachine.media3.exoplayer.source.MaskingMediaSource (io.bidmachine.media3.exoplayer.source.MaskingMediaSource)
.class public final Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;
.super Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;
.source "MaskingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;,
        Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;
    }
.end annotation


# instance fields
.field public hasRealTimeline:Z

.field public hasStartedPreparing:Z

.field public isPrepared:Z

.field public final period:Lio/bidmachine/media3/common/Timeline$Period;

.field public timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

.field public unpreparedMaskingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;

.field public final useLazyPreparation:Z

.field public final window:Lio/bidmachine/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaSource;Z)V
    .registers 4

    .line 60
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSource;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_e

    .line 61
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->isSingleWindow()Z

    move-result p2

    if-eqz p2, :cond_e

    move p2, v0

    goto :goto_f

    :cond_e
    const/4 p2, 0x0

    :goto_f
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->useLazyPreparation:Z

    .line 62
    new-instance p2, Lio/bidmachine/media3/common/Timeline$Window;

    invoke-direct {p2}, Lio/bidmachine/media3/common/Timeline$Window;-><init>()V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->window:Lio/bidmachine/media3/common/Timeline$Window;

    .line 63
    new-instance p2, Lio/bidmachine/media3/common/Timeline$Period;

    invoke-direct {p2}, Lio/bidmachine/media3/common/Timeline$Period;-><init>()V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 64
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->getInitialTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object p2

    if-eqz p2, :cond_2f

    const/4 p1, 0x0

    .line 67
    invoke-static {p2, p1, p1}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->createWithRealTimeline(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 69
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->hasRealTimeline:Z

    return-void

    .line 71
    :cond_2f
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->getMediaItem()Lio/bidmachine/media3/common/MediaItem;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->createWithPlaceholderTimeline(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    return-void
.end method


# virtual methods
.method public createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;
    .registers 6

    .line 115
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)V

    .line 116
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    invoke-virtual {v0, p2}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->setMediaSource(Lio/bidmachine/media3/exoplayer/source/MediaSource;)V

    .line 117
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->isPrepared:Z

    if-eqz p2, :cond_1c

    .line 118
    iget-object p2, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->getInternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    .line 119
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-object v0

    .line 124
    :cond_1c
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;

    .line 125
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->hasStartedPreparing:Z

    if-nez p1, :cond_28

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->hasStartedPreparing:Z

    .line 127
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->prepareChildSource()V

    :cond_28
    return-object v0
.end method

.method public bridge synthetic createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
    .registers 5

    .line 38
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;

    move-result-object p1

    return-object p1
.end method

.method public final getExternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 233
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 232
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->access$000(Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 233
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->access$000(Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 234
    sget-object p1, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    :cond_16
    return-object p1
.end method

.method public final getInternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 226
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 225
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->access$000(Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    sget-object v0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 227
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->access$000(Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    move-result-object p1

    :cond_16
    return-object p1
.end method

.method public getMediaPeriodIdForChildMediaPeriodId(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 3

    .line 221
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->getExternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public getTimeline()Lio/bidmachine/media3/common/Timeline;
    .registers 2

    .line 77
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 1

    .line 0
    return-void
.end method

.method public onChildSourceInfoRefreshed(Lio/bidmachine/media3/common/Timeline;)V
    .registers 16

    .line 151
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->isPrepared:Z

    if-eqz v0, :cond_19

    .line 152
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->cloneWithUpdatedTimeline(Lio/bidmachine/media3/common/Timeline;)Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 153
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;

    if-eqz p1, :cond_b1

    .line 156
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->getPreparePositionOverrideUs()J

    move-result-wide v0

    .line 155
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->setPreparePositionOverrideToUnpreparedMaskingPeriod(J)Z

    goto/16 :goto_b1

    .line 158
    :cond_19
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 160
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->hasRealTimeline:Z

    if-eqz v0, :cond_2a

    .line 161
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->cloneWithUpdatedTimeline(Lio/bidmachine/media3/common/Timeline;)Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    goto :goto_32

    .line 162
    :cond_2a
    sget-object v0, Lio/bidmachine/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    sget-object v1, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->createWithRealTimeline(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    :goto_32
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    goto/16 :goto_b1

    .line 179
    :cond_36
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->window:Lio/bidmachine/media3/common/Timeline$Window;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    .line 180
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v2

    .line 181
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-object v0, v0, Lio/bidmachine/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 182
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;

    if-eqz v4, :cond_74

    .line 183
    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->getPreparePositionUs()J

    move-result-wide v4

    .line 184
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;

    iget-object v7, v7, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v7, v7, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v6, v7, v8}, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 185
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v6}, Lio/bidmachine/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v6

    add-long/2addr v6, v4

    .line 186
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->window:Lio/bidmachine/media3/common/Timeline$Window;

    .line 187
    invoke-virtual {v4, v1, v5}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/media3/common/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v4

    cmp-long v1, v6, v4

    if-eqz v1, :cond_74

    move-wide v12, v6

    goto :goto_75

    :cond_74
    move-wide v12, v2

    .line 192
    :goto_75
    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-object v10, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->period:Lio/bidmachine/media3/common/Timeline$Period;

    const/4 v11, 0x0

    move-object v8, p1

    .line 193
    invoke-virtual/range {v8 .. v13}, Lio/bidmachine/media3/common/Timeline;->getPeriodPositionUs(Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p1

    .line 195
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 196
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 198
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->hasRealTimeline:Z

    if-eqz p1, :cond_94

    .line 199
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {p1, v8}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->cloneWithUpdatedTimeline(Lio/bidmachine/media3/common/Timeline;)Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    goto :goto_98

    .line 200
    :cond_94
    invoke-static {v8, v0, v1}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->createWithRealTimeline(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    :goto_98
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 201
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;

    if-eqz p1, :cond_b1

    .line 203
    invoke-virtual {p0, v2, v3}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->setPreparePositionOverrideToUnpreparedMaskingPeriod(J)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 204
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 205
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->getInternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    goto :goto_b2

    :cond_b1
    :goto_b1
    const/4 p1, 0x0

    :goto_b2
    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->hasRealTimeline:Z

    .line 210
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->isPrepared:Z

    .line 211
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->refreshSourceInfo(Lio/bidmachine/media3/common/Timeline;)V

    if-eqz p1, :cond_c9

    .line 213
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;

    .line 214
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    :cond_c9
    return-void
.end method

.method public prepareSourceInternal()V
    .registers 2

    .line 99
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->useLazyPreparation:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->hasStartedPreparing:Z

    .line 101
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->prepareChildSource()V

    :cond_a
    return-void
.end method

.method public releasePeriod(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 3

    .line 135
    move-object v0, p1

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->releasePeriod()V

    .line 136
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;

    if-ne p1, v0, :cond_d

    const/4 p1, 0x0

    .line 137
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;

    :cond_d
    return-void
.end method

.method public releaseSourceInternal()V
    .registers 2

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->isPrepared:Z

    .line 144
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->hasStartedPreparing:Z

    .line 145
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->releaseSourceInternal()V

    return-void
.end method

.method public final setPreparePositionOverrideToUnpreparedMaskingPeriod(J)Z
    .registers 8

    .line 241
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;

    .line 242
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    const/4 p1, 0x0

    return p1

    .line 250
    :cond_11
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v2, v1, v3}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v1

    iget-wide v1, v1, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_31

    cmp-long v3, p1, v1

    if-ltz v3, :cond_31

    const-wide/16 p1, 0x1

    sub-long/2addr v1, p1

    const-wide/16 p1, 0x0

    .line 254
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 257
    :cond_31
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaPeriod;->overridePreparePositionUs(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateMediaItem(Lio/bidmachine/media3/common/MediaItem;)V
    .registers 5

    .line 87
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->hasRealTimeline:Z

    if-eqz v0, :cond_16

    .line 88
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    new-instance v1, Lio/bidmachine/media3/exoplayer/source/TimelineWithUpdatedMediaItem;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-direct {v1, v2, p1}, Lio/bidmachine/media3/exoplayer/source/TimelineWithUpdatedMediaItem;-><init>(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/common/MediaItem;)V

    .line 89
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->cloneWithUpdatedTimeline(Lio/bidmachine/media3/common/Timeline;)Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    goto :goto_1c

    .line 92
    :cond_16
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->createWithPlaceholderTimeline(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->timeline:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 94
    :goto_1c
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->updateMediaItem(Lio/bidmachine/media3/common/MediaItem;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.MaskingMediaSource.MaskingTimeline (io.bidmachine.media3.exoplayer.source.MaskingMediaSource$MaskingTimeline)
.class public final Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;
.super Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;
.source "MaskingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MaskingTimeline"
.end annotation


# static fields
.field public static final MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;


# instance fields
.field public final replacedInternalPeriodUid:Ljava/lang/Object;

.field public final replacedInternalWindowUid:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 267
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 303
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;-><init>(Lio/bidmachine/media3/common/Timeline;)V

    .line 304
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalWindowUid:Ljava/lang/Object;

    .line 305
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;
    .registers 1

    .line 265
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    return-object p0
.end method

.method public static createWithPlaceholderTimeline(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;
    .registers 4

    .line 278
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    new-instance v1, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;-><init>(Lio/bidmachine/media3/common/MediaItem;)V

    sget-object p0, Lio/bidmachine/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    sget-object v2, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, v2}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createWithRealTimeline(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;
    .registers 4

    .line 296
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    invoke-direct {v0, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public cloneWithUpdatedTimeline(Lio/bidmachine/media3/common/Timeline;)Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;
    .registers 5

    .line 314
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalWindowUid:Ljava/lang/Object;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .registers 4

    .line 337
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 338
    sget-object v1, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    if-eqz v1, :cond_f

    move-object p1, v1

    .line 337
    :cond_f
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;
    .registers 5

    .line 328
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;

    .line 329
    iget-object p1, p2, Lio/bidmachine/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    if-eqz p3, :cond_15

    .line 330
    sget-object p1, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    iput-object p1, p2, Lio/bidmachine/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    :cond_15
    return-object p2
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .registers 3

    .line 345
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p1

    .line 346
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalPeriodUid:Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object p1, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    :cond_10
    return-object p1
.end method

.method public getWindow(ILio/bidmachine/media3/common/Timeline$Window;J)Lio/bidmachine/media3/common/Timeline$Window;
    .registers 6

    .line 319
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;J)Lio/bidmachine/media3/common/Timeline$Window;

    .line 320
    iget-object p1, p2, Lio/bidmachine/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->replacedInternalWindowUid:Ljava/lang/Object;

    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 321
    sget-object p1, Lio/bidmachine/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iput-object p1, p2, Lio/bidmachine/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    :cond_13
    return-object p2
.end method

###### Class io.bidmachine.media3.exoplayer.source.MaskingMediaSource.PlaceholderTimeline (io.bidmachine.media3.exoplayer.source.MaskingMediaSource$PlaceholderTimeline)
.class public final Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;
.super Lio/bidmachine/media3/common/Timeline;
.source "MaskingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaceholderTimeline"
.end annotation


# instance fields
.field public final mediaItem:Lio/bidmachine/media3/common/MediaItem;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/MediaItem;)V
    .registers 2

    .line 357
    invoke-direct {p0}, Lio/bidmachine/media3/common/Timeline;-><init>()V

    .line 358
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    return-void
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .registers 3

    .line 408
    sget-object v0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    const/4 p1, -0x1

    return p1
.end method

.method public getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;
    .registers 15

    const/4 p1, 0x0

    if-eqz p3, :cond_a

    const/4 v0, 0x0

    .line 396
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    if-eqz p3, :cond_f

    .line 397
    sget-object p1, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    :cond_f
    move-object v3, p1

    sget-object v9, Lio/bidmachine/media3/common/AdPlaybackState;->NONE:Lio/bidmachine/media3/common/AdPlaybackState;

    const/4 v10, 0x1

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    move-object v1, p2

    .line 395
    invoke-virtual/range {v1 .. v10}, Lio/bidmachine/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLio/bidmachine/media3/common/AdPlaybackState;Z)Lio/bidmachine/media3/common/Timeline$Period;

    return-object v1
.end method

.method public getPeriodCount()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .registers 2

    .line 413
    sget-object p1, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    return-object p1
.end method

.method public getWindow(ILio/bidmachine/media3/common/Timeline$Window;J)Lio/bidmachine/media3/common/Timeline$Window;
    .registers 26

    .line 368
    sget-object v1, Lio/bidmachine/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v20}, Lio/bidmachine/media3/common/Timeline$Window;->set(Ljava/lang/Object;Lio/bidmachine/media3/common/MediaItem;Ljava/lang/Object;JJJZZLio/bidmachine/media3/common/MediaItem$LiveConfiguration;JJIIJ)Lio/bidmachine/media3/common/Timeline$Window;

    const/4 v1, 0x1

    .line 384
    iput-boolean v1, v0, Lio/bidmachine/media3/common/Timeline$Window;->isPlaceholder:Z

    return-object v0
.end method

.method public getWindowCount()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
