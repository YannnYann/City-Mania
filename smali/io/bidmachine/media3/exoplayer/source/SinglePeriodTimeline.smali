###### Class io.bidmachine.media3.exoplayer.source.SinglePeriodTimeline (io.bidmachine.media3.exoplayer.source.SinglePeriodTimeline)
.class public final Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;
.super Lio/bidmachine/media3/common/Timeline;
.source "SinglePeriodTimeline.java"


# static fields
.field public static final MEDIA_ITEM:Lio/bidmachine/media3/common/MediaItem;

.field public static final UID:Ljava/lang/Object;


# instance fields
.field public final elapsedRealtimeEpochOffsetMs:J

.field public final isDynamic:Z

.field public final isSeekable:Z

.field public final liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

.field public final manifest:Ljava/lang/Object;

.field public final mediaItem:Lio/bidmachine/media3/common/MediaItem;

.field public final periodDurationUs:J

.field public final presentationStartTimeMs:J

.field public final suppressPositionProjection:Z

.field public final windowDefaultStartPositionUs:J

.field public final windowDurationUs:J

.field public final windowPositionInPeriodUs:J

.field public final windowStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    .line 33
    new-instance v0, Lio/bidmachine/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/MediaItem$Builder;-><init>()V

    const-string v1, "SinglePeriodTimeline"

    .line 34
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lio/bidmachine/media3/common/MediaItem$Builder;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lio/bidmachine/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/common/MediaItem$Builder;->build()Lio/bidmachine/media3/common/MediaItem;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->MEDIA_ITEM:Lio/bidmachine/media3/common/MediaItem;

    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;)V
    .registers 21

    .line 289
    invoke-direct {p0}, Lio/bidmachine/media3/common/Timeline;-><init>()V

    .line 290
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->presentationStartTimeMs:J

    .line 291
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->windowStartTimeMs:J

    .line 292
    iput-wide p5, p0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->elapsedRealtimeEpochOffsetMs:J

    .line 293
    iput-wide p7, p0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->periodDurationUs:J

    .line 294
    iput-wide p9, p0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->windowDurationUs:J

    .line 295
    iput-wide p11, p0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    .line 296
    iput-wide p13, p0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->windowDefaultStartPositionUs:J

    .line 297
    iput-boolean p15, p0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->isSeekable:Z

    move/from16 p1, p16

    .line 298
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->isDynamic:Z

    move/from16 p1, p17

    .line 299
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->suppressPositionProjection:Z

    move-object/from16 p1, p18

    .line 300
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->manifest:Ljava/lang/Object;

    .line 301
    invoke-static/range {p19 .. p19}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/MediaItem;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    move-object/from16 p1, p20

    .line 302
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Lio/bidmachine/media3/common/MediaItem;)V
    .registers 35

    move-object/from16 v0, p13

    if-eqz p11, :cond_9

    .line 178
    iget-object v1, v0, Lio/bidmachine/media3/common/MediaItem;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    :goto_6
    move-object/from16 v20, v1

    goto :goto_b

    :cond_9
    const/4 v1, 0x0

    goto :goto_6

    :goto_b
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v18, p12

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    .line 165
    invoke-direct/range {v0 .. v20}, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Lio/bidmachine/media3/common/MediaItem;Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;)V

    return-void
.end method

.method public constructor <init>(JZZZLjava/lang/Object;Lio/bidmachine/media3/common/MediaItem;)V
    .registers 22

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-wide v3, p1

    move-object v0, p0

    move-wide v1, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    .line 94
    invoke-direct/range {v0 .. v13}, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Lio/bidmachine/media3/common/MediaItem;)V

    return-void
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .registers 3

    .line 358
    sget-object v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    const/4 p1, -0x1

    return p1
.end method

.method public getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 351
    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/common/util/Assertions;->checkIndex(III)I

    if-eqz p3, :cond_b

    .line 352
    sget-object p1, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    :goto_9
    move-object v2, p1

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_9

    .line 353
    :goto_d
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->periodDurationUs:J

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    neg-long v6, v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Lio/bidmachine/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public getPeriodCount()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 363
    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/common/util/Assertions;->checkIndex(III)I

    .line 364
    sget-object p1, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    return-object p1
.end method

.method public getWindow(ILio/bidmachine/media3/common/Timeline$Window;J)Lio/bidmachine/media3/common/Timeline$Window;
    .registers 29

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    .line 313
    invoke-static {v3, v1, v2}, Lio/bidmachine/media3/common/util/Assertions;->checkIndex(III)I

    .line 314
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->windowDefaultStartPositionUs:J

    .line 315
    iget-boolean v14, v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->isDynamic:Z

    if-eqz v14, :cond_2e

    iget-boolean v3, v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->suppressPositionProjection:Z

    if-nez v3, :cond_2e

    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-eqz v3, :cond_2e

    .line 316
    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->windowDurationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_27

    :goto_24
    move-wide/from16 v16, v5

    goto :goto_30

    :cond_27
    add-long v1, v1, p3

    cmp-long v3, v1, v3

    if-lez v3, :cond_2e

    goto :goto_24

    :cond_2e
    move-wide/from16 v16, v1

    .line 327
    :goto_30
    sget-object v4, Lio/bidmachine/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->manifest:Ljava/lang/Object;

    iget-wide v7, v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->presentationStartTimeMs:J

    iget-wide v9, v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->windowStartTimeMs:J

    iget-wide v11, v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->elapsedRealtimeEpochOffsetMs:J

    iget-boolean v13, v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->isSeekable:Z

    iget-object v15, v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->windowDurationUs:J

    const/16 v21, 0x0

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    const/16 v20, 0x0

    move-object/from16 v3, p2

    move-wide/from16 v22, v1

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
