###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink)
.class public final Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/audio/AudioSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PositionTrackerListener;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Api31;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Api23;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;
    }
.end annotation


# static fields
.field public static failOnSpuriousAudioTimestamp:Z = false

.field public static pendingReleaseCount:I

.field public static releaseExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final releaseExecutorLock:Ljava/lang/Object;


# instance fields
.field public accumulatedSkippedSilenceDurationUs:J

.field public afterDrainParameters:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

.field public audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

.field public audioCapabilities:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

.field public audioCapabilitiesReceiver:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

.field public final audioOffloadListener:Lio/bidmachine/media3/exoplayer/ExoPlayer$AudioOffloadListener;

.field public final audioOffloadSupportProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

.field public audioProcessingPipeline:Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;

.field public final audioProcessorChain:Lio/bidmachine/media3/common/audio/AudioProcessorChain;

.field public audioSessionId:I

.field public audioTrack:Landroid/media/AudioTrack;

.field public final audioTrackBufferSizeProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

.field public final audioTrackPositionTracker:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;

.field public final audioTrackProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;

.field public auxEffectInfo:Lio/bidmachine/media3/common/AuxEffectInfo;

.field public avSyncHeader:Ljava/nio/ByteBuffer;

.field public bytesUntilNextAvSync:I

.field public final channelMappingAudioProcessor:Lio/bidmachine/media3/exoplayer/audio/ChannelMappingAudioProcessor;

.field public configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

.field public final context:Landroid/content/Context;

.field public final enableFloatOutput:Z

.field public externalAudioSessionIdProvided:Z

.field public framesPerEncodedSample:I

.field public handledEndOfStream:Z

.field public handledOffloadOnPresentationEnded:Z

.field public final initializationExceptionPendingExceptionHolder:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder<",
            "Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;",
            ">;"
        }
    .end annotation
.end field

.field public inputBuffer:Ljava/nio/ByteBuffer;

.field public inputBufferAccessUnitCount:I

.field public isWaitingForOffloadEndOfStreamHandled:Z

.field public lastFeedElapsedRealtimeMs:J

.field public lastTunnelingAvSyncPresentationTimeUs:J

.field public listener:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

.field public mediaPositionParameters:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

.field public final mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;",
            ">;"
        }
    .end annotation
.end field

.field public offloadDisabledUntilNextConfiguration:Z

.field public offloadMode:I

.field public offloadStreamEventCallbackV29:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

.field public onRoutingChangedListener:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;

.field public outputBuffer:Ljava/nio/ByteBuffer;

.field public pendingConfiguration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

.field public playbackLooper:Landroid/os/Looper;

.field public playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

.field public playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

.field public playing:Z

.field public final preferAudioTrackPlaybackParams:Z

.field public preferredDevice:Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

.field public reportSkippedSilenceHandler:Landroid/os/Handler;

.field public skipSilenceEnabled:Z

.field public skippedOutputFrameCountAtLastPosition:J

.field public startMediaTimeUs:J

.field public startMediaTimeUsNeedsInit:Z

.field public startMediaTimeUsNeedsSync:Z

.field public stoppedAudioTrack:Z

.field public submittedEncodedFrames:J

.field public submittedPcmBytes:J

.field public final toFloatPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/audio/AudioProcessor;",
            ">;"
        }
    .end annotation
.end field

.field public final toIntPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/audio/AudioProcessor;",
            ">;"
        }
    .end annotation
.end field

.field public final trimmingAudioProcessor:Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;

.field public tunneling:Z

.field public volume:F

.field public final writeExceptionPendingExceptionHolder:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder<",
            "Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;",
            ">;"
        }
    .end annotation
.end field

.field public writtenEncodedFrames:J

.field public writtenPcmBytes:J


# direct methods
.method public static synthetic $r8$lambda$Cf7hwM_T_KBoeL82lCTgva9YtD8(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .registers 6

    const/4 v0, 0x0

    .line 1980
    :try_start_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    .line 1981
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_38

    if-eqz p1, :cond_1f

    .line 1984
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 1985
    new-instance p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda5;

    invoke-direct {p0, p1, p3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1988
    :cond_1f
    sget-object p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1989
    :try_start_22
    sget p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    if-nez p1, :cond_34

    .line 1991
    sget-object p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1992
    sput-object v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_34

    :catchall_32
    move-exception p1

    goto :goto_36

    .line 1994
    :cond_34
    :goto_34
    monitor-exit p0

    return-void

    :goto_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_32

    throw p1

    :catchall_38
    move-exception p0

    if-eqz p1, :cond_51

    .line 1984
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1985
    new-instance v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1988
    :cond_51
    sget-object p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1989
    :try_start_54
    sget p2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    add-int/lit8 p2, p2, -0x1

    sput p2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    if-nez p2, :cond_66

    .line 1991
    sget-object p2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1992
    sput-object v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_66

    :catchall_64
    move-exception p0

    goto :goto_68

    .line 1994
    :cond_66
    :goto_66
    monitor-exit p1
    :try_end_67
    .catchall {:try_start_54 .. :try_end_67} :catchall_64

    .line 1995
    throw p0

    .line 1994
    :goto_68
    :try_start_68
    monitor-exit p1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_64

    throw p0
.end method

.method public static synthetic $r8$lambda$GrkyfxsOLW9Lo7Gc8xDKzE0KfKE(Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .registers 2

    .line 1986
    invoke-interface {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;->onAudioTrackReleased(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cgCUWNB3EedpkSa0urTEHzsPKsw(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->maybeReportSkippedSilence()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 507
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)V
    .registers 13

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$100(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->context:Landroid/content/Context;

    .line 591
    sget-object v1, Lio/bidmachine/media3/common/AudioAttributes;->DEFAULT:Lio/bidmachine/media3/common/AudioAttributes;

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    move-object v0, v1

    goto :goto_16

    .line 592
    :cond_12
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$200(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    move-result-object v0

    :goto_16
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    .line 593
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$300(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)Lio/bidmachine/media3/common/audio/AudioProcessorChain;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Lio/bidmachine/media3/common/audio/AudioProcessorChain;

    .line 594
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$400(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->enableFloatOutput:Z

    .line 595
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v0, v2, :cond_33

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$500(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    move v0, v3

    :goto_34
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->preferAudioTrackPlaybackParams:Z

    .line 596
    iput v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->offloadMode:I

    .line 597
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$600(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrackBufferSizeProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 598
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$700(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioOffloadSupportProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    .line 599
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;

    new-instance v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PositionTrackerListener;

    invoke-direct {v2, p0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PositionTrackerListener;-><init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$1;)V

    invoke-direct {v0, v2}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;-><init>(Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;

    .line 600
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/audio/ChannelMappingAudioProcessor;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->channelMappingAudioProcessor:Lio/bidmachine/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    .line 601
    new-instance v1, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;-><init>()V

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->trimmingAudioProcessor:Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;

    .line 602
    new-instance v2, Lio/bidmachine/media3/common/audio/ToInt16PcmAudioProcessor;

    invoke-direct {v2}, Lio/bidmachine/media3/common/audio/ToInt16PcmAudioProcessor;-><init>()V

    .line 603
    invoke-static {v2, v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 605
    new-instance v2, Lio/bidmachine/media3/exoplayer/audio/ToFloatPcmAudioProcessor;

    invoke-direct {v2}, Lio/bidmachine/media3/exoplayer/audio/ToFloatPcmAudioProcessor;-><init>()V

    .line 606
    invoke-static {v2, v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 608
    iput v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->volume:F

    .line 609
    iput v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    .line 610
    new-instance v0, Lio/bidmachine/media3/common/AuxEffectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lio/bidmachine/media3/common/AuxEffectInfo;-><init>(IF)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Lio/bidmachine/media3/common/AuxEffectInfo;

    .line 611
    new-instance v4, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    sget-object v5, Lio/bidmachine/media3/common/PlaybackParameters;->DEFAULT:Lio/bidmachine/media3/common/PlaybackParameters;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v4 .. v10}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lio/bidmachine/media3/common/PlaybackParameters;JJLio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$1;)V

    iput-object v4, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 614
    iput-object v5, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    .line 615
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    .line 616
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 617
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 618
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 619
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$1000(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)Lio/bidmachine/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioOffloadListener:Lio/bidmachine/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    .line 620
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$1100(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrackProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$1;)V
    .registers 3

    .line 94
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;-><init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)V

    return-void
.end method

.method public static synthetic access$1200(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Landroid/media/AudioTrack;
    .registers 1

    .line 94
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method public static synthetic access$1300(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;
    .registers 1

    .line 94
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    return-object p0
.end method

.method public static synthetic access$1400(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Z
    .registers 1

    .line 94
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    return p0
.end method

.method public static synthetic access$1502(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;Z)Z
    .registers 2

    .line 94
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->handledOffloadOnPresentationEnded:Z

    return p1
.end method

.method public static synthetic access$1600(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)J
    .registers 3

    .line 94
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$1700(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)J
    .registers 3

    .line 94
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$1900(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)J
    .registers 3

    .line 94
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    return-wide v0
.end method

.method public static synthetic access$2000()Z
    .registers 1

    .line 94
    invoke-static {}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->hasPendingAudioTrackReleases()Z

    move-result v0

    return v0
.end method

.method public static getAudioTrackMinBufferSize(III)I
    .registers 3

    .line 2133
    invoke-static {p0, p1, p2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p0

    const/4 p1, -0x2

    if-eq p0, p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 2134
    :goto_a
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    return p0
.end method

.method public static getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I
    .registers 4

    const/16 v0, 0x14

    if-eq p0, v0, :cond_63

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_5e

    const/4 v0, -0x1

    const/16 v1, 0x400

    packed-switch p0, :pswitch_data_68

    packed-switch p0, :pswitch_data_7c

    .line 1882
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected audio encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1861
    :pswitch_28
    invoke-static {p1}, Lio/bidmachine/media3/extractor/Ac4Util;->parseAc4SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :pswitch_2d
    return v1

    :pswitch_2e
    const/16 p0, 0x200

    return p0

    .line 1863
    :pswitch_31
    invoke-static {p1}, Lio/bidmachine/media3/extractor/Ac3Util;->findTrueHdSyncframeOffset(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_39

    const/4 p0, 0x0

    return p0

    .line 1866
    :cond_39
    invoke-static {p1, p0}, Lio/bidmachine/media3/extractor/Ac3Util;->parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x10

    return p0

    :pswitch_40
    const/16 p0, 0x800

    return p0

    :pswitch_43
    return v1

    .line 1837
    :pswitch_44
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-static {p1, p0}, Lio/bidmachine/media3/common/util/Util;->getBigEndianInt(Ljava/nio/ByteBuffer;I)I

    move-result p0

    .line 1838
    invoke-static {p0}, Lio/bidmachine/media3/extractor/MpegAudioUtil;->parseMpegAudioFrameSampleCount(I)I

    move-result p0

    if-eq p0, v0, :cond_53

    return p0

    .line 1840
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1859
    :pswitch_59
    invoke-static {p1}, Lio/bidmachine/media3/extractor/Ac3Util;->parseAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    .line 1855
    :cond_5e
    :pswitch_5e
    invoke-static {p1}, Lio/bidmachine/media3/extractor/DtsUtil;->parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    .line 1869
    :cond_63
    invoke-static {p1}, Lio/bidmachine/media3/extractor/OpusUtil;->parseOggPacketAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :pswitch_data_68
    .packed-switch 0x5
        :pswitch_59
        :pswitch_59
        :pswitch_5e
        :pswitch_5e
        :pswitch_44
        :pswitch_43
        :pswitch_40
        :pswitch_40
    .end packed-switch

    :pswitch_data_7c
    .packed-switch 0xe
        :pswitch_31
        :pswitch_2e
        :pswitch_2d
        :pswitch_28
        :pswitch_59
    .end packed-switch
.end method

.method public static hasPendingAudioTrackReleases()Z
    .registers 2

    .line 2005
    sget-object v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2006
    :try_start_3
    sget v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    if-lez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    .line 2007
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static isAudioTrackDeadObject(I)Z
    .registers 3

    .line 1347
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_9

    const/4 v0, -0x6

    if-eq p0, v0, :cond_d

    :cond_9
    const/16 v0, -0x20

    if-ne p0, v0, :cond_f

    :cond_d
    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static isOffloadedPlayback(Landroid/media/AudioTrack;)Z
    .registers 3

    .line 1831
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static releaseAudioTrackAsync(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .registers 7

    .line 1967
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1968
    sget-object v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1969
    :try_start_c
    sget-object v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v2, :cond_1b

    .line 1970
    const-string v2, "ExoPlayer:AudioTrackReleaseThread"

    .line 1971
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Util;->newSingleThreadScheduledExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    sput-object v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_31

    .line 1973
    :cond_1b
    :goto_1b
    sget v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:I

    .line 1974
    sget-object v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->releaseExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, v0, p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda3;-><init>(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p1, 0x14

    .line 1975
    invoke-interface {v2, v3, p1, p2, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 2001
    monitor-exit v1

    return-void

    :goto_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_19

    throw p0
.end method

.method public static writeNonBlocking(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .registers 4

    const/4 v0, 0x1

    .line 1887
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final applyAudioProcessorPlaybackParametersAndSkipSilence(J)V
    .registers 11

    .line 1683
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->useAudioTrackPlaybackParams()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1685
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->shouldApplyAudioProcessorPlaybackParameters()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1686
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Lio/bidmachine/media3/common/audio/AudioProcessorChain;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/audio/AudioProcessorChain;->applyPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)Lio/bidmachine/media3/common/PlaybackParameters;

    move-result-object v0

    goto :goto_17

    .line 1687
    :cond_15
    sget-object v0, Lio/bidmachine/media3/common/PlaybackParameters;->DEFAULT:Lio/bidmachine/media3/common/PlaybackParameters;

    :goto_17
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    :goto_19
    move-object v2, v0

    goto :goto_1e

    .line 1690
    :cond_1b
    sget-object v0, Lio/bidmachine/media3/common/PlaybackParameters;->DEFAULT:Lio/bidmachine/media3/common/PlaybackParameters;

    goto :goto_19

    .line 1693
    :goto_1e
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->shouldApplyAudioProcessorPlaybackParameters()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1694
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Lio/bidmachine/media3/common/audio/AudioProcessorChain;

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/audio/AudioProcessorChain;->applySkipSilenceEnabled(Z)Z

    move-result v0

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    .line 1695
    :goto_2e
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    .line 1696
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    new-instance v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    const-wide/16 v3, 0x0

    .line 1699
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1700
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lio/bidmachine/media3/common/PlaybackParameters;JJLio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$1;)V

    .line 1696
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1701
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->setupAudioProcessors()V

    .line 1702
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz p1, :cond_57

    .line 1703
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;->onSkipSilenceEnabledChanged(Z)V

    :cond_57
    return-void
.end method

.method public final applyMediaPositionParameters(J)J
    .registers 8

    .line 1745
    :goto_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 1746
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_21

    .line 1748
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    goto :goto_0

    .line 1751
    :cond_21
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    sub-long/2addr p1, v1

    .line 1753
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    iget v0, v0, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    .line 1754
    invoke-static {p1, p2, v0}, Lio/bidmachine/media3/common/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v0

    .line 1756
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1757
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Lio/bidmachine/media3/common/audio/AudioProcessorChain;

    .line 1758
    invoke-interface {v2, p1, p2}, Lio/bidmachine/media3/common/audio/AudioProcessorChain;->getMediaDuration(J)J

    move-result-wide p1

    .line 1759
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v3, v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    add-long/2addr v3, p1

    sub-long/2addr p1, v0

    .line 1761
    iput-wide p1, v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->mediaPositionDriftUs:J

    return-wide v3

    .line 1769
    :cond_45
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    add-long/2addr v2, v0

    iget-wide p1, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->mediaPositionDriftUs:J

    add-long/2addr v2, p1

    return-wide v2
.end method

.method public final applySkipping(J)J
    .registers 8

    .line 1776
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Lio/bidmachine/media3/common/audio/AudioProcessorChain;

    .line 1777
    invoke-interface {v0}, Lio/bidmachine/media3/common/audio/AudioProcessorChain;->getSkippedOutputFrameCount()J

    move-result-wide v0

    .line 1778
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1779
    invoke-virtual {v2, v0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v2

    add-long/2addr p1, v2

    .line 1780
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->skippedOutputFrameCountAtLastPosition:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_20

    .line 1781
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    sub-long v2, v0, v2

    .line 1782
    invoke-virtual {v4, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v2

    .line 1784
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->skippedOutputFrameCountAtLastPosition:J

    .line 1785
    invoke-virtual {p0, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->handleSkippedSilence(J)V

    :cond_20
    return-wide p1
.end method

.method public final buildAudioTrack(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Lio/bidmachine/media3/common/AudioAttributes;ILio/bidmachine/media3/common/Format;)Landroid/media/AudioTrack;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 1102
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrackProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;

    .line 1103
    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;->getAudioTrack(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Lio/bidmachine/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object p2
    :try_end_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_6} :catch_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_21

    .line 1115
    invoke-virtual {p2}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 p3, 0x1

    if-ne v1, p3, :cond_e

    return-object p2

    .line 1118
    :cond_e
    :try_start_e
    invoke-virtual {p2}, Landroid/media/AudioTrack;->release()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_11

    .line 1123
    :catch_11
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;

    iget v2, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->sampleRate:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->channelConfig:I

    iget v4, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->encoding:I

    iget-boolean v6, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->offload:Z

    const/4 v7, 0x0

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(IIIILio/bidmachine/media3/common/Format;ZLjava/lang/Exception;)V

    throw v0

    :catch_21
    move-exception v0

    :goto_22
    move-object v5, p4

    move-object p2, v0

    move-object v8, p2

    goto :goto_28

    :catch_26
    move-exception v0

    goto :goto_22

    .line 1105
    :goto_28
    new-instance v1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;

    iget v3, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->sampleRate:I

    iget v4, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->channelConfig:I

    move-object v6, v5

    iget v5, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->encoding:I

    iget-boolean v7, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;->offload:Z

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v8}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(IIIILio/bidmachine/media3/common/Format;ZLjava/lang/Exception;)V

    throw v1
.end method

.method public final buildAudioTrack(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroid/media/AudioTrack;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 1078
    :try_start_0
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->buildAudioTrackConfig()Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Lio/bidmachine/media3/common/Format;

    .line 1077
    invoke-virtual {p0, v0, v1, v2, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->buildAudioTrack(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Lio/bidmachine/media3/common/AudioAttributes;ILio/bidmachine/media3/common/Format;)Landroid/media/AudioTrack;

    move-result-object p1

    .line 1082
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioOffloadListener:Lio/bidmachine/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    if-eqz v0, :cond_1c

    .line 1083
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v1

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayer$AudioOffloadListener;->onOffloadedPlayback(Z)V
    :try_end_19
    .catch Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p1

    goto :goto_1d

    :cond_1c
    return-object p1

    .line 1087
    :goto_1d
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v0, :cond_24

    .line 1088
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 1090
    :cond_24
    throw p1
.end method

.method public final buildAudioTrackWithRetry()Landroid/media/AudioTrack;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 1055
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->buildAudioTrack(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_c
    .catch Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    .line 1058
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v2, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->bufferSize:I

    const v3, 0xf4240

    if-le v2, v3, :cond_26

    .line 1060
    invoke-virtual {v1, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->copyWithBufferSize(I)Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    move-result-object v1

    .line 1062
    :try_start_1b
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->buildAudioTrack(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroid/media/AudioTrack;

    move-result-object v2

    .line 1063
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;
    :try_end_21
    .catch Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_1b .. :try_end_21} :catch_22

    return-object v2

    :catch_22
    move-exception v1

    .line 1066
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1069
    :cond_26
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->maybeDisableOffload()V

    .line 1070
    throw v0
.end method

.method public configure(Lio/bidmachine/media3/common/Format;I[I)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    .line 698
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->maybeStartAudioCapabilitiesReceiver()V

    .line 699
    iget-object v0, v3, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_93

    .line 700
    iget v0, v3, Lio/bidmachine/media3/common/Format;->pcmEncoding:I

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->isEncodingLinearPcm(I)Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 702
    iget v0, v3, Lio/bidmachine/media3/common/Format;->pcmEncoding:I

    iget v6, v3, Lio/bidmachine/media3/common/Format;->channelCount:I

    invoke-static {v0, v6}, Lio/bidmachine/media3/common/util/Util;->getPcmFrameSize(II)I

    move-result v0

    .line 704
    new-instance v6, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v6}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 705
    iget v7, v3, Lio/bidmachine/media3/common/Format;->pcmEncoding:I

    invoke-virtual {v1, v7}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->shouldUseFloatOutput(I)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 706
    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_45

    .line 708
    :cond_37
    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 709
    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Lio/bidmachine/media3/common/audio/AudioProcessorChain;

    invoke-interface {v7}, Lio/bidmachine/media3/common/audio/AudioProcessorChain;->getAudioProcessors()[Lio/bidmachine/media3/common/audio/AudioProcessor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 711
    :goto_45
    new-instance v7, Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-direct {v7, v6}, Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 715
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v7, v6}, Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 716
    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;

    .line 719
    :cond_58
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->trimmingAudioProcessor:Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;

    iget v8, v3, Lio/bidmachine/media3/common/Format;->encoderDelay:I

    iget v9, v3, Lio/bidmachine/media3/common/Format;->encoderPadding:I

    invoke-virtual {v6, v8, v9}, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->setTrimFrameCount(II)V

    .line 722
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->channelMappingAudioProcessor:Lio/bidmachine/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    move-object/from16 v8, p3

    invoke-virtual {v6, v8}, Lio/bidmachine/media3/exoplayer/audio/ChannelMappingAudioProcessor;->setChannelMap([I)V

    .line 724
    new-instance v6, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-direct {v6, v3}, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;-><init>(Lio/bidmachine/media3/common/Format;)V

    .line 726
    :try_start_6d
    invoke-virtual {v7, v6}, Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;->configure(Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;)Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object v6
    :try_end_71
    .catch Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_6d .. :try_end_71} :catch_8c

    .line 732
    iget v8, v6, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 733
    iget v9, v6, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 734
    iget v10, v6, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-static {v10}, Lio/bidmachine/media3/common/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v10

    .line 735
    iget v6, v6, Lio/bidmachine/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-static {v8, v6}, Lio/bidmachine/media3/common/util/Util;->getPcmFrameSize(II)I

    move-result v6

    .line 736
    iget-boolean v11, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->preferAudioTrackPlaybackParams:Z

    move v15, v5

    move v14, v8

    move v8, v10

    move v10, v11

    move-object v11, v7

    move v7, v6

    move v6, v15

    goto/16 :goto_f5

    :catch_8c
    move-exception v0

    .line 728
    new-instance v2, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;

    invoke-direct {v2, v0, v3}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;Lio/bidmachine/media3/common/Format;)V

    throw v2

    .line 739
    :cond_93
    new-instance v7, Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {v7, v0}, Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 741
    iget v9, v3, Lio/bidmachine/media3/common/Format;->sampleRate:I

    .line 744
    iget v0, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->offloadMode:I

    if-eqz v0, :cond_a7

    .line 745
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->getFormatOffloadSupport(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object v0

    goto :goto_a9

    .line 746
    :cond_a7
    sget-object v0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    .line 747
    :goto_a9
    iget v6, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->offloadMode:I

    if-eqz v6, :cond_d0

    iget-boolean v6, v0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->isFormatSupported:Z

    if-eqz v6, :cond_d0

    .line 749
    iget-object v6, v3, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 750
    invoke-static {v6}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, v3, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v6, v8}, Lio/bidmachine/media3/common/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 751
    iget v6, v3, Lio/bidmachine/media3/common/Format;->channelCount:I

    invoke-static {v6}, Lio/bidmachine/media3/common/util/Util;->getAudioTrackChannelConfig(I)I

    move-result v10

    .line 754
    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->isGaplessSupported:Z

    move v6, v0

    move v0, v4

    move-object v11, v7

    move v14, v8

    move v8, v10

    const/4 v10, 0x1

    const/4 v15, 0x1

    :goto_ce
    move v7, v0

    goto :goto_f5

    .line 758
    :cond_d0
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    .line 759
    invoke-virtual {v0, v3, v6}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;->getEncodingAndChannelConfigForPassthrough(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/AudioAttributes;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_188

    .line 765
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 766
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 769
    iget-boolean v11, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->preferAudioTrackPlaybackParams:Z

    const/4 v0, 0x2

    move v15, v0

    move v0, v4

    move v6, v5

    move v14, v8

    move v8, v10

    move v10, v11

    move-object v11, v7

    goto :goto_ce

    .line 773
    :goto_f5
    const-string v12, ") for: "

    if-eqz v14, :cond_16b

    if-eqz v8, :cond_14e

    .line 785
    iget v12, v3, Lio/bidmachine/media3/common/Format;->bitrate:I

    .line 786
    const-string v13, "audio/vnd.dts.hd;profile=lbr"

    iget-object v2, v3, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    if-ne v12, v4, :cond_10c

    const v12, 0xbb800

    :cond_10c
    move/from16 v18, v12

    if-eqz p2, :cond_115

    move/from16 v2, p2

    move/from16 v17, v9

    goto :goto_130

    .line 794
    :cond_115
    iget-object v12, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrackBufferSizeProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 795
    invoke-static {v9, v8, v14}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->getAudioTrackMinBufferSize(III)I

    move-result v13

    if-eq v7, v4, :cond_120

    move/from16 v16, v7

    goto :goto_122

    :cond_120
    const/16 v16, 0x1

    :goto_122
    if-eqz v10, :cond_129

    const-wide/high16 v19, 0x4020000000000000L    # 8.0

    :goto_126
    move/from16 v17, v9

    goto :goto_12c

    :cond_129
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    goto :goto_126

    .line 794
    :goto_12c
    invoke-interface/range {v12 .. v20}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->getBufferSizeInBytes(IIIIIID)I

    move-result v2

    .line 802
    :goto_130
    iput-boolean v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    move v12, v10

    move v10, v2

    .line 803
    new-instance v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    move v9, v14

    iget-boolean v14, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    move v4, v0

    move v13, v6

    move v6, v7

    move v5, v15

    move/from16 v7, v17

    invoke-direct/range {v2 .. v14}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;-><init>(Lio/bidmachine/media3/common/Format;IIIIIIILio/bidmachine/media3/common/audio/AudioProcessingPipeline;ZZZ)V

    .line 817
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 818
    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    return-void

    .line 820
    :cond_14b
    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    return-void

    .line 778
    :cond_14e
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid output channel config (mode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/Format;)V

    throw v0

    .line 774
    :cond_16b
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid output encoding (mode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/Format;)V

    throw v0

    .line 762
    :cond_188
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to configure passthrough for: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/Format;)V

    throw v0
.end method

.method public disableTunneling()V
    .registers 2

    .line 1486
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 1487
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    .line 1488
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    :cond_a
    return-void
.end method

.method public final drainOutputBuffer(J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1234
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_7

    :goto_4
    move-object v1, p0

    goto/16 :goto_e4

    .line 1237
    :cond_7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->shouldWaitBeforeRetry()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_4

    .line 1240
    :cond_10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    .line 1242
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_42

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_27

    move v0, v8

    goto :goto_28

    :cond_27
    move v0, v7

    .line 1243
    :goto_28
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_35

    .line 1248
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->lastTunnelingAvSyncPresentationTimeUs:J

    :goto_33
    move-wide v5, p1

    goto :goto_38

    .line 1250
    :cond_35
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->lastTunnelingAvSyncPresentationTimeUs:J

    goto :goto_33

    .line 1252
    :goto_38
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    move-object v1, p0

    .line 1253
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->writeNonBlockingWithAvSync(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result p1

    goto :goto_4b

    :cond_42
    move-object v1, p0

    .line 1256
    iget-object p1, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object p2, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2, v4}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->writeNonBlocking(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p1

    .line 1259
    :goto_4b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    const-wide/16 v2, 0x0

    if-gez p1, :cond_95

    .line 1268
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackDeadObject(I)Z

    move-result p2

    if-eqz p2, :cond_71

    .line 1269
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-lez p2, :cond_65

    :goto_63
    move v7, v8

    goto :goto_71

    .line 1271
    :cond_65
    iget-object p2, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result p2

    if-eqz p2, :cond_71

    .line 1272
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->maybeDisableOffload()V

    goto :goto_63

    .line 1277
    :cond_71
    :goto_71
    new-instance p2, Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;

    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Lio/bidmachine/media3/common/Format;

    invoke-direct {p2, p1, v0, v7}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;-><init>(ILio/bidmachine/media3/common/Format;Z)V

    .line 1278
    iget-object p1, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz p1, :cond_81

    .line 1279
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 1281
    :cond_81
    iget-boolean p1, p2, Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;->isRecoverable:Z

    if-eqz p1, :cond_8f

    iget-object p1, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->context:Landroid/content/Context;

    if-nez p1, :cond_8a

    goto :goto_8f

    .line 1284
    :cond_8a
    sget-object p1, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    iput-object p1, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    .line 1285
    throw p2

    .line 1287
    :cond_8f
    :goto_8f
    iget-object p1, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->throwExceptionIfDeadlineIsReached(Ljava/lang/Exception;)V

    return-void

    .line 1290
    :cond_95
    iget-object p2, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 1294
    iget-object p2, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result p2

    if-eqz p2, :cond_bb

    .line 1299
    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    cmp-long p2, v5, v2

    if-lez p2, :cond_aa

    .line 1300
    iput-boolean v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 1306
    :cond_aa
    iget-boolean p2, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    if-eqz p2, :cond_bb

    iget-object p2, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz p2, :cond_bb

    if-ge p1, v4, :cond_bb

    iget-boolean v0, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    if-nez v0, :cond_bb

    .line 1310
    invoke-interface {p2}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;->onOffloadBufferFull()V

    .line 1314
    :cond_bb
    iget-object p2, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget p2, p2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez p2, :cond_c7

    .line 1315
    iget-wide v2, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->writtenPcmBytes:J

    int-to-long v5, p1

    add-long/2addr v2, v5

    iput-wide v2, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->writtenPcmBytes:J

    :cond_c7
    if-ne p1, v4, :cond_e4

    if-eqz p2, :cond_e1

    .line 1321
    iget-object p1, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    iget-object p2, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-ne p1, p2, :cond_d2

    move v7, v8

    :cond_d2
    invoke-static {v7}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 1322
    iget-wide p1, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    iget v0, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v2, v0

    iget v0, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    int-to-long v4, v0

    mul-long/2addr v2, v4

    add-long/2addr p1, v2

    iput-wide p1, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    :cond_e1
    const/4 p1, 0x0

    .line 1324
    iput-object p1, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    :cond_e4
    :goto_e4
    return-void
.end method

.method public final drainToEndOfStream()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1197
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/high16 v3, -0x8000000000000000L

    if-nez v0, :cond_15

    .line 1198
    invoke-virtual {p0, v3, v4}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->drainOutputBuffer(J)V

    .line 1199
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_14

    return v2

    :cond_14
    return v1

    .line 1202
    :cond_15
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;->queueEndOfStream()V

    .line 1203
    invoke-virtual {p0, v3, v4}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->processBuffers(J)V

    .line 1204
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2f

    .line 1205
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_30

    :cond_2f
    return v2

    :cond_30
    return v1
.end method

.method public enableTunnelingV21()V
    .registers 2

    .line 1477
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->externalAudioSessionIdProvided:Z

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 1478
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 1479
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    .line 1480
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    :cond_f
    return-void
.end method

.method public flush()V
    .registers 5

    .line 1535
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    .line 1536
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->resetSinkStateForFlush()V

    .line 1538
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1539
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 1541
    :cond_17
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1542
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->unregister(Landroid/media/AudioTrack;)V

    .line 1544
    :cond_2c
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->buildAudioTrackConfig()Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    move-result-object v0

    .line 1545
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v2, :cond_3a

    .line 1546
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1547
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1549
    :cond_3a
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->reset()V

    .line 1550
    sget v2, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_4e

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->onRoutingChangedListener:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;

    if-eqz v2, :cond_4e

    .line 1551
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;->release()V

    .line 1552
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->onRoutingChangedListener:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;

    .line 1557
    :cond_4e
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    invoke-static {v2, v3, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->releaseAudioTrackAsync(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    .line 1558
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 1560
    :cond_57
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 1561
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    const-wide/16 v2, 0x0

    .line 1562
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->skippedOutputFrameCountAtLastPosition:J

    .line 1563
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    .line 1564
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_74

    .line 1565
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_74
    return-void
.end method

.method public getAudioTrackBufferSizeUs()J
    .registers 11

    .line 1460
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-nez v0, :cond_c

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 1463
    :cond_c
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1b

    .line 1464
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Api23;->getAudioTrackBufferSizeUs(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;)J

    move-result-wide v0

    return-wide v0

    .line 1467
    :cond_1b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v1, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v1, :cond_2a

    .line 1468
    iget v1, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    int-to-long v1, v1

    iget v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    int-to-long v3, v0

    mul-long/2addr v1, v3

    :goto_28
    move-wide v7, v1

    goto :goto_32

    .line 1469
    :cond_2a
    iget v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->getMaximumEncodedRateBytesPerSecond(I)I

    move-result v0

    int-to-long v1, v0

    goto :goto_28

    .line 1471
    :goto_32
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->bufferSize:I

    int-to-long v3, v0

    const-wide/32 v5, 0xf4240

    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v3 .. v9}, Lio/bidmachine/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentPositionUs(Z)J
    .registers 6

    .line 677
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result p1

    if-eqz p1, :cond_28

    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    if-eqz p1, :cond_b

    goto :goto_28

    .line 680
    :cond_b
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->getCurrentPositionUs()J

    move-result-wide v0

    .line 681
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 682
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->applyMediaPositionParameters(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->applySkipping(J)J

    move-result-wide v0

    return-wide v0

    :cond_28
    :goto_28
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getFormatOffloadSupport(Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;
    .registers 4

    .line 669
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    if-eqz v0, :cond_7

    .line 670
    sget-object p1, Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    return-object p1

    .line 672
    :cond_7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioOffloadSupportProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    invoke-interface {v0, p1, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;->getAudioOffloadSupport(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/AudioAttributes;)Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object p1

    return-object p1
.end method

.method public getFormatSupport(Lio/bidmachine/media3/common/Format;)I
    .registers 6

    .line 647
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->maybeStartAudioCapabilitiesReceiver()V

    .line 648
    iget-object v0, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_3f

    .line 649
    iget v0, p1, Lio/bidmachine/media3/common/Format;->pcmEncoding:I

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->isEncodingLinearPcm(I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PCM encoding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lio/bidmachine/media3/common/Format;->pcmEncoding:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultAudioSink"

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 653
    :cond_30
    iget p1, p1, Lio/bidmachine/media3/common/Format;->pcmEncoding:I

    if-eq p1, v2, :cond_3e

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->enableFloatOutput:Z

    if-eqz v0, :cond_3c

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 p1, 0x1

    return p1

    :cond_3e
    :goto_3e
    return v2

    .line 661
    :cond_3f
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    invoke-virtual {v0, p1, v3}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;->isPassthroughPlaybackSupported(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/AudioAttributes;)Z

    move-result p1

    if-eqz p1, :cond_4a

    return v2

    :cond_4a
    return v1
.end method

.method public getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;
    .registers 2

    .line 1380
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    return-object v0
.end method

.method public final getSubmittedFrames()J
    .registers 6

    .line 1805
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v1, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v1, :cond_d

    .line 1806
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->submittedPcmBytes:J

    iget v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1

    .line 1807
    :cond_d
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->submittedEncodedFrames:J

    return-wide v0
.end method

.method public final getWrittenFrames()J
    .registers 6

    .line 1811
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v1, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v1, :cond_10

    .line 1812
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->writtenPcmBytes:J

    iget v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Lio/bidmachine/media3/common/util/Util;->ceilDivide(JJ)J

    move-result-wide v0

    return-wide v0

    .line 1813
    :cond_10
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    return-wide v0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;,
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    .line 896
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_13

    if-ne v0, v5, :cond_11

    goto :goto_13

    :cond_11
    move v5, v7

    goto :goto_14

    :cond_13
    :goto_13
    move v5, v6

    :goto_14
    invoke-static {v5}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 898
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    const/4 v8, 0x0

    if-eqz v5, :cond_76

    .line 899
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v5

    if-nez v5, :cond_23

    return v7

    .line 902
    :cond_23
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v9, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v5, v9}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->canReuseAudioTrack(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 903
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playPendingData()V

    .line 904
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v5

    if-eqz v5, :cond_37

    return v7

    .line 908
    :cond_37
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    goto :goto_73

    .line 911
    :cond_3b
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iput-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 912
    iput-object v8, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 913
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v5, :cond_73

    .line 914
    invoke-static {v5}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v5

    if-eqz v5, :cond_73

    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-boolean v5, v5, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableOffloadGapless:Z

    if-eqz v5, :cond_73

    .line 918
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    const/4 v9, 0x3

    if-ne v5, v9, :cond_64

    .line 919
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v5}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/AudioTrack;)V

    .line 920
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->expectRawPlaybackHeadReset()V

    .line 922
    :cond_64
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v9, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v9, v9, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Lio/bidmachine/media3/common/Format;

    iget v10, v9, Lio/bidmachine/media3/common/Format;->encoderDelay:I

    iget v9, v9, Lio/bidmachine/media3/common/Format;->encoderPadding:I

    invoke-static {v5, v10, v9}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioTrack;II)V

    .line 924
    iput-boolean v6, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 928
    :cond_73
    :goto_73
    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 931
    :cond_76
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v5

    if-nez v5, :cond_8f

    .line 933
    :try_start_7c
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->initializeAudioTrack()Z

    move-result v5
    :try_end_80
    .catch Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_7c .. :try_end_80} :catch_83

    if-nez v5, :cond_8f

    return v7

    :catch_83
    move-exception v0

    .line 938
    iget-boolean v2, v0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;->isRecoverable:Z

    if-nez v2, :cond_8e

    .line 941
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v2, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->throwExceptionIfDeadlineIsReached(Ljava/lang/Exception;)V

    return v7

    .line 939
    :cond_8e
    throw v0

    .line 945
    :cond_8f
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 947
    iget-boolean v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_b7

    .line 948
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 949
    iput-boolean v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    .line 950
    iput-boolean v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    .line 952
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->useAudioTrackPlaybackParams()Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 953
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->setAudioTrackPlaybackParametersV23()V

    .line 955
    :cond_ad
    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 957
    iget-boolean v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    if-eqz v5, :cond_b7

    .line 958
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->play()V

    .line 962
    :cond_b7
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->mayHandleBuffer(J)Z

    move-result v5

    if-nez v5, :cond_c4

    return v7

    .line 966
    :cond_c4
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_176

    .line 968
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v11, :cond_d2

    move v5, v6

    goto :goto_d3

    :cond_d2
    move v5, v7

    :goto_d3
    invoke-static {v5}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 969
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_dd

    return v6

    .line 974
    :cond_dd
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v11, v5, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-eqz v11, :cond_f2

    iget v11, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v11, :cond_f2

    .line 976
    iget v5, v5, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    invoke-static {v5, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I

    move-result v5

    iput v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v5, :cond_f2

    return v6

    .line 986
    :cond_f2
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->afterDrainParameters:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    if-eqz v5, :cond_102

    .line 987
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v5

    if-nez v5, :cond_fd

    return v7

    .line 991
    :cond_fd
    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 992
    iput-object v8, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->afterDrainParameters:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 996
    :cond_102
    iget-wide v11, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 999
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v13

    iget-object v15, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->trimmingAudioProcessor:Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;

    invoke-virtual {v15}, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->getTrimmedFrameCount()J

    move-result-wide v15

    sub-long/2addr v13, v15

    .line 998
    invoke-virtual {v5, v13, v14}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFramesToDurationUs(J)J

    move-result-wide v13

    add-long/2addr v11, v13

    .line 1000
    iget-boolean v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    if-nez v5, :cond_135

    sub-long v13, v11, v2

    .line 1001
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/32 v15, 0x30d40

    cmp-long v5, v13, v15

    if-lez v5, :cond_135

    .line 1002
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v5, :cond_133

    .line 1003
    new-instance v13, Lio/bidmachine/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;

    invoke-direct {v13, v2, v3, v11, v12}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;-><init>(JJ)V

    invoke-interface {v5, v13}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 1007
    :cond_133
    iput-boolean v6, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    .line 1009
    :cond_135
    iget-boolean v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    if-eqz v5, :cond_157

    .line 1010
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v5

    if-nez v5, :cond_140

    return v7

    :cond_140
    sub-long v11, v2, v11

    .line 1017
    iget-wide v13, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    add-long/2addr v13, v11

    iput-wide v13, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 1018
    iput-boolean v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    .line 1020
    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 1021
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v5, :cond_157

    cmp-long v9, v11, v9

    if-eqz v9, :cond_157

    .line 1022
    invoke-interface {v5}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;->onPositionDiscontinuity()V

    .line 1026
    :cond_157
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v5, v5, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v5, :cond_168

    .line 1027
    iget-wide v9, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->submittedPcmBytes:J

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    int-to-long v11, v5

    add-long/2addr v9, v11

    iput-wide v9, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->submittedPcmBytes:J

    goto :goto_172

    .line 1029
    :cond_168
    iget-wide v9, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->submittedEncodedFrames:J

    iget v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v11, v5

    int-to-long v13, v4

    mul-long/2addr v11, v13

    add-long/2addr v9, v11

    iput-wide v9, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 1032
    :goto_172
    iput-object v0, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 1033
    iput v4, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    .line 1036
    :cond_176
    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->processBuffers(J)V

    .line 1038
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_186

    .line 1039
    iput-object v8, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 1040
    iput v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    return v6

    .line 1044
    :cond_186
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->isStalled(J)Z

    move-result v0

    if-eqz v0, :cond_19d

    .line 1045
    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    invoke-static {v0, v2}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    return v6

    :cond_19d
    return v7
.end method

.method public handleDiscontinuity()V
    .registers 2

    const/4 v0, 0x1

    .line 888
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    return-void
.end method

.method public final handleSkippedSilence(J)V
    .registers 5

    .line 1791
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    .line 1792
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    if-nez p1, :cond_14

    .line 1793
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    .line 1795
    :cond_14
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1796
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    new-instance p2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda6;-><init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public hasPendingData()Z
    .registers 4

    .line 1358
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_26

    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_18

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 1360
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->handledOffloadOnPresentationEnded:Z

    if-nez v0, :cond_26

    :cond_18
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;

    .line 1362
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->hasPendingData(J)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public final initializeAudioTrack()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->shouldWaitBeforeRetry()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 834
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->buildAudioTrackWithRetry()Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 835
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 836
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->registerStreamEventCallbackV29(Landroid/media/AudioTrack;)V

    .line 837
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-boolean v2, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableOffloadGapless:Z

    if-eqz v2, :cond_2c

    .line 838
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Lio/bidmachine/media3/common/Format;

    iget v3, v0, Lio/bidmachine/media3/common/Format;->encoderDelay:I

    iget v0, v0, Lio/bidmachine/media3/common/Format;->encoderPadding:I

    invoke-static {v2, v3, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioTrack;II)V

    .line 842
    :cond_2c
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_3b

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    if-eqz v2, :cond_3b

    .line 843
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v3, v2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Api31;->setLogSessionIdOnAudioTrack(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    .line 845
    :cond_3b
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v2

    iput v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    .line 846
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v5, v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    const/4 v6, 0x2

    const/4 v9, 0x1

    if-ne v5, v6, :cond_51

    move v5, v9

    goto :goto_52

    :cond_51
    move v5, v1

    :goto_52
    iget v6, v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v7, v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget v8, v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->bufferSize:I

    invoke-virtual/range {v3 .. v8}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->setAudioTrack(Landroid/media/AudioTrack;ZIII)V

    .line 852
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->setVolumeInternal()V

    .line 854
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Lio/bidmachine/media3/common/AuxEffectInfo;

    iget v1, v1, Lio/bidmachine/media3/common/AuxEffectInfo;->effectId:I

    if-eqz v1, :cond_72

    .line 855
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2, v1}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 856
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Lio/bidmachine/media3/common/AuxEffectInfo;

    iget v2, v2, Lio/bidmachine/media3/common/AuxEffectInfo;->sendLevel:F

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 858
    :cond_72
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    if-eqz v1, :cond_8a

    const/16 v2, 0x17

    if-lt v0, v2, :cond_8a

    .line 859
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v2, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Api23;->setPreferredDeviceOnAudioTrack(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;)V

    .line 860
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz v1, :cond_8a

    .line 861
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->setRoutedDevice(Landroid/media/AudioDeviceInfo;)V

    :cond_8a
    const/16 v1, 0x18

    if-lt v0, v1, :cond_9b

    .line 864
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz v0, :cond_9b

    .line 865
    new-instance v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {v1, v2, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;-><init>(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)V

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->onRoutingChangedListener:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;

    .line 868
    :cond_9b
    iput-boolean v9, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    .line 870
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v0, :cond_aa

    .line 871
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->buildAudioTrackConfig()Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;->onAudioTrackInitialized(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    :cond_aa
    return v9
.end method

.method public final isAudioTrackInitialized()Z
    .registers 2

    .line 1801
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isEnded()Z
    .registers 2

    .line 1353
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public final maybeDisableOffload()V
    .registers 2

    .line 1337
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputModeIsOffload()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 1343
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    return-void
.end method

.method public final maybeRampUpVolume(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 7

    .line 1944
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-eqz v0, :cond_7

    goto :goto_1f

    :cond_7
    const-wide/16 v0, 0x14

    .line 1947
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    .line 1948
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v2, v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    .line 1949
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/common/util/Util;->durationUsToSampleCount(JI)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1950
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_20

    :goto_1f
    return-object p1

    .line 1954
    :cond_20
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v4, v3, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v3, v3, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    long-to-int v1, v1

    invoke-static {p1, v4, v3, v1, v0}, Lio/bidmachine/media3/exoplayer/audio/PcmAudioUtil;->rampUpVolume(Ljava/nio/ByteBuffer;IIII)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final maybeReportSkippedSilence()V
    .registers 5

    .line 2370
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    .line 2372
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;->onSilenceSkipped()V

    const-wide/16 v0, 0x0

    .line 2373
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    :cond_12
    return-void
.end method

.method public final maybeStartAudioCapabilitiesReceiver()V
    .registers 6

    .line 1818
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-nez v0, :cond_26

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->context:Landroid/content/Context;

    if-eqz v0, :cond_26

    .line 1821
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playbackLooper:Landroid/os/Looper;

    .line 1822
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->context:Landroid/content/Context;

    new-instance v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)V

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;-><init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;Lio/bidmachine/media3/common/AudioAttributes;Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 1825
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->register()Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    .line 1827
    :cond_26
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAudioCapabilitiesChanged(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;)V
    .registers 6

    .line 1595
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1596
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playbackLooper:Landroid/os/Looper;

    if-eq v1, v0, :cond_45

    .line 1598
    const-string p1, "null"

    if-nez v1, :cond_e

    move-object v1, p1

    goto :goto_16

    :cond_e
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_16
    if-nez v0, :cond_19

    goto :goto_21

    .line 1599
    :cond_19
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1600
    :goto_21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current looper ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not the playback looper ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1607
    :cond_45
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    if-eqz v0, :cond_58

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 1608
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilities:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    .line 1609
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz p1, :cond_58

    .line 1610
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;->onAudioCapabilitiesChanged()V

    :cond_58
    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 1526
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    .line 1527
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;

    .line 1528
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->pause()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1529
    :cond_19
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1e
    return-void
.end method

.method public play()V
    .registers 2

    const/4 v0, 0x1

    .line 879
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    .line 880
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 881
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->start()V

    .line 882
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_13
    return-void
.end method

.method public final playPendingData()V
    .registers 4

    .line 1930
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    if-nez v0, :cond_22

    const/4 v0, 0x1

    .line 1931
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    .line 1932
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->handleEndOfStream(J)V

    .line 1933
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 1936
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->handledOffloadOnPresentationEnded:Z

    .line 1938
    :cond_1b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 1939
    iput v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    :cond_22
    return-void
.end method

.method public playToEndOfStream()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1330
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1331
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playPendingData()V

    const/4 v0, 0x1

    .line 1332
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->handledEndOfStream:Z

    :cond_16
    return-void
.end method

.method public final processBuffers(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1159
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->drainOutputBuffer(J)V

    .line 1160
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    goto :goto_4d

    .line 1166
    :cond_8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1167
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4d

    .line 1168
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->setOutputBuffer(Ljava/nio/ByteBuffer;)V

    .line 1169
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->drainOutputBuffer(J)V

    return-void

    .line 1174
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;->isEnded()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1176
    :cond_23
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1177
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->setOutputBuffer(Ljava/nio/ByteBuffer;)V

    .line 1178
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->drainOutputBuffer(J)V

    .line 1179
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_23

    goto :goto_4d

    .line 1184
    :cond_3a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_4d

    .line 1187
    :cond_45
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;->queueInput(Ljava/nio/ByteBuffer;)V

    goto :goto_1b

    :cond_4d
    :goto_4d
    return-void
.end method

.method public final registerStreamEventCallbackV29(Landroid/media/AudioTrack;)V
    .registers 3

    .line 1137
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    if-nez v0, :cond_b

    .line 1140
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;-><init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    .line 1142
    :cond_b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->offloadStreamEventCallbackV29:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->register(Landroid/media/AudioTrack;)V

    return-void
.end method

.method public release()V
    .registers 2

    .line 1587
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz v0, :cond_7

    .line 1588
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->unregister()V

    :cond_7
    return-void
.end method

.method public reset()V
    .registers 3

    .line 1571
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    .line 1572
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->toIntPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/audio/AudioProcessor;

    .line 1573
    invoke-interface {v1}, Lio/bidmachine/media3/common/audio/AudioProcessor;->reset()V

    goto :goto_9

    .line 1575
    :cond_19
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->toFloatPcmAvailableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/audio/AudioProcessor;

    .line 1576
    invoke-interface {v1}, Lio/bidmachine/media3/common/audio/AudioProcessor;->reset()V

    goto :goto_1f

    .line 1578
    :cond_2f
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;

    if-eqz v0, :cond_36

    .line 1579
    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;->reset()V

    :cond_36
    const/4 v0, 0x0

    .line 1581
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    .line 1582
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    return-void
.end method

.method public final resetSinkStateForFlush()V
    .registers 11

    const-wide/16 v0, 0x0

    .line 1618
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->submittedPcmBytes:J

    .line 1619
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 1620
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->writtenPcmBytes:J

    .line 1621
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    const/4 v2, 0x0

    .line 1622
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 1623
    iput v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    .line 1624
    new-instance v3, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v3 .. v9}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lio/bidmachine/media3/common/PlaybackParameters;JJLio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$1;)V

    iput-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 1627
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    const/4 v0, 0x0

    .line 1628
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->afterDrainParameters:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 1629
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 1630
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 1631
    iput v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    .line 1632
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 1633
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->stoppedAudioTrack:Z

    .line 1634
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->handledEndOfStream:Z

    .line 1635
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->handledOffloadOnPresentationEnded:Z

    .line 1636
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 1637
    iput v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 1638
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->trimmingAudioProcessor:Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/TrimmingAudioProcessor;->resetTrimmedFrameCount()V

    .line 1639
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->setupAudioProcessors()V

    return-void
.end method

.method public setAudioAttributes(Lio/bidmachine/media3/common/AudioAttributes;)V
    .registers 3

    .line 1399
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_f

    .line 1402
    :cond_9
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    .line 1403
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_10

    :goto_f
    return-void

    .line 1407
    :cond_10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz v0, :cond_17

    .line 1408
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->setAudioAttributes(Lio/bidmachine/media3/common/AudioAttributes;)V

    .line 1410
    :cond_17
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    return-void
.end method

.method public final setAudioProcessorPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)V
    .registers 9

    .line 1665
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lio/bidmachine/media3/common/PlaybackParameters;JJLio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$1;)V

    .line 1670
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1673
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->afterDrainParameters:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    return-void

    .line 1677
    :cond_1a
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    return-void
.end method

.method public setAudioSessionId(I)V
    .registers 3

    .line 1420
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v0, p1, :cond_10

    .line 1421
    iput p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    .line 1422
    :goto_b
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->externalAudioSessionIdProvided:Z

    .line 1423
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    :cond_10
    return-void
.end method

.method public final setAudioTrackPlaybackParametersV23()V
    .registers 4

    .line 1644
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1645
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 1647
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    iget v1, v1, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    .line 1648
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    iget v1, v1, Lio/bidmachine/media3/common/PlaybackParameters;->pitch:F

    .line 1649
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v0

    const/4 v1, 0x2

    .line 1650
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    move-result-object v0

    .line 1652
    :try_start_24
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_29} :catch_2a

    goto :goto_32

    :catch_2a
    move-exception v0

    .line 1654
    const-string v1, "DefaultAudioSink"

    const-string v2, "Failed to set playback params"

    invoke-static {v1, v2, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1657
    :goto_32
    new-instance v0, Lio/bidmachine/media3/common/PlaybackParameters;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    .line 1659
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/common/PlaybackParameters;-><init>(FF)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    .line 1660
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;

    iget v0, v0, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->setAudioTrackPlaybackSpeed(F)V

    :cond_54
    return-void
.end method

.method public setAuxEffectInfo(Lio/bidmachine/media3/common/AuxEffectInfo;)V
    .registers 6

    .line 1429
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Lio/bidmachine/media3/common/AuxEffectInfo;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/AuxEffectInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1432
    :cond_9
    iget v0, p1, Lio/bidmachine/media3/common/AuxEffectInfo;->effectId:I

    .line 1433
    iget v1, p1, Lio/bidmachine/media3/common/AuxEffectInfo;->sendLevel:F

    .line 1434
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_21

    .line 1435
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Lio/bidmachine/media3/common/AuxEffectInfo;

    iget v3, v3, Lio/bidmachine/media3/common/AuxEffectInfo;->effectId:I

    if-eq v3, v0, :cond_1a

    .line 1436
    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_1a
    if-eqz v0, :cond_21

    .line 1439
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 1442
    :cond_21
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Lio/bidmachine/media3/common/AuxEffectInfo;

    return-void
.end method

.method public setClock(Lio/bidmachine/media3/common/util/Clock;)V
    .registers 3

    .line 637
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrackPositionTracker:Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker;->setClock(Lio/bidmachine/media3/common/util/Clock;)V

    return-void
.end method

.method public setListener(Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;)V
    .registers 2

    .line 627
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->listener:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    return-void
.end method

.method public setOffloadDelayPadding(II)V
    .registers 4

    .line 1502
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_17

    .line 1503
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isOffloadedPlayback(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_17

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableOffloadGapless:Z

    if-eqz v0, :cond_17

    .line 1506
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    invoke-static {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioTrack;II)V

    :cond_17
    return-void
.end method

.method public setOffloadMode(I)V
    .registers 4

    .line 1495
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 1496
    iput p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->offloadMode:I

    return-void
.end method

.method public final setOutputBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 1217
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 1218
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 1221
    :cond_11
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->maybeRampUpVolume(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)V
    .registers 7

    .line 1367
    new-instance v0, Lio/bidmachine/media3/common/PlaybackParameters;

    iget v1, p1, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x41000000    # 8.0f

    .line 1369
    invoke-static {v1, v2, v3}, Lio/bidmachine/media3/common/util/Util;->constrainValue(FFF)F

    move-result v1

    iget v4, p1, Lio/bidmachine/media3/common/PlaybackParameters;->pitch:F

    .line 1370
    invoke-static {v4, v2, v3}, Lio/bidmachine/media3/common/util/Util;->constrainValue(FFF)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/common/PlaybackParameters;-><init>(FF)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    .line 1371
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->useAudioTrackPlaybackParams()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1372
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->setAudioTrackPlaybackParametersV23()V

    return-void

    .line 1374
    :cond_22
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->setAudioProcessorPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public setPlayerId(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 2

    .line 632
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    return-void
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    .line 1449
    :cond_4
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;-><init>(Landroid/media/AudioDeviceInfo;)V

    :goto_9
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    .line 1450
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioCapabilitiesReceiver:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz v0, :cond_12

    .line 1451
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->setRoutedDevice(Landroid/media/AudioDeviceInfo;)V

    .line 1453
    :cond_12
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    if-eqz p1, :cond_1b

    .line 1454
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;

    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Api23;->setPreferredDeviceOnAudioTrack(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;)V

    :cond_1b
    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .registers 2

    .line 1385
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    .line 1389
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->useAudioTrackPlaybackParams()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lio/bidmachine/media3/common/PlaybackParameters;->DEFAULT:Lio/bidmachine/media3/common/PlaybackParameters;

    goto :goto_d

    :cond_b
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    .line 1388
    :goto_d
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->setAudioProcessorPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public setVolume(F)V
    .registers 3

    .line 1512
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 1513
    iput p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->volume:F

    .line 1514
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->setVolumeInternal()V

    :cond_b
    return-void
.end method

.method public final setVolumeInternal()V
    .registers 3

    .line 1519
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->isAudioTrackInitialized()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1520
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->volume:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_d
    return-void
.end method

.method public final setupAudioProcessors()V
    .registers 2

    .line 825
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->audioProcessingPipeline:Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;

    .line 826
    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;->flush()V

    return-void
.end method

.method public final shouldApplyAudioProcessorPlaybackParameters()Z
    .registers 3

    .line 1719
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget v1, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v1, :cond_16

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Lio/bidmachine/media3/common/Format;

    iget v0, v0, Lio/bidmachine/media3/common/Format;->pcmEncoding:I

    .line 1721
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->shouldUseFloatOutput(I)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public final shouldUseFloatOutput(I)Z
    .registers 3

    .line 1735
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->enableFloatOutput:Z

    if-eqz v0, :cond_c

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Util;->isEncodingHighResolutionPcm(I)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public supportsFormat(Lio/bidmachine/media3/common/Format;)Z
    .registers 2

    .line 642
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->getFormatSupport(Lio/bidmachine/media3/common/Format;)I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public final useAudioTrackPlaybackParams()Z
    .registers 3

    .line 1725
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->configuration:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_10

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    if-eqz v0, :cond_10

    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public final writeNonBlockingWithAvSync(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .registers 16

    .line 1892
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    const-wide/16 v2, 0x3e8

    if-lt v0, v1, :cond_13

    const/4 v7, 0x1

    mul-long v8, p4, v2

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 1894
    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result p1

    return p1

    :cond_13
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 1897
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_2f

    const/16 p1, 0x10

    .line 1898
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    .line 1899
    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1900
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const p2, 0x55550001

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1902
    :cond_2f
    iget p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    const/4 p2, 0x0

    if-nez p1, :cond_49

    .line 1903
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 p3, 0x4

    invoke-virtual {p1, p3, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1904
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/16 p3, 0x8

    mul-long/2addr p4, v2

    invoke-virtual {p1, p3, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1905
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1906
    iput v6, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    .line 1908
    :cond_49
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    if-lez p1, :cond_60

    .line 1910
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->avSyncHeader:Ljava/nio/ByteBuffer;

    const/4 p4, 0x1

    .line 1911
    invoke-virtual {v4, p3, p1, p4}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p3

    if-gez p3, :cond_5d

    .line 1913
    iput p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    return p3

    :cond_5d
    if-ge p3, p1, :cond_60

    return p2

    .line 1920
    :cond_60
    invoke-static {v4, v5, v6}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->writeNonBlocking(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gez p1, :cond_69

    .line 1922
    iput p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    return p1

    .line 1925
    :cond_69
    iget p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    sub-int/2addr p2, p1

    iput p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->bytesUntilNextAvSync:I

    return p1
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.AnonymousClass1 (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$1;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.Api23 (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$Api23)
.class public final Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Api23;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api23"
.end annotation


# direct methods
.method public static getAudioTrackBufferSizeUs(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;)J
    .registers 9

    .line 2389
    iget v0, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-nez v0, :cond_e

    .line 2390
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->framesToDurationUs(J)J

    move-result-wide p0

    return-wide p0

    .line 2392
    :cond_e
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result p0

    int-to-long v0, p0

    iget p0, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    .line 2394
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;->getMaximumEncodedRateBytesPerSecond(I)I

    move-result p0

    int-to-long v4, p0

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v2, 0xf4240

    .line 2391
    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static setPreferredDeviceOnAudioTrack(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;)V
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_6

    .line 2384
    :cond_4
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/audio/AudioDeviceInfoApi23;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    .line 2383
    :goto_6
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.Api31 (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$Api31)
.class public final Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Api31;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api31"
.end annotation


# direct methods
.method public static setLogSessionIdOnAudioTrack(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 3

    .line 2405
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->getLogSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object p1

    .line 2406
    invoke-static {}, Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31$$ExternalSyntheticApiModelOutline0;->m()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2407
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Api31$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack;Landroid/media/metrics/LogSessionId;)V

    :cond_11
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.AudioOffloadSupportProvider (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$AudioOffloadSupportProvider)
.class public interface abstract Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioOffloadSupportProvider"
.end annotation


# virtual methods
.method public abstract getAudioOffloadSupport(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/AudioAttributes;)Lio/bidmachine/media3/exoplayer/audio/AudioOffloadSupport;
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.AudioTrackBufferSizeProvider (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$AudioTrackBufferSizeProvider)
.class public interface abstract Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioTrackBufferSizeProvider"
.end annotation


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 224
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;-><init>()V

    .line 225
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;->build()Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->DEFAULT:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    return-void
.end method


# virtual methods
.method public abstract getBufferSizeInBytes(IIIIIID)I
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.AudioTrackProvider (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$AudioTrackProvider)
.class public interface abstract Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioTrackProvider"
.end annotation


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 100
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackProvider;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioTrackProvider;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;->DEFAULT:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;

    return-void
.end method


# virtual methods
.method public abstract getAudioTrack(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;Lio/bidmachine/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.Builder (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$Builder)
.class public final Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public audioCapabilities:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

.field public audioOffloadListener:Lio/bidmachine/media3/exoplayer/ExoPlayer$AudioOffloadListener;

.field public audioOffloadSupportProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

.field public audioProcessorChain:Lio/bidmachine/media3/common/audio/AudioProcessorChain;

.field public audioTrackBufferSizeProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

.field public audioTrackProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;

.field public buildCalled:Z

.field public final context:Landroid/content/Context;

.field public enableAudioTrackPlaybackParams:Z

.field public enableFloatOutput:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->context:Landroid/content/Context;

    .line 308
    sget-object p1, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioCapabilities:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    .line 309
    sget-object p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->DEFAULT:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioTrackBufferSizeProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    .line 310
    sget-object p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;->DEFAULT:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioTrackProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroid/content/Context;
    .registers 1

    .line 276
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$1000(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)Lio/bidmachine/media3/exoplayer/ExoPlayer$AudioOffloadListener;
    .registers 1

    .line 276
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioOffloadListener:Lio/bidmachine/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    return-object p0
.end method

.method public static synthetic access$1100(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;
    .registers 1

    .line 276
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioTrackProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;

    return-object p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;
    .registers 1

    .line 276
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioCapabilities:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;

    return-object p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)Lio/bidmachine/media3/common/audio/AudioProcessorChain;
    .registers 1

    .line 276
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lio/bidmachine/media3/common/audio/AudioProcessorChain;

    return-object p0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)Z
    .registers 1

    .line 276
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->enableFloatOutput:Z

    return p0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)Z
    .registers 1

    .line 276
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->enableAudioTrackPlaybackParams:Z

    return p0
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;
    .registers 1

    .line 276
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioTrackBufferSizeProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;

    return-object p0
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;)Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;
    .registers 1

    .line 276
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioOffloadSupportProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    return-object p0
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;
    .registers 3

    .line 438
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 439
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->buildCalled:Z

    .line 440
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lio/bidmachine/media3/common/audio/AudioProcessorChain;

    if-nez v0, :cond_17

    .line 441
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/bidmachine/media3/common/audio/AudioProcessor;

    invoke-direct {v0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Lio/bidmachine/media3/common/audio/AudioProcessor;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioProcessorChain:Lio/bidmachine/media3/common/audio/AudioProcessorChain;

    .line 443
    :cond_17
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioOffloadSupportProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    if-nez v0, :cond_24

    .line 444
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioOffloadSupportProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->audioOffloadSupportProvider:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;

    .line 446
    :cond_24
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;-><init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$1;)V

    return-object v0
.end method

.method public setEnableAudioTrackPlaybackParams(Z)Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;
    .registers 2

    .line 379
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->enableAudioTrackPlaybackParams:Z

    return-object p0
.end method

.method public setEnableFloatOutput(Z)Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;
    .registers 2

    .line 365
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Builder;->enableFloatOutput:Z

    return-object p0
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.Configuration (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$Configuration)
.class public final Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# instance fields
.field public final audioProcessingPipeline:Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;

.field public final bufferSize:I

.field public final enableAudioTrackPlaybackParams:Z

.field public final enableOffloadGapless:Z

.field public final inputFormat:Lio/bidmachine/media3/common/Format;

.field public final inputPcmFrameSize:I

.field public final outputChannelConfig:I

.field public final outputEncoding:I

.field public final outputMode:I

.field public final outputPcmFrameSize:I

.field public final outputSampleRate:I

.field public final tunneling:Z


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/Format;IIIIIIILio/bidmachine/media3/common/audio/AudioProcessingPipeline;ZZZ)V
    .registers 13

    .line 2239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2240
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Lio/bidmachine/media3/common/Format;

    .line 2241
    iput p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    .line 2242
    iput p3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    .line 2243
    iput p4, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    .line 2244
    iput p5, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    .line 2245
    iput p6, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    .line 2246
    iput p7, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    .line 2247
    iput p8, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->bufferSize:I

    .line 2248
    iput-object p9, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->audioProcessingPipeline:Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;

    .line 2249
    iput-boolean p10, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    .line 2250
    iput-boolean p11, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableOffloadGapless:Z

    .line 2251
    iput-boolean p12, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->tunneling:Z

    return-void
.end method


# virtual methods
.method public buildAudioTrackConfig()Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;
    .registers 8

    .line 2290
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget-boolean v4, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->tunneling:Z

    iget v5, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_11

    :goto_f
    move v5, v6

    goto :goto_13

    :cond_11
    const/4 v6, 0x0

    goto :goto_f

    :goto_13
    iget v6, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->bufferSize:I

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;-><init>(IIIZZI)V

    return-object v0
.end method

.method public canReuseAudioTrack(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z
    .registers 4

    .line 2272
    iget v0, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    iget v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-ne v0, v1, :cond_2c

    iget v0, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    if-ne v0, v1, :cond_2c

    iget v0, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    if-ne v0, v1, :cond_2c

    iget v0, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    if-ne v0, v1, :cond_2c

    iget v0, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    if-ne v0, v1, :cond_2c

    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    if-ne v0, v1, :cond_2c

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableOffloadGapless:Z

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableOffloadGapless:Z

    if-ne p1, v0, :cond_2c

    const/4 p1, 0x1

    return p1

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method public copyWithBufferSize(I)Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;
    .registers 15

    .line 2255
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Lio/bidmachine/media3/common/Format;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    iget v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    iget v4, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget v5, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v6, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v7, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->audioProcessingPipeline:Lio/bidmachine/media3/common/audio/AudioProcessingPipeline;

    iget-boolean v10, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    iget-boolean v11, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableOffloadGapless:Z

    iget-boolean v12, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->tunneling:Z

    move v8, p1

    invoke-direct/range {v0 .. v12}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;-><init>(Lio/bidmachine/media3/common/Format;IIIIIIILio/bidmachine/media3/common/audio/AudioProcessingPipeline;ZZZ)V

    return-object v0
.end method

.method public framesToDurationUs(J)J
    .registers 4

    .line 2286
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    invoke-static {p1, p2, v0}, Lio/bidmachine/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public inputFramesToDurationUs(J)J
    .registers 4

    .line 2282
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Lio/bidmachine/media3/common/Format;

    iget v0, v0, Lio/bidmachine/media3/common/Format;->sampleRate:I

    invoke-static {p1, p2, v0}, Lio/bidmachine/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public outputModeIsOffload()Z
    .registers 3

    .line 2300
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.DefaultAudioProcessorChain (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$DefaultAudioProcessorChain)
.class public Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lio/bidmachine/media3/common/audio/AudioProcessorChain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAudioProcessorChain"
.end annotation


# instance fields
.field public final audioProcessors:[Lio/bidmachine/media3/common/audio/AudioProcessor;

.field public final silenceSkippingAudioProcessor:Lio/bidmachine/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

.field public final sonicAudioProcessor:Lio/bidmachine/media3/common/audio/SonicAudioProcessor;


# direct methods
.method public varargs constructor <init>([Lio/bidmachine/media3/common/audio/AudioProcessor;)V
    .registers 4

    .line 164
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/audio/SilenceSkippingAudioProcessor;-><init>()V

    new-instance v1, Lio/bidmachine/media3/common/audio/SonicAudioProcessor;

    invoke-direct {v1}, Lio/bidmachine/media3/common/audio/SonicAudioProcessor;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Lio/bidmachine/media3/common/audio/AudioProcessor;Lio/bidmachine/media3/exoplayer/audio/SilenceSkippingAudioProcessor;Lio/bidmachine/media3/common/audio/SonicAudioProcessor;)V

    return-void
.end method

.method public constructor <init>([Lio/bidmachine/media3/common/audio/AudioProcessor;Lio/bidmachine/media3/exoplayer/audio/SilenceSkippingAudioProcessor;Lio/bidmachine/media3/common/audio/SonicAudioProcessor;)V
    .registers 7

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lio/bidmachine/media3/common/audio/AudioProcessor;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Lio/bidmachine/media3/common/audio/AudioProcessor;

    const/4 v1, 0x0

    .line 178
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Lio/bidmachine/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    .line 185
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Lio/bidmachine/media3/common/audio/SonicAudioProcessor;

    .line 186
    array-length v1, p1

    aput-object p2, v0, v1

    .line 187
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object p3, v0, p1

    return-void
.end method


# virtual methods
.method public applyPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)Lio/bidmachine/media3/common/PlaybackParameters;
    .registers 4

    .line 197
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Lio/bidmachine/media3/common/audio/SonicAudioProcessor;

    iget v1, p1, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/audio/SonicAudioProcessor;->setSpeed(F)V

    .line 198
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Lio/bidmachine/media3/common/audio/SonicAudioProcessor;

    iget v1, p1, Lio/bidmachine/media3/common/PlaybackParameters;->pitch:F

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/audio/SonicAudioProcessor;->setPitch(F)V

    return-object p1
.end method

.method public applySkipSilenceEnabled(Z)Z
    .registers 3

    .line 204
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Lio/bidmachine/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->setEnabled(Z)V

    return p1
.end method

.method public getAudioProcessors()[Lio/bidmachine/media3/common/audio/AudioProcessor;
    .registers 2

    .line 192
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Lio/bidmachine/media3/common/audio/AudioProcessor;

    return-object v0
.end method

.method public getMediaDuration(J)J
    .registers 4

    .line 210
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Lio/bidmachine/media3/common/audio/SonicAudioProcessor;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/SonicAudioProcessor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 211
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Lio/bidmachine/media3/common/audio/SonicAudioProcessor;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/common/audio/SonicAudioProcessor;->getMediaDuration(J)J

    move-result-wide p1

    :cond_e
    return-wide p1
.end method

.method public getSkippedOutputFrameCount()J
    .registers 3

    .line 217
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Lio/bidmachine/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->getSkippedFrames()J

    move-result-wide v0

    return-wide v0
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.InvalidAudioTrackTimestampException (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$InvalidAudioTrackTimestampException)
.class public final Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;
.super Ljava/lang/RuntimeException;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvalidAudioTrackTimestampException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 138
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$1;)V
    .registers 3

    .line 130
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.MediaPositionParameters (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$MediaPositionParameters)
.class public final Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPositionParameters"
.end annotation


# instance fields
.field public final audioTrackPositionUs:J

.field public mediaPositionDriftUs:J

.field public final mediaTimeUs:J

.field public final playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/PlaybackParameters;JJ)V
    .registers 6

    .line 2124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2125
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    .line 2126
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    .line 2127
    iput-wide p4, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->audioTrackPositionUs:J

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/common/PlaybackParameters;JJLio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$1;)V
    .registers 7

    .line 2106
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Lio/bidmachine/media3/common/PlaybackParameters;JJ)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.OnRoutingChangedListenerApi24 (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$OnRoutingChangedListenerApi24)
.class public final Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnRoutingChangedListenerApi24"
.end annotation


# instance fields
.field public final audioTrack:Landroid/media/AudioTrack;

.field public final capabilitiesReceiver:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

.field public listener:Landroid/media/AudioRouting$OnRoutingChangedListener;


# direct methods
.method public static synthetic $r8$lambda$fdIxQVnBzj3iTHXbdMzc7d3yXaA(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;Landroid/media/AudioRouting;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;->onRoutingChanged(Landroid/media/AudioRouting;)V

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;)V
    .registers 4

    .line 2019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2020
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;->audioTrack:Landroid/media/AudioTrack;

    .line 2021
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;->capabilitiesReceiver:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 2022
    new-instance p2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;)V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;->listener:Landroid/media/AudioRouting$OnRoutingChangedListener;

    .line 2023
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2024
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;->listener:Landroid/media/AudioRouting$OnRoutingChangedListener;

    invoke-virtual {p1, v0, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onRoutingChanged(Landroid/media/AudioRouting;)V
    .registers 3

    .line 2033
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;->listener:Landroid/media/AudioRouting$OnRoutingChangedListener;

    if-nez v0, :cond_5

    goto :goto_10

    .line 2037
    :cond_5
    invoke-interface {p1}, Landroid/media/AudioRouting;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 2039
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;->capabilitiesReceiver:Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver;->setRoutedDevice(Landroid/media/AudioDeviceInfo;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public release()V
    .registers 3

    .line 2028
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;->listener:Landroid/media/AudioRouting$OnRoutingChangedListener;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioRouting$OnRoutingChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    const/4 v0, 0x0

    .line 2029
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;->listener:Landroid/media/AudioRouting$OnRoutingChangedListener;

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/AudioRouting$OnRoutingChangedListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;

    return-void
.end method


# virtual methods
.method public final onRoutingChanged(Landroid/media/AudioRouting;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;->$r8$lambda$fdIxQVnBzj3iTHXbdMzc7d3yXaA(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$OnRoutingChangedListenerApi24;Landroid/media/AudioRouting;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.PendingExceptionHolder (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$PendingExceptionHolder)
.class public final Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingExceptionHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public earliestNextRetryTimeMs:J

.field public pendingException:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public throwDeadlineMs:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 2322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2323
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->throwDeadlineMs:J

    .line 2324
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->earliestNextRetryTimeMs:J

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    const/4 v0, 0x0

    .line 2363
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->pendingException:Ljava/lang/Exception;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2364
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->throwDeadlineMs:J

    .line 2365
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->earliestNextRetryTimeMs:J

    return-void
.end method

.method public shouldWaitBeforeRetry()Z
    .registers 8

    .line 2351
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->pendingException:Ljava/lang/Exception;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2355
    :cond_6
    invoke-static {}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$2000()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    return v2

    .line 2359
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->earliestNextRetryTimeMs:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_19

    return v2

    :cond_19
    return v1
.end method

.method public throwExceptionIfDeadlineIsReached(Ljava/lang/Exception;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2329
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->pendingException:Ljava/lang/Exception;

    if-nez v2, :cond_a

    .line 2330
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->pendingException:Ljava/lang/Exception;

    .line 2332
    :cond_a
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->throwDeadlineMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_20

    invoke-static {}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$2000()Z

    move-result v2

    if-nez v2, :cond_20

    const-wide/16 v2, 0xc8

    add-long/2addr v2, v0

    .line 2336
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->throwDeadlineMs:J

    .line 2338
    :cond_20
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->throwDeadlineMs:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_37

    cmp-long v2, v0, v2

    if-ltz v2, :cond_37

    .line 2339
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->pendingException:Ljava/lang/Exception;

    if-eq v0, p1, :cond_31

    .line 2341
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 2343
    :cond_31
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->pendingException:Ljava/lang/Exception;

    .line 2344
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 2345
    throw p1

    :cond_37
    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    .line 2347
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->earliestNextRetryTimeMs:J

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.PositionTrackerListener (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$PositionTrackerListener)
.class public final Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PositionTrackerListener;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PositionTrackerListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)V
    .registers 2

    .line 2138
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$1;)V
    .registers 3

    .line 2138
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PositionTrackerListener;-><init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)V

    return-void
.end method


# virtual methods
.method public onInvalidLatency(J)V
    .registers 5

    .line 2192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring impossibly large audio latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultAudioSink"

    invoke-static {p2, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPositionAdvancing(J)V
    .registers 4

    .line 2197
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1300(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2198
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1300(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;->onPositionAdvancing(J)V

    :cond_11
    return-void
.end method

.method public onPositionFramesMismatch(JJJJ)V
    .registers 11

    .line 2146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    .line 2156
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1600(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    .line 2158
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1700(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2159
    sget-boolean p2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->failOnSpuriousAudioTimestamp:Z

    if-nez p2, :cond_47

    .line 2162
    const-string p2, "DefaultAudioSink"

    invoke-static {p2, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2160
    :cond_47
    new-instance p2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$1;)V

    throw p2
.end method

.method public onSystemTimeUsMismatch(JJJJ)V
    .registers 11

    .line 2171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    .line 2181
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1600(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    .line 2183
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1700(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2184
    sget-boolean p2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->failOnSpuriousAudioTimestamp:Z

    if-nez p2, :cond_47

    .line 2187
    const-string p2, "DefaultAudioSink"

    invoke-static {p2, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2185
    :cond_47
    new-instance p2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$1;)V

    throw p2
.end method

.method public onUnderrun(IJ)V
    .registers 14

    .line 2204
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1300(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1900(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)J

    move-result-wide v2

    sub-long v8, v0, v2

    .line 2206
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$PositionTrackerListener;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1300(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    move-result-object v4

    move v5, p1

    move-wide v6, p2

    invoke-interface/range {v4 .. v9}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;->onUnderrun(IJJ)V

    :cond_1f
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.StreamEventCallbackV29 (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$StreamEventCallbackV29)
.class public final Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StreamEventCallbackV29"
.end annotation


# instance fields
.field public final callback:Landroid/media/AudioTrack$StreamEventCallback;

.field public final handler:Landroid/os/Handler;

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)V
    .registers 4

    .line 2049
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2050
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->handler:Landroid/os/Handler;

    .line 2054
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;

    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;-><init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->callback:Landroid/media/AudioTrack$StreamEventCallback;

    return-void
.end method


# virtual methods
.method public register(Landroid/media/AudioTrack;)V
    .registers 4

    .line 2096
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->handler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/webkit/WebViewCompat$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroidx/webkit/WebViewCompat$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->callback:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-static {p1, v1, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioTrack;Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    return-void
.end method

.method public unregister(Landroid/media/AudioTrack;)V
    .registers 3

    .line 2100
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->callback:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/AudioTrack;Landroid/media/AudioTrack$StreamEventCallback;)V

    .line 2101
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink.StreamEventCallbackV29.AnonymousClass1 (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$StreamEventCallbackV29$1)
.class public Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;-><init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

.field public final synthetic val$this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)V
    .registers 3

    .line 2055
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;->val$this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataRequest(Landroid/media/AudioTrack;I)V
    .registers 3

    .line 2058
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1200(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Landroid/media/AudioTrack;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_2e

    .line 2062
    :cond_f
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1300(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    move-result-object p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1400(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 2065
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1300(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;->onOffloadBufferEmptying()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public onPresentationEnded(Landroid/media/AudioTrack;)V
    .registers 3

    .line 2071
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1200(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 2075
    :cond_f
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1502(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;Z)Z

    return-void
.end method

.method public onTearDown(Landroid/media/AudioTrack;)V
    .registers 3

    .line 2080
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1200(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_2e

    .line 2084
    :cond_f
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1300(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    move-result-object p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1400(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 2089
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;->this$1:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->access$1300(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;->onOffloadBufferEmptying()V

    :cond_2e
    :goto_2e
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticLambda3 (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioTrack;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

.field public final synthetic f$2:Landroid/os/Handler;

.field public final synthetic f$3:Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda3;->f$0:Landroid/media/AudioTrack;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda3;->f$1:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda3;->f$2:Landroid/os/Handler;

    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda3;->f$3:Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda3;->f$0:Landroid/media/AudioTrack;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda3;->f$1:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda3;->f$2:Landroid/os/Handler;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda3;->f$3:Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->$r8$lambda$Cf7hwM_T_KBoeL82lCTgva9YtD8(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticLambda4 (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    return-void
.end method


# virtual methods
.method public final onAudioCapabilitiesChanged(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->onAudioCapabilitiesChanged(Lio/bidmachine/media3/exoplayer/audio/AudioCapabilities;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticLambda5 (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda5;->f$1:Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda5;->f$1:Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->$r8$lambda$GrkyfxsOLW9Lo7Gc8xDKzE0KfKE(Lio/bidmachine/media3/exoplayer/audio/AudioSink$Listener;Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticLambda6 (io.bidmachine.media3.exoplayer.audio.DefaultAudioSink$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->$r8$lambda$cgCUWNB3EedpkSa0urTEHzsPKsw(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)V

    return-void
.end method
