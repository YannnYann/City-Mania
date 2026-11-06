###### Class io.bidmachine.media3.exoplayer.MediaClock (io.bidmachine.media3.exoplayer.MediaClock)
.class public interface abstract Lio/bidmachine/media3/exoplayer/MediaClock;
.super Ljava/lang/Object;
.source "MediaClock.java"


# virtual methods
.method public abstract getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;
.end method

.method public abstract getPositionUs()J
.end method

.method public hasSkippedSilenceSinceLastCall()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)V
.end method
