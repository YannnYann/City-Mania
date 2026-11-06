###### Class io.bidmachine.iab.vast.VastPlaybackListener (io.bidmachine.iab.vast.VastPlaybackListener)
.class public interface abstract Lio/bidmachine/iab/vast/VastPlaybackListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract onVideoCompleted()V
.end method

.method public abstract onVideoFirstQuartile()V
.end method

.method public abstract onVideoMidpoint()V
.end method

.method public abstract onVideoPaused()V
.end method

.method public abstract onVideoResumed()V
.end method

.method public abstract onVideoSkipped()V
.end method

.method public abstract onVideoStarted(FF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "durationMs",
            "volume"
        }
    .end annotation
.end method

.method public abstract onVideoThirdQuartile()V
.end method

.method public abstract onVideoVolumeChanged(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method
