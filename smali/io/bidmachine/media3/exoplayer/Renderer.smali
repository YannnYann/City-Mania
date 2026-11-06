###### Class io.bidmachine.media3.exoplayer.Renderer (io.bidmachine.media3.exoplayer.Renderer)
.class public interface abstract Lio/bidmachine/media3/exoplayer/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;
    }
.end annotation


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable(Lio/bidmachine/media3/exoplayer/RendererConfiguration;[Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/source/SampleStream;JZZJJLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public enableMayRenderStartOfStream()V
    .registers 1

    .line 0
    return-void
.end method

.method public abstract getCapabilities()Lio/bidmachine/media3/exoplayer/RendererCapabilities;
.end method

.method public getDurationToProgressUs(JJ)J
    .registers 5

    .line 0
    const-wide/16 p1, 0x2710

    return-wide p1
.end method

.method public abstract getMediaClock()Lio/bidmachine/media3/exoplayer/MediaClock;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getReadingPositionUs()J
.end method

.method public abstract getState()I
.end method

.method public abstract getStream()Lio/bidmachine/media3/exoplayer/source/SampleStream;
.end method

.method public abstract getTrackType()I
.end method

.method public abstract hasReadStreamToEnd()Z
.end method

.method public abstract init(ILio/bidmachine/media3/exoplayer/analytics/PlayerId;Lio/bidmachine/media3/common/util/Clock;)V
.end method

.method public abstract isCurrentStreamFinal()Z
.end method

.method public abstract isEnded()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract maybeThrowStreamError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public abstract render(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract replaceStream([Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/source/SampleStream;JJLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract resetPosition(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract setCurrentStreamFinal()V
.end method

.method public setPlaybackSpeed(FF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public abstract setTimeline(Lio/bidmachine/media3/common/Timeline;)V
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method

###### Class io.bidmachine.media3.exoplayer.Renderer.WakeupListener (io.bidmachine.media3.exoplayer.Renderer$WakeupListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WakeupListener"
.end annotation


# virtual methods
.method public abstract onSleep()V
.end method

.method public abstract onWakeup()V
.end method
