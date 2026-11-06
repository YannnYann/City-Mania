###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector)
.class public Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;
.super Ljava/lang/Object;
.source "DefaultAnalyticsCollector.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;
    }
.end annotation


# instance fields
.field public final clock:Lio/bidmachine/media3/common/util/Clock;

.field public final eventTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;",
            ">;"
        }
    .end annotation
.end field

.field public handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

.field public isSeeking:Z

.field public listeners:Lio/bidmachine/media3/common/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/common/util/ListenerSet<",
            "Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaPeriodQueueTracker:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

.field public final period:Lio/bidmachine/media3/common/Timeline$Period;

.field public player:Lio/bidmachine/media3/common/Player;

.field public final window:Lio/bidmachine/media3/common/Timeline$Window;


# direct methods
.method public static synthetic $r8$lambda$-qYmsGUidgIqSMakQVy-FyK_X-w(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 250
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onAudioDisabled(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1HwIpMSwtl9e9iLy0tBPUTLxhaM(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 259
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onAudioSinkError(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2ALC2_KEukf8cANVjIlczIax1gk(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 4

    .line 331
    invoke-interface {p3, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onVideoInputFormatChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2QtA14OjGJ-XHyXLXLmn77lqbRk(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;ZLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 7

    move-object v0, p1

    move-object p1, p0

    move-object p0, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, v0

    .line 458
    invoke-interface/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onLoadError(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$4CecTQs6GPGn_qa9swTFKXanMyM(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 608
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onShuffleModeChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$4JRGkB71M2U1vS1JQ1r1iyjugAU(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 725
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onCues(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5_7srVXN732ChJ1NU6Vtxt9-Ibk(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;Lio/bidmachine/media3/common/FlagSet;)V
    .registers 2

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$74i5mdGxbiISuLIzy5QujP_lh2g(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/DeviceInfo;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 795
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onDeviceInfoChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/DeviceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7RukSB7CchKf0GLabB23lnwLF_A(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 494
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onTimelineChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$C3PITMjSEkwyTgEWHgvUD6TE_W4(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 4

    .line 395
    invoke-interface {p3, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onSurfaceSizeChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$CLRirvPVwoQk1AS_msPBYsDCIGg(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/TrackSelectionParameters;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 786
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onTrackSelectionParametersChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CQ4lfcXQ7d_TlXK9iS8YifS80OI(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 277
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onAudioTrackInitialized(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CUCgPgACcQOp7PJo7RHPRxLG7dw(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 5

    .line 340
    invoke-interface {p4, p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onDroppedVideoFrames(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$F9bitHMf1ehCHJEpQ6qfxCdmxTM(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 10

    .line 318
    invoke-interface {p6, p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onVideoDecoderInitialized(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    move-object v0, p1

    move-object p1, p0

    move-object p0, p6

    move-wide v1, p2

    move-object p2, v0

    move-wide p3, p4

    move-wide p5, v1

    .line 319
    invoke-interface/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onVideoDecoderInitialized(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$FYvdVEh4qLeiVOWSZwzlHkoWbYk(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 358
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onVideoDisabled(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FtdkMvmC39S-FKxhd2K4Q2xkgr0(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/PlaybackException;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 626
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onPlayerErrorChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/PlaybackException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GOqCQaCHoC_zahpby7p-l02wH3Y(Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->releaseInternal()V

    return-void
.end method

.method public static synthetic $r8$lambda$K-Y6HHJ_O91fSd4wbgRLerM9iMs(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/MediaItem;ILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 4

    .line 504
    invoke-interface {p3, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onMediaItemTransition(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/MediaItem;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LLHpt18irVGk0OzhZfMdUZr6Gq8(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/text/CueGroup;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 732
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onCues(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/text/CueGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LZEFgNMNuKF0zVd_6nQjPAsA_Lw(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 468
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onUpstreamDiscarded(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LpxvMQhH7s_qmFOVICcIEs0iMvg(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 306
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onVideoEnabled(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OCp1lQ6hshHYqHJfPEFwJFbLn4k(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 530
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onLoadingChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    .line 531
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onIsLoadingChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$OalYX0vJaFmMuj7IS8kRXm1sGnI(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Player$Commands;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 541
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onAvailableCommandsChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Player$Commands;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OvB4cpHoq1elGUFJwUS920LhqBc(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 560
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onPlaybackStateChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q5t_ENkgmX3slze7BcEKeqLPerA(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 8

    move v0, p1

    move-object p1, p0

    move-object p0, p6

    move-wide p5, p4

    move-wide p3, p2

    move p2, v0

    .line 232
    invoke-interface/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onAudioUnderrun(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QH4t3KRteHz-a0MFB-sAzrFjo7Y(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 4

    .line 212
    invoke-interface {p3, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onAudioInputFormatChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QeeauaSRc3vv6dvKR2Gg2N70e1Y(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 841
    invoke-interface {p2, p0}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onDrmSessionAcquired(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    .line 842
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onDrmSessionAcquired(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$S-wlKrDl3Pwx29LK8YGpuBByTec(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/PlaybackException;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 617
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onPlayerError(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/PlaybackException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SUdox5-B8-rTBtdf2oYZTpsjB2U(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 741
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onSkipSilenceEnabledChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$TM_ngfHszrWPdIgYZIq6xlKgOnY(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;JILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 5

    .line 377
    invoke-interface {p4, p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onVideoFrameProcessingOffset(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$TRqWe_jA24QEhsSe0dKVUXMoMdE(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 581
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onPlaybackSuppressionReasonChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TamLbUxLN-hI28jRDbuazg-IlJI(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/MediaMetadata;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 699
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onMediaMetadataChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/MediaMetadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UyPVJJWKTdVAf4cX96ON5LQNQ4A(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 8

    move v0, p1

    move-object p1, p0

    move-object p0, p6

    move-wide p5, p4

    move-wide p3, p2

    move p2, v0

    .line 827
    invoke-interface/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onBandwidthEstimate(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$VgoOgwq5B91Fa1tYXlKwZb062O4(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 862
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onDrmSessionManagerError(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XMVHUKwa4t0uwPAIOs5vU6v71u0(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;JLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 4

    .line 221
    invoke-interface {p3, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onAudioPositionAdvancing(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$XUHqSVkCxSFtD7ciaqDdNs3lIso(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 4

    .line 429
    invoke-interface {p3, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onLoadCompleted(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ym0gsfmV-VjFzBGwK749FRtM2vQ(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 2

    .line 871
    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onDrmKeysRestored(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YssNwklUeKxKdmzooWeOFKawGqY(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 2

    .line 961
    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onPlayerReleased(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_IcGn607494qD0-QLEUHbozK40k(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Metadata;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 717
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onMetadata(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Metadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_fJKQNkh4-p5jyj8sxp07or8Z9I(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 478
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onDownstreamFormatChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_w5Q0O6L-WlJTEYXmyDad5A5rno(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 4

    .line 442
    invoke-interface {p3, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onLoadCanceled(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aTVqy1Xf66JaY8Kw9S0zPj1NrbE(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 187
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onAudioEnabled(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bJRvsWVqUTrvOf8E7gyFIxGHdbs(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;FLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 295
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onVolumeChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$brZR7h3mYffi4uTnBNhrTBDJj2Y(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 349
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onVideoDecoderReleased(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cnUhcUg8tR8bRtmpQf-6QJ430s0(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/PlaybackParameters;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 662
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onPlaybackParametersChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d9e3vML1AoCAU_G4WyKZPEByONM(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 268
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onAudioCodecError(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fRJECXYhFznEWDfF_L7In-zCmbw(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 5

    .line 651
    invoke-interface {p4, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onPositionDiscontinuity(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    .line 652
    invoke-interface {p4, p0, p2, p3, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onPositionDiscontinuity(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fj-nSGoFysYnLxDcWc2BmxoDkkM(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 2

    .line 163
    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onSeekStarted(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jAMgeF-xjou60f4x_uXb2Dv--9w(Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;Lio/bidmachine/media3/common/Player;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;Lio/bidmachine/media3/common/FlagSet;)V
    .registers 5

    .line 137
    new-instance v0, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$Events;

    .line 137
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    .line 137
    invoke-direct {v0, p3, p0}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$Events;-><init>(Lio/bidmachine/media3/common/FlagSet;Landroid/util/SparseArray;)V

    invoke-interface {p2, p1, v0}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onEvents(Lio/bidmachine/media3/common/Player;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$Events;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jfMZnIkVV4VjOxe4l0VrHxrq9n0(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 286
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onAudioTrackReleased(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k5JDQ8cb9F8Rs0bO4585Jpr_VVA(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 590
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onIsPlayingChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$kXqRfr-_SlygPZy34zNqsK7QOYg(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/VideoSize;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 9

    .line 770
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onVideoSizeChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/VideoSize;)V

    .line 771
    iget v2, p1, Lio/bidmachine/media3/common/VideoSize;->width:I

    iget v3, p1, Lio/bidmachine/media3/common/VideoSize;->height:I

    const/4 v4, 0x0

    iget v5, p1, Lio/bidmachine/media3/common/VideoSize;->pixelWidthHeightRatio:F

    move-object v1, p0

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onVideoSizeChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIIF)V

    return-void
.end method

.method public static synthetic $r8$lambda$k_XPasciB1PuySpihta6RwAFS7Y(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 750
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onAudioSessionIdChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mPYcjW5PhpyqtlhBE7WRtXXRbfI(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 2

    .line 852
    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onDrmKeysLoaded(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oHs6aRb1PbEqmmW2c1jmTRlU_Lo(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;ILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 5

    .line 414
    invoke-interface {p4, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onLoadStarted(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    .line 415
    invoke-interface {p4, p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onLoadStarted(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$p2-5Z7WwfH66D8bw1gzazWV7qcI(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 4

    .line 551
    invoke-interface {p3, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onPlayerStateChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$rFIUrhNmilA68ECOOE9ZiIwV_f4(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 241
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onAudioDecoderReleased(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rfiopo7n2TPHmILS7UHj0oCvNOE(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Tracks;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 513
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onTracksChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Tracks;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s39KknQzbv1PpdVRSiBMfxf2VDs(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 386
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onVideoCodecError(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tohfuEa3R1t_9auqomBW7sMYYMg(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 10

    .line 199
    invoke-interface {p6, p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onAudioDecoderInitialized(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    move-object v0, p1

    move-object p1, p0

    move-object p0, p6

    move-wide v1, p2

    move-object p2, v0

    move-wide p3, p4

    move-wide p5, v1

    .line 200
    invoke-interface/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onAudioDecoderInitialized(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$uBpfeQIN7wDlqJqI96pGXAMMkdg(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIZLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 5

    .line 175
    invoke-interface {p4, p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onRendererReadyChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$wN4NFGTaNZGvEb5c8pH_LjFbB2o(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 2

    .line 880
    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onDrmKeysRemoved(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public static synthetic $r8$lambda$whFZbkR1nEHsZqELK3rbgsPsvhg(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 599
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onRepeatModeChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$x6f3WpLdQTtNkjzPFR96CnfJ-T8(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 4

    .line 570
    invoke-interface {p3, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onPlayWhenReadyChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$xpc4RrDtduYGz0VSJa_cPVbEneo(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 4

    .line 804
    invoke-interface {p3, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onDeviceVolumeChanged(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$xrMzO6LT_4XpgQ2jHi-5eBgWBEA(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;JLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 5

    .line 367
    invoke-interface {p4, p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onRenderedFirstFrame(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$xtQpZwNZzYasfdr9mUR2_QgAUQE(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 2

    .line 889
    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;->onDrmSessionReleased(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/util/Clock;)V
    .registers 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/util/Clock;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->clock:Lio/bidmachine/media3/common/util/Clock;

    .line 93
    new-instance v0, Lio/bidmachine/media3/common/util/ListenerSet;

    invoke-static {}, Lio/bidmachine/media3/common/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Lio/bidmachine/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    .line 94
    new-instance p1, Lio/bidmachine/media3/common/Timeline$Period;

    invoke-direct {p1}, Lio/bidmachine/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 95
    new-instance v0, Lio/bidmachine/media3/common/Timeline$Window;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->window:Lio/bidmachine/media3/common/Timeline$Window;

    .line 96
    new-instance v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;-><init>(Lio/bidmachine/media3/common/Timeline$Period;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 97
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public addListener(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 117
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .registers 2

    .line 910
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getCurrentPlayerMediaPeriod()Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method public final generateEventTime(Lio/bidmachine/media3/common/Timeline;ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    .line 917
    invoke-virtual {v4}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_11

    :cond_f
    move-object/from16 v6, p3

    .line 921
    :goto_11
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {v1}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 923
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    .line 924
    invoke-interface {v1}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v4, v1}, Lio/bidmachine/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    .line 925
    invoke-interface {v1}, Lio/bidmachine/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    if-ne v5, v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    const-wide/16 v7, 0x0

    if-eqz v6, :cond_55

    .line 926
    invoke-virtual {v6}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v9

    if-eqz v9, :cond_55

    if-eqz v1, :cond_6f

    .line 927
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    .line 929
    invoke-interface {v1}, Lio/bidmachine/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v1

    iget v9, v6, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v1, v9, :cond_6f

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    .line 930
    invoke-interface {v1}, Lio/bidmachine/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v1

    iget v9, v6, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v1, v9, :cond_6f

    .line 932
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    invoke-interface {v1}, Lio/bidmachine/media3/common/Player;->getCurrentPosition()J

    move-result-wide v7

    goto :goto_6f

    :cond_55
    if-eqz v1, :cond_5e

    .line 934
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    invoke-interface {v1}, Lio/bidmachine/media3/common/Player;->getContentPosition()J

    move-result-wide v7

    goto :goto_6f

    .line 939
    :cond_5e
    invoke-virtual {v4}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_65

    goto :goto_6f

    :cond_65
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v4, v5, v1}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v7

    .line 942
    :cond_6f
    :goto_6f
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getCurrentPlayerMediaPeriod()Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v11

    .line 943
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    .line 949
    invoke-interface {v9}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v9

    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    .line 950
    invoke-interface {v10}, Lio/bidmachine/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v10

    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    .line 952
    invoke-interface {v12}, Lio/bidmachine/media3/common/Player;->getCurrentPosition()J

    move-result-wide v12

    iget-object v14, v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    .line 953
    invoke-interface {v14}, Lio/bidmachine/media3/common/Player;->getTotalBufferedDuration()J

    move-result-wide v14

    invoke-direct/range {v1 .. v15}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;-><init>(JLio/bidmachine/media3/common/Timeline;ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JLio/bidmachine/media3/common/Timeline;ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)V

    return-object v1
.end method

.method public final generateEventTime(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .registers 5

    .line 966
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_a

    move-object v1, v0

    goto :goto_10

    .line 971
    :cond_a
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getMediaPeriodIdTimeline(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/common/Timeline;

    move-result-object v1

    :goto_10
    if-eqz p1, :cond_24

    if-nez v1, :cond_15

    goto :goto_24

    .line 979
    :cond_15
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 980
    invoke-virtual {p0, v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Lio/bidmachine/media3/common/Timeline;ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1

    .line 973
    :cond_24
    :goto_24
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    invoke-interface {p1}, Lio/bidmachine/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result p1

    .line 974
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    invoke-interface {v1}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v1

    .line 975
    invoke-virtual {v1}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v2

    if-ge p1, v2, :cond_37

    goto :goto_39

    .line 977
    :cond_37
    sget-object v1, Lio/bidmachine/media3/common/Timeline;->EMPTY:Lio/bidmachine/media3/common/Timeline;

    .line 976
    :goto_39
    invoke-virtual {p0, v1, p1, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Lio/bidmachine/media3/common/Timeline;ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1
.end method

.method public final generateLoadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .registers 2

    .line 992
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getLoadingMediaPeriod()Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method public final generateMediaPeriodEventTime(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .registers 4

    .line 997
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1b

    .line 999
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 1000
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getMediaPeriodIdTimeline(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/common/Timeline;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1002
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1

    .line 1003
    :cond_14
    sget-object v0, Lio/bidmachine/media3/common/Timeline;->EMPTY:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {p0, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Lio/bidmachine/media3/common/Timeline;ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1

    .line 1005
    :cond_1b
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    invoke-interface {p2}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object p2

    .line 1006
    invoke-virtual {p2}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-ge p1, v0, :cond_28

    goto :goto_2a

    .line 1008
    :cond_28
    sget-object p2, Lio/bidmachine/media3/common/Timeline;->EMPTY:Lio/bidmachine/media3/common/Timeline;

    :goto_2a
    const/4 v0, 0x0

    .line 1007
    invoke-virtual {p0, p2, p1, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Lio/bidmachine/media3/common/Timeline;ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1
.end method

.method public final generatePlayingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .registers 2

    .line 984
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getPlayingMediaPeriod()Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method public final generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .registers 2

    .line 988
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getReadingMediaPeriod()Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    return-object v0
.end method

.method public final getEventTimeForErrorEvent(Lio/bidmachine/media3/common/PlaybackException;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .registers 3

    .line 1012
    instance-of v0, p1, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    if-eqz v0, :cond_f

    .line 1013
    check-cast p1, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 1014
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->mediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz p1, :cond_f

    .line 1015
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1

    .line 1018
    :cond_f
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    return-object p1
.end method

.method public final notifySeekStarted()V
    .registers 4

    .line 159
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    if-nez v0, :cond_14

    .line 160
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    const/4 v1, 0x1

    .line 161
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    .line 162
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda19;

    invoke-direct {v1, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda19;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    :cond_14
    return-void
.end method

.method public final onAudioCodecError(Ljava/lang/Exception;)V
    .registers 4

    .line 264
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 265
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 p1, 0x405

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 13

    .line 194
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    .line 195
    new-instance v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda20;

    move-object v2, p1

    move-wide v5, p2

    move-wide v3, p4

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda20;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f0

    invoke-virtual {p0, v1, p1, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioDecoderReleased(Ljava/lang/String;)V
    .registers 4

    .line 237
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 238
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    const/16 p1, 0x3f4

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioDisabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 4

    .line 246
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 247
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda31;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda31;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    const/16 p1, 0x3f5

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioEnabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 4

    .line 183
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 184
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda54;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda54;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    const/16 p1, 0x3ef

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioInputFormatChanged(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V
    .registers 5

    .line 208
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 209
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;

    invoke-direct {v1, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V

    const/16 p1, 0x3f1

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioPositionAdvancing(J)V
    .registers 5

    .line 217
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 218
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda51;

    invoke-direct {v1, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda51;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V

    const/16 p1, 0x3f2

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioSessionIdChanged(I)V
    .registers 4

    .line 746
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 747
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda32;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda32;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/16 p1, 0x15

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioSinkError(Ljava/lang/Exception;)V
    .registers 4

    .line 255
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 256
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda50;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda50;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 p1, 0x3f6

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onAudioTrackInitialized(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .registers 4

    .line 273
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 274
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda65;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda65;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    const/16 p1, 0x407

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onAudioTrackReleased(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .registers 4

    .line 282
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 283
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda59;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda59;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    const/16 p1, 0x408

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioUnderrun(IJJ)V
    .registers 13

    .line 227
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    .line 228
    new-instance v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda58;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda58;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V

    const/16 p1, 0x3f3

    invoke-virtual {p0, v1, p1, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onAvailableCommandsChanged(Lio/bidmachine/media3/common/Player$Commands;)V
    .registers 4

    .line 537
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 538
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda6;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Player$Commands;)V

    const/16 p1, 0xd

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onBandwidthSample(IJJ)V
    .registers 13

    .line 822
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateLoadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    .line 823
    new-instance v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda63;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda63;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V

    const/16 p1, 0x3ee

    invoke-virtual {p0, v1, p1, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onCues(Lio/bidmachine/media3/common/text/CueGroup;)V
    .registers 4

    .line 730
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 731
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/text/CueGroup;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 723
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 724
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onDeviceInfoChanged(Lio/bidmachine/media3/common/DeviceInfo;)V
    .registers 4

    .line 791
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 792
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda53;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda53;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/DeviceInfo;)V

    const/16 p1, 0x1d

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .registers 5

    .line 800
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 801
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda41;

    invoke-direct {v1, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda41;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZ)V

    const/16 p1, 0x1e

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDownstreamFormatChanged(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 474
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 475
    new-instance p2, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda37;

    invoke-direct {p2, p1, p3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda37;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    const/16 p3, 0x3ec

    invoke-virtual {p0, p1, p3, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmKeysLoaded(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 4

    .line 848
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 849
    new-instance p2, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda64;

    invoke-direct {p2, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda64;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    const/16 v0, 0x3ff

    invoke-virtual {p0, p1, v0, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmKeysRemoved(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 4

    .line 876
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 877
    new-instance p2, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda60;

    invoke-direct {p2, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda60;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    const/16 v0, 0x402

    invoke-virtual {p0, p1, v0, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmKeysRestored(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 4

    .line 867
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 868
    new-instance p2, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda57;

    invoke-direct {p2, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda57;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    const/16 v0, 0x401

    invoke-virtual {p0, p1, v0, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmSessionAcquired(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V
    .registers 4

    .line 836
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 837
    new-instance p2, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda45;

    invoke-direct {p2, p1, p3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda45;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/16 p3, 0x3fe

    invoke-virtual {p0, p1, p3, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmSessionManagerError(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .registers 4

    .line 858
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 859
    new-instance p2, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda52;

    invoke-direct {p2, p1, p3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda52;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 p3, 0x400

    invoke-virtual {p0, p1, p3, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmSessionReleased(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 4

    .line 885
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 886
    new-instance p2, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda47;

    invoke-direct {p2, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda47;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    const/16 v0, 0x403

    invoke-virtual {p0, p1, v0, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDroppedFrames(IJ)V
    .registers 6

    .line 336
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 337
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda49;

    invoke-direct {v1, v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda49;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V

    const/16 p1, 0x3fa

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onEvents(Lio/bidmachine/media3/common/Player;Lio/bidmachine/media3/common/Player$Events;)V
    .registers 3

    .line 0
    return-void
.end method

.method public final onIsLoadingChanged(Z)V
    .registers 4

    .line 525
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 526
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda27;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda27;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .registers 4

    .line 586
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 587
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda29;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda29;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    const/4 p1, 0x7

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onLoadCanceled(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 5

    .line 438
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 439
    new-instance p2, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda43;

    invoke-direct {p2, p1, p3, p4}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda43;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    const/16 p3, 0x3ea

    invoke-virtual {p0, p1, p3, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onLoadCompleted(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 5

    .line 425
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 426
    new-instance p2, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda30;

    invoke-direct {p2, p1, p3, p4}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda30;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    const/16 p3, 0x3e9

    invoke-virtual {p0, p1, p3, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onLoadError(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 7

    .line 453
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p2

    .line 454
    new-instance p1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;

    invoke-direct/range {p1 .. p6}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    const/16 p3, 0x3eb

    invoke-virtual {p0, p2, p3, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onLoadStarted(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V
    .registers 6

    .line 409
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 410
    new-instance p2, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda38;

    invoke-direct {p2, p1, p3, p4, p5}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda38;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V

    const/16 p3, 0x3e8

    invoke-virtual {p0, p1, p3, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public final onMediaItemTransition(Lio/bidmachine/media3/common/MediaItem;I)V
    .registers 5

    .line 500
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 501
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;

    invoke-direct {v1, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/MediaItem;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onMediaMetadataChanged(Lio/bidmachine/media3/common/MediaMetadata;)V
    .registers 4

    .line 695
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 696
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/MediaMetadata;)V

    const/16 p1, 0xe

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onMetadata(Lio/bidmachine/media3/common/Metadata;)V
    .registers 4

    .line 713
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 714
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Metadata;)V

    const/16 p1, 0x1c

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlayWhenReadyChanged(ZI)V
    .registers 5

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 567
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;

    invoke-direct {v1, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V

    const/4 p1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlaybackParametersChanged(Lio/bidmachine/media3/common/PlaybackParameters;)V
    .registers 4

    .line 658
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 659
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/PlaybackParameters;)V

    const/16 p1, 0xc

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .registers 4

    .line 556
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 557
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda24;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda24;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlaybackSuppressionReasonChanged(I)V
    .registers 4

    .line 576
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 577
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda26;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda26;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlayerError(Lio/bidmachine/media3/common/PlaybackException;)V
    .registers 4

    .line 613
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->getEventTimeForErrorEvent(Lio/bidmachine/media3/common/PlaybackException;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 614
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/PlaybackException;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onPlayerErrorChanged(Lio/bidmachine/media3/common/PlaybackException;)V
    .registers 4

    .line 622
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->getEventTimeForErrorEvent(Lio/bidmachine/media3/common/PlaybackException;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 623
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda8;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/PlaybackException;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .registers 5

    .line 547
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 548
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda25;

    invoke-direct {v1, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda25;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V

    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public final onPositionDiscontinuity(Lio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/common/Player$PositionInfo;I)V
    .registers 6

    const/4 v0, 0x1

    if-ne p3, v0, :cond_6

    const/4 v0, 0x0

    .line 643
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    .line 645
    :cond_6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/Player;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->onPositionDiscontinuity(Lio/bidmachine/media3/common/Player;)V

    .line 646
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 647
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda21;

    invoke-direct {v1, v0, p3, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda21;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/common/Player$PositionInfo;)V

    const/16 p1, 0xb

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .registers 1

    .line 0
    return-void
.end method

.method public final onRenderedFirstFrame(Ljava/lang/Object;J)V
    .registers 6

    .line 363
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 364
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda46;

    invoke-direct {v1, v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda46;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    const/16 p1, 0x1a

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onRendererReadyChanged(IIZ)V
    .registers 6

    .line 170
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 171
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIZ)V

    const/16 p1, 0x409

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .registers 4

    .line 595
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 596
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/16 p1, 0x8

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .registers 4

    .line 604
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 605
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda48;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda48;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    const/16 p1, 0x9

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onSkipSilenceEnabledChanged(Z)V
    .registers 4

    .line 737
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 738
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda66;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda66;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    const/16 p1, 0x17

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onSurfaceSizeChanged(II)V
    .registers 5

    .line 391
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 392
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;II)V

    const/16 p1, 0x18

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onTimelineChanged(Lio/bidmachine/media3/common/Timeline;I)V
    .registers 4

    .line 489
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/Player;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->onTimelineChanged(Lio/bidmachine/media3/common/Player;)V

    .line 490
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 491
    new-instance v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onTrackSelectionParametersChanged(Lio/bidmachine/media3/common/TrackSelectionParameters;)V
    .registers 4

    .line 782
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 783
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda61;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda61;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/TrackSelectionParameters;)V

    const/16 p1, 0x13

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onTracksChanged(Lio/bidmachine/media3/common/Tracks;)V
    .registers 4

    .line 509
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 510
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda18;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda18;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Tracks;)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onUpstreamDiscarded(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 464
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 465
    new-instance p2, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda36;

    invoke-direct {p2, p1, p3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda36;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V

    const/16 p3, 0x3ed

    invoke-virtual {p0, p1, p3, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoCodecError(Ljava/lang/Exception;)V
    .registers 4

    .line 382
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 383
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 p1, 0x406

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 13

    .line 313
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    .line 314
    new-instance v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;

    move-object v2, p1

    move-wide v5, p2

    move-wide v3, p4

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f8

    invoke-virtual {p0, v1, p1, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoDecoderReleased(Ljava/lang/String;)V
    .registers 4

    .line 345
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 346
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda23;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda23;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    const/16 p1, 0x3fb

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoDisabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 4

    .line 354
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 355
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda44;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda44;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    const/16 p1, 0x3fc

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoEnabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 4

    .line 302
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 303
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda42;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda42;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    const/16 p1, 0x3f7

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoFrameProcessingOffset(JI)V
    .registers 6

    .line 372
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 373
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda35;

    invoke-direct {v1, v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda35;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;JI)V

    const/16 p1, 0x3fd

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoInputFormatChanged(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V
    .registers 5

    .line 327
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 328
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda34;

    invoke-direct {v1, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda34;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V

    const/16 p1, 0x3f9

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoSizeChanged(Lio/bidmachine/media3/common/VideoSize;)V
    .registers 4

    .line 765
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 766
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda40;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda40;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/VideoSize;)V

    const/16 p1, 0x19

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVolumeChanged(F)V
    .registers 4

    .line 291
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 292
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda55;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda55;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;F)V

    const/16 p1, 0x16

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public release()V
    .registers 3

    .line 145
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/util/HandlerWrapper;

    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda56;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda56;-><init>(Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;)V

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final releaseInternal()V
    .registers 4

    .line 957
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 958
    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda62;

    invoke-direct {v1, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda62;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    const/16 v2, 0x404

    invoke-virtual {p0, v0, v2, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    .line 962
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ListenerSet;->release()V

    return-void
.end method

.method public final sendEvent(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/util/ListenerSet$Event;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;",
            "I",
            "Lio/bidmachine/media3/common/util/ListenerSet$Event<",
            "Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;",
            ">;)V"
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 905
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    invoke-virtual {p1, p2, p3}, Lio/bidmachine/media3/common/util/ListenerSet;->sendEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public setPlayer(Lio/bidmachine/media3/common/Player;Landroid/os/Looper;)V
    .registers 5

    .line 130
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->access$000(Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 131
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/Player;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    .line 132
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->clock:Lio/bidmachine/media3/common/util/Clock;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lio/bidmachine/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    .line 133
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v1, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;-><init>(Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;Lio/bidmachine/media3/common/Player;)V

    .line 134
    invoke-virtual {v0, p2, v1}, Lio/bidmachine/media3/common/util/ListenerSet;->copy(Landroid/os/Looper;Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;)Lio/bidmachine/media3/common/util/ListenerSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    return-void
.end method

.method public final updateMediaPeriodQueueInfo(Ljava/util/List;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ")V"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Lio/bidmachine/media3/common/Player;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/Player;

    invoke-virtual {v0, p1, p2, v1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->onQueueUpdated(Ljava/util/List;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Player;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector.MediaPeriodQueueTracker (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$MediaPeriodQueueTracker)
.class public final Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;
.super Ljava/lang/Object;
.source "DefaultAnalyticsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPeriodQueueTracker"
.end annotation


# instance fields
.field public currentPlayerMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field

.field public mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Lio/bidmachine/media3/common/Timeline;",
            ">;"
        }
    .end annotation
.end field

.field public final period:Lio/bidmachine/media3/common/Timeline$Period;

.field public playingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public readingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/Timeline$Period;)V
    .registers 2

    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 1036
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    .line 1037
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;)Lcom/google/common/collect/ImmutableList;
    .registers 1

    .line 1022
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static findCurrentPlayerMediaPeriodInQueue(Lio/bidmachine/media3/common/Player;Lcom/google/common/collect/ImmutableList;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/Player;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Lio/bidmachine/media3/common/Timeline$Period;",
            ")",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;"
        }
    .end annotation

    .line 1167
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v0

    .line 1168
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v1

    .line 1171
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    move-object v5, v3

    goto :goto_16

    :cond_11
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    .line 1173
    :goto_16
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->isPlayingAd()Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_3a

    .line 1176
    :cond_23
    invoke-virtual {v0, v1, p3}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v0

    .line 1178
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    invoke-virtual {p3}, Lio/bidmachine/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v6

    sub-long/2addr v1, v6

    .line 1177
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result p3

    :goto_38
    move v9, p3

    goto :goto_3c

    :cond_3a
    :goto_3a
    const/4 p3, -0x1

    goto :goto_38

    :goto_3c
    const/4 p3, 0x0

    .line 1179
    :goto_3d
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge p3, v0, :cond_60

    .line 1180
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1184
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->isPlayingAd()Z

    move-result v6

    .line 1185
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v7

    .line 1186
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v8

    .line 1181
    invoke-static/range {v4 .. v9}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->isMatchingMediaPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Object;ZIII)Z

    move-result v0

    if-eqz v0, :cond_5d

    return-object v4

    :cond_5d
    add-int/lit8 p3, p3, 0x1

    goto :goto_3d

    .line 1191
    :cond_60
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7c

    if-eqz p2, :cond_7c

    .line 1195
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->isPlayingAd()Z

    move-result v6

    .line 1196
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v7

    .line 1197
    invoke-interface {p0}, Lio/bidmachine/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v8

    move-object v4, p2

    .line 1192
    invoke-static/range {v4 .. v9}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->isMatchingMediaPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_7c

    return-object v4

    :cond_7c
    return-object v3
.end method

.method public static isMatchingMediaPeriod(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Object;ZIII)Z
    .registers 7

    .line 1212
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    :cond_a
    if-eqz p2, :cond_14

    .line 1216
    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne p1, p3, :cond_14

    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-eq p1, p4, :cond_1f

    :cond_14
    if-nez p2, :cond_21

    iget p1, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_21

    iget p0, p0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-ne p0, p5, :cond_21

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    return v0
.end method


# virtual methods
.method public final addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Lio/bidmachine/media3/common/Timeline;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Lio/bidmachine/media3/common/Timeline;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_3

    goto :goto_1d

    .line 1151
    :cond_3
    iget-object v0, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 1152
    invoke-virtual {p1, p2, p3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    return-void

    .line 1154
    :cond_10
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p3, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/bidmachine/media3/common/Timeline;

    if-eqz p3, :cond_1d

    .line 1156
    invoke-virtual {p1, p2, p3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    :cond_1d
    :goto_1d
    return-void
.end method

.method public getCurrentPlayerMediaPeriod()Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 2

    .line 1048
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-object v0
.end method

.method public getLoadingMediaPeriod()Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 2

    .line 1081
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-object v0
.end method

.method public getMediaPeriodIdTimeline(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/common/Timeline;
    .registers 3

    .line 1090
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/Timeline;

    return-object p1
.end method

.method public getPlayingMediaPeriod()Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 2

    .line 1059
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-object v0
.end method

.method public getReadingMediaPeriod()Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .registers 2

    .line 1070
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-object v0
.end method

.method public onPositionDiscontinuity(Lio/bidmachine/media3/common/Player;)V
    .registers 5

    .line 1095
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 1096
    invoke-static {p1, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Lio/bidmachine/media3/common/Player;Lcom/google/common/collect/ImmutableList;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-void
.end method

.method public onQueueUpdated(Ljava/util/List;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Player;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Lio/bidmachine/media3/common/Player;",
            ")V"
        }
    .end annotation

    .line 1109
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    .line 1110
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    .line 1111
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1112
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1114
    :cond_1d
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-nez p1, :cond_2d

    .line 1115
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 1116
    invoke-static {p3, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Lio/bidmachine/media3/common/Player;Lcom/google/common/collect/ImmutableList;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1119
    :cond_2d
    invoke-interface {p3}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodTimelines(Lio/bidmachine/media3/common/Timeline;)V

    return-void
.end method

.method public onTimelineChanged(Lio/bidmachine/media3/common/Player;)V
    .registers 5

    .line 1101
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 1102
    invoke-static {p1, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Lio/bidmachine/media3/common/Player;Lcom/google/common/collect/ImmutableList;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1103
    invoke-interface {p1}, Lio/bidmachine/media3/common/Player;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodTimelines(Lio/bidmachine/media3/common/Timeline;)V

    return-void
.end method

.method public final updateMediaPeriodTimelines(Lio/bidmachine/media3/common/Timeline;)V
    .registers 5

    .line 1123
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 1124
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1125
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;)V

    .line 1126
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1127
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;)V

    .line 1129
    :cond_20
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1130
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 1131
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;)V

    goto :goto_60

    :cond_3a
    const/4 v1, 0x0

    .line 1134
    :goto_3b
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_51

    .line 1135
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v0, v2, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 1137
    :cond_51
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 1138
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;)V

    .line 1141
    :cond_60
    :goto_60
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/common/MediaMetadata;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/MediaMetadata;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/media3/common/MediaMetadata;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/media3/common/MediaMetadata;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$TamLbUxLN-hI28jRDbuazg-IlJI(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/MediaMetadata;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/common/text/CueGroup;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/text/CueGroup;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/media3/common/text/CueGroup;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/media3/common/text/CueGroup;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$LLHpt18irVGk0OzhZfMdUZr6Gq8(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/text/CueGroup;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda10 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda10)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;->f$1:I

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$7RukSB7CchKf0GLabB23lnwLF_A(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda11 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda11)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$rFIUrhNmilA68ECOOE9ZiIwV_f4(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda12 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda12)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Exception;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$s39KknQzbv1PpdVRSiBMfxf2VDs(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda13 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda13)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIZ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;->f$1:I

    iput p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;->f$2:I

    iput-boolean p4, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;->f$3:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;->f$1:I

    iget v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;->f$2:I

    iget-boolean v3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;->f$3:Z

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, v3, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$uBpfeQIN7wDlqJqI96pGXAMMkdg(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIZLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda14 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda14)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/common/PlaybackParameters;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/PlaybackParameters;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;->f$1:Lio/bidmachine/media3/common/PlaybackParameters;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;->f$1:Lio/bidmachine/media3/common/PlaybackParameters;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$cnUhcUg8tR8bRtmpQf-6QJ430s0(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/PlaybackParameters;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda15 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda15)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Exception;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$d9e3vML1AoCAU_G4WyKZPEByONM(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda16 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda16)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Lio/bidmachine/media3/common/FlagSet;)V
    .registers 3

    .line 0
    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$5_7srVXN732ChJ1NU6Vtxt9-Ibk(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;Lio/bidmachine/media3/common/FlagSet;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda17 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda17)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;->f$1:Z

    iput p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;->f$1:Z

    iget v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;->f$2:I

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$x6f3WpLdQTtNkjzPFR96CnfJ-T8(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda18 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda18)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/common/Tracks;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Tracks;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda18;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda18;->f$1:Lio/bidmachine/media3/common/Tracks;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda18;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda18;->f$1:Lio/bidmachine/media3/common/Tracks;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$rfiopo7n2TPHmILS7UHj0oCvNOE(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Tracks;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda19 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda19)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda19;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda19;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$fj-nSGoFysYnLxDcWc2BmxoDkkM(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;->f$1:I

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$whFZbkR1nEHsZqELK3rbgsPsvhg(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda20 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda20)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda20;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda20;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda20;->f$2:J

    iput-wide p5, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda20;->f$3:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 9

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda20;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda20;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda20;->f$2:J

    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda20;->f$3:J

    move-object v6, p1

    check-cast v6, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$tohfuEa3R1t_9auqomBW7sMYYMg(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda21 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda21)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lio/bidmachine/media3/common/Player$PositionInfo;

.field public final synthetic f$3:Lio/bidmachine/media3/common/Player$PositionInfo;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/common/Player$PositionInfo;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda21;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda21;->f$1:I

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda21;->f$2:Lio/bidmachine/media3/common/Player$PositionInfo;

    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda21;->f$3:Lio/bidmachine/media3/common/Player$PositionInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda21;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda21;->f$1:I

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda21;->f$2:Lio/bidmachine/media3/common/Player$PositionInfo;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda21;->f$3:Lio/bidmachine/media3/common/Player$PositionInfo;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, v3, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$fRJECXYhFznEWDfF_L7In-zCmbw(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda22 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda22)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;->f$2:J

    iput-wide p5, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;->f$3:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 9

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;->f$2:J

    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;->f$3:J

    move-object v6, p1

    check-cast v6, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$F9bitHMf1ehCHJEpQ6qfxCdmxTM(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda23 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda23)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda23;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda23;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda23;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda23;->f$1:Ljava/lang/String;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$brZR7h3mYffi4uTnBNhrTBDJj2Y(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda24 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda24)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda24;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda24;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda24;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda24;->f$1:I

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$OvB4cpHoq1elGUFJwUS920LhqBc(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda25 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda25)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda25;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda25;->f$1:Z

    iput p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda25;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda25;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda25;->f$1:Z

    iget v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda25;->f$2:I

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$p2-5Z7WwfH66D8bw1gzazWV7qcI(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda26 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda26)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda26;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda26;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda26;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda26;->f$1:I

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$TRqWe_jA24QEhsSe0dKVUXMoMdE(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda27 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda27)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda27;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda27;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda27;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda27;->f$1:Z

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$OCp1lQ6hshHYqHJfPEFwJFbLn4k(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda28 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda28)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/common/MediaItem;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/MediaItem;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;->f$1:Lio/bidmachine/media3/common/MediaItem;

    iput p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;->f$1:Lio/bidmachine/media3/common/MediaItem;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;->f$2:I

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$K-Y6HHJ_O91fSd4wbgRLerM9iMs(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/MediaItem;ILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda29 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda29)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda29;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda29;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda29;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda29;->f$1:Z

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$k5JDQ8cb9F8Rs0bO4585Jpr_VVA(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda3 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/common/Metadata;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Metadata;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;->f$1:Lio/bidmachine/media3/common/Metadata;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;->f$1:Lio/bidmachine/media3/common/Metadata;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$_IcGn607494qD0-QLEUHbozK40k(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Metadata;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda30 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda30)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda30;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda30;->f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda30;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda30;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda30;->f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda30;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$XUHqSVkCxSFtD7ciaqDdNs3lIso(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda31 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda31)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/DecoderCounters;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda31;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda31;->f$1:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda31;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda31;->f$1:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$-qYmsGUidgIqSMakQVy-FyK_X-w(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda32 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda32)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda32;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda32;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda32;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda32;->f$1:I

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$k_XPasciB1PuySpihta6RwAFS7Y(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda33 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda33)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/common/Format;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;->f$1:Lio/bidmachine/media3/common/Format;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;->f$2:Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;->f$1:Lio/bidmachine/media3/common/Format;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;->f$2:Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$QH4t3KRteHz-a0MFB-sAzrFjo7Y(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda34 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda34)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/common/Format;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda34;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda34;->f$1:Lio/bidmachine/media3/common/Format;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda34;->f$2:Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda34;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda34;->f$1:Lio/bidmachine/media3/common/Format;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda34;->f$2:Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$2ALC2_KEukf8cANVjIlczIax1gk(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda35 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda35)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;JI)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda35;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda35;->f$1:J

    iput p4, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda35;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda35;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda35;->f$1:J

    iget v3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda35;->f$2:I

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, v3, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$TM_ngfHszrWPdIgYZIq6xlKgOnY(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;JILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda36 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda36)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda36;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda36;->f$1:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda36;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda36;->f$1:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$LZEFgNMNuKF0zVd_6nQjPAsA_Lw(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda37 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda37)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda37;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda37;->f$1:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda37;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda37;->f$1:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$_fJKQNkh4-p5jyj8sxp07or8Z9I(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda38 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda38)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda38;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda38;->f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda38;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    iput p4, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda38;->f$3:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda38;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda38;->f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda38;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    iget v3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda38;->f$3:I

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, v3, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$oHs6aRb1PbEqmmW2c1jmTRlU_Lo(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;ILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda39 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda39)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

.field public final synthetic f$3:Ljava/io/IOException;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;->f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;->f$3:Ljava/io/IOException;

    iput-boolean p5, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;->f$4:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;->f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;->f$3:Ljava/io/IOException;

    iget-boolean v4, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;->f$4:Z

    move-object v5, p1

    check-cast v5, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$2QtA14OjGJ-XHyXLXLmn77lqbRk(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;ZLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda4 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/common/PlaybackException;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/PlaybackException;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/media3/common/PlaybackException;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;->f$1:Lio/bidmachine/media3/common/PlaybackException;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$S-wlKrDl3Pwx29LK8YGpuBByTec(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/PlaybackException;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda40 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda40)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/common/VideoSize;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/VideoSize;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda40;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda40;->f$1:Lio/bidmachine/media3/common/VideoSize;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda40;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda40;->f$1:Lio/bidmachine/media3/common/VideoSize;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$kXqRfr-_SlygPZy34zNqsK7QOYg(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/VideoSize;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda41 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda41)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZ)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda41;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda41;->f$1:I

    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda41;->f$2:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda41;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda41;->f$1:I

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda41;->f$2:Z

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$xpc4RrDtduYGz0VSJa_cPVbEneo(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda42 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda42)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/DecoderCounters;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda42;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda42;->f$1:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda42;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda42;->f$1:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$LpxvMQhH7s_qmFOVICcIEs0iMvg(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda43 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda43)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda43;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda43;->f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda43;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda43;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda43;->f$1:Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda43;->f$2:Lio/bidmachine/media3/exoplayer/source/MediaLoadData;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$_w5Q0O6L-WlJTEYXmyDad5A5rno(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/source/LoadEventInfo;Lio/bidmachine/media3/exoplayer/source/MediaLoadData;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda44 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda44)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/DecoderCounters;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda44;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda44;->f$1:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda44;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda44;->f$1:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$FYvdVEh4qLeiVOWSZwzlHkoWbYk(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda45 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda45)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda45;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda45;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda45;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda45;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda45;->f$1:I

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$QeeauaSRc3vv6dvKR2Gg2N70e1Y(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda46 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda46)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda46;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda46;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda46;->f$1:Ljava/lang/Object;

    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda46;->f$2:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda46;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda46;->f$1:Ljava/lang/Object;

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda46;->f$2:J

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, v3, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$xrMzO6LT_4XpgQ2jHi-5eBgWBEA(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;JLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda47 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda47)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda47;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda47;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$xtQpZwNZzYasfdr9mUR2_QgAUQE(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda48 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda48)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda48;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda48;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda48;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda48;->f$1:Z

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$4CecTQs6GPGn_qa9swTFKXanMyM(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda49 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda49)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda49;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda49;->f$1:I

    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda49;->f$2:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda49;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda49;->f$1:I

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda49;->f$2:J

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, v3, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$CUCgPgACcQOp7PJo7RHPRxLG7dw(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda5 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$4JRGkB71M2U1vS1JQ1r1iyjugAU(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda50 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda50)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda50;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda50;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda50;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda50;->f$1:Ljava/lang/Exception;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$1HwIpMSwtl9e9iLy0tBPUTLxhaM(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda51 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda51)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda51;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda51;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda51;->f$1:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda51;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda51;->f$1:J

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$XMVHUKwa4t0uwPAIOs5vU6v71u0(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;JLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda52 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda52)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda52;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda52;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda52;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda52;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda52;->f$1:Ljava/lang/Exception;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$VgoOgwq5B91Fa1tYXlKwZb062O4(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda53 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda53)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/common/DeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/DeviceInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda53;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda53;->f$1:Lio/bidmachine/media3/common/DeviceInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda53;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda53;->f$1:Lio/bidmachine/media3/common/DeviceInfo;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$74i5mdGxbiISuLIzy5QujP_lh2g(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/DeviceInfo;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda54 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda54)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda54;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/DecoderCounters;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda54;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda54;->f$1:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda54;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda54;->f$1:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$aTVqy1Xf66JaY8Kw9S0zPj1NrbE(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/DecoderCounters;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda55 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda55)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda55;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;F)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda55;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda55;->f$1:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda55;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda55;->f$1:F

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$bJRvsWVqUTrvOf8E7gyFIxGHdbs(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;FLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda56 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda56)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda56;->f$0:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda56;->f$0:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$GOqCQaCHoC_zahpby7p-l02wH3Y(Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda57 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda57)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda57;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda57;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$Ym0gsfmV-VjFzBGwK749FRtM2vQ(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda58 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda58)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda58;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda58;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda58;->f$1:I

    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda58;->f$2:J

    iput-wide p5, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda58;->f$3:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 9

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda58;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda58;->f$1:I

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda58;->f$2:J

    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda58;->f$3:J

    move-object v6, p1

    check-cast v6, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$Q5t_ENkgmX3slze7BcEKeqLPerA(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda59 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda59)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda59;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda59;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda59;->f$1:Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda59;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda59;->f$1:Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$jfMZnIkVV4VjOxe4l0VrHxrq9n0(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda6 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/common/Player$Commands;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Player$Commands;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda6;->f$1:Lio/bidmachine/media3/common/Player$Commands;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda6;->f$1:Lio/bidmachine/media3/common/Player$Commands;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$OalYX0vJaFmMuj7IS8kRXm1sGnI(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/Player$Commands;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda60 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda60)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda60;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda60;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda60;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$wN4NFGTaNZGvEb5c8pH_LjFbB2o(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda61 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda61)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda61;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/common/TrackSelectionParameters;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/TrackSelectionParameters;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda61;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda61;->f$1:Lio/bidmachine/media3/common/TrackSelectionParameters;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda61;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda61;->f$1:Lio/bidmachine/media3/common/TrackSelectionParameters;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$CLRirvPVwoQk1AS_msPBYsDCIGg(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/TrackSelectionParameters;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda62 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda62)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda62;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda62;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda62;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$YssNwklUeKxKdmzooWeOFKawGqY(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda63 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda63)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda63;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda63;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda63;->f$1:I

    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda63;->f$2:J

    iput-wide p5, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda63;->f$3:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 9

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda63;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda63;->f$1:I

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda63;->f$2:J

    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda63;->f$3:J

    move-object v6, p1

    check-cast v6, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$UyPVJJWKTdVAf4cX96ON5LQNQ4A(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda64 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda64)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda64;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda64;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda64;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$mPYcjW5PhpyqtlhBE7WRtXXRbfI(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda65 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda65)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda65;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda65;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda65;->f$1:Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda65;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda65;->f$1:Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$CQ4lfcXQ7d_TlXK9iS8YifS80OI(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda66 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda66)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda66;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda66;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda66;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda66;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda66;->f$1:Z

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$SUdox5-B8-rTBtdf2oYZTpsjB2U(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda7 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda7)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;->f$1:I

    iput p3, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;->f$1:I

    iget v2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;->f$2:I

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$C3PITMjSEkwyTgEWHgvUD6TE_W4(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;IILio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda8 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda8)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lio/bidmachine/media3/common/PlaybackException;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/PlaybackException;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda8;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda8;->f$1:Lio/bidmachine/media3/common/PlaybackException;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda8;->f$0:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda8;->f$1:Lio/bidmachine/media3/common/PlaybackException;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$FtdkMvmC39S-FKxhd2K4Q2xkgr0(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener$EventTime;Lio/bidmachine/media3/common/PlaybackException;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda9 (io.bidmachine.media3.exoplayer.analytics.DefaultAnalyticsCollector$$ExternalSyntheticLambda9)
.class public final synthetic Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;

.field public final synthetic f$1:Lio/bidmachine/media3/common/Player;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;Lio/bidmachine/media3/common/Player;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;->f$0:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;->f$1:Lio/bidmachine/media3/common/Player;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Lio/bidmachine/media3/common/FlagSet;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;->f$0:Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;->f$1:Lio/bidmachine/media3/common/Player;

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;->$r8$lambda$jAMgeF-xjou60f4x_uXb2Dv--9w(Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;Lio/bidmachine/media3/common/Player;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;Lio/bidmachine/media3/common/FlagSet;)V

    return-void
.end method
