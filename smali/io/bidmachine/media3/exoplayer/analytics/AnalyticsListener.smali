###### Class io.bidmachine.media3.exoplayer.analytics.AnalyticsListener (io.bidmachine.media3.exoplayer.analytics.AnalyticsListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;,
        Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$Events;
    }
.end annotation


# virtual methods
.method public onAudioCodecError(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onAudioDecoderInitialized(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public onAudioDecoderInitialized(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .registers 7

    .line 0
    return-void
.end method

.method public onAudioDecoderReleased(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onAudioDisabled(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onAudioEnabled(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onAudioInputFormatChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V
    .registers 4

    .line 0
    return-void
.end method

.method public onAudioPositionAdvancing(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .registers 4

    .line 0
    return-void
.end method

.method public onAudioSessionIdChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onAudioSinkError(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onAudioTrackInitialized(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onAudioTrackReleased(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onAudioUnderrun(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .registers 7

    .line 0
    return-void
.end method

.method public onAvailableCommandsChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Player$Commands;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onBandwidthEstimate(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .registers 7

    .line 0
    return-void
.end method

.method public onCues(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/text/CueGroup;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onCues(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public onDeviceInfoChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/DeviceInfo;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onDeviceVolumeChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZ)V
    .registers 4

    .line 0
    return-void
.end method

.method public onDownstreamFormatChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onDrmKeysLoaded(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDrmKeysRemoved(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDrmKeysRestored(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDrmSessionAcquired(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public onDrmSessionAcquired(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onDrmSessionManagerError(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onDrmSessionReleased(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDroppedVideoFrames(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V
    .registers 5

    .line 0
    return-void
.end method

.method public onEvents(Lio/bidmachine/media3/common/Player;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$Events;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onIsLoadingChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    .line 0
    return-void
.end method

.method public onIsPlayingChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    .line 0
    return-void
.end method

.method public onLoadCanceled(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 0
    return-void
.end method

.method public onLoadCompleted(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 0
    return-void
.end method

.method public onLoadError(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 6

    .line 0
    return-void
.end method

.method public onLoadStarted(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public onLoadStarted(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V
    .registers 5

    .line 0
    return-void
.end method

.method public onLoadingChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public onMediaItemTransition(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/MediaItem;I)V
    .registers 4

    .line 0
    return-void
.end method

.method public onMediaMetadataChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/MediaMetadata;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onMetadata(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Metadata;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onPlayWhenReadyChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V
    .registers 4

    .line 0
    return-void
.end method

.method public onPlaybackParametersChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/PlaybackParameters;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onPlaybackStateChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onPlayerError(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/PlaybackException;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onPlayerErrorChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/PlaybackException;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onPlayerReleased(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onPlayerStateChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public onPositionDiscontinuity(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public onPositionDiscontinuity(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/common/Player$PositionInfo;I)V
    .registers 5

    .line 0
    return-void
.end method

.method public onRenderedFirstFrame(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .registers 5

    .line 0
    return-void
.end method

.method public onRendererReadyChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIZ)V
    .registers 5

    .line 0
    return-void
.end method

.method public onRepeatModeChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSeekStarted(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public onShuffleModeChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    .line 0
    return-void
.end method

.method public onSurfaceSizeChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;II)V
    .registers 4

    .line 0
    return-void
.end method

.method public onTimelineChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onTrackSelectionParametersChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/TrackSelectionParameters;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onTracksChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Tracks;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onUpstreamDiscarded(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onVideoCodecError(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onVideoDecoderInitialized(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public onVideoDecoderInitialized(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .registers 7

    .line 0
    return-void
.end method

.method public onVideoDecoderReleased(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onVideoDisabled(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onVideoEnabled(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onVideoFrameProcessingOffset(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;JI)V
    .registers 5

    .line 0
    return-void
.end method

.method public onVideoInputFormatChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V
    .registers 4

    .line 0
    return-void
.end method

.method public onVideoSizeChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIIF)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 0
    return-void
.end method

.method public onVideoSizeChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/VideoSize;)V
    .registers 3

    .line 0
    return-void
.end method

.method public onVolumeChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;F)V
    .registers 3

    .line 0
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.AnalyticsListener.EventTime (io.bidmachine.media3.exoplayer.analytics.AnalyticsListener$EventTime)
.class public final Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTime"
.end annotation


# instance fields
.field public final currentMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final currentPlaybackPositionMs:J

.field public final currentTimeline:Lio/bidmachine/media3/common/Timeline;

.field public final currentWindowIndex:I

.field public final eventPlaybackPositionMs:J

.field public final mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final realtimeMs:J

.field public final timeline:Lio/bidmachine/media3/common/Timeline;

.field public final totalBufferedDurationMs:J

.field public final windowIndex:I


# direct methods
.method public constructor <init>(JLio/bidmachine/media3/common/Timeline;ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JLio/bidmachine/media3/common/Timeline;ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)V
    .registers 15

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    .line 549
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 550
    iput p4, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    .line 551
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 552
    iput-wide p6, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    .line 553
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentTimeline:Lio/bidmachine/media3/common/Timeline;

    .line 554
    iput p9, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    .line 555
    iput-object p10, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 556
    iput-wide p11, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    .line 557
    iput-wide p13, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_67

    .line 565
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    if-eq v3, v2, :cond_10

    goto :goto_67

    .line 568
    :cond_10
    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 569
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_67

    iget v2, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    if-ne v2, v3, :cond_67

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_67

    iget v2, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    if-ne v2, v3, :cond_67

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_67

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_67

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 575
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 576
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentTimeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentTimeline:Lio/bidmachine/media3/common/Timeline;

    .line 577
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 578
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    return v0

    :cond_67
    :goto_67
    return v1
.end method

.method public hashCode()I
    .registers 13

    .line 583
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    .line 584
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget v0, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    .line 586
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    .line 588
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentTimeline:Lio/bidmachine/media3/common/Timeline;

    iget v0, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    .line 590
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    .line 592
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    .line 593
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 583
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.AnalyticsListener.Events (io.bidmachine.media3.exoplayer.analytics.AnalyticsListener$Events)
.class public final Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$Events;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# instance fields
.field public final eventTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;",
            ">;"
        }
    .end annotation
.end field

.field public final flags:Lio/bidmachine/media3/common/FlagSet;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/FlagSet;Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/FlagSet;",
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$Events;->flags:Lio/bidmachine/media3/common/FlagSet;

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/FlagSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    .line 106
    :goto_f
    invoke-virtual {p1}, Lio/bidmachine/media3/common/FlagSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 107
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/FlagSet;->get(I)I

    move-result v2

    .line 108
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 110
    :cond_2b
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$Events;->eventTimes:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .registers 3

    .line 130
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$Events;->flags:Lio/bidmachine/media3/common/FlagSet;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/FlagSet;->contains(I)Z

    move-result p1

    return p1
.end method

.method public get(I)I
    .registers 3

    .line 158
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$Events;->flags:Lio/bidmachine/media3/common/FlagSet;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/FlagSet;->get(I)I

    move-result p1

    return p1
.end method

.method public getEventTime(I)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .registers 3

    .line 120
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$Events;->eventTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 145
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$Events;->flags:Lio/bidmachine/media3/common/FlagSet;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/FlagSet;->size()I

    move-result v0

    return v0
.end method
