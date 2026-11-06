###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl (io.bidmachine.media3.exoplayer.ExoPlayerImpl)
.class public final Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;
.super Lio/bidmachine/media3/common/BasePlayer;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/ExoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;,
        Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;,
        Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$Api31;,
        Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;
    }
.end annotation


# instance fields
.field public final analyticsCollector:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

.field public final applicationContext:Landroid/content/Context;

.field public final applicationLooper:Landroid/os/Looper;

.field public audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

.field public final audioBecomingNoisyManager:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;

.field public audioDecoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

.field public audioFormat:Lio/bidmachine/media3/common/Format;

.field public final audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lio/bidmachine/media3/exoplayer/ExoPlayer$AudioOffloadListener;",
            ">;"
        }
    .end annotation
.end field

.field public final audioSessionIdState:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public availableCommands:Lio/bidmachine/media3/common/Player$Commands;

.field public final bandwidthMeter:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;

.field public final clock:Lio/bidmachine/media3/common/util/Clock;

.field public final componentListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;

.field public final constructorFinished:Lio/bidmachine/media3/common/util/ConditionVariable;

.field public currentCueGroup:Lio/bidmachine/media3/common/text/CueGroup;

.field public final detachSurfaceTimeoutMs:J

.field public deviceInfo:Lio/bidmachine/media3/common/DeviceInfo;

.field public final emptyTrackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

.field public final frameMetadataListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

.field public hasNotifiedFullWrongThreadWarning:Z

.field public final internalPlayer:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

.field public isPriorityTaskManagerRegistered:Z

.field public final listeners:Lio/bidmachine/media3/common/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/common/util/ListenerSet<",
            "Lio/bidmachine/media3/common/Player$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public maskingPeriodIndex:I

.field public maskingWindowIndex:I

.field public maskingWindowPositionMs:J

.field public final maxSeekToPreviousPositionMs:J

.field public mediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

.field public final mediaSourceFactory:Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

.field public final mediaSourceHolderSnapshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field public ownedSurface:Landroid/view/Surface;

.field public pauseAtEndOfMediaItems:Z

.field public pendingDiscontinuity:Z

.field public pendingDiscontinuityReason:I

.field public pendingOperationAcks:I

.field public final period:Lio/bidmachine/media3/common/Timeline$Period;

.field public final permanentAvailableCommands:Lio/bidmachine/media3/common/Player$Commands;

.field public playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

.field public final playbackInfoUpdateHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

.field public final playbackInfoUpdateListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

.field public playerReleased:Z

.field public playlistMetadata:Lio/bidmachine/media3/common/MediaMetadata;

.field public preloadConfiguration:Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;

.field public priority:I

.field public priorityTaskManager:Lio/bidmachine/media3/common/PriorityTaskManager;

.field public final renderers:[Lio/bidmachine/media3/exoplayer/Renderer;

.field public repeatMode:I

.field public final secondaryRenderers:[Lio/bidmachine/media3/exoplayer/Renderer;

.field public final seekBackIncrementMs:J

.field public final seekForwardIncrementMs:J

.field public seekParameters:Lio/bidmachine/media3/exoplayer/SeekParameters;

.field public shuffleModeEnabled:Z

.field public shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

.field public skipSilenceEnabled:Z

.field public sphericalGLSurfaceView:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

.field public staticAndDynamicMediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

.field public final streamVolumeManager:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

.field public final suitableOutputChecker:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;

.field public surfaceHolder:Landroid/view/SurfaceHolder;

.field public surfaceHolderSurfaceIsVideoOutput:Z

.field public surfaceSize:Lio/bidmachine/media3/common/util/Size;

.field public textureView:Landroid/view/TextureView;

.field public throwsWhenUsingWrongThread:Z

.field public final trackSelector:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;

.field public final useLazyPreparation:Z

.field public videoChangeFrameRateStrategy:I

.field public videoDecoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

.field public videoFormat:Lio/bidmachine/media3/common/Format;

.field public videoOutput:Ljava/lang/Object;

.field public videoScalingMode:I

.field public videoSize:Lio/bidmachine/media3/common/VideoSize;

.field public volume:F

.field public final wakeLockManager:Lio/bidmachine/media3/exoplayer/WakeLockManager;

.field public final wifiLockManager:Lio/bidmachine/media3/exoplayer/WifiLockManager;

.field public final wrappingPlayer:Lio/bidmachine/media3/common/Player;


# direct methods
.method public static synthetic $r8$lambda$1FdJdSdbVnPEzjp9RFGPrR8JEYs(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .registers 2

    .line 347
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->handlePlaybackInfo(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1rCpN0b5K1ms-oIXNxlcGzVjQGM(Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 3

    .line 1034
    new-instance v0, Lio/bidmachine/media3/exoplayer/ExoTimeoutException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoTimeoutException;-><init>(I)V

    const/16 v1, 0x3eb

    .line 1035
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    .line 1034
    invoke-interface {p0, v0}, Lio/bidmachine/media3/common/Player$Listener;->onPlayerError(Lio/bidmachine/media3/common/PlaybackException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6LLL4Lv5dRFmWppgWA08hKDjefY(Lio/bidmachine/media3/common/MediaMetadata;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 2089
    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onMediaMetadataChanged(Lio/bidmachine/media3/common/MediaMetadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cz6lvS-Z3w3a-KnHlLczYqJx2J0(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)V
    .registers 2

    .line 405
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->audioSessionIdState:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    .line 405
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    .line 406
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->generateAudioSessionIdV21(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 405
    invoke-virtual {v0, p0}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->setStateInBackground(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Iv1pWKm04kZLFB0VtPX93CscNlo(ILio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 2903
    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onAudioSessionIdChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jm1VB0B3Wu-g9VUNeSNiqnxwQoA(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 2076
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackError:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onPlayerError(Lio/bidmachine/media3/common/PlaybackException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ldrn6zzC-nPogztmoqGQLwLvnbA(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 2109
    iget p0, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NkHwSwEVd8zyJjwRQrTidYGpy9w(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 2136
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onPlaybackParametersChanged(Lio/bidmachine/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OzEgsB94yIIeddfSQs2uEDufMAQ(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 3

    .line 2095
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->isLoading:Z

    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/Player$Listener;->onLoadingChanged(Z)V

    .line 2096
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->isLoading:Z

    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onIsLoadingChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$PMqBF9H8SXVbRiwaHjMm7Lt90io(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 2072
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackError:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onPlayerErrorChanged(Lio/bidmachine/media3/common/PlaybackException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RWc5NEia-j2Ev6fa-Me64YPtBsc(FLio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 1528
    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$UrkAq3wBMxvKCAdkFRBU9yMwAXw(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 2303
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->availableCommands:Lio/bidmachine/media3/common/Player$Commands;

    .line 2303
    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onAvailableCommandsChanged(Lio/bidmachine/media3/common/Player$Commands;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WXFeN2T9r6jfqXVxal003xVdWZk(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 2125
    iget p0, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bmGpyof4ANC1-YdsYT8yXdY1Tac(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;II)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->onAudioSessionIdChanged(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$fQdn8yHyR7bZtzXoJwrCBrZy77s(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 3

    .line 2117
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget p0, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    invoke-interface {p1, v0, p0}, Lio/bidmachine/media3/common/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$gpH94mPHmqK1rUyyNewWshJ0xZ4(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 2083
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->tracks:Lio/bidmachine/media3/common/Tracks;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onTracksChanged(Lio/bidmachine/media3/common/Tracks;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hPrnxOPxkhP-5vdfBB9rJ1jAZ3o(ILio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 4

    .line 2058
    invoke-interface {p3, p0}, Lio/bidmachine/media3/common/Player$Listener;->onPositionDiscontinuity(I)V

    .line 2059
    invoke-interface {p3, p1, p2, p0}, Lio/bidmachine/media3/common/Player$Listener;->onPositionDiscontinuity(Lio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$hxhIehOzzMSIJ26I-zzJZxj-wkI(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 2131
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->isPlaying()Z

    move-result p0

    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ie7nZ43T4qtqxqQchD1_RUMqH2Y(Lio/bidmachine/media3/exoplayer/PlaybackInfo;ILio/bidmachine/media3/common/Player$Listener;)V
    .registers 3

    .line 2048
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/common/Player$Listener;->onTimelineChanged(Lio/bidmachine/media3/common/Timeline;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j1Cbz3JqAFkd7eEVxe6tNDIB7sc(Lio/bidmachine/media3/common/TrackSelectionParameters;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 1241
    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onTrackSelectionParametersChanged(Lio/bidmachine/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kvl-74yoEOYXm1HMiI9Qpy8OsXs(IILio/bidmachine/media3/common/Player$Listener;)V
    .registers 3

    .line 2727
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/common/Player$Listener;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$kwKBrFGBZ2KKXGyIn7Omk628Lxc(ZLio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 837
    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$m2QW33MdQ6yJ9vB4EDBnAEmKxP4(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 3

    .line 2103
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget p0, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    invoke-interface {p1, v0, p0}, Lio/bidmachine/media3/common/Player$Listener;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$oPubwSkfh1776bpaUKXhIVQjSa8(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .registers 4

    .line 347
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    .line 347
    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda21;-><init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$u4nWqr2CQHLUY_Jy_Vwr0Fvbw44(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->onSelectedOutputSuitabilityChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vTJEPRATgAMhv-GlSkHLZgSe9CY(ILio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 817
    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ypFq-_v4IKHaOKhyLBCm-TN8RaE(Lio/bidmachine/media3/common/MediaItem;ILio/bidmachine/media3/common/Player$Listener;)V
    .registers 3

    .line 2067
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/common/Player$Listener;->onMediaItemTransition(Lio/bidmachine/media3/common/MediaItem;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yvQHFg4jvrB78LVCCFPR12mxgSw(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/Player$Listener;Lio/bidmachine/media3/common/FlagSet;)V
    .registers 4

    .line 295
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Lio/bidmachine/media3/common/Player;

    .line 295
    new-instance v0, Lio/bidmachine/media3/common/Player$Events;

    invoke-direct {v0, p2}, Lio/bidmachine/media3/common/Player$Events;-><init>(Lio/bidmachine/media3/common/FlagSet;)V

    invoke-interface {p1, p0, v0}, Lio/bidmachine/media3/common/Player$Listener;->onEvents(Lio/bidmachine/media3/common/Player;Lio/bidmachine/media3/common/Player$Events;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 130
    const-string v0, "media3.exoplayer"

    invoke-static {v0}, Lio/bidmachine/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;Lio/bidmachine/media3/common/Player;)V
    .registers 38
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/16 v2, 0x14

    const/4 v7, 0x1

    .line 234
    invoke-direct {v1}, Lio/bidmachine/media3/common/BasePlayer;-><init>()V

    .line 235
    new-instance v8, Lio/bidmachine/media3/common/util/ConditionVariable;

    invoke-direct {v8}, Lio/bidmachine/media3/common/util/ConditionVariable;-><init>()V

    iput-object v8, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Lio/bidmachine/media3/common/util/ConditionVariable;

    .line 237
    :try_start_11
    const-string v8, "ExoPlayerImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Init "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "AndroidXMedia3/1.7.1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lio/bidmachine/media3/common/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 237
    invoke-static {v8, v9}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    .line 247
    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {v8, v9}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    iput-object v8, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    .line 248
    iget v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->priority:I

    iput v8, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->priority:I

    .line 249
    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->priorityTaskManager:Lio/bidmachine/media3/common/PriorityTaskManager;

    iput-object v8, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->priorityTaskManager:Lio/bidmachine/media3/common/PriorityTaskManager;

    .line 250
    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    iput-object v8, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    .line 251
    iget v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->videoScalingMode:I

    iput v8, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->videoScalingMode:I

    .line 252
    iget v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    iput v8, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    .line 253
    iget-boolean v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->skipSilenceEnabled:Z

    iput-boolean v8, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    .line 254
    iget-wide v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    iput-wide v8, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->detachSurfaceTimeoutMs:J

    .line 255
    new-instance v12, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    const/4 v8, 0x0

    invoke-direct {v12, v1, v8}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;-><init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$1;)V

    iput-object v12, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->componentListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 256
    new-instance v9, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {v9, v8}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;-><init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$1;)V

    iput-object v9, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    .line 257
    new-instance v15, Landroid/os/Handler;

    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    invoke-direct {v15, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 258
    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v9}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Lio/bidmachine/media3/exoplayer/RenderersFactory;

    move-object v10, v13

    move-object v13, v12

    move-object v14, v12

    move-object v11, v15

    move-object v15, v12

    .line 260
    invoke-interface/range {v10 .. v15}, Lio/bidmachine/media3/exoplayer/RenderersFactory;->createRenderers(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;Lio/bidmachine/media3/exoplayer/audio/AudioRendererEventListener;Lio/bidmachine/media3/exoplayer/text/TextOutput;Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;)[Lio/bidmachine/media3/exoplayer/Renderer;

    move-result-object v9

    iput-object v9, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->renderers:[Lio/bidmachine/media3/exoplayer/Renderer;

    .line 266
    array-length v12, v9

    const/4 v13, 0x0

    if-lez v12, :cond_a8

    move v12, v7

    goto :goto_a9

    :cond_a8
    move v12, v13

    :goto_a9
    invoke-static {v12}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 267
    array-length v9, v9

    new-array v9, v9, [Lio/bidmachine/media3/exoplayer/Renderer;

    iput-object v9, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->secondaryRenderers:[Lio/bidmachine/media3/exoplayer/Renderer;

    move v9, v13

    .line 268
    :goto_b2
    iget-object v12, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->secondaryRenderers:[Lio/bidmachine/media3/exoplayer/Renderer;

    array-length v14, v12

    if-ge v9, v14, :cond_da

    .line 270
    iget-object v14, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->renderers:[Lio/bidmachine/media3/exoplayer/Renderer;

    aget-object v14, v14, v9

    iget-object v15, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->componentListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    move-object/from16 v17, v15

    move-object/from16 v18, v15

    move-object/from16 v19, v15

    move/from16 v16, v13

    move-object v13, v10

    move/from16 v10, v16

    move-object/from16 v16, v15

    move-object v15, v11

    .line 271
    invoke-interface/range {v13 .. v19}, Lio/bidmachine/media3/exoplayer/RenderersFactory;->createSecondaryRenderer(Lio/bidmachine/media3/exoplayer/Renderer;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;Lio/bidmachine/media3/exoplayer/audio/AudioRendererEventListener;Lio/bidmachine/media3/exoplayer/text/TextOutput;Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;)Lio/bidmachine/media3/exoplayer/Renderer;

    move-result-object v11

    aput-object v11, v12, v9

    add-int/2addr v9, v7

    move-object v11, v13

    move v13, v10

    move-object v10, v11

    move-object v11, v15

    goto :goto_b2

    :catchall_d7
    move-exception v0

    goto/16 :goto_397

    :cond_da
    move v10, v13

    .line 279
    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v9}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;

    iput-object v15, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->trackSelector:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;

    .line 280
    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v9}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    iput-object v9, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->mediaSourceFactory:Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    .line 281
    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v9}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;

    iput-object v9, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->bandwidthMeter:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;

    .line 282
    iget-boolean v11, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->useLazyPreparation:Z

    iput-boolean v11, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->useLazyPreparation:Z

    .line 283
    iget-object v11, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->seekParameters:Lio/bidmachine/media3/exoplayer/SeekParameters;

    iput-object v11, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->seekParameters:Lio/bidmachine/media3/exoplayer/SeekParameters;

    .line 284
    iget-wide v11, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->seekBackIncrementMs:J

    iput-wide v11, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->seekBackIncrementMs:J

    .line 285
    iget-wide v11, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->seekForwardIncrementMs:J

    iput-wide v11, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->seekForwardIncrementMs:J

    .line 286
    iget-wide v11, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->maxSeekToPreviousPositionMs:J

    iput-wide v11, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maxSeekToPreviousPositionMs:J

    .line 287
    iget-boolean v11, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->pauseAtEndOfMediaItems:Z

    iput-boolean v11, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    .line 288
    iget-object v11, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    iput-object v11, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    .line 289
    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->clock:Lio/bidmachine/media3/common/util/Clock;

    iput-object v12, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->clock:Lio/bidmachine/media3/common/util/Clock;

    if-nez p2, :cond_11e

    move-object v13, v1

    goto :goto_120

    :cond_11e
    move-object/from16 v13, p2

    .line 290
    :goto_120
    iput-object v13, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Lio/bidmachine/media3/common/Player;

    .line 291
    new-instance v14, Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v4, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda16;

    invoke-direct {v4, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda16;-><init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)V

    invoke-direct {v14, v11, v12, v4}, Lio/bidmachine/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v14, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    .line 296
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 297
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 298
    new-instance v4, Lio/bidmachine/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-direct {v4, v10}, Lio/bidmachine/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    .line 299
    sget-object v4, Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;->DEFAULT:Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->preloadConfiguration:Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 300
    new-instance v4, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v14, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->renderers:[Lio/bidmachine/media3/exoplayer/Renderer;

    array-length v5, v14

    new-array v5, v5, [Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    array-length v14, v14

    new-array v14, v14, [Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    sget-object v6, Lio/bidmachine/media3/common/Tracks;->EMPTY:Lio/bidmachine/media3/common/Tracks;

    invoke-direct {v4, v5, v14, v6, v8}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Lio/bidmachine/media3/exoplayer/RendererConfiguration;[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;Lio/bidmachine/media3/common/Tracks;Ljava/lang/Object;)V

    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 306
    new-instance v5, Lio/bidmachine/media3/common/Timeline$Period;

    invoke-direct {v5}, Lio/bidmachine/media3/common/Timeline$Period;-><init>()V

    iput-object v5, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 307
    new-instance v5, Lio/bidmachine/media3/common/Player$Commands$Builder;

    invoke-direct {v5}, Lio/bidmachine/media3/common/Player$Commands$Builder;-><init>()V

    new-array v2, v2, [I

    fill-array-data v2, :array_39e

    .line 309
    invoke-virtual {v5, v2}, Lio/bidmachine/media3/common/Player$Commands$Builder;->addAll([I)Lio/bidmachine/media3/common/Player$Commands$Builder;

    move-result-object v2

    .line 331
    invoke-virtual {v15}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;->isSetParametersSupported()Z

    move-result v5

    const/16 v6, 0x1d

    .line 330
    invoke-virtual {v2, v6, v5}, Lio/bidmachine/media3/common/Player$Commands$Builder;->addIf(IZ)Lio/bidmachine/media3/common/Player$Commands$Builder;

    move-result-object v2

    iget-boolean v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    const/16 v6, 0x17

    .line 332
    invoke-virtual {v2, v6, v5}, Lio/bidmachine/media3/common/Player$Commands$Builder;->addIf(IZ)Lio/bidmachine/media3/common/Player$Commands$Builder;

    move-result-object v2

    iget-boolean v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    const/16 v6, 0x19

    .line 333
    invoke-virtual {v2, v6, v5}, Lio/bidmachine/media3/common/Player$Commands$Builder;->addIf(IZ)Lio/bidmachine/media3/common/Player$Commands$Builder;

    move-result-object v2

    iget-boolean v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    const/16 v6, 0x21

    .line 334
    invoke-virtual {v2, v6, v5}, Lio/bidmachine/media3/common/Player$Commands$Builder;->addIf(IZ)Lio/bidmachine/media3/common/Player$Commands$Builder;

    move-result-object v2

    iget-boolean v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    const/16 v6, 0x1a

    .line 335
    invoke-virtual {v2, v6, v5}, Lio/bidmachine/media3/common/Player$Commands$Builder;->addIf(IZ)Lio/bidmachine/media3/common/Player$Commands$Builder;

    move-result-object v2

    iget-boolean v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    const/16 v6, 0x22

    .line 336
    invoke-virtual {v2, v6, v5}, Lio/bidmachine/media3/common/Player$Commands$Builder;->addIf(IZ)Lio/bidmachine/media3/common/Player$Commands$Builder;

    move-result-object v2

    .line 337
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Player$Commands$Builder;->build()Lio/bidmachine/media3/common/Player$Commands;

    move-result-object v2

    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->permanentAvailableCommands:Lio/bidmachine/media3/common/Player$Commands;

    .line 338
    new-instance v5, Lio/bidmachine/media3/common/Player$Commands$Builder;

    invoke-direct {v5}, Lio/bidmachine/media3/common/Player$Commands$Builder;-><init>()V

    .line 340
    invoke-virtual {v5, v2}, Lio/bidmachine/media3/common/Player$Commands$Builder;->addAll(Lio/bidmachine/media3/common/Player$Commands;)Lio/bidmachine/media3/common/Player$Commands$Builder;

    move-result-object v2

    const/4 v5, 0x4

    .line 341
    invoke-virtual {v2, v5}, Lio/bidmachine/media3/common/Player$Commands$Builder;->add(I)Lio/bidmachine/media3/common/Player$Commands$Builder;

    move-result-object v2

    const/16 v6, 0xa

    .line 342
    invoke-virtual {v2, v6}, Lio/bidmachine/media3/common/Player$Commands$Builder;->add(I)Lio/bidmachine/media3/common/Player$Commands$Builder;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Player$Commands$Builder;->build()Lio/bidmachine/media3/common/Player$Commands;

    move-result-object v2

    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->availableCommands:Lio/bidmachine/media3/common/Player$Commands;

    .line 344
    invoke-interface {v12, v11, v8}, Lio/bidmachine/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object v2

    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    .line 345
    new-instance v2, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda17;

    invoke-direct {v2, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda17;-><init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)V

    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    .line 348
    invoke-static {v4}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->createDummy(Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v6

    iput-object v6, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 349
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v6, v13, v11}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->setPlayer(Lio/bidmachine/media3/common/Player;Landroid/os/Looper;)V

    .line 350
    new-instance v6, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    iget-object v13, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->playerName:Ljava/lang/String;

    invoke-direct {v6, v13}, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;-><init>(Ljava/lang/String;)V

    move-object/from16 v19, v11

    .line 351
    new-instance v11, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    move-object/from16 v21, v12

    iget-object v12, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    iget-object v13, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->renderers:[Lio/bidmachine/media3/exoplayer/Renderer;

    iget-object v14, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->secondaryRenderers:[Lio/bidmachine/media3/exoplayer/Renderer;

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    .line 358
    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Lio/bidmachine/media3/exoplayer/LoadControl;

    iget v5, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    iget-boolean v8, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->seekParameters:Lio/bidmachine/media3/exoplayer/SeekParameters;

    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->livePlaybackSpeedControl:Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;

    move-object/from16 v30, v2

    move-object/from16 v16, v3

    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->releaseTimeoutMs:J

    move-wide/from16 v24, v2

    iget-boolean v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    iget-boolean v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->dynamicSchedulingEnabled:Z

    move/from16 v26, v2

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->playbackLooperProvider:Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;

    move-object/from16 v32, v2

    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->preloadConfiguration:Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    move-object/from16 v33, v2

    move/from16 v27, v3

    move-object/from16 v31, v6

    move-object/from16 v22, v7

    move/from16 v20, v8

    move-object/from16 v18, v9

    move-object/from16 v23, v10

    move-object/from16 v28, v19

    move-object/from16 v29, v21

    move/from16 v19, v5

    move-object/from16 v21, v16

    move-object/from16 v16, v4

    invoke-direct/range {v11 .. v33}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;-><init>(Landroid/content/Context;[Lio/bidmachine/media3/exoplayer/Renderer;[Lio/bidmachine/media3/exoplayer/Renderer;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;Lio/bidmachine/media3/exoplayer/LoadControl;Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;IZLio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;Lio/bidmachine/media3/exoplayer/SeekParameters;Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;JZZLandroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V

    move-object/from16 v9, v18

    move-object/from16 v2, v28

    move-object/from16 v21, v29

    move-object/from16 v3, v31

    iput-object v11, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    .line 374
    invoke-virtual {v11}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v18

    const/high16 v4, 0x3f800000    # 1.0f

    .line 376
    iput v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->volume:F

    const/4 v10, 0x0

    .line 377
    iput v10, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    .line 378
    sget-object v4, Lio/bidmachine/media3/common/MediaMetadata;->EMPTY:Lio/bidmachine/media3/common/MediaMetadata;

    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    .line 379
    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playlistMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    .line 380
    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    const/4 v4, -0x1

    .line 381
    iput v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    .line 382
    sget-object v4, Lio/bidmachine/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Lio/bidmachine/media3/common/text/CueGroup;

    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Lio/bidmachine/media3/common/text/CueGroup;

    const/4 v4, 0x1

    .line 383
    iput-boolean v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    .line 385
    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-virtual {v1, v4}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->addListener(Lio/bidmachine/media3/common/Player$Listener;)V

    .line 386
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v9, v4, v5}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;->addEventListener(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 387
    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->componentListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-virtual {v1, v4}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->addAudioOffloadListener(Lio/bidmachine/media3/exoplayer/ExoPlayer$AudioOffloadListener;)V

    .line 388
    iget-wide v4, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->foregroundModeTimeoutMs:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_273

    .line 389
    invoke-virtual {v11, v4, v5}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->experimentalSetForegroundModeTimeoutMs(J)V

    .line 391
    :cond_273
    sget v4, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_280

    .line 392
    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    iget-boolean v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    invoke-static {v4, v1, v5, v3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$Api31;->registerMediaMetricsListener(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;ZLio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    .line 396
    :cond_280
    new-instance v16, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    const/16 v34, 0x0

    .line 398
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    new-instance v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda18;

    invoke-direct {v3, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda18;-><init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)V

    move-object/from16 v19, v2

    move-object/from16 v20, v21

    move-object/from16 v21, v3

    invoke-direct/range {v16 .. v21}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;)V

    move-object/from16 v3, v16

    move-object/from16 v2, v19

    move-object/from16 v21, v20

    iput-object v3, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->audioSessionIdState:Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;

    .line 403
    new-instance v4, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda19;

    invoke-direct {v4, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda19;-><init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)V

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler;->runInBackground(Ljava/lang/Runnable;)V

    .line 407
    new-instance v16, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->componentListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-direct/range {v16 .. v21}, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$EventListener;Lio/bidmachine/media3/common/util/Clock;)V

    move-object/from16 v3, v16

    iput-object v3, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->audioBecomingNoisyManager:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;

    .line 410
    iget-boolean v4, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->handleAudioBecomingNoisy:Z

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;->setEnabled(Z)V

    .line 412
    iget-boolean v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->suppressPlaybackOnUnsuitableOutput:Z

    if-eqz v3, :cond_2df

    .line 413
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->suitableOutputChecker:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;

    iput-object v3, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->suitableOutputChecker:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;

    .line 414
    new-instance v4, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;

    invoke-direct {v4, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;-><init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)V

    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    move-object/from16 v19, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v20, v18

    move-object/from16 v18, v5

    invoke-interface/range {v16 .. v21}, Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;->enable(Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;)V

    move-object/from16 v18, v20

    goto :goto_2e4

    :cond_2df
    move-object/from16 v19, v2

    const/4 v2, 0x0

    .line 421
    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->suitableOutputChecker:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;

    .line 424
    :goto_2e4
    iget-boolean v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    if-eqz v2, :cond_30c

    .line 425
    new-instance v16, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->componentListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    .line 429
    invoke-virtual {v4}, Lio/bidmachine/media3/common/AudioAttributes;->getStreamType()I

    move-result v4

    move-object/from16 v17, v2

    move-object/from16 v20, v18

    move-object/from16 v22, v21

    move-object/from16 v18, v3

    move-object/from16 v21, v19

    move/from16 v19, v4

    invoke-direct/range {v16 .. v22}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;-><init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/StreamVolumeManager$Listener;ILandroid/os/Looper;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;)V

    move-object/from16 v4, v16

    move-object/from16 v3, v20

    move-object/from16 v2, v22

    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

    goto :goto_313

    :cond_30c
    move-object/from16 v3, v18

    move-object/from16 v2, v21

    const/4 v4, 0x0

    .line 434
    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

    .line 436
    :goto_313
    new-instance v4, Lio/bidmachine/media3/exoplayer/WakeLockManager;

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v3, v2}, Lio/bidmachine/media3/exoplayer/WakeLockManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;)V

    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Lio/bidmachine/media3/exoplayer/WakeLockManager;

    .line 437
    iget v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->wakeMode:I

    if-eqz v5, :cond_322

    const/4 v13, 0x1

    goto :goto_324

    :cond_322
    move/from16 v13, v34

    :goto_324
    invoke-virtual {v4, v13}, Lio/bidmachine/media3/exoplayer/WakeLockManager;->setEnabled(Z)V

    .line 438
    new-instance v4, Lio/bidmachine/media3/exoplayer/WifiLockManager;

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v3, v2}, Lio/bidmachine/media3/exoplayer/WifiLockManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;)V

    iput-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Lio/bidmachine/media3/exoplayer/WifiLockManager;

    .line 439
    iget v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->wakeMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_337

    const/4 v13, 0x1

    goto :goto_339

    :cond_337
    move/from16 v13, v34

    :goto_339
    invoke-virtual {v4, v13}, Lio/bidmachine/media3/exoplayer/WifiLockManager;->setEnabled(Z)V

    .line 440
    sget-object v2, Lio/bidmachine/media3/common/DeviceInfo;->UNKNOWN:Lio/bidmachine/media3/common/DeviceInfo;

    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->deviceInfo:Lio/bidmachine/media3/common/DeviceInfo;

    .line 441
    sget-object v2, Lio/bidmachine/media3/common/VideoSize;->UNKNOWN:Lio/bidmachine/media3/common/VideoSize;

    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->videoSize:Lio/bidmachine/media3/common/VideoSize;

    .line 442
    sget-object v2, Lio/bidmachine/media3/common/util/Size;->UNKNOWN:Lio/bidmachine/media3/common/util/Size;

    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Lio/bidmachine/media3/common/util/Size;

    .line 444
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->handleAudioFocus:Z

    invoke-virtual {v11, v2, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setAudioAttributes(Lio/bidmachine/media3/common/AudioAttributes;Z)V

    .line 445
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    const/4 v2, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 446
    iget v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->videoScalingMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 447
    iget v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    .line 448
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    .line 447
    invoke-virtual {v1, v3, v2, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 449
    iget-boolean v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 450
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    const/4 v2, 0x7

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 452
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 454
    iget v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->priority:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(ILjava/lang/Object;)V
    :try_end_391
    .catchall {:try_start_11 .. :try_end_391} :catchall_d7

    .line 456
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Lio/bidmachine/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ConditionVariable;->open()Z

    return-void

    :goto_397
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Lio/bidmachine/media3/common/util/ConditionVariable;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ConditionVariable;->open()Z

    .line 457
    throw v0

    nop

    :array_39e
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x23
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method public static synthetic access$1002(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;
    .registers 2

    .line 127
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->audioFormat:Lio/bidmachine/media3/common/Format;

    return-object p1
.end method

.method public static synthetic access$1100(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Z
    .registers 1

    .line 127
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    return p0
.end method

.method public static synthetic access$1102(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Z)Z
    .registers 2

    .line 127
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    return p1
.end method

.method public static synthetic access$1202(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/text/CueGroup;)Lio/bidmachine/media3/common/text/CueGroup;
    .registers 2

    .line 127
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Lio/bidmachine/media3/common/text/CueGroup;

    return-object p1
.end method

.method public static synthetic access$1300(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/MediaMetadata;
    .registers 1

    .line 127
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    return-object p0
.end method

.method public static synthetic access$1302(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/MediaMetadata;)Lio/bidmachine/media3/common/MediaMetadata;
    .registers 2

    .line 127
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    return-object p1
.end method

.method public static synthetic access$1400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/MediaMetadata;
    .registers 1

    .line 127
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->buildUpdatedMediaMetadata()Lio/bidmachine/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1500(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/MediaMetadata;
    .registers 1

    .line 127
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    return-object p0
.end method

.method public static synthetic access$1502(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/MediaMetadata;)Lio/bidmachine/media3/common/MediaMetadata;
    .registers 2

    .line 127
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    return-object p1
.end method

.method public static synthetic access$1600(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Z
    .registers 1

    .line 127
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    return p0
.end method

.method public static synthetic access$1700(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V
    .registers 2

    .line 127
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$1800(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;II)V
    .registers 3

    .line 127
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public static synthetic access$1900(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 127
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic access$2000(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;ZI)V
    .registers 3

    .line 127
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->updatePlayWhenReady(ZI)V

    return-void
.end method

.method public static synthetic access$2100(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/StreamVolumeManager;
    .registers 1

    .line 127
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

    return-object p0
.end method

.method public static synthetic access$2200(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;)Lio/bidmachine/media3/common/DeviceInfo;
    .registers 1

    .line 127
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->createDeviceInfo(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;)Lio/bidmachine/media3/common/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2300(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/DeviceInfo;
    .registers 1

    .line 127
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->deviceInfo:Lio/bidmachine/media3/common/DeviceInfo;

    return-object p0
.end method

.method public static synthetic access$2302(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/DeviceInfo;)Lio/bidmachine/media3/common/DeviceInfo;
    .registers 2

    .line 127
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->deviceInfo:Lio/bidmachine/media3/common/DeviceInfo;

    return-object p1
.end method

.method public static synthetic access$2400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)V
    .registers 1

    .line 127
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->updateWakeAndWifiLock()V

    return-void
.end method

.method public static synthetic access$302(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/exoplayer/DecoderCounters;)Lio/bidmachine/media3/exoplayer/DecoderCounters;
    .registers 2

    .line 127
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->videoDecoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    return-object p1
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;
    .registers 1

    .line 127
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    return-object p0
.end method

.method public static synthetic access$502(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;
    .registers 2

    .line 127
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->videoFormat:Lio/bidmachine/media3/common/Format;

    return-object p1
.end method

.method public static synthetic access$602(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/VideoSize;)Lio/bidmachine/media3/common/VideoSize;
    .registers 2

    .line 127
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->videoSize:Lio/bidmachine/media3/common/VideoSize;

    return-object p1
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/util/ListenerSet;
    .registers 1

    .line 127
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    return-object p0
.end method

.method public static synthetic access$800(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Ljava/lang/Object;
    .registers 1

    .line 127
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$902(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/exoplayer/DecoderCounters;)Lio/bidmachine/media3/exoplayer/DecoderCounters;
    .registers 2

    .line 127
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->audioDecoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    return-object p1
.end method

.method public static createDeviceInfo(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;)Lio/bidmachine/media3/common/DeviceInfo;
    .registers 4

    .line 2907
    new-instance v0, Lio/bidmachine/media3/common/DeviceInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/DeviceInfo$Builder;-><init>(I)V

    if-eqz p0, :cond_d

    .line 2908
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->getMinVolume()I

    move-result v2

    goto :goto_e

    :cond_d
    move v2, v1

    :goto_e
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/DeviceInfo$Builder;->setMinVolume(I)Lio/bidmachine/media3/common/DeviceInfo$Builder;

    move-result-object v0

    if-eqz p0, :cond_18

    .line 2909
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->getMaxVolume()I

    move-result v1

    :cond_18
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/DeviceInfo$Builder;->setMaxVolume(I)Lio/bidmachine/media3/common/DeviceInfo$Builder;

    move-result-object p0

    .line 2910
    invoke-virtual {p0}, Lio/bidmachine/media3/common/DeviceInfo$Builder;->build()Lio/bidmachine/media3/common/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getRequestedContentPositionUs(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)J
    .registers 7

    .line 2234
    new-instance v0, Lio/bidmachine/media3/common/Timeline$Window;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Timeline$Window;-><init>()V

    .line 2235
    new-instance v1, Lio/bidmachine/media3/common/Timeline$Period;

    invoke-direct {v1}, Lio/bidmachine/media3/common/Timeline$Period;-><init>()V

    .line 2236
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 2237
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_2b

    .line 2238
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget v1, v1, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {p0, v1, v0}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v0

    return-wide v0

    .line 2239
    :cond_2b
    invoke-virtual {v1}, Lio/bidmachine/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static maskPlaybackState(Lio/bidmachine/media3/exoplayer/PlaybackInfo;I)Lio/bidmachine/media3/exoplayer/PlaybackInfo;
    .registers 3

    .line 2548
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x4

    if-ne p1, v0, :cond_b

    goto :goto_c

    :cond_b
    return-object p0

    :cond_c
    :goto_c
    const/4 p1, 0x0

    .line 2550
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithIsLoading(Z)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAnalyticsListener(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V
    .registers 3

    .line 1565
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->addListener(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

.method public addAudioOffloadListener(Lio/bidmachine/media3/exoplayer/ExoPlayer$AudioOffloadListener;)V
    .registers 3

    .line 487
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addListener(Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 3

    .line 1697
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final addMediaSourceHolders(ILjava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource;",
            ">;)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation

    .line 2367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2368
    :goto_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 2369
    new-instance v2, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 2370
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/source/MediaSource;

    iget-boolean v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->useLazyPreparation:Z

    invoke-direct {v2, v3, v4}, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSource;Z)V

    .line 2371
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2372
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    add-int v4, v1, p1

    new-instance v5, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    iget-object v6, v2, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;

    invoke-direct {v5, v6, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;-><init>(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;)V

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2375
    :cond_2f
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    .line 2377
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2376
    invoke-interface {p2, p1, v1}, Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;->cloneAndInsert(II)Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    return-object v0
.end method

.method public final buildUpdatedMediaMetadata()Lio/bidmachine/media3/common/MediaMetadata;
    .registers 4

    .line 2639
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v0

    .line 2640
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2641
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    return-object v0

    .line 2643
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lio/bidmachine/media3/common/BasePlayer;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Lio/bidmachine/media3/common/Timeline$Window;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    .line 2645
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/MediaMetadata;->buildUpon()Lio/bidmachine/media3/common/MediaMetadata$Builder;

    move-result-object v1

    iget-object v0, v0, Lio/bidmachine/media3/common/MediaItem;->mediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->populate(Lio/bidmachine/media3/common/MediaMetadata;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->build()Lio/bidmachine/media3/common/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public clearVideoSurface()V
    .registers 2

    .line 1335
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1336
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    const/4 v0, 0x0

    .line 1337
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1338
    invoke-virtual {p0, v0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 1382
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    if-eqz p1, :cond_c

    .line 1383
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_c

    .line 1384
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    :cond_c
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .registers 2

    .line 1412
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_b

    .line 1413
    :cond_7
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_b
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .registers 3

    .line 1443
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    if-eqz p1, :cond_c

    .line 1444
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    if-ne p1, v0, :cond_c

    .line 1445
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    :cond_c
    return-void
.end method

.method public final computePlaybackSuppressionReason(Z)I
    .registers 4

    .line 2764
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->suitableOutputChecker:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;

    if-eqz v0, :cond_c

    .line 2765
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;->isSelectedOutputSuitableForPlayback()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x3

    return p1

    .line 2768
    :cond_c
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    if-nez p1, :cond_16

    return v1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public final createMaskingTimeline()Lio/bidmachine/media3/common/Timeline;
    .registers 4

    .line 2437
    new-instance v0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/Collection;Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)V

    return-object v0
.end method

.method public final createMediaSources(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/MediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource;",
            ">;"
        }
    .end annotation

    .line 1926
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1927
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 1928
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->mediaSourceFactory:Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/common/MediaItem;

    invoke-interface {v2, v3}, Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Lio/bidmachine/media3/common/MediaItem;)Lio/bidmachine/media3/exoplayer/source/MediaSource;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1e
    return-object v0
.end method

.method public final createMessageInternal(Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;)Lio/bidmachine/media3/exoplayer/PlayerMessage;
    .registers 10

    .line 2621
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)I

    move-result v0

    .line 2622
    new-instance v1, Lio/bidmachine/media3/exoplayer/PlayerMessage;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v4, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    const/4 v3, -0x1

    if-ne v0, v3, :cond_12

    const/4 v0, 0x0

    :cond_12
    move v5, v0

    .line 2626
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->clock:Lio/bidmachine/media3/common/util/Clock;

    .line 2628
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lio/bidmachine/media3/exoplayer/PlayerMessage;-><init>(Lio/bidmachine/media3/exoplayer/PlayerMessage$Sender;Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;Lio/bidmachine/media3/common/Timeline;ILio/bidmachine/media3/common/util/Clock;Landroid/os/Looper;)V

    return-object v1
.end method

.method public final evaluateMediaItemTransitionReason(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/exoplayer/PlaybackInfo;ZIZZ)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/PlaybackInfo;",
            "Lio/bidmachine/media3/exoplayer/PlaybackInfo;",
            "ZIZZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2250
    iget-object v0, p2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 2251
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 2252
    invoke-virtual {v1}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    .line 2253
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_1d

    .line 2252
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2253
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 2254
    :cond_1d
    invoke-virtual {v1}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v2

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v4

    const/4 v5, 0x3

    if-eq v2, v4, :cond_34

    .line 2255
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 2258
    :cond_34
    iget-object v2, p2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 2259
    invoke-virtual {v0, v2, v4}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v2

    iget v2, v2, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 2260
    iget-object v4, p0, Lio/bidmachine/media3/common/BasePlayer;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v0, v2, v4}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Lio/bidmachine/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2261
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 2262
    invoke-virtual {v1, v2, v4}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v2

    iget v2, v2, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 2263
    iget-object v4, p0, Lio/bidmachine/media3/common/BasePlayer;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v1, v2, v4}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v1

    iget-object v1, v1, Lio/bidmachine/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2264
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_84

    if-eqz p3, :cond_6a

    if-nez p4, :cond_6a

    move v5, v2

    goto :goto_72

    :cond_6a
    if-eqz p3, :cond_70

    if-ne p4, v2, :cond_70

    move v5, v1

    goto :goto_72

    :cond_70
    if-eqz p5, :cond_7e

    .line 2278
    :goto_72
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 2276
    :cond_7e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_84
    if-eqz p3, :cond_a1

    if-nez p4, :cond_a1

    .line 2282
    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v4, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide p1, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long p1, v4, p1

    if-gez p1, :cond_a1

    .line 2286
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_a1
    if-eqz p3, :cond_b3

    if-ne p4, v2, :cond_b3

    if-eqz p6, :cond_b3

    .line 2291
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 2294
    :cond_b3
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .registers 2

    .line 475
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getAvailableCommands()Lio/bidmachine/media3/common/Player$Commands;
    .registers 2

    .line 498
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 499
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->availableCommands:Lio/bidmachine/media3/common/Player$Commands;

    return-object v0
.end method

.method public getClock()Lio/bidmachine/media3/common/util/Clock;
    .registers 2

    .line 481
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->clock:Lio/bidmachine/media3/common/util/Clock;

    return-object v0
.end method

.method public getContentBufferedPosition()J
    .registers 6

    .line 1153
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1154
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1155
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    return-wide v0

    .line 1157
    :cond_10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2f

    .line 1159
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lio/bidmachine/media3/common/BasePlayer;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    return-wide v0

    .line 1161
    :cond_2f
    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 1162
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1163
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 1164
    invoke-virtual {v1, v0, v2}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v0

    .line 1165
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v1, v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 1166
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_5c

    .line 1168
    iget-wide v0, v0, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    goto :goto_5d

    :cond_5c
    move-wide v0, v1

    .line 1171
    :cond_5d
    :goto_5d
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1172
    invoke-virtual {p0, v3, v2, v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v0

    .line 1171
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .registers 3

    .line 1147
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1148
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getContentPositionInternal(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getContentPositionInternal(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)J
    .registers 6

    .line 1896
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1897
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 1898
    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_2f

    .line 1902
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 1901
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)I

    move-result p1

    iget-object v1, p0, Lio/bidmachine/media3/common/BasePlayer;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object p1

    .line 1902
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v0

    return-wide v0

    .line 1903
    :cond_2f
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    invoke-static {v2, v3}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 1905
    :cond_3d
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .registers 2

    .line 1135
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1136
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    return v0

    :cond_10
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .registers 2

    .line 1141
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1142
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    return v0

    :cond_10
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentCues()Lio/bidmachine/media3/common/text/CueGroup;
    .registers 2

    .line 1690
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1691
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Lio/bidmachine/media3/common/text/CueGroup;

    return-object v0
.end method

.method public getCurrentMediaItemIndex()I
    .registers 3

    .line 1087
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1088
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return v0
.end method

.method public getCurrentPeriodIndex()I
    .registers 3

    .line 1077
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1078
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1079
    iget v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskingPeriodIndex:I

    return v0

    .line 1081
    :cond_10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .registers 3

    .line 1106
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1107
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCurrentPositionUsInternal(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)J
    .registers 5

    .line 1909
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1910
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    return-wide v0

    .line 1914
    :cond_f
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v0, :cond_18

    .line 1915
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->getEstimatedPositionUs()J

    move-result-wide v0

    goto :goto_1a

    .line 1916
    :cond_18
    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 1918
    :goto_1a
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_23

    return-wide v0

    .line 1921
    :cond_23
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, v2, p1, v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lio/bidmachine/media3/common/Timeline;
    .registers 2

    .line 1271
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1272
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    return-object v0
.end method

.method public getCurrentTracks()Lio/bidmachine/media3/common/Tracks;
    .registers 2

    .line 1221
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1222
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->tracks:Lio/bidmachine/media3/common/Tracks;

    return-object v0
.end method

.method public final getCurrentWindowIndexInternal(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)I
    .registers 4

    .line 1888
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1889
    iget p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    return p1

    .line 1891
    :cond_b
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p1

    iget p1, p1, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    return p1
.end method

.method public getDuration()J
    .registers 5

    .line 1094
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1095
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1096
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1097
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v0, v2, v3}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 1098
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget v2, v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v1, v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v0, v2, v1}, Lio/bidmachine/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    .line 1099
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    .line 1101
    :cond_25
    invoke-virtual {p0}, Lio/bidmachine/media3/common/BasePlayer;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .registers 3

    .line 934
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 935
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maxSeekToPreviousPositionMs:J

    return-wide v0
.end method

.method public getMediaMetadata()Lio/bidmachine/media3/common/MediaMetadata;
    .registers 2

    .line 1246
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1247
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    return-object v0
.end method

.method public getPlayWhenReady()Z
    .registers 2

    .line 806
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 807
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    return v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .registers 2

    .line 469
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;
    .registers 2

    .line 962
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 963
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    return-object v0
.end method

.method public getPlaybackState()I
    .registers 2

    .line 504
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 505
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .registers 2

    .line 510
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 511
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    return v0
.end method

.method public bridge synthetic getPlayerError()Lio/bidmachine/media3/common/PlaybackException;
    .registers 2

    .line 127
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getPlayerError()Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerError()Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
    .registers 2

    .line 517
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 518
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackError:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    return-object v0
.end method

.method public final getPositionInfo(J)Lio/bidmachine/media3/common/Player$PositionInfo;
    .registers 15

    .line 2208
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v2

    .line 2211
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 2212
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2213
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v0, v1, v3}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 2214
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 2215
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v4, p0, Lio/bidmachine/media3/common/BasePlayer;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v3, v2, v4}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v3

    iget-object v3, v3, Lio/bidmachine/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2216
    iget-object v4, p0, Lio/bidmachine/media3/common/BasePlayer;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-object v4, v4, Lio/bidmachine/media3/common/Timeline$Window;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    move-object v5, v4

    move-object v4, v1

    move-object v1, v3

    move-object v3, v5

    :goto_37
    move v5, v0

    goto :goto_3e

    :cond_39
    const/4 v1, 0x0

    const/4 v0, -0x1

    move-object v3, v1

    move-object v4, v3

    goto :goto_37

    .line 2218
    :goto_3e
    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    .line 2219
    new-instance v0, Lio/bidmachine/media3/common/Player$PositionInfo;

    .line 2226
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 2227
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getRequestedContentPositionUs(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide p1

    move-wide v8, p1

    goto :goto_5b

    :cond_5a
    move-wide v8, v6

    .line 2228
    :goto_5b
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v10, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v11, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-direct/range {v0 .. v11}, Lio/bidmachine/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILio/bidmachine/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v0
.end method

.method public final getPreviousPositionInfo(ILio/bidmachine/media3/exoplayer/PlaybackInfo;I)Lio/bidmachine/media3/common/Player$PositionInfo;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2157
    new-instance v2, Lio/bidmachine/media3/common/Timeline$Period;

    invoke-direct {v2}, Lio/bidmachine/media3/common/Timeline$Period;-><init>()V

    .line 2158
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v3}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_36

    .line 2159
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2160
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v5, v3, v2}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 2161
    iget v5, v2, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 2162
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v6, v3}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v6

    .line 2163
    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v8, v0, Lio/bidmachine/media3/common/BasePlayer;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v7, v5, v8}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v7

    iget-object v7, v7, Lio/bidmachine/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2164
    iget-object v8, v0, Lio/bidmachine/media3/common/BasePlayer;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-object v8, v8, Lio/bidmachine/media3/common/Timeline$Window;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    move-object v9, v3

    move v10, v6

    move-object v6, v7

    move v7, v5

    goto :goto_3d

    :cond_36
    const/4 v3, 0x0

    move/from16 v7, p3

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    move v10, v4

    :goto_3d
    if-nez p1, :cond_6b

    .line 2169
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 2171
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v4, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 2172
    invoke-virtual {v2, v4, v3}, Lio/bidmachine/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v2

    .line 2175
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getRequestedContentPositionUs(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v4

    goto :goto_80

    .line 2176
    :cond_56
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v3, v4, :cond_64

    .line 2179
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getRequestedContentPositionUs(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v2

    :goto_62
    move-wide v4, v2

    goto :goto_80

    .line 2183
    :cond_64
    iget-wide v3, v2, Lio/bidmachine/media3/common/Timeline$Period;->positionInWindowUs:J

    iget-wide v11, v2, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    add-long v2, v3, v11

    goto :goto_62

    .line 2186
    :cond_6b
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 2187
    iget-wide v2, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 2188
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getRequestedContentPositionUs(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v4

    goto :goto_80

    .line 2190
    :cond_7a
    iget-wide v2, v2, Lio/bidmachine/media3/common/Timeline$Period;->positionInWindowUs:J

    iget-wide v4, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    add-long/2addr v2, v4

    goto :goto_62

    .line 2193
    :goto_80
    new-instance v11, Lio/bidmachine/media3/common/Player$PositionInfo;

    .line 2199
    invoke-static {v2, v3}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v2

    .line 2200
    invoke-static {v4, v5}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v13

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v15, v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v1, v1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    move/from16 v16, v1

    move-object v5, v11

    move-wide v11, v2

    invoke-direct/range {v5 .. v16}, Lio/bidmachine/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILio/bidmachine/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v5
.end method

.method public getRepeatMode()I
    .registers 2

    .line 825
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 826
    iget v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    return v0
.end method

.method public getSeekBackIncrement()J
    .registers 3

    .line 922
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 923
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->seekBackIncrementMs:J

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .registers 3

    .line 928
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 929
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method public getShuffleModeEnabled()Z
    .registers 2

    .line 845
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 846
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    return v0
.end method

.method public getTotalBufferedDuration()J
    .registers 3

    .line 1123
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1124
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackSelectionParameters()Lio/bidmachine/media3/common/TrackSelectionParameters;
    .registers 2

    .line 1227
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1228
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->trackSelector:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;->getParameters()Lio/bidmachine/media3/common/TrackSelectionParameters;

    move-result-object v0

    return-object v0
.end method

.method public getVideoSize()Lio/bidmachine/media3/common/VideoSize;
    .registers 2

    .line 1323
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1324
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->videoSize:Lio/bidmachine/media3/common/VideoSize;

    return-object v0
.end method

.method public getVolume()F
    .registers 2

    .line 1533
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1534
    iget v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->volume:F

    return v0
.end method

.method public final handlePlaybackInfo(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .registers 14

    .line 1934
    iget v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    sub-int/2addr v2, v3

    iput v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 1935
    iget-boolean v3, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_12

    .line 1936
    iget v3, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    iput v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuityReason:I

    .line 1937
    iput-boolean v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuity:Z

    :cond_12
    if-nez v2, :cond_c6

    .line 1940
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 1941
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v3}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_32

    invoke-virtual {v2}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v3, -0x1

    .line 1944
    iput v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    const-wide/16 v6, 0x0

    .line 1945
    iput-wide v6, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 1946
    iput v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 1948
    :cond_32
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6c

    .line 1949
    move-object v3, v2

    check-cast v3, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->getChildTimelines()Ljava/util/List;

    move-result-object v3

    .line 1950
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_4d

    move v6, v4

    goto :goto_4e

    :cond_4d
    move v6, v5

    :goto_4e
    invoke-static {v6}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    move v6, v5

    .line 1951
    :goto_52
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6c

    .line 1952
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v7, v8}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->updateTimeline(Lio/bidmachine/media3/common/Timeline;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    .line 1957
    :cond_6c
    iget-boolean v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuity:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_b7

    .line 1958
    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v8, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1959
    invoke-virtual {v3, v8}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v8, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v10, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v3, v8, v10

    if-eqz v3, :cond_90

    goto :goto_91

    :cond_90
    move v4, v5

    :cond_91
    :goto_91
    if-eqz v4, :cond_b5

    .line 1964
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b0

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_a4

    goto :goto_b0

    .line 1966
    :cond_a4
    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v6, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v7, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    invoke-virtual {p0, v2, v6, v7, v8}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v2

    :goto_ae
    move-wide v6, v2

    goto :goto_b5

    .line 1965
    :cond_b0
    :goto_b0
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    goto :goto_ae

    :cond_b5
    :goto_b5
    move v3, v4

    goto :goto_b8

    :cond_b7
    move v3, v5

    .line 1972
    :goto_b8
    iput-boolean v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuity:Z

    .line 1973
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuityReason:I

    move-wide v5, v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Lio/bidmachine/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    :cond_c6
    return-void
.end method

.method public isPlayingAd()Z
    .registers 2

    .line 1129
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1130
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    return v0
.end method

.method public isSleepingForOffload()Z
    .registers 2

    .line 462
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 463
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    return v0
.end method

.method public final maskTimelineAndPosition(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Timeline;Landroid/util/Pair;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/PlaybackInfo;",
            "Lio/bidmachine/media3/common/Timeline;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Lio/bidmachine/media3/exoplayer/PlaybackInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 2442
    invoke-virtual {v1}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_12

    if-eqz v2, :cond_10

    goto :goto_12

    :cond_10
    const/4 v3, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    move v3, v4

    :goto_13
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    move-object/from16 v3, p1

    .line 2444
    iget-object v5, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 2445
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getContentPositionInternal(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v6

    .line 2447
    invoke-virtual/range {p1 .. p2}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithTimeline(Lio/bidmachine/media3/common/Timeline;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v8

    .line 2449
    invoke-virtual {v1}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 2451
    invoke-static {}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->getDummyPeriodForEmptyTimeline()Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v9

    .line 2452
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v10

    .line 2453
    sget-object v18, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->EMPTY:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 2462
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v20

    const-wide/16 v16, 0x0

    move-wide v12, v10

    move-wide v14, v10

    move-object/from16 v19, v1

    .line 2454
    invoke-virtual/range {v8 .. v20}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLio/bidmachine/media3/exoplayer/source/TrackGroupArray;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    .line 2463
    invoke-virtual {v1, v9}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    .line 2464
    iget-wide v2, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    iput-wide v2, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    return-object v1

    .line 2468
    :cond_4d
    iget-object v3, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2469
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_67

    .line 2471
    new-instance v10, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v11, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v10, v11}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    goto :goto_69

    :cond_67
    iget-object v10, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2472
    :goto_69
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 2473
    invoke-static {v6, v7}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v6

    .line 2474
    invoke-virtual {v5}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_86

    .line 2475
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 2476
    invoke-virtual {v5, v3, v2}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v2

    sub-long/2addr v6, v2

    :cond_86
    if-eqz v9, :cond_8c

    cmp-long v2, v11, v6

    if-gez v2, :cond_91

    :cond_8c
    move v1, v9

    move-object v9, v10

    move-wide v10, v11

    goto/16 :goto_12b

    :cond_91
    if-nez v2, :cond_f3

    .line 2496
    iget-object v2, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2497
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b4

    .line 2498
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 2499
    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v2

    iget v2, v2, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    iget-object v3, v10, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 2500
    invoke-virtual {v1, v3, v4}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v3

    iget v3, v3, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    if-eq v2, v3, :cond_b3

    goto :goto_b4

    :cond_b3
    return-object v8

    .line 2503
    :cond_b4
    :goto_b4
    iget-object v2, v10, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 2505
    invoke-virtual {v10}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 2506
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget v2, v10, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, v10, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v1

    :goto_cb
    move-object v9, v10

    goto :goto_d2

    .line 2507
    :cond_cd
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget-wide v1, v1, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    goto :goto_cb

    .line 2508
    :goto_d2
    iget-wide v10, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    iget-wide v12, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    iget-wide v14, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-wide v3, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    sub-long v16, v1, v3

    iget-object v3, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    iget-object v4, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v5, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 2509
    invoke-virtual/range {v8 .. v20}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLio/bidmachine/media3/exoplayer/source/TrackGroupArray;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    .line 2518
    invoke-virtual {v3, v9}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    .line 2519
    iput-wide v1, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    return-object v3

    :cond_f3
    move-object v9, v10

    .line 2522
    invoke-virtual {v9}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 2524
    iget-wide v1, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    sub-long v3, v11, v6

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    .line 2525
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    .line 2528
    iget-wide v1, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 2529
    iget-object v3, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    add-long v1, v11, v16

    .line 2532
    :cond_115
    iget-object v3, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    iget-object v4, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v5, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-wide v10, v11

    move-wide v12, v10

    move-wide v14, v10

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 2533
    invoke-virtual/range {v8 .. v20}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLio/bidmachine/media3/exoplayer/source/TrackGroupArray;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    .line 2542
    iput-wide v1, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    return-object v3

    .line 2480
    :goto_12b
    invoke-virtual {v9}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    if-nez v1, :cond_13a

    .line 2489
    sget-object v2, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->EMPTY:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    :goto_137
    move-object/from16 v18, v2

    goto :goto_13d

    :cond_13a
    iget-object v2, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    goto :goto_137

    :goto_13d
    if-nez v1, :cond_144

    .line 2490
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    :goto_141
    move-object/from16 v19, v2

    goto :goto_147

    :cond_144
    iget-object v2, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    goto :goto_141

    :goto_147
    if-nez v1, :cond_150

    .line 2491
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    :goto_14d
    move-object/from16 v20, v1

    goto :goto_153

    :cond_150
    iget-object v1, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    goto :goto_14d

    :goto_153
    const-wide/16 v16, 0x0

    move-wide v12, v10

    move-wide v14, v10

    .line 2483
    invoke-virtual/range {v8 .. v20}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLio/bidmachine/media3/exoplayer/source/TrackGroupArray;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    .line 2492
    invoke-virtual {v1, v9}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    .line 2493
    iput-wide v10, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    return-object v1
.end method

.method public final maskWindowPositionMsOrGetPeriodPositionUs(Lio/bidmachine/media3/common/Timeline;IJ)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/Timeline;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2597
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2599
    iput p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, p1

    if-nez p1, :cond_13

    const-wide/16 p3, 0x0

    .line 2600
    :cond_13
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    const/4 p1, 0x0

    .line 2601
    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskingPeriodIndex:I

    const/4 p1, 0x0

    return-object p1

    :cond_1a
    const/4 v0, -0x1

    if-eq p2, v0, :cond_26

    .line 2604
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-lt p2, v0, :cond_24

    goto :goto_26

    :cond_24
    :goto_24
    move v3, p2

    goto :goto_37

    .line 2607
    :cond_26
    :goto_26
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    .line 2608
    iget-object p3, p0, Lio/bidmachine/media3/common/BasePlayer;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, p3}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object p3

    invoke-virtual {p3}, Lio/bidmachine/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide p3

    goto :goto_24

    .line 2610
    :goto_37
    iget-object v1, p0, Lio/bidmachine/media3/common/BasePlayer;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-static {p3, p4}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/common/Timeline;->getPeriodPositionUs(Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final maybeNotifySurfaceSizeChanged(II)V
    .registers 6

    .line 2724
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Lio/bidmachine/media3/common/util/Size;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/Size;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Lio/bidmachine/media3/common/util/Size;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/Size;->getHeight()I

    move-result v0

    if-eq p2, v0, :cond_11

    goto :goto_12

    :cond_11
    return-void

    .line 2725
    :cond_12
    :goto_12
    new-instance v0, Lio/bidmachine/media3/common/util/Size;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/media3/common/util/Size;-><init>(II)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Lio/bidmachine/media3/common/util/Size;

    .line 2726
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;-><init>(II)V

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Lio/bidmachine/media3/common/util/ListenerSet;->sendEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    .line 2728
    new-instance v0, Lio/bidmachine/media3/common/util/Size;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/media3/common/util/Size;-><init>(II)V

    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public final onAudioSessionIdChanged(II)V
    .registers 5

    .line 2899
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 2900
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 2901
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 2902
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda24;

    invoke-direct {v0, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda24;-><init>(I)V

    const/16 p2, 0x15

    invoke-virtual {p1, p2, v0}, Lio/bidmachine/media3/common/util/ListenerSet;->sendEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onSelectedOutputSuitabilityChanged(Z)V
    .registers 5

    .line 2884
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playerReleased:Z

    if-eqz v0, :cond_5

    goto :goto_14

    :cond_5
    const/4 v0, 0x1

    if-eqz p1, :cond_15

    .line 2889
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v1, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 2891
    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->updatePlayWhenReady(ZI)V

    :cond_14
    :goto_14
    return-void

    .line 2894
    :cond_15
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->updatePlayWhenReady(ZI)V

    return-void
.end method

.method public final periodPositionUsToWindowPositionUs(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J
    .registers 6

    .line 2615
    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 2616
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide p1

    add-long/2addr p3, p1

    return-wide p3
.end method

.method public prepare()V
    .registers 13

    .line 523
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 524
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v1, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x0

    .line 527
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    .line 530
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x4

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x2

    .line 529
    :goto_1b
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskPlaybackState(Lio/bidmachine/media3/exoplayer/PlaybackInfo;I)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v4

    .line 535
    iget v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 536
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->prepare()V

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p0

    .line 537
    invoke-virtual/range {v3 .. v11}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Lio/bidmachine/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public release()V
    .registers 7

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AndroidXMedia3/1.7.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/bidmachine/media3/common/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    invoke-static {}, Lio/bidmachine/media3/common/MediaLibraryInfo;->registeredModules()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    const-string v1, "ExoPlayerImpl"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1020
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->audioBecomingNoisyManager:Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager;->setEnabled(Z)V

    .line 1021
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

    if-eqz v0, :cond_51

    .line 1022
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/StreamVolumeManager;->release()V

    .line 1024
    :cond_51
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Lio/bidmachine/media3/exoplayer/WakeLockManager;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/WakeLockManager;->setStayAwake(Z)V

    .line 1025
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Lio/bidmachine/media3/exoplayer/WifiLockManager;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/WifiLockManager;->setStayAwake(Z)V

    .line 1026
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->suitableOutputChecker:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;

    if-eqz v0, :cond_62

    .line 1027
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;->disable()V

    .line 1029
    :cond_62
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->release()Z

    move-result v0

    if-nez v0, :cond_76

    .line 1031
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v2, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda23;

    invoke-direct {v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda23;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Lio/bidmachine/media3/common/util/ListenerSet;->sendEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    .line 1039
    :cond_76
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ListenerSet;->release()V

    .line 1040
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lio/bidmachine/media3/common/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1041
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->bandwidthMeter:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v0, v3}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;->removeEventListener(Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 1042
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean v3, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v3, :cond_94

    .line 1043
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithEstimatedPosition()Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 1045
    :cond_94
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskPlaybackState(Lio/bidmachine/media3/exoplayer/PlaybackInfo;I)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 1046
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v4}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 1047
    iget-wide v4, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    iput-wide v4, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 1048
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    .line 1049
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->release()V

    .line 1050
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1051
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_c0

    .line 1052
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1053
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    .line 1055
    :cond_c0
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    if-eqz v0, :cond_d3

    .line 1056
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->priorityTaskManager:Lio/bidmachine/media3/common/PriorityTaskManager;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/PriorityTaskManager;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->priority:I

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/PriorityTaskManager;->remove(I)V

    .line 1057
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    .line 1059
    :cond_d3
    sget-object v0, Lio/bidmachine/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Lio/bidmachine/media3/common/text/CueGroup;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Lio/bidmachine/media3/common/text/CueGroup;

    .line 1060
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playerReleased:Z

    return-void
.end method

.method public removeListener(Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 3

    .line 1702
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1703
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/ListenerSet;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeMediaSourceHolders(II)V
    .registers 5

    add-int/lit8 v0, p2, -0x1

    :goto_2
    if-lt v0, p1, :cond_c

    .line 2431
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2433
    :cond_c
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;->cloneAndRemove(II)Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    return-void
.end method

.method public final removeSurfaceCallbacks()V
    .registers 4

    .line 2649
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 2650
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;)Lio/bidmachine/media3/exoplayer/PlayerMessage;

    move-result-object v0

    const/16 v2, 0x2710

    .line 2651
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->setType(I)Lio/bidmachine/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 2652
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 2653
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->send()Lio/bidmachine/media3/exoplayer/PlayerMessage;

    .line 2654
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->componentListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->removeVideoSurfaceListener(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V

    .line 2655
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 2657
    :cond_21
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_3c

    .line 2658
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->componentListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    if-eq v0, v2, :cond_35

    .line 2659
    const-string v0, "ExoPlayerImpl"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v2}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 2661
    :cond_35
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 2663
    :goto_3a
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    .line 2665
    :cond_3c
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_47

    .line 2666
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->componentListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2667
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    :cond_47
    return-void
.end method

.method public seekTo(IJIZ)V
    .registers 16

    .line 876
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 p4, -0x1

    if-ne p1, p4, :cond_7

    goto :goto_20

    :cond_7
    const/4 p4, 0x1

    if-ltz p1, :cond_c

    move v0, p4

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 880
    :goto_d
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 881
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 882
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v1

    if-lt p1, v1, :cond_21

    :goto_20
    return-void

    .line 885
    :cond_21
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->notifySeekStarted()V

    .line 886
    iget v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v1, p4

    iput v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 887
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 891
    const-string p1, "ExoPlayerImpl"

    const-string p2, "seekTo ignored because an ad is playing"

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    new-instance p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-direct {p1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V

    .line 894
    invoke-virtual {p1, p4}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 895
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    invoke-interface {p2, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;->onPlaybackInfoUpdate(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void

    .line 898
    :cond_48
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 899
    iget v1, p4, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_58

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5f

    .line 900
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 901
    :cond_58
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    const/4 v1, 0x2

    invoke-static {p4, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskPlaybackState(Lio/bidmachine/media3/exoplayer/PlaybackInfo;I)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object p4

    .line 903
    :cond_5f
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v8

    .line 908
    invoke-virtual {p0, v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lio/bidmachine/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 905
    invoke-virtual {p0, p4, v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskTimelineAndPosition(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Timeline;Landroid/util/Pair;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    .line 909
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    invoke-static {p2, p3}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide p2

    invoke-virtual {p4, v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->seekTo(Lio/bidmachine/media3/common/Timeline;IJ)V

    const/4 v5, 0x1

    .line 915
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v6

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move v9, p5

    .line 910
    invoke-virtual/range {v1 .. v9}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Lio/bidmachine/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public final sendRendererMessage(IILjava/lang/Object;)V
    .registers 10

    .line 2823
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->renderers:[Lio/bidmachine/media3/exoplayer/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    const/4 v4, -0x1

    if-ge v3, v1, :cond_24

    aget-object v5, v0, v3

    if-eq p1, v4, :cond_12

    .line 2824
    invoke-interface {v5}, Lio/bidmachine/media3/exoplayer/Renderer;->getTrackType()I

    move-result v4

    if-ne v4, p1, :cond_21

    .line 2825
    :cond_12
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;)Lio/bidmachine/media3/exoplayer/PlayerMessage;

    move-result-object v4

    invoke-virtual {v4, p2}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->setType(I)Lio/bidmachine/media3/exoplayer/PlayerMessage;

    move-result-object v4

    invoke-virtual {v4, p3}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/PlayerMessage;

    move-result-object v4

    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->send()Lio/bidmachine/media3/exoplayer/PlayerMessage;

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2828
    :cond_24
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->secondaryRenderers:[Lio/bidmachine/media3/exoplayer/Renderer;

    array-length v1, v0

    :goto_27
    if-ge v2, v1, :cond_47

    aget-object v3, v0, v2

    if-eqz v3, :cond_44

    if-eq p1, v4, :cond_35

    .line 2829
    invoke-interface {v3}, Lio/bidmachine/media3/exoplayer/Renderer;->getTrackType()I

    move-result v5

    if-ne v5, p1, :cond_44

    .line 2830
    :cond_35
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;)Lio/bidmachine/media3/exoplayer/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3, p2}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->setType(I)Lio/bidmachine/media3/exoplayer/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3, p3}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->send()Lio/bidmachine/media3/exoplayer/PlayerMessage;

    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_47
    return-void
.end method

.method public final sendRendererMessage(ILjava/lang/Object;)V
    .registers 4

    const/4 v0, -0x1

    .line 2818
    invoke-virtual {p0, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public setImageOutput(Lio/bidmachine/media3/exoplayer/image/ImageOutput;)V
    .registers 4

    .line 1847
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x4

    const/16 v1, 0xf

    .line 1848
    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 565
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 566
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->createMediaSources(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource;",
            ">;Z)V"
        }
    .end annotation

    .line 602
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 603
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->setMediaSourcesInternal(Ljava/util/List;IJZ)V

    return-void
.end method

.method public final setMediaSourcesInternal(Ljava/util/List;IJZ)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource;",
            ">;IJZ)V"
        }
    .end annotation

    move/from16 v1, p2

    .line 2312
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)I

    move-result v2

    .line 2313
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v3

    .line 2314
    iget v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 2315
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_24

    .line 2316
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 2317
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 2316
    invoke-virtual {p0, v7, v5}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->removeMediaSourceHolders(II)V

    .line 2320
    :cond_24
    invoke-virtual {p0, v7, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->addMediaSourceHolders(ILjava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 2321
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->createMaskingTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v5

    .line 2322
    invoke-virtual {v5}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_38

    invoke-virtual {v5}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v8

    if-ge v1, v8, :cond_3b

    :cond_38
    move-wide/from16 v10, p3

    goto :goto_43

    .line 2323
    :cond_3b
    new-instance v2, Lio/bidmachine/media3/common/IllegalSeekPositionException;

    move-wide/from16 v10, p3

    invoke-direct {v2, v5, v1, v10, v11}, Lio/bidmachine/media3/common/IllegalSeekPositionException;-><init>(Lio/bidmachine/media3/common/Timeline;IJ)V

    throw v2

    :goto_43
    const/4 v8, -0x1

    if-eqz p5, :cond_53

    .line 2327
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v5, v1}, Lio/bidmachine/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_51
    move v10, v1

    goto :goto_5a

    :cond_53
    if-ne v1, v8, :cond_58

    move v10, v2

    move-wide v2, v3

    goto :goto_5a

    :cond_58
    move-wide v2, v10

    goto :goto_51

    .line 2333
    :goto_5a
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 2337
    invoke-virtual {p0, v5, v10, v2, v3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lio/bidmachine/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v4

    .line 2334
    invoke-virtual {p0, v1, v5, v4}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskTimelineAndPosition(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Timeline;Landroid/util/Pair;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    .line 2339
    iget v4, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v10, v8, :cond_7a

    if-eq v4, v6, :cond_7a

    .line 2342
    invoke-virtual {v5}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_79

    invoke-virtual {v5}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v4

    if-lt v10, v4, :cond_77

    goto :goto_79

    :cond_77
    const/4 v4, 0x2

    goto :goto_7a

    :cond_79
    :goto_79
    const/4 v4, 0x4

    .line 2349
    :cond_7a
    :goto_7a
    invoke-static {v1, v4}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskPlaybackState(Lio/bidmachine/media3/exoplayer/PlaybackInfo;I)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    .line 2350
    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    .line 2351
    invoke-static {v2, v3}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v11

    iget-object v13, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    .line 2350
    invoke-virtual/range {v8 .. v13}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setMediaSources(Ljava/util/List;IJLio/bidmachine/media3/exoplayer/source/ShuffleOrder;)V

    .line 2352
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2353
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 2354
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a5

    move v3, v6

    goto :goto_a6

    :cond_a5
    move v3, v7

    .line 2360
    :goto_a6
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v5

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object v0, p0

    .line 2355
    invoke-virtual/range {v0 .. v8}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Lio/bidmachine/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public final setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V
    .registers 4

    const/4 v0, 0x0

    .line 2711
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    .line 2712
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 2713
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->componentListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2714
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 2715
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 2716
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 2717
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void

    .line 2719
    :cond_2a
    invoke-virtual {p0, v0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .registers 3

    .line 800
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x1

    .line 801
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->updatePlayWhenReady(ZI)V

    return-void
.end method

.method public setPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)V
    .registers 12

    .line 940
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez p1, :cond_7

    .line 942
    sget-object p1, Lio/bidmachine/media3/common/PlaybackParameters;->DEFAULT:Lio/bidmachine/media3/common/PlaybackParameters;

    .line 944
    :cond_7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 947
    :cond_12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    .line 948
    iget v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 949
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)V

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p0

    .line 950
    invoke-virtual/range {v1 .. v9}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Lio/bidmachine/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public setRepeatMode(I)V
    .registers 4

    .line 812
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 813
    iget v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    if-eq v0, p1, :cond_22

    .line 814
    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    .line 815
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setRepeatMode(I)V

    .line 816
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    .line 818
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->updateAvailableCommands()V

    .line 819
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ListenerSet;->flushEvents()V

    :cond_22
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .registers 4

    .line 831
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 832
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    if-eq v0, p1, :cond_22

    .line 833
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 834
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setShuffleModeEnabled(Z)V

    .line 835
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda26;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda26;-><init>(Z)V

    const/16 p1, 0x9

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    .line 838
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->updateAvailableCommands()V

    .line 839
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ListenerSet;->flushEvents()V

    :cond_22
    return-void
.end method

.method public final setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 2672
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2673
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 2674
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    return-void
.end method

.method public setTrackSelectionParameters(Lio/bidmachine/media3/common/TrackSelectionParameters;)V
    .registers 4

    .line 1233
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1234
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->trackSelector:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;->isSetParametersSupported()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->trackSelector:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;

    .line 1235
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;->getParameters()Lio/bidmachine/media3/common/TrackSelectionParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_29

    .line 1238
    :cond_18
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->trackSelector:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;->setParameters(Lio/bidmachine/media3/common/TrackSelectionParameters;)V

    .line 1239
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda27;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda27;-><init>(Lio/bidmachine/media3/common/TrackSelectionParameters;)V

    const/16 p1, 0x13

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/common/util/ListenerSet;->sendEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public final setVideoOutputInternal(Ljava/lang/Object;)V
    .registers 6

    .line 2678
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-eqz v0, :cond_8

    if-eq v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_e

    .line 2679
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->detachSurfaceTimeoutMs:J

    goto :goto_13

    :cond_e
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2682
    :goto_13
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v3, p1, v1, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setVideoOutput(Ljava/lang/Object;J)Z

    move-result v1

    if-eqz v0, :cond_27

    .line 2684
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    if-ne v0, v2, :cond_27

    .line 2686
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 2687
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    .line 2690
    :cond_27
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-nez v1, :cond_3a

    .line 2692
    new-instance p1, Lio/bidmachine/media3/exoplayer/ExoTimeoutException;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lio/bidmachine/media3/exoplayer/ExoTimeoutException;-><init>(I)V

    const/16 v0, 0x3eb

    .line 2693
    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    .line 2692
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->stopInternal(Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)V

    :cond_3a
    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 1360
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez p1, :cond_9

    .line 1362
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    return-void

    .line 1364
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    const/4 v0, 0x1

    .line 1365
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    .line 1366
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 1367
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->componentListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1368
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 1369
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1370
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1371
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 1372
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void

    :cond_35
    const/4 p1, 0x0

    .line 1374
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1375
    invoke-virtual {p0, p1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .registers 4

    .line 1390
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1391
    instance-of v0, p1, Lio/bidmachine/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    if-eqz v0, :cond_15

    .line 1392
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1393
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1394
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    return-void

    .line 1395
    :cond_15
    instance-of v0, p1, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    if-eqz v0, :cond_4e

    .line 1396
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1397
    move-object v0, p1

    check-cast v0, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 1398
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;)Lio/bidmachine/media3/exoplayer/PlayerMessage;

    move-result-object v0

    const/16 v1, 0x2710

    .line 1399
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->setType(I)Lio/bidmachine/media3/exoplayer/PlayerMessage;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 1400
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)Lio/bidmachine/media3/exoplayer/PlayerMessage;

    move-result-object v0

    .line 1401
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->send()Lio/bidmachine/media3/exoplayer/PlayerMessage;

    .line 1402
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->componentListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->addVideoSurfaceListener(Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V

    .line 1403
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1404
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    return-void

    :cond_4e
    if-nez p1, :cond_52

    const/4 p1, 0x0

    goto :goto_56

    .line 1406
    :cond_52
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_56
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .registers 4

    .line 1418
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez p1, :cond_9

    .line 1420
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    return-void

    .line 1422
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1423
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    .line 1424
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1425
    const-string v0, "ExoPlayerImpl"

    const-string v1, "Replacing existing SurfaceTextureListener."

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    :cond_1b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->componentListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1430
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_2d

    :cond_2c
    move-object v0, v1

    :goto_2d
    if-nez v0, :cond_37

    .line 1432
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1433
    invoke-virtual {p0, p1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void

    .line 1435
    :cond_37
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V

    .line 1436
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public setVolume(F)V
    .registers 4

    .line 1520
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1521
    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/common/util/Util;->constrainValue(FFF)F

    move-result p1

    .line 1522
    iget v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->volume:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_11

    return-void

    .line 1525
    :cond_11
    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->volume:F

    .line 1526
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setVolume(F)V

    .line 1528
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda25;-><init>(F)V

    const/16 p1, 0x16

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/common/util/ListenerSet;->sendEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public stop()V
    .registers 5

    .line 1001
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x0

    .line 1002
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->stopInternal(Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)V

    .line 1003
    new-instance v0, Lio/bidmachine/media3/common/text/CueGroup;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Lio/bidmachine/media3/common/text/CueGroup;

    return-void
.end method

.method public final stopInternal(Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)V
    .registers 13

    .line 1867
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1868
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    .line 1869
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    iput-wide v1, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    const-wide/16 v1, 0x0

    .line 1870
    iput-wide v1, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    const/4 v1, 0x1

    .line 1871
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->maskPlaybackState(Lio/bidmachine/media3/exoplayer/PlaybackInfo;I)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    if-eqz p1, :cond_1b

    .line 1873
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    :cond_1b
    move-object v3, v0

    .line 1875
    iget p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr p1, v1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 1876
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->stop()V

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p0

    .line 1877
    invoke-virtual/range {v2 .. v10}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Lio/bidmachine/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public final updateAvailableCommands()V
    .registers 4

    .line 2298
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->availableCommands:Lio/bidmachine/media3/common/Player$Commands;

    .line 2299
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Lio/bidmachine/media3/common/Player;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->permanentAvailableCommands:Lio/bidmachine/media3/common/Player$Commands;

    invoke-static {v1, v2}, Lio/bidmachine/media3/common/util/Util;->getAvailableCommands(Lio/bidmachine/media3/common/Player;Lio/bidmachine/media3/common/Player$Commands;)Lio/bidmachine/media3/common/Player$Commands;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->availableCommands:Lio/bidmachine/media3/common/Player$Commands;

    .line 2300
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2301
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda22;-><init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    :cond_1e
    return-void
.end method

.method public final updatePlayWhenReady(ZI)V
    .registers 14

    .line 2736
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->computePlaybackSuppressionReason(Z)I

    move-result v0

    .line 2737
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    if-ne v2, p1, :cond_13

    iget v2, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-ne v2, v0, :cond_13

    iget v2, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    if-ne v2, p2, :cond_13

    return-void

    .line 2742
    :cond_13
    iget v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    .line 2745
    iget-boolean v2, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v2, :cond_21

    .line 2746
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithEstimatedPosition()Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    .line 2749
    :cond_21
    invoke-virtual {v1, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithPlayWhenReady(ZII)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    .line 2751
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v1, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setPlayWhenReady(ZII)V

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p0

    .line 2753
    invoke-virtual/range {v2 .. v10}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Lio/bidmachine/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    return-void
.end method

.method public final updatePlaybackInfo(Lio/bidmachine/media3/exoplayer/PlaybackInfo;IZIJIZ)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1997
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 1999
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 2001
    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v5, v7, 0x1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p8

    .line 2003
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->evaluateMediaItemTransitionReason(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/exoplayer/PlaybackInfo;ZIZZ)Landroid/util/Pair;

    move-result-object v5

    .line 2010
    iget-object v3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2011
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v3, :cond_53

    .line 2014
    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v8}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4f

    .line 2015
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v8, v8, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 2016
    invoke-virtual {v6, v8, v9}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v6

    iget v6, v6, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 2018
    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v9, v0, Lio/bidmachine/media3/common/BasePlayer;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v8, v6, v9}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v6

    iget-object v6, v6, Lio/bidmachine/media3/common/Timeline$Window;->mediaItem:Lio/bidmachine/media3/common/MediaItem;

    .line 2020
    :cond_4f
    sget-object v8, Lio/bidmachine/media3/common/MediaMetadata;->EMPTY:Lio/bidmachine/media3/common/MediaMetadata;

    iput-object v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    :cond_53
    if-nez v3, :cond_5f

    .line 2022
    iget-object v8, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v9, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 2023
    invoke-interface {v8, v9}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_71

    .line 2024
    :cond_5f
    iget-object v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    .line 2026
    invoke-virtual {v8}, Lio/bidmachine/media3/common/MediaMetadata;->buildUpon()Lio/bidmachine/media3/common/MediaMetadata$Builder;

    move-result-object v8

    iget-object v9, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 2027
    invoke-virtual {v8, v9}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->populateFromMetadata(Ljava/util/List;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    move-result-object v8

    .line 2028
    invoke-virtual {v8}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->build()Lio/bidmachine/media3/common/MediaMetadata;

    move-result-object v8

    iput-object v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    .line 2030
    :cond_71
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->buildUpdatedMediaMetadata()Lio/bidmachine/media3/common/MediaMetadata;

    move-result-object v8

    .line 2031
    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    invoke-virtual {v8, v9}, Lio/bidmachine/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2032
    iput-object v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    .line 2033
    iget-boolean v8, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget-boolean v10, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v8, v10, :cond_87

    move v8, v12

    goto :goto_88

    :cond_87
    move v8, v11

    .line 2035
    :goto_88
    iget v10, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    iget v13, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v10, v13, :cond_90

    move v10, v12

    goto :goto_91

    :cond_90
    move v10, v11

    :goto_91
    if-nez v10, :cond_95

    if-eqz v8, :cond_98

    .line 2038
    :cond_95
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->updateWakeAndWifiLock()V

    .line 2040
    :cond_98
    iget-boolean v13, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->isLoading:Z

    iget-boolean v14, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->isLoading:Z

    if-eq v13, v14, :cond_a0

    move v13, v12

    goto :goto_a1

    :cond_a0
    move v13, v11

    :goto_a1
    if-eqz v13, :cond_a6

    .line 2042
    invoke-virtual {v0, v14}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->updatePriorityTaskManagerForIsLoadingChange(Z)V

    :cond_a6
    if-nez v7, :cond_b4

    .line 2046
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v14, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda2;

    move/from16 v15, p2

    invoke-direct {v14, v1, v15}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;I)V

    invoke-virtual {v7, v11, v14}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    :cond_b4
    if-eqz p3, :cond_ce

    move/from16 v7, p7

    .line 2052
    invoke-virtual {v0, v4, v2, v7}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getPreviousPositionInfo(ILio/bidmachine/media3/exoplayer/PlaybackInfo;I)Lio/bidmachine/media3/common/Player$PositionInfo;

    move-result-object v7

    move-wide/from16 v14, p5

    .line 2054
    invoke-virtual {v0, v14, v15}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getPositionInfo(J)Lio/bidmachine/media3/common/Player$PositionInfo;

    move-result-object v11

    .line 2055
    iget-object v14, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v15, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda7;

    invoke-direct {v15, v4, v7, v11}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda7;-><init>(ILio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/common/Player$PositionInfo;)V

    const/16 v4, 0xb

    invoke-virtual {v14, v4, v15}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    :cond_ce
    if-eqz v3, :cond_da

    .line 2065
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v4, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v4, v6, v5}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda8;-><init>(Lio/bidmachine/media3/common/MediaItem;I)V

    invoke-virtual {v3, v12, v4}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    .line 2069
    :cond_da
    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackError:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackError:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    if-eq v3, v4, :cond_fa

    .line 2070
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v4, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda9;

    invoke-direct {v4, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda9;-><init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V

    const/16 v5, 0xa

    invoke-virtual {v3, v5, v4}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    .line 2073
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackError:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    if-eqz v3, :cond_fa

    .line 2074
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v4, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda10;

    invoke-direct {v4, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda10;-><init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V

    invoke-virtual {v3, v5, v4}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    .line 2079
    :cond_fa
    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    if-eq v3, v4, :cond_112

    .line 2080
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->trackSelector:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;

    iget-object v4, v4, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 2081
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v4, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda11;

    invoke-direct {v4, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda11;-><init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    :cond_112
    if-nez v9, :cond_122

    .line 2086
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Lio/bidmachine/media3/common/MediaMetadata;

    .line 2087
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v5, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda12;

    invoke-direct {v5, v3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda12;-><init>(Lio/bidmachine/media3/common/MediaMetadata;)V

    const/16 v3, 0xe

    invoke-virtual {v4, v3, v5}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    :cond_122
    if-eqz v13, :cond_12f

    .line 2092
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v4, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda13;

    invoke-direct {v4, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda13;-><init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v4}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    :cond_12f
    if-nez v10, :cond_133

    if-eqz v8, :cond_13e

    .line 2100
    :cond_133
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v4, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda14;

    invoke-direct {v4, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda14;-><init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V

    const/4 v5, -0x1

    invoke-virtual {v3, v5, v4}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    :cond_13e
    if-eqz v10, :cond_14b

    .line 2107
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v4, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda15;

    invoke-direct {v4, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda15;-><init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V

    const/4 v5, 0x4

    invoke-virtual {v3, v5, v4}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    :cond_14b
    if-nez v8, :cond_153

    .line 2111
    iget v3, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    iget v4, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    if-eq v3, v4, :cond_15e

    .line 2114
    :cond_153
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v4, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v4}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    .line 2120
    :cond_15e
    iget v3, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    iget v4, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-eq v3, v4, :cond_16f

    .line 2122
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v4, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V

    const/4 v5, 0x6

    invoke-virtual {v3, v5, v4}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    .line 2128
    :cond_16f
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->isPlaying()Z

    move-result v3

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->isPlaying()Z

    move-result v4

    if-eq v3, v4, :cond_184

    .line 2129
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v4, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V

    const/4 v5, 0x7

    invoke-virtual {v3, v5, v4}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    .line 2133
    :cond_184
    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19a

    .line 2134
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    new-instance v4, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v4, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda6;-><init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V

    const/16 v5, 0xc

    invoke-virtual {v3, v5, v4}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    .line 2138
    :cond_19a
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->updateAvailableCommands()V

    .line 2139
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->listeners:Lio/bidmachine/media3/common/util/ListenerSet;

    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ListenerSet;->flushEvents()V

    .line 2141
    iget-boolean v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    iget-boolean v3, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eq v2, v3, :cond_1c0

    .line 2142
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1ae
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    .line 2143
    iget-boolean v4, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    invoke-interface {v3, v4}, Lio/bidmachine/media3/exoplayer/ExoPlayer$AudioOffloadListener;->onSleepingForOffloadChanged(Z)V

    goto :goto_1ae

    :cond_1c0
    return-void
.end method

.method public final updatePriorityTaskManagerForIsLoadingChange(Z)V
    .registers 4

    .line 2836
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->priorityTaskManager:Lio/bidmachine/media3/common/PriorityTaskManager;

    if-eqz v0, :cond_21

    if-eqz p1, :cond_13

    .line 2837
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    if-nez v1, :cond_13

    .line 2838
    iget p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->priority:I

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/PriorityTaskManager;->add(I)V

    const/4 p1, 0x1

    .line 2839
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    return-void

    :cond_13
    if-nez p1, :cond_21

    .line 2840
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    if-eqz p1, :cond_21

    .line 2841
    iget p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->priority:I

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/PriorityTaskManager;->remove(I)V

    const/4 p1, 0x0

    .line 2842
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    :cond_21
    return-void
.end method

.method public final updateWakeAndWifiLock()V
    .registers 6

    .line 2777
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_35

    const/4 v3, 0x2

    if-eq v0, v3, :cond_18

    const/4 v3, 0x3

    if-eq v0, v3, :cond_18

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    goto :goto_35

    .line 2792
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2781
    :cond_18
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->isSleepingForOffload()Z

    move-result v0

    .line 2782
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Lio/bidmachine/media3/exoplayer/WakeLockManager;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_27

    if-nez v0, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    invoke-virtual {v3, v1}, Lio/bidmachine/media3/exoplayer/WakeLockManager;->setStayAwake(Z)V

    .line 2784
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Lio/bidmachine/media3/exoplayer/WifiLockManager;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/WifiLockManager;->setStayAwake(Z)V

    return-void

    .line 2788
    :cond_35
    :goto_35
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Lio/bidmachine/media3/exoplayer/WakeLockManager;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/WakeLockManager;->setStayAwake(Z)V

    .line 2789
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Lio/bidmachine/media3/exoplayer/WifiLockManager;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/WifiLockManager;->setStayAwake(Z)V

    return-void
.end method

.method public final verifyApplicationThread()V
    .registers 4

    .line 2799
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Lio/bidmachine/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ConditionVariable;->blockUninterruptible()V

    .line 2800
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_4f

    .line 2808
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 2802
    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2809
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    if-nez v1, :cond_49

    .line 2812
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->hasNotifiedFullWrongThreadWarning:Z

    if-eqz v1, :cond_3b

    const/4 v1, 0x0

    goto :goto_40

    :cond_3b
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_40
    const-string v2, "ExoPlayerImpl"

    invoke-static {v2, v0, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    .line 2813
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->hasNotifiedFullWrongThreadWarning:Z

    return-void

    .line 2810
    :cond_49
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4f
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl.AnonymousClass1 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$1;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl.Api31 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$Api31)
.class public final Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$Api31;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api31"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$o8wMHHVj2C6H0RMVc2tfZAwaSLc(Landroid/content/Context;ZLio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 4

    .line 3317
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/analytics/MediaMetricsListener;->create(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/analytics/MediaMetricsListener;

    move-result-object p0

    if-nez p0, :cond_e

    .line 3319
    const-string p0, "ExoPlayerImpl"

    const-string p1, "MediaMetricsService unavailable."

    invoke-static {p0, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    if-eqz p1, :cond_13

    .line 3323
    invoke-virtual {p2, p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->addAnalyticsListener(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsListener;)V

    .line 3325
    :cond_13
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/analytics/MediaMetricsListener;->getLogSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object p0

    invoke-virtual {p3, p0}, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->setLogSessionId(Landroid/media/metrics/LogSessionId;)V

    return-void
.end method

.method public static registerMediaMetricsListener(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;ZLio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 7

    .line 3314
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getClock()Lio/bidmachine/media3/common/util/Clock;

    move-result-object v0

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lio/bidmachine/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object v0

    .line 3315
    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1, p3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;ZLio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$Api31$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$Api31$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

.field public final synthetic f$3:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$3:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$2:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$Api31$$ExternalSyntheticLambda0;->f$3:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$Api31;->$r8$lambda$o8wMHHVj2C6H0RMVc2tfZAwaSLc(Landroid/content/Context;ZLio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl.ComponentListener (io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener)
.class public final Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;
.implements Lio/bidmachine/media3/exoplayer/audio/AudioRendererEventListener;
.implements Lio/bidmachine/media3/exoplayer/text/TextOutput;
.implements Lio/bidmachine/media3/exoplayer/metadata/MetadataOutput;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;
.implements Lio/bidmachine/media3/exoplayer/AudioBecomingNoisyManager$EventListener;
.implements Lio/bidmachine/media3/exoplayer/StreamVolumeManager$Listener;
.implements Lio/bidmachine/media3/exoplayer/ExoPlayer$AudioOffloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method public static synthetic $r8$lambda$3A5OrqZzEQYMUdrIMif9R8q50E8(IZLio/bidmachine/media3/common/Player$Listener;)V
    .registers 3

    .line 3205
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$4Fm3j2dOucZlpo4QHyy2tUob5tI(ZLio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 3069
    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$C9DZF3hm6po4D9NoM_wLWWxlXP0(Lio/bidmachine/media3/common/text/CueGroup;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 3102
    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onCues(Lio/bidmachine/media3/common/text/CueGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R0K6eDanGeh4-wvY0Wg6nSBcu1w(Lio/bidmachine/media3/common/DeviceInfo;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 3197
    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onDeviceInfoChanged(Lio/bidmachine/media3/common/DeviceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Svb_7Ola4QKzVNs84rMgUVHlFM(Lio/bidmachine/media3/common/VideoSize;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 2984
    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onVideoSizeChanged(Lio/bidmachine/media3/common/VideoSize;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gKj-4lQXG8TGAZNY9uIFK5xtQ9s(Lio/bidmachine/media3/common/Metadata;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 3118
    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onMetadata(Lio/bidmachine/media3/common/Metadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kUEpYZplG5U_hOoKOgZEfGCs65I(Ljava/util/List;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 3096
    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onCues(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wFBUxnO5fDMSmQWdHY1KBITJ8QE(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;Lio/bidmachine/media3/common/Player$Listener;)V
    .registers 2

    .line 3116
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    .line 3116
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1500(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/MediaMetadata;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/bidmachine/media3/common/Player$Listener;->onMediaMetadataChanged(Lio/bidmachine/media3/common/MediaMetadata;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)V
    .registers 2

    .line 2941
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$1;)V
    .registers 3

    .line 2941
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;-><init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)V

    return-void
.end method


# virtual methods
.method public onAudioBecomingNoisy()V
    .registers 4

    .line 3185
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$2000(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;ZI)V

    return-void
.end method

.method public onAudioCodecError(Ljava/lang/Exception;)V
    .registers 3

    .line 3079
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onAudioCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 13

    .line 3028
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onAudioDecoderReleased(Ljava/lang/String;)V
    .registers 3

    .line 3051
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onAudioDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public onAudioDisabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 3

    .line 3056
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onAudioDisabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    .line 3057
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1002(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;

    .line 3058
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$902(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/exoplayer/DecoderCounters;)Lio/bidmachine/media3/exoplayer/DecoderCounters;

    return-void
.end method

.method public onAudioEnabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 3

    .line 3021
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$902(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/exoplayer/DecoderCounters;)Lio/bidmachine/media3/exoplayer/DecoderCounters;

    .line 3022
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onAudioEnabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method public onAudioInputFormatChanged(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V
    .registers 4

    .line 3035
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1002(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;

    .line 3036
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onAudioInputFormatChanged(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method

.method public onAudioPositionAdvancing(J)V
    .registers 4

    .line 3041
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onAudioPositionAdvancing(J)V

    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .registers 3

    .line 3074
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onAudioSinkError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioTrackInitialized(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .registers 3

    .line 3084
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onAudioTrackInitialized(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void
.end method

.method public onAudioTrackReleased(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .registers 3

    .line 3089
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onAudioTrackReleased(Lio/bidmachine/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    return-void
.end method

.method public onAudioUnderrun(IJJ)V
    .registers 13

    .line 3046
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onAudioUnderrun(IJJ)V

    return-void
.end method

.method public onCues(Lio/bidmachine/media3/common/text/CueGroup;)V
    .registers 4

    .line 3101
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1202(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/text/CueGroup;)Lio/bidmachine/media3/common/text/CueGroup;

    .line 3102
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$700(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/common/text/CueGroup;)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/common/util/ListenerSet;->sendEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

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

    .line 3096
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$700(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/common/util/ListenerSet;->sendEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onDroppedFrames(IJ)V
    .registers 5

    .line 2977
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onDroppedFrames(IJ)V

    return-void
.end method

.method public onMetadata(Lio/bidmachine/media3/common/Metadata;)V
    .registers 5

    .line 3109
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    .line 3110
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1300(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/MediaMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/media3/common/MediaMetadata;->buildUpon()Lio/bidmachine/media3/common/MediaMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->populateFromMetadata(Lio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/MediaMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/media3/common/MediaMetadata$Builder;->build()Lio/bidmachine/media3/common/MediaMetadata;

    move-result-object v1

    .line 3109
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1302(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/MediaMetadata;)Lio/bidmachine/media3/common/MediaMetadata;

    .line 3111
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/MediaMetadata;

    move-result-object v0

    .line 3112
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1500(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/MediaMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 3113
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1502(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/MediaMetadata;)Lio/bidmachine/media3/common/MediaMetadata;

    .line 3114
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$700(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    .line 3118
    :cond_3c
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$700(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/common/Metadata;)V

    const/16 p1, 0x1c

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/common/util/ListenerSet;->queueEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    .line 3119
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$700(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/util/ListenerSet;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public onRenderedFirstFrame(Ljava/lang/Object;J)V
    .registers 5

    .line 2989
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onRenderedFirstFrame(Ljava/lang/Object;J)V

    .line 2990
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$800(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_21

    .line 2991
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$700(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/util/ListenerSet;

    move-result-object p1

    new-instance p2, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6;

    invoke-direct {p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6;-><init>()V

    const/16 p3, 0x1a

    invoke-virtual {p1, p3, p2}, Lio/bidmachine/media3/common/util/ListenerSet;->sendEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    :cond_21
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .registers 4

    .line 3063
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1100(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Z

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    .line 3066
    :cond_9
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1102(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Z)Z

    .line 3067
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$700(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda8;-><init>(Z)V

    const/16 p1, 0x17

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/common/util/ListenerSet;->sendEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onSleepingForOffloadChanged(Z)V
    .registers 2

    .line 3212
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$2400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)V

    return-void
.end method

.method public onStreamTypeChanged(I)V
    .registers 4

    .line 3193
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$2100(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/StreamVolumeManager;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$2200(Lio/bidmachine/media3/exoplayer/StreamVolumeManager;)Lio/bidmachine/media3/common/DeviceInfo;

    move-result-object p1

    .line 3194
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$2300(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/DeviceInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 3195
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$2302(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/DeviceInfo;)Lio/bidmachine/media3/common/DeviceInfo;

    .line 3196
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$700(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;-><init>(Lio/bidmachine/media3/common/DeviceInfo;)V

    const/16 p1, 0x1d

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/common/util/ListenerSet;->sendEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    :cond_2b
    return-void
.end method

.method public onStreamVolumeChanged(IZ)V
    .registers 5

    .line 3203
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$700(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;-><init>(IZ)V

    const/16 p1, 0x1e

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/common/util/ListenerSet;->sendEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 5

    .line 3148
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1900(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Landroid/graphics/SurfaceTexture;)V

    .line 3149
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1800(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    .line 3159
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1700(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V

    .line 3160
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1800(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 3154
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1800(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onVideoCodecError(Ljava/lang/Exception;)V
    .registers 3

    .line 3014
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onVideoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 13

    .line 2964
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onVideoDecoderReleased(Ljava/lang/String;)V
    .registers 3

    .line 2997
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onVideoDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoDisabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 3

    .line 3002
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onVideoDisabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    .line 3003
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$502(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;

    .line 3004
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$302(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/exoplayer/DecoderCounters;)Lio/bidmachine/media3/exoplayer/DecoderCounters;

    return-void
.end method

.method public onVideoEnabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V
    .registers 3

    .line 2957
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$302(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/exoplayer/DecoderCounters;)Lio/bidmachine/media3/exoplayer/DecoderCounters;

    .line 2958
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onVideoEnabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method public onVideoFrameProcessingOffset(JI)V
    .registers 5

    .line 3009
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onVideoFrameProcessingOffset(JI)V

    return-void
.end method

.method public onVideoInputFormatChanged(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V
    .registers 4

    .line 2971
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$502(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/common/Format;

    .line 2972
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onVideoInputFormatChanged(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method

.method public onVideoSizeChanged(Lio/bidmachine/media3/common/VideoSize;)V
    .registers 4

    .line 2982
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$602(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/VideoSize;)Lio/bidmachine/media3/common/VideoSize;

    .line 2983
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$700(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Lio/bidmachine/media3/common/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7;-><init>(Lio/bidmachine/media3/common/VideoSize;)V

    const/16 p1, 0x19

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/common/util/ListenerSet;->sendEvent(ILio/bidmachine/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onVideoSurfaceCreated(Landroid/view/Surface;)V
    .registers 3

    .line 3173
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1700(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoSurfaceDestroyed(Landroid/view/Surface;)V
    .registers 3

    .line 3178
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1700(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    .line 3133
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1, p3, p4}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1800(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 3126
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1600(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3127
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1700(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 3138
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1600(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3139
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1700(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V

    .line 3141
    :cond_e
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->access$1800(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;II)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/text/CueGroup;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/text/CueGroup;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/common/text/CueGroup;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/common/text/CueGroup;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->$r8$lambda$C9DZF3hm6po4D9NoM_wLWWxlXP0(Lio/bidmachine/media3/common/text/CueGroup;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->$r8$lambda$wFBUxnO5fDMSmQWdHY1KBITJ8QE(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/Metadata;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/Metadata;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/common/Metadata;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/common/Metadata;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->$r8$lambda$gKj-4lQXG8TGAZNY9uIFK5xtQ9s(Lio/bidmachine/media3/common/Metadata;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda3 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda3;->f$0:Ljava/util/List;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->$r8$lambda$kUEpYZplG5U_hOoKOgZEfGCs65I(Ljava/util/List;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;->f$0:I

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;->f$0:I

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;->f$1:Z

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->$r8$lambda$3A5OrqZzEQYMUdrIMif9R8q50E8(IZLio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/DeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/DeviceInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/media3/common/DeviceInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/media3/common/DeviceInfo;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->$r8$lambda$R0K6eDanGeh4-wvY0Wg6nSBcu1w(Lio/bidmachine/media3/common/DeviceInfo;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-interface {p1}, Lio/bidmachine/media3/common/Player$Listener;->onRenderedFirstFrame()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/VideoSize;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/VideoSize;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/media3/common/VideoSize;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7;->f$0:Lio/bidmachine/media3/common/VideoSize;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->$r8$lambda$_Svb_7Ola4QKzVNs84rMgUVHlFM(Lio/bidmachine/media3/common/VideoSize;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda8 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda8)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda8;->f$0:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda8;->f$0:Z

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$ComponentListener;->$r8$lambda$4Fm3j2dOucZlpo4QHyy2tUob5tI(ZLio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl.FrameMetadataListener (io.bidmachine.media3.exoplayer.ExoPlayerImpl$FrameMetadataListener)
.class public final Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;
.implements Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;
.implements Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrameMetadataListener"
.end annotation


# instance fields
.field public cameraMotionListener:Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;

.field public internalCameraMotionListener:Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;

.field public internalVideoFrameMetadataListener:Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;

.field public videoFrameMetadataListener:Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$1;)V
    .registers 2

    .line 3217
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(ILjava/lang/Object;)V
    .registers 4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_28

    const/16 v0, 0x8

    if-eq p1, v0, :cond_23

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_c

    return-void

    .line 3243
    :cond_c
    check-cast p2, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    if-nez p2, :cond_16

    const/4 p1, 0x0

    .line 3245
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->internalVideoFrameMetadataListener:Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 3246
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->internalCameraMotionListener:Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;

    return-void

    .line 3248
    :cond_16
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->getVideoFrameMetadataListener()Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->internalVideoFrameMetadataListener:Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 3249
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->getCameraMotionListener()Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->internalCameraMotionListener:Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;

    return-void

    .line 3240
    :cond_23
    check-cast p2, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->cameraMotionListener:Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;

    return-void

    .line 3237
    :cond_28
    check-cast p2, Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->videoFrameMetadataListener:Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;

    return-void
.end method

.method public onCameraMotion(J[F)V
    .registers 5

    .line 3288
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->internalCameraMotionListener:Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_7

    .line 3289
    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;->onCameraMotion(J[F)V

    .line 3291
    :cond_7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->cameraMotionListener:Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_e

    .line 3292
    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;->onCameraMotion(J[F)V

    :cond_e
    return-void
.end method

.method public onCameraMotionReset()V
    .registers 2

    .line 3298
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->internalCameraMotionListener:Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_7

    .line 3299
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;->onCameraMotionReset()V

    .line 3301
    :cond_7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->cameraMotionListener:Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_e

    .line 3302
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/spherical/CameraMotionListener;->onCameraMotionReset()V

    :cond_e
    return-void
.end method

.method public onVideoFrameAboutToBeRendered(JJLio/bidmachine/media3/common/Format;Landroid/media/MediaFormat;)V
    .registers 15

    .line 3274
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->internalVideoFrameMetadataListener:Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_10

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 3275
    invoke-interface/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLio/bidmachine/media3/common/Format;Landroid/media/MediaFormat;)V

    move-object v7, v6

    move-object v6, v5

    move-wide v4, v3

    move-wide v2, v1

    goto :goto_14

    :cond_10
    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 3278
    :goto_14
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;->videoFrameMetadataListener:Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;

    if-eqz v1, :cond_1b

    .line 3279
    invoke-interface/range {v1 .. v7}, Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLio/bidmachine/media3/common/Format;Landroid/media/MediaFormat;)V

    :cond_1b
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl.MediaSourceHolderSnapshot (io.bidmachine.media3.exoplayer.ExoPlayerImpl$MediaSourceHolderSnapshot)
.class public final Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/MediaSourceInfoHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSourceHolderSnapshot"
.end annotation


# instance fields
.field public final mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

.field public timeline:Lio/bidmachine/media3/common/Timeline;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;)V
    .registers 3

    .line 2920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2921
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->uid:Ljava/lang/Object;

    .line 2922
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->mediaSource:Lio/bidmachine/media3/exoplayer/source/MediaSource;

    .line 2923
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/source/MaskingMediaSource;->getTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lio/bidmachine/media3/common/Timeline;

    return-void
.end method


# virtual methods
.method public getTimeline()Lio/bidmachine/media3/common/Timeline;
    .registers 2

    .line 2933
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lio/bidmachine/media3/common/Timeline;

    return-object v0
.end method

.method public getUid()Ljava/lang/Object;
    .registers 2

    .line 2928
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->uid:Ljava/lang/Object;

    return-object v0
.end method

.method public updateTimeline(Lio/bidmachine/media3/common/Timeline;)V
    .registers 2

    .line 2937
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->timeline:Lio/bidmachine/media3/common/Timeline;

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$vTJEPRATgAMhv-GlSkHLZgSe9CY(ILio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;->f$0:I

    iput p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;->f$0:I

    iget v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$kvl-74yoEOYXm1HMiI9Qpy8OsXs(IILio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda10 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda10)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda10;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$Jm1VB0B3Wu-g9VUNeSNiqnxwQoA(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda11 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda11)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda11;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda11;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$gpH94mPHmqK1rUyyNewWshJ0xZ4(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda12 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda12)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/MediaMetadata;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaMetadata;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda12;->f$0:Lio/bidmachine/media3/common/MediaMetadata;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda12;->f$0:Lio/bidmachine/media3/common/MediaMetadata;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$6LLL4Lv5dRFmWppgWA08hKDjefY(Lio/bidmachine/media3/common/MediaMetadata;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda13 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda13)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda13;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda13;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$OzEgsB94yIIeddfSQs2uEDufMAQ(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda14 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda14)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda14;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda14;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$m2QW33MdQ6yJ9vB4EDBnAEmKxP4(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda15 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda15)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda15;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda15;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$Ldrn6zzC-nPogztmoqGQLwLvnbA(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda16 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda16)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$IterationFinishedEvent;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda16;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Lio/bidmachine/media3/common/FlagSet;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda16;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$yvQHFg4jvrB78LVCCFPR12mxgSw(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/Player$Listener;Lio/bidmachine/media3/common/FlagSet;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda17 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda17)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda17;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    return-void
.end method


# virtual methods
.method public final onPlaybackInfoUpdate(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda17;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$oPubwSkfh1776bpaUKXhIVQjSa8(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda21 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda21)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda21;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda21;->f$1:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda21;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda21;->f$1:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$1FdJdSdbVnPEzjp9RFGPrR8JEYs(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda18 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda18)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/BackgroundThreadStateHandler$StateChangeListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda18;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda18;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$bmGpyof4ANC1-YdsYT8yXdY1Tac(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;II)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda19 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda19)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda19;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda19;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$Cz6lvS-Z3w3a-KnHlLczYqJx2J0(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda2;->f$1:I

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$ie7nZ43T4qtqxqQchD1_RUMqH2Y(Lio/bidmachine/media3/exoplayer/PlaybackInfo;ILio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda20 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda20)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/SuitableOutputChecker$Callback;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    return-void
.end method


# virtual methods
.method public final onSelectedOutputSuitabilityChanged(Z)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda20;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$u4nWqr2CQHLUY_Jy_Vwr0Fvbw44(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Z)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda22 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda22)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda22;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda22;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$UrkAq3wBMxvKCAdkFRBU9yMwAXw(Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda23 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda23)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$1rCpN0b5K1ms-oIXNxlcGzVjQGM(Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda24 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda24)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda24;->f$0:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda24;->f$0:I

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$Iv1pWKm04kZLFB0VtPX93CscNlo(ILio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda25 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda25)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda25;->f$0:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda25;->f$0:F

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$RWc5NEia-j2Ev6fa-Me64YPtBsc(FLio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda26 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda26)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda26;->f$0:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda26;->f$0:Z

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$kwKBrFGBZ2KKXGyIn7Omk628Lxc(ZLio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda27 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda27)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/TrackSelectionParameters;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/TrackSelectionParameters;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda27;->f$0:Lio/bidmachine/media3/common/TrackSelectionParameters;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda27;->f$0:Lio/bidmachine/media3/common/TrackSelectionParameters;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$j1Cbz3JqAFkd7eEVxe6tNDIB7sc(Lio/bidmachine/media3/common/TrackSelectionParameters;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda3 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$fQdn8yHyR7bZtzXoJwrCBrZy77s(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda4 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$WXFeN2T9r6jfqXVxal003xVdWZk(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda5 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda5;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$hxhIehOzzMSIJ26I-zzJZxj-wkI(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda6 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda6)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda6;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$NkHwSwEVd8zyJjwRQrTidYGpy9w(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda7 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda7)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lio/bidmachine/media3/common/Player$PositionInfo;

.field public final synthetic f$2:Lio/bidmachine/media3/common/Player$PositionInfo;


# direct methods
.method public synthetic constructor <init>(ILio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/common/Player$PositionInfo;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda7;->f$0:I

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda7;->f$1:Lio/bidmachine/media3/common/Player$PositionInfo;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda7;->f$2:Lio/bidmachine/media3/common/Player$PositionInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda7;->f$0:I

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda7;->f$1:Lio/bidmachine/media3/common/Player$PositionInfo;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda7;->f$2:Lio/bidmachine/media3/common/Player$PositionInfo;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, v1, v2, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$hPrnxOPxkhP-5vdfBB9rJ1jAZ3o(ILio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/common/Player$PositionInfo;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda8 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda8)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/MediaItem;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/MediaItem;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda8;->f$0:Lio/bidmachine/media3/common/MediaItem;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda8;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda8;->f$0:Lio/bidmachine/media3/common/MediaItem;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda8;->f$1:I

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$ypFq-_v4IKHaOKhyLBCm-TN8RaE(Lio/bidmachine/media3/common/MediaItem;ILio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda9 (io.bidmachine.media3.exoplayer.ExoPlayerImpl$$ExternalSyntheticLambda9)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda9;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda9;->f$0:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    check-cast p1, Lio/bidmachine/media3/common/Player$Listener;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;->$r8$lambda$PMqBF9H8SXVbRiwaHjMm7Lt90io(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Player$Listener;)V

    return-void
.end method
