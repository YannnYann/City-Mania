###### Class io.bidmachine.media3.exoplayer.source.ClippingMediaSource (io.bidmachine.media3.exoplayer.source.ClippingMediaSource)
.class public final Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;
.super Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;,
        Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;,
        Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;
    }
.end annotation


# instance fields
.field public final allowDynamicClippingUpdates:Z

.field public final allowUnseekableMedia:Z

.field public clippingError:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

.field public clippingTimeline:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

.field public final enableInitialDiscontinuity:Z

.field public final endUs:J

.field public final mediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field public periodEndUs:J

.field public periodStartUs:J

.field public final relativeToDefaultPosition:Z

.field public final startUs:J

.field public final window:Lio/bidmachine/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;)V
    .registers 4

    .line 331
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->access$100(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;)Lio/bidmachine/media3/exoplayer/source/MediaSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSource;)V

    .line 332
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->access$200(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->startUs:J

    .line 333
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->access$300(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->endUs:J

    .line 334
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->access$400(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->enableInitialDiscontinuity:Z

    .line 335
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->access$500(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    .line 336
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->access$600(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->relativeToDefaultPosition:Z

    .line 337
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->access$700(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->allowUnseekableMedia:Z

    .line 338
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 339
    new-instance p1, Lio/bidmachine/media3/common/Timeline$Window;

    invoke-direct {p1}, Lio/bidmachine/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->window:Lio/bidmachine/media3/common/Timeline$Window;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$1;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;-><init>(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;
    .registers 12

    .line 358
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    .line 360
    invoke-interface {v1, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->createPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/upstream/Allocator;J)Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    move-result-object v1

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->enableInitialDiscontinuity:Z

    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;ZJJ)V

    .line 364
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->clippingError:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_8

    .line 353
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void

    .line 351
    :cond_8
    throw v0
.end method

.method public onChildSourceInfoRefreshed(Lio/bidmachine/media3/common/Timeline;)V
    .registers 3

    .line 386
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->clippingError:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-eqz v0, :cond_5

    return-void

    .line 389
    :cond_5
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->refreshClippedTimeline(Lio/bidmachine/media3/common/Timeline;)V

    return-void
.end method

.method public final refreshClippedTimeline(Lio/bidmachine/media3/common/Timeline;)V
    .registers 16

    .line 395
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->window:Lio/bidmachine/media3/common/Timeline$Window;

    const/4 v1, 0x0

    move-object v3, p1

    invoke-virtual {p1, v1, v0}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    .line 396
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline$Window;->getPositionInFirstPeriodUs()J

    move-result-wide v4

    .line 397
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    const-wide/high16 v6, -0x8000000000000000L

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    if-eqz v0, :cond_20

    goto :goto_2f

    .line 416
    :cond_20
    iget-wide v8, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    sub-long/2addr v8, v4

    .line 418
    iget-wide v10, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->endUs:J

    cmp-long v0, v10, v6

    if-nez v0, :cond_2a

    goto :goto_2d

    .line 420
    :cond_2a
    iget-wide v6, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    sub-long/2addr v6, v4

    :goto_2d
    move-wide v4, v8

    goto :goto_6b

    .line 398
    :cond_2f
    :goto_2f
    iget-wide v8, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->startUs:J

    .line 399
    iget-wide v10, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->endUs:J

    .line 400
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->relativeToDefaultPosition:Z

    if-eqz v0, :cond_3f

    .line 401
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v12

    add-long/2addr v8, v12

    add-long/2addr v10, v12

    :cond_3f
    add-long v12, v4, v8

    .line 405
    iput-wide v12, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    .line 407
    iget-wide v12, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->endUs:J

    cmp-long v0, v12, v6

    if-nez v0, :cond_4a

    goto :goto_4c

    :cond_4a
    add-long v6, v4, v10

    .line 409
    :goto_4c
    iput-wide v6, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    .line 410
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_55
    if-ge v2, v0, :cond_69

    .line 412
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v12, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    invoke-virtual {v4, v5, v6, v12, v13}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->updateClipping(JJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_69
    move-wide v6, v10

    goto :goto_2d

    .line 423
    :goto_6b
    :try_start_6b
    new-instance v2, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    iget-boolean v8, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->allowUnseekableMedia:Z

    invoke-direct/range {v2 .. v8}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;-><init>(Lio/bidmachine/media3/common/Timeline;JJZ)V

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;
    :try_end_74
    .catch Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException; {:try_start_6b .. :try_end_74} :catch_78

    .line 434
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/source/BaseMediaSource;->refreshSourceInfo(Lio/bidmachine/media3/common/Timeline;)V

    return-void

    :catch_78
    move-exception v0

    .line 426
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->clippingError:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 429
    :goto_7b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_93

    .line 430
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->clippingError:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->setClippingError(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    :cond_93
    return-void
.end method

.method public releasePeriod(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 3

    .line 370
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 371
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource;->releasePeriod(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    .line 372
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    if-nez p1, :cond_2b

    .line 373
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->refreshClippedTimeline(Lio/bidmachine/media3/common/Timeline;)V

    :cond_2b
    return-void
.end method

.method public releaseSourceInternal()V
    .registers 2

    .line 379
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/source/CompositeMediaSource;->releaseSourceInternal()V

    const/4 v0, 0x0

    .line 380
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->clippingError:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    .line 381
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.ClippingMediaSource.AnonymousClass1 (io.bidmachine.media3.exoplayer.source.ClippingMediaSource$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$1;
.super Ljava/lang/Object;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.source.ClippingMediaSource.Builder (io.bidmachine.media3.exoplayer.source.ClippingMediaSource$Builder)
.class public final Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;
.super Ljava/lang/Object;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public allowDynamicClippingUpdates:Z

.field public allowUnseekableMedia:Z

.field public buildCalled:Z

.field public enableInitialDiscontinuity:Z

.field public endPositionUs:J

.field public final mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

.field public relativeToDefaultPosition:Z

.field public startPositionUs:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaSource;)V
    .registers 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSource;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->enableInitialDiscontinuity:Z

    const-wide/high16 v0, -0x8000000000000000L

    .line 71
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->endPositionUs:J

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;)Lio/bidmachine/media3/exoplayer/source/MediaSource;
    .registers 1

    .line 51
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    return-object p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;)J
    .registers 3

    .line 51
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->startPositionUs:J

    return-wide v0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;)J
    .registers 3

    .line 51
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->endPositionUs:J

    return-wide v0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->enableInitialDiscontinuity:Z

    return p0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->allowDynamicClippingUpdates:Z

    return p0
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->relativeToDefaultPosition:Z

    return p0
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->allowUnseekableMedia:Z

    return p0
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;
    .registers 3

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->buildCalled:Z

    .line 221
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;-><init>(Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$1;)V

    return-object v0
.end method

.method public setAllowDynamicClippingUpdates(Z)Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;
    .registers 3

    .line 177
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 178
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->allowDynamicClippingUpdates:Z

    return-object p0
.end method

.method public setEnableInitialDiscontinuity(Z)Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;
    .registers 3

    .line 159
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 160
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->enableInitialDiscontinuity:Z

    return-object p0
.end method

.method public setEndPositionUs(J)Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;
    .registers 4

    .line 138
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 139
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->endPositionUs:J

    return-object p0
.end method

.method public setRelativeToDefaultPosition(Z)Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;
    .registers 3

    .line 194
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 195
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->relativeToDefaultPosition:Z

    return-object p0
.end method

.method public setStartPositionUs(J)Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 99
    :goto_a
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 100
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->buildCalled:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 101
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$Builder;->startPositionUs:J

    return-object p0
.end method

###### Class io.bidmachine.media3.exoplayer.source.ClippingMediaSource.ClippingTimeline (io.bidmachine.media3.exoplayer.source.ClippingMediaSource$ClippingTimeline)
.class public final Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;
.super Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClippingTimeline"
.end annotation


# instance fields
.field public final durationUs:J

.field public final endUs:J

.field public final isDynamic:Z

.field public final startUs:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/Timeline;JJZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;
        }
    .end annotation

    .line 458
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;-><init>(Lio/bidmachine/media3/common/Timeline;)V

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p4, v0

    if-eqz v0, :cond_d

    cmp-long v1, p4, p2

    if-ltz v1, :cond_10

    :cond_d
    move-wide v1, p4

    move-wide p3, p2

    goto :goto_19

    .line 460
    :cond_10
    new-instance p1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    move-wide p5, p4

    move-wide p3, p2

    const/4 p2, 0x2

    invoke-direct/range {p1 .. p6}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(IJJ)V

    throw p1

    .line 463
    :goto_19
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline;->getPeriodCount()I

    move-result p2

    const/4 p5, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_83

    .line 466
    new-instance p2, Lio/bidmachine/media3/common/Timeline$Window;

    invoke-direct {p2}, Lio/bidmachine/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {p1, p5, p2}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object p1

    const-wide/16 v4, 0x0

    .line 467
    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    if-nez p6, :cond_45

    .line 468
    iget-boolean p4, p1, Lio/bidmachine/media3/common/Timeline$Window;->isPlaceholder:Z

    if-nez p4, :cond_45

    cmp-long p4, p2, v4

    if-eqz p4, :cond_45

    iget-boolean p4, p1, Lio/bidmachine/media3/common/Timeline$Window;->isSeekable:Z

    if-eqz p4, :cond_3f

    goto :goto_45

    .line 469
    :cond_3f
    new-instance p1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p1, v3}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1

    :cond_45
    :goto_45
    if-nez v0, :cond_4a

    .line 471
    iget-wide v0, p1, Lio/bidmachine/media3/common/Timeline$Window;->durationUs:J

    goto :goto_4e

    :cond_4a
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 472
    :goto_4e
    iget-wide v4, p1, Lio/bidmachine/media3/common/Timeline$Window;->durationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p4, v4, v6

    if-eqz p4, :cond_63

    cmp-long p4, v0, v4

    if-lez p4, :cond_5e

    move-wide v0, v4

    :cond_5e
    cmp-long p4, p2, v0

    if-lez p4, :cond_63

    move-wide p2, v0

    .line 480
    :cond_63
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    .line 481
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long p4, v0, v6

    if-nez p4, :cond_6d

    move-wide p2, v6

    goto :goto_6f

    :cond_6d
    sub-long p2, v0, p2

    .line 482
    :goto_6f
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    .line 483
    iget-boolean p1, p1, Lio/bidmachine/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz p1, :cond_80

    if-eqz p4, :cond_7f

    cmp-long p1, v4, v6

    if-eqz p1, :cond_80

    cmp-long p1, v0, v4

    if-nez p1, :cond_80

    :cond_7f
    move p5, v3

    :cond_80
    iput-boolean p5, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->isDynamic:Z

    return-void

    .line 464
    :cond_83
    new-instance p1, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p1, p5}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;
    .registers 16

    .line 513
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;->timeline:Lio/bidmachine/media3/common/Timeline;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;

    .line 514
    invoke-virtual {p2}, Lio/bidmachine/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long v10, v0, v2

    .line 516
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_1b

    :goto_19
    move-wide v8, v2

    goto :goto_1e

    :cond_1b
    sub-long v2, v0, v10

    goto :goto_19

    .line 517
    :goto_1e
    iget-object v5, p2, Lio/bidmachine/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v6, p2, Lio/bidmachine/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v4, p2

    invoke-virtual/range {v4 .. v11}, Lio/bidmachine/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public getWindow(ILio/bidmachine/media3/common/Timeline$Window;J)Lio/bidmachine/media3/common/Timeline$Window;
    .registers 9

    .line 491
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/ForwardingTimeline;->timeline:Lio/bidmachine/media3/common/Timeline;

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, p2, v0, v1}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;J)Lio/bidmachine/media3/common/Timeline$Window;

    .line 492
    iget-wide p3, p2, Lio/bidmachine/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    add-long/2addr p3, v0

    iput-wide p3, p2, Lio/bidmachine/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    .line 493
    iget-wide p3, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    iput-wide p3, p2, Lio/bidmachine/media3/common/Timeline$Window;->durationUs:J

    .line 494
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->isDynamic:Z

    iput-boolean p1, p2, Lio/bidmachine/media3/common/Timeline$Window;->isDynamic:Z

    .line 495
    iget-wide p3, p2, Lio/bidmachine/media3/common/Timeline$Window;->defaultPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v2

    if-eqz p1, :cond_38

    .line 496
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Lio/bidmachine/media3/common/Timeline$Window;->defaultPositionUs:J

    .line 498
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2f

    goto :goto_33

    :cond_2f
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    .line 499
    :goto_33
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long/2addr p3, v0

    iput-wide p3, p2, Lio/bidmachine/media3/common/Timeline$Window;->defaultPositionUs:J

    .line 501
    :cond_38
    iget-wide p3, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {p3, p4}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide p3

    .line 502
    iget-wide v0, p2, Lio/bidmachine/media3/common/Timeline$Window;->presentationStartTimeMs:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_47

    add-long/2addr v0, p3

    .line 503
    iput-wide v0, p2, Lio/bidmachine/media3/common/Timeline$Window;->presentationStartTimeMs:J

    .line 505
    :cond_47
    iget-wide v0, p2, Lio/bidmachine/media3/common/Timeline$Window;->windowStartTimeMs:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_50

    add-long/2addr v0, p3

    .line 506
    iput-wide v0, p2, Lio/bidmachine/media3/common/Timeline$Window;->windowStartTimeMs:J

    :cond_50
    return-object p2
.end method

###### Class io.bidmachine.media3.exoplayer.source.ClippingMediaSource.IllegalClippingException (io.bidmachine.media3.exoplayer.source.ClippingMediaSource$IllegalClippingException)
.class public final Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;
.super Ljava/io/IOException;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IllegalClippingException"
.end annotation


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .registers 8

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move v1, p1

    .line 254
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(IJJ)V

    return-void
.end method

.method public constructor <init>(IJJ)V
    .registers 8

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal clipping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3, p4, p5}, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;->getReasonDescription(IJJ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 259
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;->reason:I

    return-void
.end method

.method public static getReasonDescription(IJJ)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_3a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_37

    const/4 v1, 0x2

    if-eq p0, v1, :cond_b

    .line 272
    const-string p0, "unknown"

    return-object p0

    :cond_b
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p1, v1

    if-eqz p0, :cond_19

    cmp-long p0, p3, v1

    if-eqz p0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 269
    :goto_1a
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 270
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start exceeds end. Start time: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", End time: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 267
    :cond_37
    const-string p0, "not seekable to start"

    return-object p0

    .line 265
    :cond_3a
    const-string p0, "invalid period count"

    return-object p0
.end method
