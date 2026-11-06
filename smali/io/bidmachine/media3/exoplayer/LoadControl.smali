###### Class io.bidmachine.media3.exoplayer.LoadControl (io.bidmachine.media3.exoplayer.LoadControl)
.class public interface abstract Lio/bidmachine/media3/exoplayer/LoadControl;
.super Ljava/lang/Object;
.source "LoadControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;
    }
.end annotation


# static fields
.field public static final EMPTY_MEDIA_PERIOD_ID:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 140
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lio/bidmachine/media3/exoplayer/LoadControl;->EMPTY_MEDIA_PERIOD_ID:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-void
.end method


# virtual methods
.method public abstract getAllocator()Lio/bidmachine/media3/exoplayer/upstream/Allocator;
.end method

.method public getBackBufferDurationUs()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getBackBufferDurationUs not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBackBufferDurationUs(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)J
    .registers 4

    .line 286
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/LoadControl;->getBackBufferDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public onPrepared()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPrepared not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPrepared(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 2

    .line 149
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/LoadControl;->onPrepared()V

    return-void
.end method

.method public onReleased()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onReleased not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onReleased(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 2

    .line 253
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/LoadControl;->onReleased()V

    return-void
.end method

.method public onStopped()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onStopped not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStopped(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 2

    .line 233
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/LoadControl;->onStopped()V

    return-void
.end method

.method public onTracksSelected(Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .registers 4

    .line 177
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "onTracksSelected not implemented"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public retainBackBufferFromKeyframe()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "retainBackBufferFromKeyframe not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retainBackBufferFromKeyframe(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)Z
    .registers 2

    .line 320
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/LoadControl;->retainBackBufferFromKeyframe()Z

    move-result p1

    return p1
.end method

.method public shouldContinueLoading(JJF)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "shouldContinueLoading not implemented"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldContinueLoading(Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;)Z
    .registers 8

    .line 344
    iget-wide v1, p1, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->playbackPositionUs:J

    iget-wide v3, p1, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    iget v5, p1, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->playbackSpeed:F

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/LoadControl;->shouldContinueLoading(JJF)Z

    move-result p1

    return p1
.end method

.method public shouldContinuePreloading(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;J)Z
    .registers 5

    .line 371
    const-string p1, "LoadControl"

    const-string p2, "shouldContinuePreloading needs to be implemented when playlist preloading is enabled"

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public shouldStartPlayback(JFZJ)Z
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 423
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "shouldStartPlayback not implemented"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldStartPlayback(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JFZJ)Z
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object p1, p0

    move-wide p2, p3

    move p4, p5

    move p5, p6

    move-wide p6, p7

    .line 412
    invoke-interface/range {p1 .. p7}, Lio/bidmachine/media3/exoplayer/LoadControl;->shouldStartPlayback(JFZJ)Z

    move-result p2

    return p2
.end method

.method public shouldStartPlayback(Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;)Z
    .registers 11

    .line 389
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, p1, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    iget v5, p1, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->playbackSpeed:F

    iget-boolean v6, p1, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->rebuffering:Z

    iget-wide v7, p1, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->targetLiveOffsetUs:J

    move-object v0, p0

    invoke-interface/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/LoadControl;->shouldStartPlayback(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JFZJ)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.LoadControl.Parameters (io.bidmachine.media3.exoplayer.LoadControl$Parameters)
.class public final Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;
.super Ljava/lang/Object;
.source "LoadControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/LoadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation


# instance fields
.field public final bufferedDurationUs:J

.field public final lastRebufferRealtimeMs:J

.field public final mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final playWhenReady:Z

.field public final playbackPositionUs:J

.field public final playbackSpeed:F

.field public final playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

.field public final rebuffering:Z

.field public final targetLiveOffsetUs:J

.field public final timeline:Lio/bidmachine/media3/common/Timeline;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJFZZJJ)V
    .registers 15

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    .line 122
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 123
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 124
    iput-wide p4, p0, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->playbackPositionUs:J

    .line 125
    iput-wide p6, p0, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->bufferedDurationUs:J

    .line 126
    iput p8, p0, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->playbackSpeed:F

    .line 127
    iput-boolean p9, p0, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->playWhenReady:Z

    .line 128
    iput-boolean p10, p0, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->rebuffering:Z

    .line 129
    iput-wide p11, p0, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->targetLiveOffsetUs:J

    .line 130
    iput-wide p13, p0, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;->lastRebufferRealtimeMs:J

    return-void
.end method
