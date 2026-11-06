###### Class io.bidmachine.media3.common.audio.AudioProcessorChain (io.bidmachine.media3.common.audio.AudioProcessorChain)
.class public interface abstract Lio/bidmachine/media3/common/audio/AudioProcessorChain;
.super Ljava/lang/Object;
.source "AudioProcessorChain.java"


# virtual methods
.method public abstract applyPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)Lio/bidmachine/media3/common/PlaybackParameters;
.end method

.method public abstract applySkipSilenceEnabled(Z)Z
.end method

.method public abstract getAudioProcessors()[Lio/bidmachine/media3/common/audio/AudioProcessor;
.end method

.method public abstract getMediaDuration(J)J
.end method

.method public abstract getSkippedOutputFrameCount()J
.end method
