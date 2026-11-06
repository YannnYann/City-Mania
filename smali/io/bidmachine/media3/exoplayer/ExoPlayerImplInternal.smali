###### Class io.bidmachine.media3.exoplayer.ExoPlayerImplInternal (io.bidmachine.media3.exoplayer.ExoPlayerImplInternal)
.class public final Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;
.implements Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;
.implements Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceListInfoRefreshListener;
.implements Lio/bidmachine/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;
.implements Lio/bidmachine/media3/exoplayer/PlayerMessage$Sender;
.implements Lio/bidmachine/media3/exoplayer/AudioFocusManager$PlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;,
        Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;,
        Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;,
        Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;,
        Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;,
        Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;,
        Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
    }
.end annotation


# static fields
.field public static final BUFFERING_MAXIMUM_INTERVAL_MS:J


# instance fields
.field public final analyticsCollector:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

.field public final applicationLooperHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

.field public final audioFocusManager:Lio/bidmachine/media3/exoplayer/AudioFocusManager;

.field public final backBufferDurationUs:J

.field public final bandwidthMeter:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;

.field public final clock:Lio/bidmachine/media3/common/util/Clock;

.field public deliverPendingMessageAtStartPositionRequired:Z

.field public final dynamicSchedulingEnabled:Z

.field public final emptyTrackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

.field public enabledRendererCount:I

.field public foregroundMode:Z

.field public final handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

.field public final hasSecondaryRenderers:Z

.field public isPrewarmingDisabledUntilNextTransition:Z

.field public isRebuffering:Z

.field public lastPreloadPoolInvalidationTimeline:Lio/bidmachine/media3/common/Timeline;

.field public lastRebufferRealtimeMs:J

.field public final livePlaybackSpeedControl:Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;

.field public final loadControl:Lio/bidmachine/media3/exoplayer/LoadControl;

.field public final mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

.field public final mediaSourceList:Lio/bidmachine/media3/exoplayer/MediaSourceList;

.field public nextPendingMessageIndexHint:I

.field public offloadSchedulingEnabled:Z

.field public pauseAtEndOfWindow:Z

.field public pendingInitialSeekPosition:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

.field public final pendingMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public pendingPauseAtEndOfPeriod:Z

.field public pendingRecoverableRendererError:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

.field public final period:Lio/bidmachine/media3/common/Timeline$Period;

.field public playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

.field public playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

.field public final playbackInfoUpdateListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

.field public final playbackLooper:Landroid/os/Looper;

.field public final playbackLooperProvider:Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;

.field public playbackMaybeBecameStuckAtMs:J

.field public final playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

.field public preloadConfiguration:Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;

.field public prewarmingMediaPeriodDiscontinuity:J

.field public final queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

.field public final releaseTimeoutMs:J

.field public released:Z

.field public final rendererCapabilities:[Lio/bidmachine/media3/exoplayer/RendererCapabilities;

.field public rendererPositionElapsedRealtimeUs:J

.field public rendererPositionUs:J

.field public final rendererReportedReady:[Z

.field public final renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

.field public repeatMode:I

.field public requestForRendererSleep:Z

.field public final retainBackBufferFromKeyframe:Z

.field public seekParameters:Lio/bidmachine/media3/exoplayer/SeekParameters;

.field public setForegroundModeTimeoutMs:J

.field public shouldContinueLoading:Z

.field public shuffleModeEnabled:Z

.field public final trackSelector:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;

.field public volume:F

.field public final window:Lio/bidmachine/media3/common/Timeline$Window;


# direct methods
.method public static synthetic $r8$lambda$BV9miMMaIe-r5CfnqzAmiFHyjNU(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;)Ljava/lang/Boolean;
    .registers 1

    .line 558
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    .line 558
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OytCSxo_kFQDm-htZc6rv1qbQBQ(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;IZ)V
    .registers 4

    .line 1438
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->analyticsCollector:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    .line 1438
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object p0, p0, p1

    .line 1439
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getTrackType()I

    move-result p0

    .line 1438
    invoke-interface {v0, p1, p0, p2}, Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;->onRendererReadyChanged(IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vy5PtHeIyCJ_4qBfT4azDJ4ryrU(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;J)Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->createMediaPeriodHolder(Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;J)Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rVJtib-GnBDBcadIZxxXf-X8SBo(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;Lio/bidmachine/media3/exoplayer/PlayerMessage;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1949
    :try_start_3
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->deliverMessage(Lio/bidmachine/media3/exoplayer/PlayerMessage;)V
    :try_end_6
    .catch Lio/bidmachine/media3/exoplayer/ExoPlaybackException; {:try_start_3 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p0

    .line 1951
    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Unexpected error delivering message on external thread."

    invoke-static {p1, v0, p0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1952
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x2710

    .line 173
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    sput-wide v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->BUFFERING_MAXIMUM_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lio/bidmachine/media3/exoplayer/Renderer;[Lio/bidmachine/media3/exoplayer/Renderer;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;Lio/bidmachine/media3/exoplayer/LoadControl;Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;IZLio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;Lio/bidmachine/media3/exoplayer/SeekParameters;Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;JZZLandroid/os/Looper;Lio/bidmachine/media3/common/util/Clock;Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V
    .registers 37

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p10

    move-wide/from16 v5, p13

    move-object/from16 v7, p18

    move-object/from16 v8, p20

    move-object/from16 v9, p22

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 246
    iput-wide v10, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->prewarmingMediaPeriodDiscontinuity:J

    move-object/from16 v12, p19

    .line 272
    iput-object v12, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdateListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    .line 273
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->trackSelector:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;

    move-object/from16 v12, p5

    .line 274
    iput-object v12, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 275
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Lio/bidmachine/media3/exoplayer/LoadControl;

    .line 276
    iput-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->bandwidthMeter:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;

    move/from16 v13, p8

    .line 277
    iput v13, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    move/from16 v13, p9

    .line 278
    iput-boolean v13, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    move-object/from16 v13, p11

    .line 279
    iput-object v13, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->seekParameters:Lio/bidmachine/media3/exoplayer/SeekParameters;

    move-object/from16 v13, p12

    .line 280
    iput-object v13, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;

    .line 281
    iput-wide v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->releaseTimeoutMs:J

    .line 282
    iput-wide v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    move/from16 v5, p15

    .line 283
    iput-boolean v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    move/from16 v5, p16

    .line 284
    iput-boolean v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->dynamicSchedulingEnabled:Z

    .line 285
    iput-object v7, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->clock:Lio/bidmachine/media3/common/util/Clock;

    .line 286
    iput-object v8, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    .line 287
    iput-object v9, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->preloadConfiguration:Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 288
    iput-object v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->analyticsCollector:Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 289
    iput v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->volume:F

    .line 291
    iput-wide v10, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    .line 292
    iput-wide v10, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->lastRebufferRealtimeMs:J

    .line 293
    invoke-interface {v2, v8}, Lio/bidmachine/media3/exoplayer/LoadControl;->getBackBufferDurationUs(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)J

    move-result-wide v5

    iput-wide v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    .line 294
    invoke-interface {v2, v8}, Lio/bidmachine/media3/exoplayer/LoadControl;->retainBackBufferFromKeyframe(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    .line 295
    sget-object v2, Lio/bidmachine/media3/common/Timeline;->EMPTY:Lio/bidmachine/media3/common/Timeline;

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->lastPreloadPoolInvalidationTimeline:Lio/bidmachine/media3/common/Timeline;

    .line 297
    invoke-static {v12}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->createDummy(Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 298
    new-instance v5, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-direct {v5, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V

    iput-object v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 299
    array-length v2, v0

    new-array v2, v2, [Lio/bidmachine/media3/exoplayer/RendererCapabilities;

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Lio/bidmachine/media3/exoplayer/RendererCapabilities;

    .line 300
    array-length v2, v0

    new-array v2, v2, [Z

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererReportedReady:[Z

    .line 303
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;->getRendererCapabilitiesListener()Lio/bidmachine/media3/exoplayer/RendererCapabilities$Listener;

    move-result-object v2

    .line 306
    array-length v5, v0

    new-array v5, v5, [Lio/bidmachine/media3/exoplayer/RendererHolder;

    iput-object v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    const/4 v5, 0x0

    move v6, v5

    .line 307
    :goto_88
    array-length v10, v0

    const/4 v11, 0x1

    if-ge v5, v10, :cond_be

    .line 308
    aget-object v10, v0, v5

    invoke-interface {v10, v5, v8, v7}, Lio/bidmachine/media3/exoplayer/Renderer;->init(ILio/bidmachine/media3/exoplayer/analytics/PlayerId;Lio/bidmachine/media3/common/util/Clock;)V

    .line 309
    iget-object v10, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Lio/bidmachine/media3/exoplayer/RendererCapabilities;

    aget-object v12, v0, v5

    invoke-interface {v12}, Lio/bidmachine/media3/exoplayer/Renderer;->getCapabilities()Lio/bidmachine/media3/exoplayer/RendererCapabilities;

    move-result-object v12

    aput-object v12, v10, v5

    if-eqz v2, :cond_a4

    .line 311
    iget-object v10, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Lio/bidmachine/media3/exoplayer/RendererCapabilities;

    aget-object v10, v10, v5

    invoke-interface {v10, v2}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->setListener(Lio/bidmachine/media3/exoplayer/RendererCapabilities$Listener;)V

    .line 313
    :cond_a4
    aget-object v10, p3, v5

    if-eqz v10, :cond_ae

    .line 314
    array-length v6, v0

    add-int/2addr v6, v5

    invoke-interface {v10, v6, v8, v7}, Lio/bidmachine/media3/exoplayer/Renderer;->init(ILio/bidmachine/media3/exoplayer/analytics/PlayerId;Lio/bidmachine/media3/common/util/Clock;)V

    move v6, v11

    .line 317
    :cond_ae
    iget-object v10, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    new-instance v11, Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v12, v0, v5

    aget-object v13, p3, v5

    invoke-direct {v11, v12, v13, v5}, Lio/bidmachine/media3/exoplayer/RendererHolder;-><init>(Lio/bidmachine/media3/exoplayer/Renderer;Lio/bidmachine/media3/exoplayer/Renderer;I)V

    aput-object v11, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_88

    .line 319
    :cond_be
    iput-boolean v6, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->hasSecondaryRenderers:Z

    .line 321
    new-instance v0, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    invoke-direct {v0, p0, v7}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;-><init>(Lio/bidmachine/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;Lio/bidmachine/media3/common/util/Clock;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 323
    new-instance v0, Lio/bidmachine/media3/common/Timeline$Window;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->window:Lio/bidmachine/media3/common/Timeline$Window;

    .line 324
    new-instance v0, Lio/bidmachine/media3/common/Timeline$Period;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Timeline$Period;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 325
    invoke-virtual {v1, p0, v3}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;->init(Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;)V

    .line 327
    iput-boolean v11, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    const/4 v0, 0x0

    move-object/from16 v1, p17

    .line 329
    invoke-interface {v7, v1, v0}, Lio/bidmachine/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->applicationLooperHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    .line 330
    new-instance v1, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    new-instance v2, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda3;-><init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;)V

    invoke-direct {v1, v4, v0, v2, v9}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;-><init>(Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;Lio/bidmachine/media3/common/util/HandlerWrapper;Lio/bidmachine/media3/exoplayer/MediaPeriodHolder$Factory;Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    .line 336
    new-instance v1, Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-direct {v1, p0, v4, v0, v8}, Lio/bidmachine/media3/exoplayer/MediaSourceList;-><init>(Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceListInfoRefreshListener;Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;Lio/bidmachine/media3/common/util/HandlerWrapper;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    if-nez p21, :cond_105

    .line 341
    new-instance v0, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;-><init>()V

    goto :goto_107

    :cond_105
    move-object/from16 v0, p21

    :goto_107
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackLooperProvider:Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;

    .line 342
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->obtainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    .line 343
    invoke-interface {v7, v0, p0}, Lio/bidmachine/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    .line 345
    new-instance v1, Lio/bidmachine/media3/exoplayer/AudioFocusManager;

    invoke-direct {v1, p1, v0, p0}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/AudioFocusManager$PlayerControl;)V

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->audioFocusManager:Lio/bidmachine/media3/exoplayer/AudioFocusManager;

    return-void
.end method

.method public static synthetic access$602(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;Z)Z
    .registers 2

    .line 85
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->requestForRendererSleep:Z

    return p1
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;)Z
    .registers 1

    .line 85
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->dynamicSchedulingEnabled:Z

    return p0
.end method

.method public static synthetic access$800(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;)Z
    .registers 1

    .line 85
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    return p0
.end method

.method public static synthetic access$900(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;)Lio/bidmachine/media3/common/util/HandlerWrapper;
    .registers 1

    .line 85
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    return-object p0
.end method

.method public static isIgnorableServerSideAdInsertionPeriodChange(ZLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline$Period;J)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_48

    cmp-long p0, p2, p6

    if-nez p0, :cond_48

    .line 3488
    iget-object p0, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p2, p4, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 3490
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_48

    .line 3494
    :cond_12
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_39

    iget p0, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {p5, p0}, Lio/bidmachine/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result p0

    if-eqz p0, :cond_39

    .line 3496
    iget p0, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget p3, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {p5, p0, p3}, Lio/bidmachine/media3/common/Timeline$Period;->getAdState(II)I

    move-result p0

    const/4 p3, 0x4

    if-eq p0, p3, :cond_38

    iget p0, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget p1, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 3498
    invoke-virtual {p5, p0, p1}, Lio/bidmachine/media3/common/Timeline$Period;->getAdState(II)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_38

    return p2

    :cond_38
    return v0

    .line 3502
    :cond_39
    invoke-virtual {p4}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p0

    if-eqz p0, :cond_48

    iget p0, p4, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {p5, p0}, Lio/bidmachine/media3/common/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result p0

    if-eqz p0, :cond_48

    return p2

    :cond_48
    :goto_48
    return v0
.end method

.method public static isUsingPlaceholderPeriod(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Timeline$Period;)Z
    .registers 4

    .line 3507
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 3508
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 3509
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p0

    iget-boolean p0, p0, Lio/bidmachine/media3/common/Timeline$Period;->isPlaceholder:Z

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public static resolvePendingMessageEndOfStreamPosition(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;)V
    .registers 8

    .line 3617
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 3618
    invoke-virtual {p0, v0, p2}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object p2

    iget p2, p2, Lio/bidmachine/media3/common/Timeline$Window;->lastPeriodIndex:I

    const/4 v0, 0x1

    .line 3619
    invoke-virtual {p0, p2, p3, v0}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;Z)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p0

    iget-object p0, p0, Lio/bidmachine/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 3620
    iget-wide v0, p3, Lio/bidmachine/media3/common/Timeline$Period;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_24

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_29

    :cond_24
    const-wide v0, 0x7fffffffffffffffL

    .line 3621
    :goto_29
    invoke-virtual {p1, p2, v0, v1, p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    return-void
.end method

.method public static resolvePendingMessagePosition(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/common/Timeline;IZLio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;)Z
    .registers 18

    .line 3549
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/high16 v9, -0x8000000000000000L

    if-nez v0, :cond_65

    .line 3552
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Lio/bidmachine/media3/exoplayer/PlayerMessage;

    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->getPositionMs()J

    move-result-wide v0

    cmp-long p2, v0, v9

    if-nez p2, :cond_18

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_22

    .line 3554
    :cond_18
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Lio/bidmachine/media3/exoplayer/PlayerMessage;

    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->getPositionMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    .line 3556
    :goto_22
    new-instance p2, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Lio/bidmachine/media3/exoplayer/PlayerMessage;

    .line 3560
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->getTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Lio/bidmachine/media3/exoplayer/PlayerMessage;

    .line 3561
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->getMediaItemIndex()I

    move-result v3

    invoke-direct {p2, v2, v3, v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Lio/bidmachine/media3/common/Timeline;IJ)V

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 3557
    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resolveSeekPositionUs(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;)Landroid/util/Pair;

    move-result-object p2

    move-object v2, v6

    if-nez p2, :cond_44

    return v7

    .line 3571
    :cond_44
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3572
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 3573
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3571
    invoke-virtual {p0, v0, v3, v4, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    .line 3575
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Lio/bidmachine/media3/exoplayer/PlayerMessage;

    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->getPositionMs()J

    move-result-wide v3

    cmp-long p2, v3, v9

    if-nez p2, :cond_64

    .line 3576
    invoke-static {p1, p0, v5, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessageEndOfStreamPosition(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;)V

    :cond_64
    return v8

    :cond_65
    move-object/from16 v5, p5

    move-object/from16 v2, p6

    .line 3581
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_71

    return v7

    .line 3585
    :cond_71
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Lio/bidmachine/media3/exoplayer/PlayerMessage;

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->getPositionMs()J

    move-result-wide v3

    cmp-long v3, v3, v9

    if-nez v3, :cond_7f

    .line 3587
    invoke-static {p1, p0, v5, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessageEndOfStreamPosition(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;)V

    return v8

    .line 3590
    :cond_7f
    iput v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    .line 3591
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {p2, v0, v2}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 3592
    iget-boolean v0, v2, Lio/bidmachine/media3/common/Timeline$Period;->isPlaceholder:Z

    if-eqz v0, :cond_c4

    iget v0, v2, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 3593
    invoke-virtual {p2, v0, v5}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v0

    iget v0, v0, Lio/bidmachine/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 3594
    invoke-virtual {p2, v3}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p2

    if-ne v0, p2, :cond_c4

    .line 3598
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    .line 3599
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v6

    add-long/2addr v3, v6

    .line 3600
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 3601
    invoke-virtual {p1, p2, v2}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    move-object v0, p1

    move-object v1, v5

    move-wide v4, v3

    move v3, p2

    .line 3603
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/common/Timeline;->getPeriodPositionUs(Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p2

    .line 3604
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3605
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 3606
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3604
    invoke-virtual {p0, p1, v0, v1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    :cond_c4
    return v8
.end method

.method public static resolvePositionForPlaylistChange(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;IZLio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
    .registers 38

    move-object/from16 v7, p1

    move-object/from16 v2, p7

    .line 3318
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3319
    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    .line 3320
    invoke-static {}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->getDummyPeriodForEmptyTimeline()Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJZZZ)V

    return-object v1

    .line 3327
    :cond_1e
    iget-object v9, v7, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 3328
    iget-object v8, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 3329
    invoke-static {v7, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->isUsingPlaceholderPeriod(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Timeline$Period;)Z

    move-result v10

    .line 3331
    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_35

    if-eqz v10, :cond_31

    goto :goto_35

    .line 3333
    :cond_31
    iget-wide v0, v7, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    :goto_33
    move-wide v11, v0

    goto :goto_38

    .line 3332
    :cond_35
    :goto_35
    iget-wide v0, v7, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    goto :goto_33

    :goto_38
    const/4 v15, 0x0

    const/4 v0, -0x1

    const/16 v16, 0x1

    if-eqz p2, :cond_98

    const/4 v2, 0x1

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move v13, v0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    .line 3343
    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resolveSeekPositionUs(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;)Landroid/util/Pair;

    move-result-object v2

    move v3, v4

    if-nez v2, :cond_62

    .line 3354
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    move-wide v2, v11

    move v4, v15

    move v5, v4

    move/from16 v14, v16

    goto :goto_8b

    .line 3357
    :cond_62
    iget-wide v3, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v1, v3, v17

    if-nez v1, :cond_73

    .line 3358
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3359
    invoke-virtual {v0, v1, v6}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v1

    iget v1, v1, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    move-wide v2, v11

    move v4, v15

    goto :goto_81

    .line 3361
    :cond_73
    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3362
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide v2, v1

    move v1, v13

    move/from16 v4, v16

    .line 3366
    :goto_81
    iget v5, v7, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v14, 0x4

    if-ne v5, v14, :cond_89

    move/from16 v5, v16

    goto :goto_8a

    :cond_89
    move v5, v15

    :goto_8a
    move v14, v15

    :goto_8b
    move-wide/from16 v25, v2

    move v3, v1

    move-wide/from16 v0, v25

    move/from16 v27, v4

    move/from16 v25, v5

    move/from16 v26, v14

    goto/16 :goto_142

    :cond_98
    move/from16 v3, p5

    move v13, v0

    move-object v6, v2

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    .line 3368
    iget-object v1, v7, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 3370
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    move v3, v1

    :goto_b0
    move-wide v0, v11

    :goto_b1
    move/from16 v25, v15

    move/from16 v26, v25

    move/from16 v27, v26

    goto/16 :goto_142

    .line 3371
    :cond_b9
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v13, :cond_e4

    .line 3374
    iget-object v5, v7, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    move/from16 v2, p4

    move-object v1, v6

    move-object v4, v8

    move-object v6, v0

    move-object/from16 v0, p6

    .line 3375
    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resolveSubsequentPeriod(Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;IZLjava/lang/Object;Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/common/Timeline;)I

    move-result v2

    move-object v0, v6

    move-object v6, v1

    if-ne v2, v13, :cond_d7

    .line 3386
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    move/from16 v14, v16

    goto :goto_d9

    :cond_d7
    move v1, v2

    move v14, v15

    :goto_d9
    move v3, v1

    move-object v8, v4

    move-wide v0, v11

    move/from16 v26, v14

    move/from16 v25, v15

    move/from16 v27, v25

    goto/16 :goto_142

    :cond_e4
    move-object v4, v8

    cmp-long v1, v11, v17

    if-nez v1, :cond_f2

    .line 3395
    invoke-virtual {v0, v4, v6}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v1

    iget v1, v1, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    move v3, v1

    move-object v8, v4

    goto :goto_b0

    :cond_f2
    if-eqz v10, :cond_13d

    .line 3399
    iget-object v1, v7, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v2, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2, v6}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 3400
    iget-object v1, v7, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget v2, v6, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    move-object/from16 v5, p6

    invoke-virtual {v1, v2, v5}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v1

    iget v1, v1, Lio/bidmachine/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget-object v2, v7, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v3, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 3401
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_132

    .line 3404
    invoke-virtual {v6}, Lio/bidmachine/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v1

    add-long/2addr v1, v11

    .line 3405
    invoke-virtual {v0, v4, v6}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v3

    iget v3, v3, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    move-wide/from16 v28, v1

    move-object v1, v5

    move-wide/from16 v4, v28

    move-object v2, v6

    .line 3407
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/common/Timeline;->getPeriodPositionUs(Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 3408
    iget-object v8, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3409
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_134

    :cond_132
    move-object v8, v4

    move-wide v2, v11

    :goto_134
    move-wide v0, v2

    move v3, v13

    move/from16 v25, v15

    move/from16 v26, v25

    move/from16 v27, v16

    goto :goto_142

    :cond_13d
    move-object v8, v4

    move-wide v0, v11

    move v3, v13

    goto/16 :goto_b1

    :goto_142
    if-eq v3, v13, :cond_163

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 3419
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/common/Timeline;->getPeriodPositionUs(Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    move-object v6, v0

    .line 3424
    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3425
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide/from16 v23, v17

    :goto_160
    move-object/from16 v3, p3

    goto :goto_16a

    :cond_163
    move-object/from16 v6, p0

    move-object/from16 v2, p7

    move-wide/from16 v23, v0

    goto :goto_160

    .line 3431
    :goto_16a
    invoke-virtual {v3, v6, v8, v0, v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;J)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v3

    .line 3433
    iget v4, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v4, v13, :cond_17b

    iget v5, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v5, v13, :cond_179

    if-lt v4, v5, :cond_179

    goto :goto_17b

    :cond_179
    move v4, v15

    goto :goto_17d

    :cond_17b
    :goto_17b
    move/from16 v4, v16

    .line 3440
    :goto_17d
    iget-object v5, v9, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_194

    .line 3443
    invoke-virtual {v9}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v5

    if-nez v5, :cond_194

    .line 3444
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v5

    if-nez v5, :cond_194

    if-eqz v4, :cond_194

    goto :goto_196

    :cond_194
    move/from16 v16, v15

    .line 3454
    :goto_196
    invoke-virtual {v6, v8, v2}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v13

    move v8, v10

    move-wide v10, v11

    move-wide/from16 v14, v23

    move-object v12, v3

    .line 3449
    invoke-static/range {v8 .. v15}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->isIgnorableServerSideAdInsertionPeriodChange(ZLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline$Period;J)Z

    move-result v3

    if-nez v16, :cond_1a7

    if-eqz v3, :cond_1a8

    :cond_1a7
    move-object v12, v9

    .line 3460
    :cond_1a8
    invoke-virtual {v12}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_1b6

    .line 3461
    invoke-virtual {v12, v9}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b9

    .line 3462
    iget-wide v0, v7, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    :cond_1b6
    :goto_1b6
    move-wide/from16 v21, v0

    goto :goto_1d0

    .line 3464
    :cond_1b9
    iget-object v0, v12, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v6, v0, v2}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 3466
    iget v0, v12, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget v1, v12, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v1

    if-ne v0, v1, :cond_1cd

    .line 3467
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v0

    goto :goto_1b6

    :cond_1cd
    const-wide/16 v0, 0x0

    goto :goto_1b6

    .line 3472
    :goto_1d0
    new-instance v19, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    move-object/from16 v20, v12

    move-wide/from16 v23, v14

    invoke-direct/range {v19 .. v27}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJZZZ)V

    return-object v19
.end method

.method public static resolveSeekPositionUs(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;)Landroid/util/Pair;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/Timeline;",
            "Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;",
            "ZIZ",
            "Lio/bidmachine/media3/common/Timeline$Window;",
            "Lio/bidmachine/media3/common/Timeline$Period;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 3644
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 3645
    invoke-virtual {p0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v3

    const/4 v8, 0x0

    if-eqz v3, :cond_a

    return-object v8

    .line 3649
    :cond_a
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    move-object v2, p0

    .line 3657
    :cond_11
    :try_start_11
    iget v5, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v6, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    move-object v3, p5

    move-object v4, p6

    .line 3658
    invoke-virtual/range {v2 .. v7}, Lio/bidmachine/media3/common/Timeline;->getPeriodPositionUs(Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v5
    :try_end_1b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_1b} :catch_76

    move-object v3, v2

    .line 3664
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    return-object v5

    .line 3669
    :cond_23
    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_59

    .line 3672
    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4, p6}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v4

    iget-boolean v4, v4, Lio/bidmachine/media3/common/Timeline$Period;->isPlaceholder:Z

    if-eqz v4, :cond_58

    iget v4, p6, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 3673
    invoke-virtual {v3, v4, p5}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v4

    iget v4, v4, Lio/bidmachine/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3674
    invoke-virtual {v3, v7}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    if-ne v4, v3, :cond_58

    .line 3678
    iget-object v3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v3, p6}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v3

    iget v3, v3, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 3679
    iget-wide v4, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    .line 3680
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/common/Timeline;->getPeriodPositionUs(Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_58
    return-object v5

    :cond_59
    if-eqz p2, :cond_76

    .line 3687
    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, p0

    move v2, p3

    move-object v0, p5

    move-object v1, p6

    move-object v5, v3

    move v3, p4

    .line 3688
    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resolveSubsequentPeriod(Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;IZLjava/lang/Object;Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/common/Timeline;)I

    move-result v3

    if-eq v3, v7, :cond_76

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    .line 3698
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/common/Timeline;->getPeriodPositionUs(Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_76
    :cond_76
    return-object v8
.end method

.method public static resolveSubsequentPeriod(Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;IZLjava/lang/Object;Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/common/Timeline;)I
    .registers 16

    .line 3728
    invoke-virtual {p5, p4, p1}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 3729
    invoke-virtual {p5, v0, p0}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Lio/bidmachine/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    .line 3731
    :goto_e
    invoke-virtual {p6}, Lio/bidmachine/media3/common/Timeline;->getWindowCount()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 3732
    invoke-virtual {p6, v2, p0}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v3

    iget-object v3, v3, Lio/bidmachine/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    return v2

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 3737
    :cond_24
    invoke-virtual {p5, p4}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p4

    .line 3739
    invoke-virtual {p5}, Lio/bidmachine/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v2, -0x1

    move v4, p4

    move p4, v2

    :goto_2f
    if-ge v1, v0, :cond_4f

    if-ne p4, v2, :cond_4f

    move-object v6, p0

    move-object v5, p1

    move v7, p2

    move v8, p3

    move-object v3, p5

    .line 3742
    invoke-virtual/range {v3 .. v8}, Lio/bidmachine/media3/common/Timeline;->getNextPeriodIndex(ILio/bidmachine/media3/common/Timeline$Period;Lio/bidmachine/media3/common/Timeline$Window;IZ)I

    move-result v4

    if-ne v4, v2, :cond_3f

    goto :goto_50

    .line 3748
    :cond_3f
    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p6, p0}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v1, v1, 0x1

    move-object p5, v3

    move-object p1, v5

    move-object p0, v6

    move p2, v7

    move p3, v8

    goto :goto_2f

    :cond_4f
    move-object v5, p1

    :goto_50
    if-ne p4, v2, :cond_53

    return v2

    .line 3752
    :cond_53
    invoke-virtual {p6, p4, v5}, Lio/bidmachine/media3/common/Timeline;->getPeriod(ILio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p0

    iget p0, p0, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    return p0
.end method

.method public static updatePlayWhenReadyChangeReason(II)I
    .registers 4

    .line 0
    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p0, v0, :cond_5

    return v1

    :cond_5
    if-ne p1, v1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    return p1
.end method

.method public static updatePlaybackSuppressionReason(II)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-ne p1, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    return p1
.end method


# virtual methods
.method public final addMediaItemsInternal(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 953
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 954
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_f

    .line 956
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->getSize()I

    move-result p2

    .line 957
    :cond_f
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$300(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    move-result-object v1

    .line 958
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    move-result-object p1

    .line 955
    invoke-virtual {v0, p2, v1, p1}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->addMediaSources(ILjava/util/List;Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)Lio/bidmachine/media3/common/Timeline;

    move-result-object p1

    const/4 p2, 0x0

    .line 959
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lio/bidmachine/media3/common/Timeline;Z)V

    return-void
.end method

.method public final allowRenderersToRenderStartOfStreams()V
    .registers 4

    .line 2811
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v0

    const/4 v1, 0x0

    .line 2812
    :goto_b
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_21

    .line 2813
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_1e

    .line 2816
    :cond_17
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/RendererHolder;->enableMayRenderStartOfStream()V

    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_21
    return-void
.end method

.method public final areRenderersPrewarming()Z
    .registers 6

    .line 3298
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->hasSecondaryRenderers:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 3301
    :cond_6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v2, v0

    move v3, v1

    :goto_a
    if-ge v3, v2, :cond_19

    aget-object v4, v0, v3

    .line 3302
    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isPrewarming()Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_19
    return v1
.end method

.method public final attemptRendererErrorRecovery()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1190
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->reselectTracksInternalAndSeek()V

    return-void
.end method

.method public final createMediaPeriodHolder(Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;J)Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;
    .registers 15

    .line 350
    new-instance v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Lio/bidmachine/media3/exoplayer/RendererCapabilities;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->trackSelector:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Lio/bidmachine/media3/exoplayer/LoadControl;

    .line 354
    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/LoadControl;->getAllocator()Lio/bidmachine/media3/exoplayer/upstream/Allocator;

    move-result-object v5

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->preloadConfiguration:Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    iget-wide v9, v2, Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;->targetPreloadDurationUs:J

    move-object v7, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v10}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;-><init>([Lio/bidmachine/media3/exoplayer/RendererCapabilities;JLio/bidmachine/media3/exoplayer/trackselection/TrackSelector;Lio/bidmachine/media3/exoplayer/upstream/Allocator;Lio/bidmachine/media3/exoplayer/MediaSourceList;Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;J)V

    return-object v0
.end method

.method public final deliverMessage(Lio/bidmachine/media3/exoplayer/PlayerMessage;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1958
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 1962
    :try_start_8
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->getTarget()Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;

    move-result-object v1

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->getType()I

    move-result v2

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->getPayload()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1b

    .line 1964
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    return-void

    :catchall_1b
    move-exception v1

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    .line 1965
    throw v1
.end method

.method public final disableAndResetPrewarmingRenderers()V
    .registers 7

    .line 2070
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->hasSecondaryRenderers:Z

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->areRenderersPrewarming()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_30

    .line 2073
    :cond_b
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    .line 2074
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getEnabledRendererCount()I

    move-result v4

    .line 2075
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v3, v5}, Lio/bidmachine/media3/exoplayer/RendererHolder;->disablePrewarming(Lio/bidmachine/media3/exoplayer/DefaultMediaClock;)V

    .line 2076
    iget v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 2077
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getEnabledRendererCount()I

    move-result v3

    sub-int/2addr v4, v3

    sub-int/2addr v5, v4

    iput v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_29
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2079
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->prewarmingMediaPeriodDiscontinuity:J

    :cond_30
    :goto_30
    return-void
.end method

.method public final disableRenderer(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2063
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getEnabledRendererCount()I

    move-result v0

    .line 2064
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v1, v1, p1

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/RendererHolder;->disable(Lio/bidmachine/media3/exoplayer/DefaultMediaClock;)V

    const/4 v1, 0x0

    .line 2065
    invoke-virtual {p0, p1, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeTriggerOnRendererReadyChanged(IZ)V

    .line 2066
    iget p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    return-void
.end method

.method public final disableRenderers()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2056
    :goto_1
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 2057
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->disableRenderer(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2059
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->prewarmingMediaPeriodDiscontinuity:J

    return-void
.end method

.method public final doSomeWork()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1290
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {v1}, Lio/bidmachine/media3/common/util/Clock;->uptimeMillis()J

    move-result-wide v1

    .line 1292
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lio/bidmachine/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 1294
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updatePeriods()V

    .line 1296
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v3, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1cc

    const/4 v6, 0x4

    if-ne v3, v6, :cond_1d

    goto/16 :goto_1cc

    .line 1302
    :cond_1d
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    if-nez v3, :cond_29

    .line 1305
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->scheduleNextWork(J)V

    return-void

    .line 1309
    :cond_29
    const-string v7, "doSomeWork"

    invoke-static {v7}, Lio/bidmachine/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1315
    iget-boolean v7, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_8c

    .line 1316
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {v7}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v9, v10}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v9

    iput-wide v9, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionElapsedRealtimeUs:J

    .line 1317
    iget-object v7, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v9, v9, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    iget-wide v11, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long/2addr v9, v11

    iget-boolean v11, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    invoke-interface {v7, v9, v10, v11}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    move v9, v5

    move v10, v9

    move v7, v8

    .line 1319
    :goto_53
    iget-object v11, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v12, v11

    if-ge v7, v12, :cond_93

    .line 1320
    aget-object v11, v11, v7

    .line 1321
    invoke-virtual {v11}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getEnabledRendererCount()I

    move-result v12

    if-nez v12, :cond_64

    .line 1322
    invoke-virtual {v0, v7, v8}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeTriggerOnRendererReadyChanged(IZ)V

    goto :goto_89

    .line 1328
    :cond_64
    iget-wide v12, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v14, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionElapsedRealtimeUs:J

    invoke-virtual {v11, v12, v13, v14, v15}, Lio/bidmachine/media3/exoplayer/RendererHolder;->render(JJ)V

    if-eqz v9, :cond_75

    .line 1334
    invoke-virtual {v11}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isEnded()Z

    move-result v9

    if-eqz v9, :cond_75

    move v9, v5

    goto :goto_76

    :cond_75
    move v9, v8

    .line 1335
    :goto_76
    invoke-virtual {v11, v3}, Lio/bidmachine/media3/exoplayer/RendererHolder;->allowsPlayback(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v11

    .line 1336
    invoke-virtual {v0, v7, v11}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeTriggerOnRendererReadyChanged(IZ)V

    if-eqz v10, :cond_83

    if-eqz v11, :cond_83

    move v10, v5

    goto :goto_84

    :cond_83
    move v10, v8

    :goto_84
    if-nez v11, :cond_89

    .line 1339
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeThrowRendererStreamError(I)V

    :cond_89
    :goto_89
    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    .line 1343
    :cond_8c
    iget-object v7, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v7}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    move v9, v5

    move v10, v9

    .line 1346
    :cond_93
    iget-object v7, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v11, v7, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v9, :cond_b3

    .line 1347
    iget-boolean v7, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v7, :cond_b3

    cmp-long v7, v11, v13

    if-eqz v7, :cond_b0

    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-wide v15, v13

    iget-wide v13, v7, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v7, v11, v13

    if-gtz v7, :cond_b4

    goto :goto_b1

    :cond_b0
    move-wide v15, v13

    :goto_b1
    move v7, v5

    goto :goto_b5

    :cond_b3
    move-wide v15, v13

    :cond_b4
    move v7, v8

    :goto_b5
    if-eqz v7, :cond_c5

    .line 1352
    iget-boolean v9, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v9, :cond_c5

    .line 1353
    iput-boolean v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    .line 1354
    iget-object v9, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v9, v9, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    const/4 v11, 0x5

    invoke-virtual {v0, v8, v9, v8, v11}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setPlayWhenReadyInternal(ZIZI)V

    :cond_c5
    const/4 v9, 0x3

    if-eqz v7, :cond_d5

    .line 1360
    iget-object v7, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v7, v7, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-eqz v7, :cond_d5

    .line 1361
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 1362
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_125

    .line 1363
    :cond_d5
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v7, v7, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v7, v4, :cond_f9

    .line 1364
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldTransitionToReadyState(Z)Z

    move-result v7

    if-eqz v7, :cond_f9

    .line 1365
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    const/4 v7, 0x0

    .line 1366
    iput-object v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 1367
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v7

    if-eqz v7, :cond_125

    .line 1368
    invoke-virtual {v0, v8, v8}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updateRebufferingState(ZZ)V

    .line 1370
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v7}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->start()V

    .line 1371
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_125

    .line 1373
    :cond_f9
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v7, v7, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v7, v9, :cond_125

    iget v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    if-nez v7, :cond_10a

    .line 1374
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result v7

    if-eqz v7, :cond_10c

    goto :goto_125

    :cond_10a
    if-nez v10, :cond_125

    .line 1376
    :cond_10c
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v7

    .line 1375
    invoke-virtual {v0, v7, v8}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updateRebufferingState(ZZ)V

    .line 1377
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 1378
    iget-boolean v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    if-eqz v7, :cond_122

    .line 1379
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->notifyTrackSelectionRebuffer()V

    .line 1380
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;

    invoke-interface {v7}, Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;->notifyRebuffer()V

    .line 1382
    :cond_122
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    .line 1386
    :cond_125
    :goto_125
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v7, v7, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v7, v4, :cond_187

    move v7, v8

    .line 1387
    :goto_12c
    iget-object v10, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v11, v10

    if-ge v7, v11, :cond_13f

    .line 1388
    aget-object v10, v10, v7

    invoke-virtual {v10, v3}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isReadingFromPeriod(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v10

    if-eqz v10, :cond_13c

    .line 1389
    invoke-virtual {v0, v7}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeThrowRendererStreamError(I)V

    :cond_13c
    add-int/lit8 v7, v7, 0x1

    goto :goto_12c

    .line 1392
    :cond_13f
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean v7, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->isLoading:Z

    if-nez v7, :cond_187

    iget-wide v10, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    const-wide/32 v12, 0x7a120

    cmp-long v3, v10, v12

    if-gez v3, :cond_187

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    .line 1394
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->isLoadingPossible(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v3

    if-eqz v3, :cond_187

    .line 1395
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v3

    if-eqz v3, :cond_187

    .line 1408
    iget-wide v10, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    cmp-long v3, v10, v15

    if-nez v3, :cond_16f

    .line 1409
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {v3}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    goto :goto_18a

    .line 1410
    :cond_16f
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {v3}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0xfa0

    cmp-long v3, v10, v12

    if-gez v3, :cond_17f

    goto :goto_18a

    .line 1411
    :cond_17f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Playback stuck buffering and not loading"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_187
    move-wide v10, v15

    .line 1407
    iput-wide v10, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    .line 1414
    :goto_18a
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v3

    if-eqz v3, :cond_198

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v3, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v3, v9, :cond_198

    move v3, v5

    goto :goto_199

    :cond_198
    move v3, v8

    .line 1415
    :goto_199
    iget-boolean v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-eqz v7, :cond_1a4

    iget-boolean v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->requestForRendererSleep:Z

    if-eqz v7, :cond_1a4

    if-eqz v3, :cond_1a4

    goto :goto_1a5

    :cond_1a4
    move v5, v8

    .line 1416
    :goto_1a5
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean v10, v7, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eq v10, v5, :cond_1b1

    .line 1417
    invoke-virtual {v7, v5}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithSleepingForOffload(Z)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v7

    iput-object v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 1419
    :cond_1b1
    iput-boolean v8, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->requestForRendererSleep:Z

    if-nez v5, :cond_1c9

    .line 1421
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v5, v5, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v5, v6, :cond_1bc

    goto :goto_1c9

    :cond_1bc
    if-nez v3, :cond_1c6

    if-eq v5, v4, :cond_1c6

    if-ne v5, v9, :cond_1c9

    .line 1423
    iget v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    if-eqz v3, :cond_1c9

    .line 1427
    :cond_1c6
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->scheduleNextWork(J)V

    .line 1430
    :cond_1c9
    :goto_1c9
    invoke-static {}, Lio/bidmachine/media3/common/util/TraceUtil;->endSection()V

    :cond_1cc
    :goto_1cc
    return-void
.end method

.method public final enableRenderer(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;IZJ)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3126
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v3, v2, p2

    .line 3127
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_73

    .line 3130
    :cond_10
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_1c

    move v10, v5

    goto :goto_1d

    :cond_1c
    move v10, v4

    .line 3131
    :goto_1d
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v2

    .line 3132
    iget-object v6, v2, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    aget-object v6, v6, p2

    .line 3134
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v2, v2, p2

    .line 3136
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v7

    if-eqz v7, :cond_39

    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v7, v7, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_39

    move/from16 v17, v5

    goto :goto_3b

    :cond_39
    move/from16 v17, v4

    :goto_3b
    if-nez p3, :cond_41

    if-eqz v17, :cond_41

    move v9, v5

    goto :goto_42

    :cond_41
    move v9, v4

    .line 3141
    :goto_42
    iget v4, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    add-int/2addr v4, v5

    iput v4, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 3142
    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/SampleStream;

    aget-object v4, v4, p2

    iget-wide v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 3150
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v13

    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v15, v5, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    move-object v11, v6

    move-object v6, v4

    move-object v4, v11

    move-wide/from16 v11, p4

    move-object/from16 v16, v5

    move-object v5, v2

    .line 3142
    invoke-virtual/range {v3 .. v16}, Lio/bidmachine/media3/exoplayer/RendererHolder;->enable(Lio/bidmachine/media3/exoplayer/RendererConfiguration;Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;Lio/bidmachine/media3/exoplayer/source/SampleStream;JZZJJLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/DefaultMediaClock;)V

    .line 3153
    new-instance v2, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$1;

    invoke-direct {v2, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$1;-><init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v2, v1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->handleMessage(ILjava/lang/Object;Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)V

    if-eqz v17, :cond_73

    if-eqz v10, :cond_73

    .line 3171
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/RendererHolder;->start()V

    :cond_73
    :goto_73
    return-void
.end method

.method public final enableRenderers()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 3092
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v0, v0

    new-array v0, v0, [Z

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    .line 3094
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v1

    .line 3092
    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enableRenderers([ZJ)V

    return-void
.end method

.method public final enableRenderers([ZJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 3099
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    .line 3100
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v0

    const/4 v1, 0x0

    move v3, v1

    .line 3103
    :goto_c
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v4, v4

    if-ge v3, v4, :cond_21

    .line 3104
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 3105
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/RendererHolder;->reset()V

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_21
    move v3, v1

    .line 3108
    :goto_22
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v1, v1

    if-ge v3, v1, :cond_44

    .line 3109
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v1, v1, v3

    .line 3110
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isReadingFromPeriod(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 3111
    aget-boolean v4, p1, v3

    move-object v1, p0

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enableRenderer(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;IZJ)V

    goto :goto_40

    :cond_3f
    move-wide v5, p2

    :goto_40
    add-int/lit8 v3, v3, 0x1

    move-wide p2, v5

    goto :goto_22

    :cond_44
    return-void
.end method

.method public executePlayerCommand(I)V
    .registers 5

    .line 616
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(III)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public experimentalSetForegroundModeTimeoutMs(J)V
    .registers 3

    .line 362
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    return-void
.end method

.method public final extractMetadataFromTrackSelectionArray([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)Lcom/google/common/collect/ImmutableList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/Metadata;",
            ">;"
        }
    .end annotation

    .line 3075
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 3077
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_9
    if-ge v3, v1, :cond_29

    aget-object v5, p1, v3

    if-eqz v5, :cond_26

    .line 3079
    invoke-interface {v5, v2}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelection;->getFormat(I)Lio/bidmachine/media3/common/Format;

    move-result-object v5

    .line 3080
    iget-object v5, v5, Lio/bidmachine/media3/common/Format;->metadata:Lio/bidmachine/media3/common/Metadata;

    if-nez v5, :cond_22

    .line 3081
    new-instance v5, Lio/bidmachine/media3/common/Metadata;

    new-array v6, v2, [Lio/bidmachine/media3/common/Metadata$Entry;

    invoke-direct {v5, v6}, Lio/bidmachine/media3/common/Metadata;-><init>([Lio/bidmachine/media3/common/Metadata$Entry;)V

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_26

    .line 3083
    :cond_22
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    const/4 v4, 0x1

    :cond_26
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_29
    if-eqz v4, :cond_30

    .line 3088
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1

    :cond_30
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public final getCurrentLiveOffsetUs()J
    .registers 6

    .line 1444
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->getLiveOffsetUs(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLiveOffsetUs(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;J)J
    .registers 9

    .line 1449
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 1450
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, v0}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    .line 1451
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-wide v0, p1, Lio/bidmachine/media3/common/Timeline$Window;->windowStartTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_3d

    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-boolean p2, p1, Lio/bidmachine/media3/common/Timeline$Window;->isDynamic:Z

    if-nez p2, :cond_27

    goto :goto_3d

    .line 1454
    :cond_27
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline$Window;->getCurrentUnixTimeMs()J

    move-result-wide p1

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-wide v0, v0, Lio/bidmachine/media3/common/Timeline$Window;->windowStartTimeMs:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 1455
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    add-long/2addr p3, v0

    sub-long/2addr p1, p3

    return-wide p1

    :cond_3d
    :goto_3d
    return-wide v2
.end method

.method public final getMaxRendererReadPositionUs(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)J
    .registers 10

    if-nez p1, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2434
    :cond_5
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    .line 2435
    iget-boolean v2, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v2, :cond_e

    return-wide v0

    :cond_e
    const/4 v2, 0x0

    .line 2438
    :goto_f
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v4, v3

    if-ge v2, v4, :cond_33

    .line 2439
    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isReadingFromPeriod(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_30

    .line 2443
    :cond_1d
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getReadingPositionUs(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-nez v7, :cond_2c

    return-wide v5

    .line 2447
    :cond_2c
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_33
    return-wide v0
.end method

.method public final getPlaceholderFirstMediaPeriodPositionUs(Lio/bidmachine/media3/common/Timeline;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1876
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_15

    .line 1877
    invoke-static {}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->getDummyPeriodForEmptyTimeline()Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 1879
    :cond_15
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v6

    .line 1880
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    .line 1881
    invoke-virtual/range {v3 .. v8}, Lio/bidmachine/media3/common/Timeline;->getPeriodPositionUs(Lio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p1

    .line 1884
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1885
    invoke-virtual {v0, v3, v4, v1, v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;J)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    .line 1887
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1888
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 1889
    iget-object p1, v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v3, p1, v4}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 1891
    iget p1, v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget v4, v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v3

    if-ne p1, v3, :cond_58

    .line 1892
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v1

    :cond_58
    move-wide v4, v1

    .line 1895
    :cond_59
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .registers 2

    .line 563
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public final getTotalBufferedDurationUs()J
    .registers 3

    .line 3207
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTotalBufferedDurationUs(J)J
    .registers 8

    .line 3211
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_b

    return-wide v1

    .line 3215
    :cond_b
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 3216
    invoke-virtual {v0, v3, v4}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    .line 3217
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final handleAudioFocusPlayerCommandInternal(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget v2, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    iget v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    invoke-virtual {p0, v1, p1, v2, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updatePlayWhenReadyWithAudioFocus(ZIII)V

    return-void
.end method

.method public final handleAudioFocusVolumeMultiplierChange()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 486
    iget v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->volume:F

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setVolumeInternal(F)V

    return-void
.end method

.method public final handleContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 4

    .line 2910
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->isLoading(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2911
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->reevaluateBuffer(J)V

    .line 2912
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void

    .line 2913
    :cond_13
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->isPreloading(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 2914
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeContinuePreloading()V

    :cond_1e
    return-void
.end method

.method public final handleIoException(Ljava/io/IOException;I)V
    .registers 4

    .line 860
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->createForSource(Ljava/io/IOException;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    .line 861
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 864
    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->copyWithMediaPeriodId(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    .line 866
    :cond_14
    const-string p2, "ExoPlayerImplInternal"

    const-string v0, "Playback error"

    invoke-static {p2, v0, p1}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 867
    invoke-virtual {p0, p2, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 868
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    return-void
.end method

.method public final handleLoadingMediaPeriodChanged(Z)V
    .registers 7

    .line 3183
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_d

    .line 3185
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    goto :goto_11

    :cond_d
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 3186
    :goto_11
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 3187
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 3189
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v3, v1}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 3191
    :cond_23
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    if-nez v0, :cond_2a

    .line 3193
    iget-wide v3, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    goto :goto_2e

    .line 3194
    :cond_2a
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v3

    :goto_2e
    iput-wide v3, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 3195
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v3

    iput-wide v3, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    if-eqz v2, :cond_3c

    if-eqz p1, :cond_51

    :cond_3c
    if-eqz v0, :cond_51

    .line 3196
    iget-boolean p1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz p1, :cond_51

    .line 3199
    iget-object p1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 3201
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v1

    .line 3202
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 3199
    invoke-virtual {p0, p1, v1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;)V

    :cond_51
    return-void
.end method

.method public final handleLoadingPeriodPrepared(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2882
    iget-boolean v0, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_15

    .line 2883
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    .line 2884
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-boolean v1, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    .line 2883
    invoke-virtual {p1, v0, v2, v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->handlePrepared(FLio/bidmachine/media3/common/Timeline;Z)V

    .line 2888
    :cond_15
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2890
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v1

    .line 2891
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v2

    .line 2888
    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;)V

    .line 2892
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-ne p1, v0, :cond_4e

    .line 2894
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 2895
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enableRenderers()V

    const/4 v0, 0x1

    .line 2896
    iput-boolean v0, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    .line 2897
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v3, p1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v5, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-wide v7, v3

    move-object v1, p0

    .line 2898
    invoke-virtual/range {v1 .. v10}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object p1

    iput-object p1, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    goto :goto_4f

    :cond_4e
    move-object v1, p0

    .line 2906
    :goto_4f
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void
.end method

.method public final handleMediaSourceListInfoRefreshed(Lio/bidmachine/media3/common/Timeline;Z)V
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2277
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    iget v6, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v7, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-object v9, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    move-object/from16 v2, p1

    .line 2278
    invoke-static/range {v2 .. v9}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resolvePositionForPlaylistChange(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;IZLio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    move-result-object v10

    .line 2287
    iget-object v11, v10, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2288
    iget-wide v12, v10, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->requestedContentPositionUs:J

    .line 2289
    iget-boolean v0, v10, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->forceBufferingState:Z

    .line 2290
    iget-wide v14, v10, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodPositionUs:J

    .line 2291
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2292
    invoke-virtual {v3, v11}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_36

    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v6, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v3, v14, v6

    if-eqz v3, :cond_33

    goto :goto_36

    :cond_33
    move/from16 v16, v5

    goto :goto_38

    :cond_36
    :goto_36
    move/from16 v16, v4

    :goto_38
    const/16 v17, 0x3

    const/4 v6, -0x1

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x2

    const/4 v8, 0x4

    .line 2294
    :try_start_42
    iget-boolean v9, v10, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->endPlayback:Z

    if-eqz v9, :cond_63

    .line 2295
    iget-object v9, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v9, v9, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v9, v4, :cond_60

    .line 2296
    invoke-virtual {v1, v8}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    goto :goto_60

    :catchall_50
    move-exception v0

    move-object/from16 v20, v11

    move-object v11, v2

    move-object/from16 v2, v20

    move/from16 v20, v4

    move/from16 v24, v8

    move-wide/from16 v21, v12

    move v12, v5

    :goto_5d
    move v13, v7

    goto/16 :goto_1b0

    .line 2298
    :cond_60
    :goto_60
    invoke-virtual {v1, v5, v5, v5, v4}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 2304
    :cond_63
    iget-object v9, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v3, v9
    :try_end_66
    .catchall {:try_start_42 .. :try_end_66} :catchall_50

    move v4, v5

    :goto_67
    if-ge v4, v3, :cond_80

    :try_start_69
    aget-object v5, v9, v4

    .line 2305
    invoke-virtual {v5, v2}, Lio/bidmachine/media3/exoplayer/RendererHolder;->setTimeline(Lio/bidmachine/media3/common/Timeline;)V
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_72

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto :goto_67

    :catchall_72
    move-exception v0

    move-object/from16 v20, v11

    move-object v11, v2

    move-object/from16 v2, v20

    move/from16 v24, v8

    move-wide/from16 v21, v12

    const/4 v12, 0x0

    const/16 v20, 0x1

    goto :goto_5d

    :cond_80
    if-nez v16, :cond_fd

    .line 2310
    :try_start_82
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    const-wide/16 v3, 0x0

    if-nez v0, :cond_8f

    move-wide/from16 v22, v3

    goto :goto_99

    .line 2312
    :cond_8f
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->getMaxRendererReadPositionUs(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)J

    move-result-wide v22

    .line 2314
    :goto_99
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->areRenderersPrewarming()Z

    move-result v0
    :try_end_9d
    .catchall {:try_start_82 .. :try_end_9d} :catchall_fb

    if-eqz v0, :cond_b2

    :try_start_9f
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPrewarmingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_a8

    goto :goto_b2

    .line 2316
    :cond_a8
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPrewarmingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->getMaxRendererReadPositionUs(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)J

    move-result-wide v3
    :try_end_b2
    .catchall {:try_start_9f .. :try_end_b2} :catchall_72

    .line 2318
    :cond_b2
    :goto_b2
    :try_start_b2
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;
    :try_end_b4
    .catchall {:try_start_b2 .. :try_end_b4} :catchall_f5

    move-wide/from16 v25, v3

    move v3, v8

    move-wide/from16 v8, v25

    :try_start_b9
    iget-wide v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J
    :try_end_bb
    .catchall {:try_start_b9 .. :try_end_bb} :catchall_e9

    move-wide/from16 v25, v12

    move v13, v7

    move-wide/from16 v6, v22

    move-wide/from16 v21, v25

    move/from16 v24, v3

    const/4 v12, 0x0

    const/16 v20, 0x1

    move-object/from16 v3, p1

    .line 2319
    :try_start_c9
    invoke-virtual/range {v2 .. v9}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->updateQueuedPeriods(Lio/bidmachine/media3/common/Timeline;JJJ)I

    move-result v0
    :try_end_cd
    .catchall {:try_start_c9 .. :try_end_cd} :catchall_e6

    move-object v2, v3

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_df

    .line 2325
    :try_start_d2
    invoke-virtual {v1, v12}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    goto/16 :goto_133

    :catchall_d7
    move-exception v0

    :goto_d8
    move-object/from16 v25, v11

    move-object v11, v2

    move-object/from16 v2, v25

    goto/16 :goto_1b0

    :cond_df
    and-int/2addr v0, v13

    if-eqz v0, :cond_133

    .line 2328
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->disableAndResetPrewarmingRenderers()V

    goto :goto_133

    :catchall_e6
    move-exception v0

    move-object v2, v3

    goto :goto_d8

    :catchall_e9
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v24, v3

    :goto_ee
    move-wide/from16 v21, v12

    const/4 v12, 0x0

    const/16 v20, 0x1

    move v13, v7

    goto :goto_d8

    :catchall_f5
    move-exception v0

    move-object/from16 v2, p1

    :goto_f8
    move/from16 v24, v8

    goto :goto_ee

    :catchall_fb
    move-exception v0

    goto :goto_f8

    :cond_fd
    move/from16 v24, v8

    move-wide/from16 v21, v12

    const/4 v12, 0x0

    const/16 v20, 0x1

    move v13, v7

    .line 2330
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_133

    .line 2332
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    :goto_111
    if-eqz v3, :cond_12f

    .line 2335
    iget-object v4, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v4, v4, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v4, v11}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12a

    .line 2336
    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    iget-object v5, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    invoke-virtual {v4, v2, v5}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object v4

    iput-object v4, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    .line 2337
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->updateClipping()V

    .line 2339
    :cond_12a
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    goto :goto_111

    .line 2341
    :cond_12f
    invoke-virtual {v1, v11, v14, v15, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->seekToPeriodPosition(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v14
    :try_end_133
    .catchall {:try_start_d2 .. :try_end_133} :catchall_d7

    .line 2344
    :cond_133
    :goto_133
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2349
    iget-boolean v0, v10, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    if-eqz v0, :cond_13f

    move-wide v6, v14

    goto :goto_141

    :cond_13f
    move-wide/from16 v6, v18

    :goto_141
    const/4 v8, 0x0

    move-object v3, v11

    .line 2344
    invoke-virtual/range {v1 .. v8}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    move-object v11, v2

    move-object v2, v3

    if-nez v16, :cond_152

    .line 2353
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    cmp-long v0, v21, v3

    if-eqz v0, :cond_18c

    .line 2355
    :cond_152
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2356
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    if-eqz v16, :cond_171

    if-eqz p2, :cond_171

    .line 2360
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_171

    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 2361
    invoke-virtual {v0, v3, v4}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v0

    iget-boolean v0, v0, Lio/bidmachine/media3/common/Timeline$Period;->isPlaceholder:Z

    if-nez v0, :cond_171

    move/from16 v9, v20

    goto :goto_172

    :cond_171
    move v9, v12

    .line 2362
    :goto_172
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v7, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 2369
    invoke-virtual {v11, v3}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_183

    move/from16 v10, v24

    :goto_17f
    move-wide v3, v14

    move-wide/from16 v5, v21

    goto :goto_186

    :cond_183
    move/from16 v10, v17

    goto :goto_17f

    .line 2363
    :goto_186
    invoke-virtual/range {v1 .. v10}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 2373
    :cond_18c
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 2374
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v1, v11, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessagePositions(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/common/Timeline;)V

    .line 2376
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, v11}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithTimeline(Lio/bidmachine/media3/common/Timeline;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 2377
    invoke-virtual {v11}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a7

    const/4 v2, 0x0

    .line 2379
    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 2381
    :cond_1a7
    invoke-virtual {v1, v12}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 2382
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-interface {v0, v13}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void

    .line 2344
    :goto_1b0
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v4, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v5, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2349
    iget-boolean v3, v10, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    if-eqz v3, :cond_1bc

    move-wide v6, v14

    goto :goto_1be

    :cond_1bc
    move-wide/from16 v6, v18

    :goto_1be
    const/4 v8, 0x0

    move-object v3, v2

    move-object v2, v11

    .line 2344
    invoke-virtual/range {v1 .. v8}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    move-object v2, v3

    if-nez v16, :cond_1cf

    .line 2353
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    cmp-long v3, v21, v3

    if-eqz v3, :cond_209

    .line 2355
    :cond_1cf
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v4, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2356
    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    if-eqz v16, :cond_1ee

    if-eqz p2, :cond_1ee

    .line 2360
    invoke-virtual {v3}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1ee

    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    .line 2361
    invoke-virtual {v3, v4, v5}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v3

    iget-boolean v3, v3, Lio/bidmachine/media3/common/Timeline$Period;->isPlaceholder:Z

    if-nez v3, :cond_1ee

    move/from16 v9, v20

    goto :goto_1ef

    :cond_1ee
    move v9, v12

    .line 2362
    :goto_1ef
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v7, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 2369
    invoke-virtual {v11, v4}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_200

    move/from16 v10, v24

    :goto_1fc
    move-wide v3, v14

    move-wide/from16 v5, v21

    goto :goto_203

    :cond_200
    move/from16 v10, v17

    goto :goto_1fc

    .line 2363
    :goto_203
    invoke-virtual/range {v1 .. v10}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 2373
    :cond_209
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 2374
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v1, v11, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessagePositions(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/common/Timeline;)V

    .line 2376
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v2, v11}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithTimeline(Lio/bidmachine/media3/common/Timeline;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 2377
    invoke-virtual {v11}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_224

    const/4 v2, 0x0

    .line 2379
    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 2381
    :cond_224
    invoke-virtual {v1, v12}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 2382
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-interface {v2, v13}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 2383
    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 17

    move-object/from16 v0, p1

    .line 625
    const-string v11, "Playback error"

    const-string v12, "ExoPlayerImplInternal"

    const/16 v2, 0x3e8

    const/4 v3, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x1

    :try_start_b
    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_2be

    :pswitch_10
    return v13

    .line 729
    :pswitch_11
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleAudioFocusVolumeMultiplierChange()V

    goto/16 :goto_2ba

    :catch_16
    move-exception v0

    goto/16 :goto_157

    :catch_19
    move-exception v0

    goto/16 :goto_175

    :catch_1c
    move-exception v0

    goto/16 :goto_17c

    :catch_1f
    move-exception v0

    goto/16 :goto_183

    :catch_22
    move-exception v0

    goto/16 :goto_18a

    :catch_25
    move-exception v0

    goto/16 :goto_1a8

    :catch_28
    move-exception v0

    goto/16 :goto_1af

    .line 726
    :pswitch_2b
    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleAudioFocusPlayerCommandInternal(I)V

    goto/16 :goto_2ba

    .line 723
    :pswitch_32
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setVolumeInternal(F)V

    goto/16 :goto_2ba

    .line 719
    :pswitch_3f
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lio/bidmachine/media3/common/AudioAttributes;

    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_49

    move v0, v14

    goto :goto_4a

    :cond_49
    move v0, v13

    :goto_4a
    invoke-virtual {p0, v4, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setAudioAttributesInternal(Lio/bidmachine/media3/common/AudioAttributes;Z)V

    goto/16 :goto_2ba

    .line 662
    :pswitch_4f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 663
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setVideoOutputInternal(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_2ba

    .line 627
    :pswitch_5e
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->prepareInternal()V

    goto/16 :goto_2ba

    .line 643
    :pswitch_63
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setPreloadConfigurationInternal(Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V

    goto/16 :goto_2ba

    .line 716
    :pswitch_6c
    iget v4, v0, Landroid/os/Message;->arg1:I

    iget v5, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v4, v5, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updateMediaSourcesWithMediaItemsInternal(IILjava/util/List;)V

    goto/16 :goto_2ba

    .line 713
    :pswitch_79
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->reselectTracksInternalAndSeek()V

    goto/16 :goto_2ba

    .line 710
    :pswitch_7e
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->attemptRendererErrorRecovery()V

    goto/16 :goto_2ba

    .line 707
    :pswitch_83
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_89

    move v0, v14

    goto :goto_8a

    :cond_89
    move v0, v13

    :goto_8a
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setPauseAtEndOfWindowInternal(Z)V

    goto/16 :goto_2ba

    .line 704
    :pswitch_8f
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceListUpdateRequestedInternal()V

    goto/16 :goto_2ba

    .line 701
    :pswitch_94
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setShuffleOrderInternal(Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)V

    goto/16 :goto_2ba

    .line 698
    :pswitch_9d
    iget v4, v0, Landroid/os/Message;->arg1:I

    iget v5, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    invoke-virtual {p0, v4, v5, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->removeMediaItemsInternal(IILio/bidmachine/media3/exoplayer/source/ShuffleOrder;)V

    goto/16 :goto_2ba

    .line 695
    :pswitch_aa
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->moveMediaItemsInternal(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;)V

    goto/16 :goto_2ba

    .line 692
    :pswitch_b3
    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v4, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->addMediaItemsInternal(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V

    goto/16 :goto_2ba

    .line 689
    :pswitch_be
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setMediaItemsInternal(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V

    goto/16 :goto_2ba

    .line 680
    :pswitch_c7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/media3/common/PlaybackParameters;

    invoke-virtual {p0, v0, v13}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handlePlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;Z)V

    goto/16 :goto_2ba

    .line 686
    :pswitch_d0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/media3/exoplayer/PlayerMessage;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->sendMessageToTargetThread(Lio/bidmachine/media3/exoplayer/PlayerMessage;)V

    goto/16 :goto_2ba

    .line 683
    :pswitch_d9
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/media3/exoplayer/PlayerMessage;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->sendMessageInternal(Lio/bidmachine/media3/exoplayer/PlayerMessage;)V

    goto/16 :goto_2ba

    .line 658
    :pswitch_e2
    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_e8

    move v4, v14

    goto :goto_e9

    :cond_e8
    move v4, v13

    :goto_e9
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_2ba

    .line 640
    :pswitch_f2
    iget v0, v0, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_f8

    move v0, v14

    goto :goto_f9

    :cond_f8
    move v0, v13

    :goto_f9
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setShuffleModeEnabledInternal(Z)V

    goto/16 :goto_2ba

    .line 637
    :pswitch_fe
    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setRepeatModeInternal(I)V

    goto/16 :goto_2ba

    .line 677
    :pswitch_105
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->reselectTracksInternal()V

    goto/16 :goto_2ba

    .line 674
    :pswitch_10a
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    goto/16 :goto_2ba

    .line 671
    :pswitch_113
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handlePeriodPrepared(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    goto/16 :goto_2ba

    .line 732
    :pswitch_11c
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->releaseInternal()V

    return v14

    .line 668
    :pswitch_120
    invoke-virtual {p0, v13, v14}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->stopInternal(ZZ)V

    goto/16 :goto_2ba

    .line 655
    :pswitch_125
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/media3/exoplayer/SeekParameters;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setSeekParametersInternal(Lio/bidmachine/media3/exoplayer/SeekParameters;)V

    goto/16 :goto_2ba

    .line 652
    :pswitch_12e
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/media3/common/PlaybackParameters;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setPlaybackParametersInternal(Lio/bidmachine/media3/common/PlaybackParameters;)V

    goto/16 :goto_2ba

    .line 649
    :pswitch_137
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->seekToInternal(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;)V

    goto/16 :goto_2ba

    .line 646
    :pswitch_140
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->doSomeWork()V

    goto/16 :goto_2ba

    .line 630
    :pswitch_145
    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_14b

    move v4, v14

    goto :goto_14c

    :cond_14b
    move v4, v13

    :goto_14c
    iget v0, v0, Landroid/os/Message;->arg2:I

    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    invoke-virtual {p0, v4, v5, v14, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setPlayWhenReadyInternal(ZIZI)V
    :try_end_155
    .catch Lio/bidmachine/media3/exoplayer/ExoPlaybackException; {:try_start_b .. :try_end_155} :catch_28
    .catch Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException; {:try_start_b .. :try_end_155} :catch_25
    .catch Lio/bidmachine/media3/common/ParserException; {:try_start_b .. :try_end_155} :catch_22
    .catch Lio/bidmachine/media3/datasource/DataSourceException; {:try_start_b .. :try_end_155} :catch_1f
    .catch Lio/bidmachine/media3/exoplayer/source/BehindLiveWindowException; {:try_start_b .. :try_end_155} :catch_1c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_155} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_155} :catch_16

    goto/16 :goto_2ba

    .line 843
    :goto_157
    instance-of v3, v0, Ljava/lang/IllegalStateException;

    if-nez v3, :cond_15f

    instance-of v3, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v3, :cond_161

    :cond_15f
    const/16 v2, 0x3ec

    .line 848
    :cond_161
    invoke-static {v0, v2}, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    .line 849
    invoke-static {v12, v11, v0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 850
    invoke-virtual {p0, v14, v13}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 851
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v2, v0}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    goto/16 :goto_2ba

    :goto_175
    const/16 v2, 0x7d0

    .line 840
    invoke-virtual {p0, v0, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    goto/16 :goto_2ba

    :goto_17c
    const/16 v2, 0x3ea

    .line 838
    invoke-virtual {p0, v0, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    goto/16 :goto_2ba

    .line 836
    :goto_183
    iget v2, v0, Lio/bidmachine/media3/datasource/DataSourceException;->reason:I

    invoke-virtual {p0, v0, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    goto/16 :goto_2ba

    .line 821
    :goto_18a
    iget v4, v0, Lio/bidmachine/media3/common/ParserException;->dataType:I

    if-ne v4, v14, :cond_198

    .line 823
    iget-boolean v2, v0, Lio/bidmachine/media3/common/ParserException;->contentIsMalformed:Z

    if-eqz v2, :cond_195

    const/16 v2, 0xbb9

    goto :goto_1a3

    :cond_195
    const/16 v2, 0xbbb

    goto :goto_1a3

    :cond_198
    if-ne v4, v3, :cond_1a3

    .line 828
    iget-boolean v2, v0, Lio/bidmachine/media3/common/ParserException;->contentIsMalformed:Z

    if-eqz v2, :cond_1a1

    const/16 v2, 0xbba

    goto :goto_1a3

    :cond_1a1
    const/16 v2, 0xbbc

    .line 834
    :cond_1a3
    :goto_1a3
    invoke-virtual {p0, v0, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    goto/16 :goto_2ba

    .line 818
    :goto_1a8
    iget v2, v0, Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-virtual {p0, v0, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    goto/16 :goto_2ba

    .line 739
    :goto_1af
    iget v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->type:I

    if-ne v2, v14, :cond_1e1

    .line 740
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    if-eqz v2, :cond_1e1

    .line 746
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    iget v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->rendererIndex:I

    array-length v6, v4

    rem-int v6, v5, v6

    aget-object v4, v4, v6

    invoke-virtual {v4, v5}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererPrewarming(I)Z

    move-result v4

    if-eqz v4, :cond_1d9

    .line 748
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v4

    if-eqz v4, :cond_1d9

    .line 749
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    goto :goto_1dd

    .line 750
    :cond_1d9
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 745
    :goto_1dd
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->copyWithMediaPeriodId(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    .line 753
    :cond_1e1
    iget v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->type:I

    if-ne v2, v14, :cond_230

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    iget v4, v0, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->rendererIndex:I

    array-length v5, v2

    rem-int v5, v4, v5

    aget-object v2, v2, v5

    .line 754
    invoke-virtual {v2, v4}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererPrewarming(I)Z

    move-result v2

    if-eqz v2, :cond_230

    .line 757
    iput-boolean v14, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->isPrewarmingDisabledUntilNextTransition:Z

    .line 758
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->disableAndResetPrewarmingRenderers()V

    .line 760
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPrewarmingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 761
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    .line 762
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v4

    if-eq v4, v0, :cond_21a

    :goto_20d
    if-eqz v2, :cond_21a

    .line 763
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v4

    if-eq v4, v0, :cond_21a

    .line 764
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    goto :goto_20d

    .line 767
    :cond_21a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->removeAfter(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)I

    .line 768
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v0, v3, :cond_2ba

    .line 769
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 770
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto/16 :goto_2ba

    .line 773
    :cond_230
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    if-eqz v2, :cond_239

    .line 774
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 775
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 778
    :cond_239
    iget v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->type:I

    if-ne v2, v14, :cond_283

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    .line 779
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    if-eq v2, v3, :cond_283

    .line 783
    :goto_24b
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    if-eq v2, v3, :cond_25f

    .line 784
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->advancePlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    goto :goto_24b

    .line 786
    :cond_25f
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 788
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    .line 789
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v5, v3

    iget-wide v3, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v6, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v5

    move-wide v5, v6

    move-wide v7, v3

    move-object v1, p0

    .line 790
    invoke-virtual/range {v1 .. v10}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 799
    :cond_283
    iget-boolean v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlaybackException;->isRecoverable:Z

    if-eqz v2, :cond_2ac

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    if-eqz v2, :cond_295

    iget v2, v0, Lio/bidmachine/media3/common/PlaybackException;->errorCode:I

    const/16 v3, 0x138c

    if-eq v2, v3, :cond_295

    const/16 v3, 0x138b

    if-ne v2, v3, :cond_2ac

    .line 805
    :cond_295
    const-string v2, "Recoverable renderer error"

    invoke-static {v12, v2, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 806
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    if-nez v2, :cond_2a0

    .line 807
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 809
    :cond_2a0
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/16 v3, 0x19

    .line 810
    invoke-interface {v2, v3, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    .line 809
    invoke-interface {v2, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendMessageAtFrontOfQueue(Lio/bidmachine/media3/common/util/HandlerWrapper$Message;)Z

    goto :goto_2ba

    .line 812
    :cond_2ac
    invoke-static {v12, v11, v0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 813
    invoke-virtual {p0, v14, v13}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 814
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v2, v0}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 853
    :cond_2ba
    :goto_2ba
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    return v14

    :pswitch_data_2be
    .packed-switch 0x1
        :pswitch_145
        :pswitch_140
        :pswitch_137
        :pswitch_12e
        :pswitch_125
        :pswitch_120
        :pswitch_11c
        :pswitch_113
        :pswitch_10a
        :pswitch_105
        :pswitch_fe
        :pswitch_f2
        :pswitch_e2
        :pswitch_d9
        :pswitch_d0
        :pswitch_c7
        :pswitch_be
        :pswitch_b3
        :pswitch_aa
        :pswitch_9d
        :pswitch_94
        :pswitch_8f
        :pswitch_83
        :pswitch_10
        :pswitch_7e
        :pswitch_79
        :pswitch_6c
        :pswitch_63
        :pswitch_5e
        :pswitch_4f
        :pswitch_3f
        :pswitch_32
        :pswitch_2b
        :pswitch_11
    .end packed-switch
.end method

.method public final handlePeriodPrepared(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2863
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->isLoading(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2864
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingPeriodPrepared(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)V

    return-void

    .line 2866
    :cond_18
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPreloadHolderByMediaPeriod(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 2868
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 2869
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    .line 2870
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-boolean v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    .line 2869
    invoke-virtual {v0, v1, v3, v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->handlePrepared(FLio/bidmachine/media3/common/Timeline;Z)V

    .line 2873
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->isPreloading(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 2874
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeContinuePreloading()V

    :cond_43
    return-void
.end method

.method public final handlePlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;FZZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    if-eqz p3, :cond_12

    if-eqz p4, :cond_a

    .line 2936
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 2938
    :cond_a
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p3, p1}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object p3

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 2940
    :cond_12
    iget p3, p1, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {p0, p3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updateTrackSelectionPlaybackSpeed(F)V

    .line 2941
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length p4, p3

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, p4, :cond_27

    aget-object v1, p3, v0

    .line 2942
    iget v2, p1, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v1, p2, v2}, Lio/bidmachine/media3/exoplayer/RendererHolder;->setPlaybackSpeed(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_27
    return-void
.end method

.method public final handlePlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2921
    iget v0, p1, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handlePlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;FZZ)V

    return-void
.end method

.method public final handlePositionDiscontinuity(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Lio/bidmachine/media3/exoplayer/PlaybackInfo;
    .registers 23

    move-wide/from16 v4, p4

    .line 3027
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v0, p2, v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 3030
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 3031
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 3032
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 3033
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 3034
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 3035
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->isPrepared()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 3036
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_3c

    .line 3039
    sget-object v1, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->EMPTY:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    goto :goto_40

    .line 3040
    :cond_3c
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackGroups()Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    move-result-object v1

    :goto_40
    if-nez v0, :cond_45

    .line 3043
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    goto :goto_49

    .line 3044
    :cond_45
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v2

    .line 3045
    :goto_49
    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-virtual {p0, v3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->extractMetadataFromTrackSelectionArray([Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    if-eqz v0, :cond_5f

    .line 3047
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v7, v6, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v7, v7, v4

    if-eqz v7, :cond_5f

    .line 3050
    invoke-virtual {v6, v4, v5}, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->copyWithRequestedContentPositionUs(J)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object v6

    iput-object v6, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    .line 3052
    :cond_5f
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeUpdateOffloadScheduling()V

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    goto :goto_7b

    .line 3053
    :cond_66
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v3}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    .line 3055
    sget-object v1, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->EMPTY:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    .line 3056
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 3057
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :cond_78
    move-object v12, v0

    move-object v10, v1

    move-object v11, v2

    :goto_7b
    if-eqz p8, :cond_84

    .line 3060
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    .line 3062
    :cond_84
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 3067
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v8

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v6, p6

    .line 3062
    invoke-virtual/range {v0 .. v12}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLio/bidmachine/media3/exoplayer/source/TrackGroupArray;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object p1

    return-object p1
.end method

.method public final hasReadingPeriodFinishedReading()Z
    .registers 6

    .line 2844
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2845
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    :cond_c
    move v1, v2

    .line 2848
    :goto_d
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v4, v3

    if-ge v1, v4, :cond_1e

    .line 2849
    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->hasFinishedReadingFromPeriod(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v3

    if-nez v3, :cond_1b

    return v2

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public final isLoadingPossible(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Z
    .registers 6

    if-eqz p1, :cond_14

    .line 3006
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->hasLoadingError()Z

    move-result v0

    if-nez v0, :cond_14

    .line 3007
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNextLoadPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public final isTimelineReady()Z
    .registers 6

    .line 2267
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 2268
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v1, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    .line 2269
    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_27

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_25

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_25

    .line 2272
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_25
    const/4 v0, 0x1

    return v0

    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public final maybeContinueLoading()V
    .registers 5

    .line 2948
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading()Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-eqz v0, :cond_3c

    .line 2950
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 2951
    new-instance v1, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2953
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->setPlaybackPositionUs(J)Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    .line 2954
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;

    move-result-object v2

    iget v2, v2, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->setPlaybackSpeed(F)Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v1

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->lastRebufferRealtimeMs:J

    .line 2955
    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->setLastRebufferRealtimeMs(J)Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v1

    .line 2956
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->build()Lio/bidmachine/media3/exoplayer/LoadingInfo;

    move-result-object v1

    .line 2951
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)V

    .line 2958
    :cond_3c
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updateIsLoading()V

    return-void
.end method

.method public final maybeContinuePreloading()V
    .registers 7

    .line 2717
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->maybeUpdatePreloadMediaPeriodHolder()V

    .line 2718
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPreloadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 2719
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepareCalled:Z

    if-eqz v1, :cond_15

    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v1, :cond_6f

    :cond_15
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    .line 2721
    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->isLoading()Z

    move-result v1

    if-nez v1, :cond_6f

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Lio/bidmachine/media3/exoplayer/LoadControl;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2725
    iget-boolean v4, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v4, :cond_32

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v4}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v4

    goto :goto_34

    :cond_32
    const-wide/16 v4, 0x0

    .line 2722
    :goto_34
    invoke-interface {v1, v2, v3, v4, v5}, Lio/bidmachine/media3/exoplayer/LoadControl;->shouldContinuePreloading(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;J)Z

    move-result v1

    if-nez v1, :cond_3b

    goto :goto_6f

    .line 2728
    :cond_3b
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepareCalled:Z

    if-nez v1, :cond_47

    .line 2729
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v1, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    invoke-virtual {v0, p0, v1, v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V

    return-void

    .line 2731
    :cond_47
    new-instance v1, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2733
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->setPlaybackPositionUs(J)Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    .line 2734
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;

    move-result-object v2

    iget v2, v2, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->setPlaybackSpeed(F)Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v1

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->lastRebufferRealtimeMs:J

    .line 2735
    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->setLastRebufferRealtimeMs(J)Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v1

    .line 2736
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/LoadingInfo$Builder;->build()Lio/bidmachine/media3/exoplayer/LoadingInfo;

    move-result-object v1

    .line 2731
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->continueLoading(Lio/bidmachine/media3/exoplayer/LoadingInfo;)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method public final maybeHandlePrewarmingTransition()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2777
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 2778
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/RendererHolder;->maybeHandlePrewarmingTransition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public final maybeNotifyPlaybackInfoChanged()V
    .registers 3

    .line 911
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPlaybackInfo(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V

    .line 912
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->access$100(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 913
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdateListener:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;->onPlaybackInfoUpdate(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    .line 914
    new-instance v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-direct {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    :cond_1f
    return-void
.end method

.method public final maybePrewarmRenderers()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2518
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPrewarmingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    if-nez v2, :cond_a

    move-object v1, p0

    goto :goto_64

    .line 2522
    :cond_a
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v0

    const/4 v7, 0x0

    move v3, v7

    .line 2523
    :goto_10
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v1, v1

    if-ge v3, v1, :cond_44

    .line 2524
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v1, v1, v3

    .line 2525
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->hasSecondary()Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v1, v1, v3

    .line 2526
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isPrewarming()Z

    move-result v1

    if-nez v1, :cond_40

    .line 2527
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->startPrewarming()V

    const/4 v4, 0x0

    .line 2532
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v5

    move-object v1, p0

    .line 2528
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enableRenderer(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;IZJ)V

    goto :goto_41

    :cond_40
    move-object v1, p0

    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_44
    move-object v1, p0

    .line 2536
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->areRenderersPrewarming()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 2537
    iget-object v0, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v3

    iput-wide v3, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->prewarmingMediaPeriodDiscontinuity:J

    .line 2538
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v0

    if-nez v0, :cond_64

    .line 2541
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->removeAfter(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)I

    .line 2542
    invoke-virtual {p0, v7}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 2543
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    :cond_64
    :goto_64
    return-void
.end method

.method public final maybeThrowRendererStreamError(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 3259
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v0, v0, p1

    .line 3261
    :try_start_4
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->maybeThrowStreamError(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v1

    goto :goto_17

    :catch_16
    move-exception v1

    .line 3263
    :goto_17
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getTrackType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_23

    const/4 v2, 0x5

    if-ne v0, v2, :cond_22

    goto :goto_23

    .line 3292
    :cond_22
    throw v1

    .line 3266
    :cond_23
    :goto_23
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    .line 3267
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 3268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling track due to error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v3, v3, p1

    .line 3272
    invoke-interface {v3}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Lio/bidmachine/media3/common/Format;

    move-result-object v3

    .line 3271
    invoke-static {v3}, Lio/bidmachine/media3/common/Format;->toLogString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3268
    const-string v3, "ExoPlayerImplInternal"

    invoke-static {v3, v2, v1}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3275
    new-instance v1, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    .line 3277
    invoke-virtual {v2}, [Lio/bidmachine/media3/exoplayer/RendererConfiguration;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 3278
    invoke-virtual {v3}, [Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->tracks:Lio/bidmachine/media3/common/Tracks;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4, v0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Lio/bidmachine/media3/exoplayer/RendererConfiguration;[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;Lio/bidmachine/media3/common/Tracks;Ljava/lang/Object;)V

    .line 3281
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 3282
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    aput-object v2, v0, p1

    .line 3283
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->disableRenderer(I)V

    .line 3284
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    .line 3285
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    const/4 v0, 0x0

    .line 3286
    invoke-virtual {p1, v1, v2, v3, v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;JZ)J

    return-void
.end method

.method public final maybeTriggerOnRendererReadyChanged(IZ)V
    .registers 5

    .line 1434
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererReportedReady:[Z

    aget-boolean v1, v0, p1

    if-eq v1, p2, :cond_12

    .line 1435
    aput-boolean p2, v0, p1

    .line 1436
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->applicationLooperHandler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;IZ)V

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method

.method public final maybeTriggerPendingMessages(JJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1993
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_fc

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_fc

    .line 1998
    :cond_14
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    if-eqz v0, :cond_1e

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    .line 2000
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 2004
    :cond_1e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2005
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 2006
    iget v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->nextPendingMessageIndexHint:I

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_44

    .line 2008
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_45

    :cond_44
    move-object v3, v2

    :goto_45
    if-eqz v3, :cond_67

    .line 2009
    iget v4, v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-gt v4, v0, :cond_53

    if-ne v4, v0, :cond_67

    iget-wide v3, v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v3, v3, p1

    if-lez v3, :cond_67

    :cond_53
    add-int/lit8 v3, v1, -0x1

    if-lez v3, :cond_62

    .line 2015
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_63

    :cond_62
    move-object v1, v2

    :goto_63
    move v7, v3

    move-object v3, v1

    move v1, v7

    goto :goto_45

    .line 2018
    :cond_67
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_78

    .line 2019
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_79

    :cond_78
    move-object v3, v2

    :goto_79
    if-eqz v3, :cond_9e

    .line 2021
    iget-object v4, v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v4, :cond_9e

    iget v4, v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-lt v4, v0, :cond_8b

    if-ne v4, v0, :cond_9e

    iget-wide v4, v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_9e

    :cond_8b
    add-int/lit8 v1, v1, 0x1

    .line 2028
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_78

    .line 2029
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_79

    :cond_9e
    :goto_9e
    if-eqz v3, :cond_fa

    .line 2033
    iget-object v4, v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v4, :cond_fa

    iget v4, v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v4, v0, :cond_fa

    iget-wide v4, v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v6, v4, p1

    if-lez v6, :cond_fa

    cmp-long v4, v4, p3

    if-gtz v4, :cond_fa

    .line 2039
    :try_start_b2
    iget-object v4, v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Lio/bidmachine/media3/exoplayer/PlayerMessage;

    invoke-virtual {p0, v4}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->sendMessageToTarget(Lio/bidmachine/media3/exoplayer/PlayerMessage;)V
    :try_end_b7
    .catchall {:try_start_b2 .. :try_end_b7} :catchall_e3

    .line 2041
    iget-object v4, v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Lio/bidmachine/media3/exoplayer/PlayerMessage;

    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result v4

    if-nez v4, :cond_cb

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Lio/bidmachine/media3/exoplayer/PlayerMessage;

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_c8

    goto :goto_cb

    :cond_c8
    add-int/lit8 v1, v1, 0x1

    goto :goto_d0

    .line 2042
    :cond_cb
    :goto_cb
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2048
    :goto_d0
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_e1

    .line 2049
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_9e

    :cond_e1
    move-object v3, v2

    goto :goto_9e

    :catchall_e3
    move-exception p1

    .line 2041
    iget-object p2, v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Lio/bidmachine/media3/exoplayer/PlayerMessage;

    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result p2

    if-nez p2, :cond_f4

    iget-object p2, v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Lio/bidmachine/media3/exoplayer/PlayerMessage;

    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_f9

    .line 2042
    :cond_f4
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2046
    :cond_f9
    throw p1

    .line 2052
    :cond_fa
    iput v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->nextPendingMessageIndexHint:I

    :cond_fc
    :goto_fc
    return-void
.end method

.method public final maybeUpdateLoadingPeriod()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2468
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->reevaluateBuffer(J)V

    .line 2469
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->shouldLoadNextMediaPeriod()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    .line 2471
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v0, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getNextMediaPeriodInfo(JLio/bidmachine/media3/exoplayer/PlaybackInfo;)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 2473
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2, v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->enqueueNextMediaPeriodHolder(Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;)Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    .line 2474
    iget-boolean v3, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepareCalled:Z

    if-nez v3, :cond_2c

    .line 2475
    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    invoke-virtual {v2, p0, v3, v4}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepare(Lio/bidmachine/media3/exoplayer/source/MediaPeriod$Callback;J)V

    goto :goto_3d

    .line 2476
    :cond_2c
    iget-boolean v3, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v3, :cond_3d

    .line 2477
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/16 v4, 0x8

    iget-object v5, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v3, v4, v5}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object v3

    invoke-interface {v3}, Lio/bidmachine/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    .line 2479
    :cond_3d
    :goto_3d
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    if-ne v3, v2, :cond_4a

    .line 2480
    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    invoke-virtual {p0, v2, v3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 2482
    :cond_4a
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    const/4 v1, 0x1

    .line 2486
    :cond_4e
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-eqz v0, :cond_62

    .line 2489
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->isLoadingPossible(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 2490
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updateIsLoading()V

    return v1

    .line 2492
    :cond_62
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    return v1
.end method

.method public final maybeUpdateOffloadScheduling()V
    .registers 7

    .line 2785
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    if-eq v0, v1, :cond_f

    goto :goto_4b

    .line 2789
    :cond_f
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 2791
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 2794
    :goto_1e
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_42

    .line 2795
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2796
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getTrackType()I

    move-result v4

    if-eq v4, v5, :cond_36

    move v0, v1

    goto :goto_43

    .line 2800
    :cond_36
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->rendererConfigurations:[Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    aget-object v4, v4, v2

    iget v4, v4, Lio/bidmachine/media3/exoplayer/RendererConfiguration;->offloadModePreferred:I

    if-eqz v4, :cond_3f

    move v3, v5

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_42
    move v0, v5

    :goto_43
    if-eqz v3, :cond_48

    if-eqz v0, :cond_48

    move v1, v5

    .line 2806
    :cond_48
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setOffloadSchedulingEnabled(Z)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final maybeUpdatePlayingPeriod()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 2742
    :goto_2
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldAdvancePlayingPeriod()Z

    move-result v2

    if-eqz v2, :cond_81

    if-eqz v1, :cond_d

    .line 2745
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    .line 2747
    :cond_d
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->isPrewarmingDisabledUntilNextTransition:Z

    .line 2748
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->advancePlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 2749
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2750
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_47

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v4, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_47

    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v4, v4, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v6, v4, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v6, v5, :cond_47

    iget v2, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget v4, v4, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v2, v4, :cond_47

    move v2, v3

    goto :goto_48

    :cond_47
    move v2, v0

    .line 2755
    :goto_48
    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v6, v4, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v7, v4, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v9, v4, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->requestedContentPositionUs:J

    xor-int/lit8 v13, v2, 0x1

    const/4 v14, 0x0

    move-wide v11, v7

    move-object v5, p0

    .line 2756
    invoke-virtual/range {v5 .. v14}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-object v2, v5, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 2763
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 2764
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 2765
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->areRenderersPrewarming()Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v2, v5, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPrewarmingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    if-ne v1, v2, :cond_72

    .line 2766
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeHandlePrewarmingTransition()V

    .line 2768
    :cond_72
    iget-object v1, v5, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7c

    .line 2769
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    .line 2771
    :cond_7c
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->allowRenderersToRenderStartOfStreams()V

    move v1, v3

    goto :goto_2

    :cond_81
    move-object v5, p0

    return-void
.end method

.method public final maybeUpdatePreloadPeriods(Z)V
    .registers 6

    .line 2703
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->preloadConfiguration:Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;->targetPreloadDurationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    return-void

    :cond_e
    if-nez p1, :cond_1c

    .line 2707
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->lastPreloadPoolInvalidationTimeline:Lio/bidmachine/media3/common/Timeline;

    .line 2708
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 2710
    :cond_1c
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->lastPreloadPoolInvalidationTimeline:Lio/bidmachine/media3/common/Timeline;

    .line 2711
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->invalidatePreloadPool(Lio/bidmachine/media3/common/Timeline;)V

    .line 2713
    :cond_27
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeContinuePreloading()V

    return-void
.end method

.method public final maybeUpdatePrewarmingPeriod()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2499
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-nez v0, :cond_3a

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->hasSecondaryRenderers:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->isPrewarmingDisabledUntilNextTransition:Z

    if-nez v0, :cond_3a

    .line 2502
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->areRenderersPrewarming()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_3a

    .line 2505
    :cond_13
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPrewarmingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 2506
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    .line 2507
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    if-ne v0, v1, :cond_3a

    .line 2508
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 2509
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_32

    goto :goto_3a

    .line 2513
    :cond_32
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->advancePrewarmingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 2514
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybePrewarmRenderers()V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public final maybeUpdateReadingPeriod()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2549
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    if-nez v1, :cond_a

    goto/16 :goto_13f

    .line 2554
    :cond_a
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    if-eqz v2, :cond_102

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v2, :cond_1c

    goto/16 :goto_102

    .line 2577
    :cond_1c
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->hasReadingPeriodFinishedReading()Z

    move-result v2

    if-nez v2, :cond_24

    goto/16 :goto_13f

    .line 2581
    :cond_24
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->areRenderersPrewarming()Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPrewarmingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    if-ne v2, v3, :cond_3a

    goto/16 :goto_13f

    .line 2586
    :cond_3a
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    iget-boolean v2, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v2, :cond_52

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2587
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v4

    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_52

    goto/16 :goto_13f

    .line 2593
    :cond_52
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v11

    .line 2594
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->advanceReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v12

    .line 2595
    invoke-virtual {v12}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v13

    .line 2597
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v3, v12, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    .line 2605
    iget-boolean v1, v12, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v1, :cond_f1

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->hasSecondaryRenderers:Z

    if-eqz v1, :cond_87

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->prewarmingMediaPeriodDiscontinuity:J

    cmp-long v1, v1, v8

    if-nez v1, :cond_91

    :cond_87
    iget-object v1, v12, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    .line 2607
    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v1

    cmp-long v1, v1, v8

    if-eqz v1, :cond_f1

    .line 2608
    :cond_91
    iput-wide v8, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->prewarmingMediaPeriodDiscontinuity:J

    .line 2612
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->hasSecondaryRenderers:Z

    if-eqz v1, :cond_9d

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->isPrewarmingDisabledUntilNextTransition:Z

    if-nez v1, :cond_9d

    const/4 v1, 0x1

    goto :goto_9e

    :cond_9d
    move v1, v10

    :goto_9e
    if-eqz v1, :cond_d6

    move v2, v10

    .line 2615
    :goto_a1
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v3, v3

    if-ge v2, v3, :cond_d6

    .line 2616
    invoke-virtual {v13, v2}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    if-nez v3, :cond_ad

    goto :goto_d3

    .line 2621
    :cond_ad
    iget-object v3, v13, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v3, v3, v2

    .line 2622
    invoke-interface {v3}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Lio/bidmachine/media3/common/Format;

    move-result-object v3

    iget-object v3, v3, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v4, v13, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    aget-object v4, v4, v2

    .line 2623
    invoke-interface {v4}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Lio/bidmachine/media3/common/Format;

    move-result-object v4

    iget-object v4, v4, Lio/bidmachine/media3/common/Format;->codecs:Ljava/lang/String;

    .line 2621
    invoke-static {v3, v4}, Lio/bidmachine/media3/common/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d3

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v3, v3, v2

    .line 2624
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isPrewarming()Z

    move-result v3

    if-nez v3, :cond_d3

    move v1, v10

    goto :goto_d6

    :cond_d3
    :goto_d3
    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    :cond_d6
    :goto_d6
    if-nez v1, :cond_f1

    .line 2632
    invoke-virtual {v12}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v1

    .line 2631
    invoke-virtual {p0, v1, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setAllNonPrewarmingRendererStreamsFinal(J)V

    .line 2633
    invoke-virtual {v12}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v1

    if-nez v1, :cond_13f

    .line 2636
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1, v12}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->removeAfter(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)I

    .line 2637
    invoke-virtual {p0, v10}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 2638
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void

    .line 2644
    :cond_f1
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v2, v1

    :goto_f4
    if-ge v10, v2, :cond_13f

    aget-object v3, v1, v10

    .line 2648
    invoke-virtual {v12}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v4

    .line 2645
    invoke-virtual {v3, v11, v13, v4, v5}, Lio/bidmachine/media3/exoplayer/RendererHolder;->maybeSetOldStreamToFinal(Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_f4

    .line 2557
    :cond_102
    :goto_102
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v2, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-nez v2, :cond_10c

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v2, :cond_13f

    .line 2558
    :cond_10c
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v3, v2

    :goto_10f
    if-ge v10, v3, :cond_13f

    aget-object v4, v2, v10

    .line 2559
    invoke-virtual {v4, v1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isReadingFromPeriod(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v5

    if-nez v5, :cond_11a

    goto :goto_13c

    .line 2564
    :cond_11a
    invoke-virtual {v4, v1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->hasReadPeriodToEnd(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v5

    if-eqz v5, :cond_13c

    .line 2567
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v5, v5, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    cmp-long v7, v5, v8

    if-eqz v7, :cond_138

    const-wide/high16 v11, -0x8000000000000000L

    cmp-long v5, v5, v11

    if-eqz v5, :cond_138

    .line 2568
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v5

    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v11, v7, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->durationUs:J

    add-long/2addr v5, v11

    goto :goto_139

    :cond_138
    move-wide v5, v8

    .line 2570
    :goto_139
    invoke-virtual {v4, v1, v5, v6}, Lio/bidmachine/media3/exoplayer/RendererHolder;->setCurrentStreamFinal(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;J)V

    :cond_13c
    :goto_13c
    add-int/lit8 v10, v10, 0x1

    goto :goto_10f

    :cond_13f
    :goto_13f
    return-void
.end method

.method public final maybeUpdateReadingRenderers()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2653
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 2654
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    .line 2655
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    if-eq v1, v0, :cond_24

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    if-eqz v0, :cond_15

    goto :goto_24

    .line 2660
    :cond_15
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updateRenderersForTransition()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2662
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    :cond_24
    :goto_24
    return-void
.end method

.method public final mediaSourceListUpdateRequestedInternal()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 982
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    .line 983
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->createTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v0

    const/4 v1, 0x1

    .line 982
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lio/bidmachine/media3/common/Timeline;Z)V

    return-void
.end method

.method public final moveMediaItemsInternal(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 964
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 965
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    iget v1, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->fromIndex:I

    iget v2, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->toIndex:I

    iget v3, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->newFromIndex:I

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;->shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    .line 966
    invoke-virtual {v0, v1, v2, v3, p1}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->moveMediaSourceRange(IIILio/bidmachine/media3/exoplayer/source/ShuffleOrder;)Lio/bidmachine/media3/common/Timeline;

    move-result-object p1

    const/4 v0, 0x0

    .line 971
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lio/bidmachine/media3/common/Timeline;Z)V

    return-void
.end method

.method public final notifyTrackSelectionDiscontinuity()V
    .registers 6

    .line 2210
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_21

    .line 2212
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    if-eqz v4, :cond_19

    .line 2214
    invoke-interface {v4}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->onDiscontinuity()V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2217
    :cond_1c
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    goto :goto_6

    :cond_21
    return-void
.end method

.method public final notifyTrackSelectionPlayWhenReadyChanged(Z)V
    .registers 7

    .line 1016
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_21

    .line 1018
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    if-eqz v4, :cond_19

    .line 1020
    invoke-interface {v4, p1}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->onPlayWhenReadyChanged(Z)V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1023
    :cond_1c
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    goto :goto_6

    :cond_21
    return-void
.end method

.method public final notifyTrackSelectionRebuffer()V
    .registers 6

    .line 1278
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_21

    .line 1280
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    if-eqz v4, :cond_19

    .line 1282
    invoke-interface {v4}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->onRebuffer()V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1285
    :cond_1c
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    goto :goto_6

    :cond_21
    return-void
.end method

.method public onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 4

    .line 583
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/SequenceableLoader;)V
    .registers 2

    .line 85
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->onContinueLoadingRequested(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lio/bidmachine/media3/common/PlaybackParameters;)V
    .registers 4

    .line 602
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/16 v1, 0x10

    .line 603
    invoke-interface {v0, v1, p1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    .line 604
    invoke-interface {p1}, Lio/bidmachine/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public onPlaylistUpdateRequested()V
    .registers 3

    .line 570
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 571
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPrepared(Lio/bidmachine/media3/exoplayer/source/MediaPeriod;)V
    .registers 4

    .line 578
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public onRendererCapabilitiesChanged(Lio/bidmachine/media3/exoplayer/Renderer;)V
    .registers 3

    .line 595
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .registers 3

    .line 590
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public prepare()V
    .registers 3

    .line 366
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/16 v1, 0x1d

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(I)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final prepareInternal()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 919
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    const/4 v0, 0x0

    .line 920
    invoke-virtual {p0, v0, v0, v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 925
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Lio/bidmachine/media3/exoplayer/LoadControl;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/LoadControl;->onPrepared(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    .line 926
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1e

    const/4 v0, 0x4

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 927
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updatePlayWhenReadyWithAudioFocus()V

    .line 928
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->bandwidthMeter:Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;->getTransferListener()Lio/bidmachine/media3/datasource/TransferListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->prepare(Lio/bidmachine/media3/datasource/TransferListener;)V

    .line 929
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public declared-synchronized release()Z
    .registers 4

    monitor-enter p0

    .line 554
    :try_start_1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_28

    .line 557
    :cond_12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 558
    new-instance v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda4;-><init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;)V

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->releaseTimeoutMs:J

    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->waitUninterruptibly(Lcom/google/common/base/Supplier;J)V

    .line 559
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->released:Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    monitor-exit p0

    return v0

    :catchall_26
    move-exception v0

    goto :goto_2b

    .line 555
    :cond_28
    :goto_28
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :goto_2b
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_26

    throw v0
.end method

.method public final releaseInternal()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1760
    :try_start_2
    invoke-virtual {p0, v1, v0, v1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 1765
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->releaseRenderers()V

    .line 1766
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Lio/bidmachine/media3/exoplayer/LoadControl;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    invoke-interface {v0, v2}, Lio/bidmachine/media3/exoplayer/LoadControl;->onReleased(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    .line 1767
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->audioFocusManager:Lio/bidmachine/media3/exoplayer/AudioFocusManager;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->release()V

    .line 1768
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->trackSelector:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;->release()V

    .line 1769
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_2c

    .line 1771
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackLooperProvider:Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->releaseLooper()V

    .line 1772
    monitor-enter p0

    .line 1773
    :try_start_22
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    .line 1774
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1775
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw v0

    :catchall_2c
    move-exception v0

    .line 1771
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackLooperProvider:Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;->releaseLooper()V

    .line 1772
    monitor-enter p0

    .line 1773
    :try_start_33
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    .line 1774
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1775
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_3a

    .line 1776
    throw v0

    :catchall_3a
    move-exception v0

    .line 1775
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public final releaseRenderers()V
    .registers 3

    const/4 v0, 0x0

    .line 3176
    :goto_1
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 3177
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererCapabilities:[Lio/bidmachine/media3/exoplayer/RendererCapabilities;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->clearListener()V

    .line 3178
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public final removeMediaItemsInternal(IILio/bidmachine/media3/exoplayer/source/ShuffleOrder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 976
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 977
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->removeMediaSourceRange(IILio/bidmachine/media3/exoplayer/source/ShuffleOrder;)Lio/bidmachine/media3/common/Timeline;

    move-result-object p1

    const/4 p2, 0x0

    .line 978
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lio/bidmachine/media3/common/Timeline;Z)V

    return-void
.end method

.method public final reselectTracksInternal()V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2088
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    .line 2090
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    .line 2091
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    const/4 v10, 0x1

    const/4 v4, 0x0

    move v5, v10

    :goto_19
    if-eqz v2, :cond_13c

    .line 2097
    iget-boolean v6, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v6, :cond_21

    goto/16 :goto_13c

    .line 2101
    :cond_21
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v7, v6, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-boolean v6, v6, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    .line 2102
    invoke-virtual {v2, v1, v7, v6}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->selectTracks(FLio/bidmachine/media3/common/Timeline;Z)Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v6

    .line 2104
    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v7}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v7

    if-ne v2, v7, :cond_34

    move-object v4, v6

    .line 2107
    :cond_34
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isEquivalent(Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;)Z

    move-result v7

    const/4 v11, 0x0

    if-nez v7, :cond_133

    const/4 v12, 0x4

    if-eqz v5, :cond_ee

    .line 2120
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v13

    .line 2122
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1, v13}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->removeAfter(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)I

    move-result v1

    and-int/2addr v1, v10

    if-eqz v1, :cond_54

    move/from16 v17, v10

    goto :goto_56

    :cond_54
    move/from16 v17, v11

    .line 2126
    :goto_56
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v1, v1

    new-array v1, v1, [Z

    .line 2129
    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    move-object/from16 v18, v1

    move-wide v15, v2

    .line 2128
    invoke-virtual/range {v13 .. v18}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide v2

    .line 2133
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v4, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v4, v12, :cond_7b

    iget-wide v4, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7b

    move v8, v10

    goto :goto_7c

    :cond_7b
    move v8, v11

    .line 2136
    :goto_7c
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v6, v4

    iget-wide v4, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v14, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    const/4 v9, 0x5

    move-object v1, v6

    move-wide v6, v14

    .line 2137
    invoke-virtual/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    if-eqz v8, :cond_93

    .line 2145
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 2149
    :cond_93
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->disableAndResetPrewarmingRenderers()V

    .line 2151
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v1, v1

    new-array v1, v1, [Z

    move v2, v11

    .line 2152
    :goto_9c
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v4, v3

    if-ge v2, v4, :cond_e6

    .line 2153
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getEnabledRendererCount()I

    move-result v3

    .line 2154
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isRendererEnabled()Z

    move-result v4

    aput-boolean v4, v1, v2

    .line 2156
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v19, v4, v2

    iget-object v4, v13, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->sampleStreams:[Lio/bidmachine/media3/exoplayer/source/SampleStream;

    aget-object v20, v4, v2

    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    iget-wide v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    aget-boolean v24, v18, v2

    move-object/from16 v21, v4

    move-wide/from16 v22, v5

    invoke-virtual/range {v19 .. v24}, Lio/bidmachine/media3/exoplayer/RendererHolder;->maybeDisableOrResetPosition(Lio/bidmachine/media3/exoplayer/source/SampleStream;Lio/bidmachine/media3/exoplayer/DefaultMediaClock;JZ)V

    .line 2161
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getEnabledRendererCount()I

    move-result v4

    sub-int v4, v3, v4

    if-lez v4, :cond_d5

    .line 2162
    invoke-virtual {v0, v2, v11}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeTriggerOnRendererReadyChanged(IZ)V

    .line 2164
    :cond_d5
    iget v4, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v5, v5, v2

    .line 2165
    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getEnabledRendererCount()I

    move-result v5

    sub-int/2addr v3, v5

    sub-int/2addr v4, v3

    iput v4, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_9c

    .line 2168
    :cond_e6
    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enableRenderers([ZJ)V

    .line 2169
    iput-boolean v10, v13, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    goto :goto_11d

    .line 2172
    :cond_ee
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->removeAfter(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)I

    .line 2173
    iget-boolean v1, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v1, :cond_11d

    .line 2174
    iget-object v1, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v3, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    iget-wide v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2175
    invoke-virtual {v2, v7, v8}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2176
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->hasSecondaryRenderers:Z

    if-eqz v1, :cond_11a

    .line 2177
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->areRenderersPrewarming()Z

    move-result v1

    if-eqz v1, :cond_11a

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    .line 2178
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPrewarmingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    if-ne v1, v2, :cond_11a

    .line 2184
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->disableAndResetPrewarmingRenderers()V

    .line 2186
    :cond_11a
    invoke-virtual {v2, v6, v3, v4, v11}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->applyTrackSelection(Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;JZ)J

    .line 2189
    :cond_11d
    :goto_11d
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 2190
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v1, v12, :cond_13c

    .line 2191
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 2192
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 2193
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void

    :cond_133
    if-ne v2, v3, :cond_136

    move v5, v11

    .line 2115
    :cond_136
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    goto/16 :goto_19

    :cond_13c
    :goto_13c
    return-void
.end method

.method public final reselectTracksInternalAndSeek()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2083
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->reselectTracksInternal()V

    const/4 v0, 0x1

    .line 2084
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    return-void
.end method

.method public final resetInternal(ZZZZ)V
    .registers 38

    move-object/from16 v1, p0

    .line 1784
    const-string v2, "ExoPlayerImplInternal"

    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lio/bidmachine/media3/common/util/HandlerWrapper;->removeMessages(I)V

    const/4 v3, 0x0

    .line 1785
    iput-object v3, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1786
    invoke-virtual {v1, v4, v5}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updateRebufferingState(ZZ)V

    .line 1787
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->stop()V

    const-wide v6, 0xe8d4a51000L

    .line 1788
    iput-wide v6, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1790
    :try_start_1e
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->disableRenderers()V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_21} :catch_24
    .catch Lio/bidmachine/media3/exoplayer/ExoPlaybackException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception v0

    goto :goto_25

    :catch_24
    move-exception v0

    .line 1793
    :goto_25
    const-string v6, "Disable failed."

    invoke-static {v2, v6, v0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2a
    if-eqz p1, :cond_41

    .line 1796
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v7, v6

    move v8, v4

    :goto_30
    if-ge v8, v7, :cond_41

    aget-object v0, v6, v8

    .line 1798
    :try_start_34
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/RendererHolder;->reset()V
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_3e

    :catch_38
    move-exception v0

    .line 1801
    const-string v9, "Reset failed."

    invoke-static {v2, v9, v0}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3e
    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    .line 1805
    :cond_41
    iput v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 1807
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1808
    iget-wide v6, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    .line 1810
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-static {v0, v8}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->isUsingPlaceholderPeriod(Lio/bidmachine/media3/exoplayer/PlaybackInfo;Lio/bidmachine/media3/common/Timeline$Period;)Z

    move-result v0

    if-eqz v0, :cond_5e

    goto :goto_63

    .line 1812
    :cond_5e
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v8, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    goto :goto_67

    .line 1811
    :cond_63
    :goto_63
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v8, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    :goto_67
    if-eqz p2, :cond_91

    .line 1815
    iput-object v3, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 1816
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 1817
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->getPlaceholderFirstMediaPeriodPositionUs(Lio/bidmachine/media3/common/Timeline;)Landroid/util/Pair;

    move-result-object v0

    .line 1818
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1819
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1821
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_91

    :goto_8e
    move-wide v11, v6

    move-wide v9, v8

    goto :goto_93

    :cond_91
    move v5, v4

    goto :goto_8e

    .line 1826
    :goto_93
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->clear()V

    .line 1827
    iput-boolean v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 1829
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    if-eqz p3, :cond_d8

    .line 1830
    instance-of v4, v0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;

    if-eqz v4, :cond_d8

    .line 1833
    check-cast v0, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;

    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    .line 1835
    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->getShuffleOrder()Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;->copyWithPlaceholderTimeline(Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)Lio/bidmachine/media3/exoplayer/PlaylistTimeline;

    move-result-object v0

    .line 1836
    iget v4, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_d8

    .line 1837
    iget-object v4, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v0, v4, v6}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 1838
    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget v4, v4, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {v0, v4, v6}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object v4

    invoke-virtual {v4}, Lio/bidmachine/media3/common/Timeline$Window;->isLive()Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 1842
    new-instance v4, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v7, v2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v4, v6, v7, v8}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    move-object v7, v0

    move-object v8, v4

    goto :goto_da

    :cond_d8
    move-object v7, v0

    move-object v8, v2

    .line 1847
    :goto_da
    new-instance v6, Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v13, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eqz p4, :cond_e4

    :goto_e2
    move-object v14, v3

    goto :goto_e7

    .line 1854
    :cond_e4
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackError:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    goto :goto_e2

    :goto_e7
    if-eqz v5, :cond_ee

    .line 1856
    sget-object v2, Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;->EMPTY:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    :goto_eb
    move-object/from16 v16, v2

    goto :goto_f1

    :cond_ee
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->trackGroups:Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;

    goto :goto_eb

    :goto_f1
    if-eqz v5, :cond_f8

    .line 1857
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    :goto_f5
    move-object/from16 v17, v2

    goto :goto_fb

    :cond_f8
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    goto :goto_f5

    :goto_fb
    if-eqz v5, :cond_104

    .line 1858
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_101
    move-object/from16 v18, v0

    goto :goto_107

    :cond_104
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    goto :goto_101

    :goto_107
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget v3, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    iget v4, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/4 v15, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v19, v8

    move-wide/from16 v24, v11

    move-wide/from16 v28, v11

    move-object/from16 v23, v0

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    invoke-direct/range {v6 .. v32}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;-><init>(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJILio/bidmachine/media3/exoplayer/ExoPlaybackException;ZLio/bidmachine/media3/exoplayer/source/TrackGroupArray;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;ZIILio/bidmachine/media3/common/PlaybackParameters;JJJJZ)V

    iput-object v6, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    if-eqz p3, :cond_137

    .line 1870
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->releasePreloadPool()V

    .line 1871
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->release()V

    :cond_137
    return-void
.end method

.method public final resetPendingPauseAtEndOfPeriod()V
    .registers 2

    .line 2821
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2822
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isLastInTimelineWindow:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    return-void
.end method

.method public final resetRendererPosition(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1688
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_f

    const-wide v1, 0xe8d4a51000L

    add-long/2addr p1, v1

    goto :goto_13

    .line 1692
    :cond_f
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p1

    :goto_13
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1693
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v1, p1, p2}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->resetPosition(J)V

    .line 1694
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length p2, p1

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, p2, :cond_2a

    aget-object v2, p1, v1

    .line 1695
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v2, v0, v3, v4}, Lio/bidmachine/media3/exoplayer/RendererHolder;->resetPosition(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1697
    :cond_2a
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->notifyTrackSelectionDiscontinuity()V

    return-void
.end method

.method public final resolvePendingMessagePositions(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/common/Timeline;)V
    .registers 12

    .line 1969
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 1973
    :cond_d
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-ltz v0, :cond_48

    .line 1974
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 1975
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    iget v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v6, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    move-object v3, p1

    move-object v4, p2

    .line 1974
    invoke-static/range {v2 .. v8}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessagePosition(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/common/Timeline;IZLio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;)Z

    move-result p1

    if-nez p1, :cond_43

    .line 1983
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Lio/bidmachine/media3/exoplayer/PlayerMessage;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    .line 1984
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_43
    add-int/lit8 v0, v0, -0x1

    move-object p1, v3

    move-object p2, v4

    goto :goto_15

    .line 1988
    :cond_48
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public final scheduleNextWork(J)V
    .registers 13

    .line 1471
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->dynamicSchedulingEnabled:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_11
    const-wide/16 v0, 0x3e8

    goto :goto_16

    .line 1473
    :cond_14
    sget-wide v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->BUFFERING_MAXIMUM_INTERVAL_MS:J

    .line 1474
    :goto_16
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->dynamicSchedulingEnabled:Z

    if-eqz v2, :cond_70

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 1475
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v3, :cond_3b

    aget-object v5, v2, v4

    .line 1476
    iget-wide v6, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-wide v8, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionElapsedRealtimeUs:J

    .line 1480
    invoke-virtual {v5, v6, v7, v8, v9}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getMinDurationToProgressUs(JJ)J

    move-result-wide v5

    .line 1479
    invoke-static {v5, v6}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v5

    .line 1477
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 1486
    :cond_3b
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    goto :goto_4f

    :cond_4e
    const/4 v2, 0x0

    :goto_4f
    if-eqz v2, :cond_70

    .line 1487
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    long-to-float v3, v3

    .line 1489
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    long-to-float v4, v4

    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v5, v5, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    iget v5, v5, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 1490
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v4

    long-to-float v2, v4

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_70

    .line 1491
    sget-wide v2, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->BUFFERING_MAXIMUM_INTERVAL_MS:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1494
    :cond_70
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/4 v3, 0x2

    add-long/2addr p1, v0

    invoke-interface {v2, v3, p1, p2}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public seekTo(Lio/bidmachine/media3/common/Timeline;IJ)V
    .registers 7

    .line 398
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v1, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Lio/bidmachine/media3/common/Timeline;IJ)V

    const/4 p1, 0x3

    .line 399
    invoke-interface {v0, p1, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    .line 400
    invoke-interface {p1}, Lio/bidmachine/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final seekToCurrentPosition(Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1149
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1150
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    .line 1151
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->seekToPeriodPosition(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide v3

    .line 1156
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v5, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2b

    .line 1157
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v5, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v7, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    const/4 v10, 0x5

    move v9, p1

    .line 1158
    invoke-virtual/range {v1 .. v10}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object p1

    iput-object p1, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    :cond_2b
    return-void
.end method

.method public final seekToInternal(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1499
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 1506
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget v5, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v6, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    const/4 v4, 0x1

    move-object/from16 v3, p1

    .line 1507
    invoke-static/range {v2 .. v8}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resolveSeekPositionUs(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;)Landroid/util/Pair;

    move-result-object v0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    if-nez v0, :cond_44

    .line 1518
    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v8, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 1519
    invoke-virtual {v1, v8}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->getPlaceholderFirstMediaPeriodPositionUs(Lio/bidmachine/media3/common/Timeline;)Landroid/util/Pair;

    move-result-object v8

    .line 1520
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1521
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1523
    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v8, v8, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v8}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v9

    move-wide v5, v6

    :goto_41
    const-wide/16 v15, 0x0

    goto :goto_97

    .line 1526
    :cond_44
    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1527
    iget-object v10, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1529
    iget-wide v13, v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v10, v13, v6

    if-nez v10, :cond_56

    move-wide v13, v6

    goto :goto_57

    :cond_56
    move-wide v13, v11

    .line 1530
    :goto_57
    iget-object v10, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    iget-object v15, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v15, v15, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 1531
    invoke-virtual {v10, v15, v8, v11, v12}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;J)Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v10

    .line 1533
    invoke-virtual {v10}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v8

    if-eqz v8, :cond_8b

    .line 1534
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v6, v6, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v7, v10, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v6, v7, v8}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    .line 1536
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    iget v7, v10, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v6, v7}, Lio/bidmachine/media3/common/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v6

    iget v7, v10, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v6, v7, :cond_86

    .line 1537
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {v6}, Lio/bidmachine/media3/common/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v6

    move-wide v11, v6

    goto :goto_88

    :cond_86
    const-wide/16 v11, 0x0

    :goto_88
    move v8, v9

    move-wide v5, v13

    goto :goto_41

    :cond_8b
    const-wide/16 v15, 0x0

    .line 1542
    iget-wide v4, v3, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_95

    move v8, v9

    goto :goto_96

    :cond_95
    move v8, v2

    :goto_96
    move-wide v5, v13

    .line 1547
    :goto_97
    :try_start_97
    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v4, v4, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v4}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 1549
    iput-object v3, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    goto :goto_b9

    :catchall_a4
    move-exception v0

    move v9, v8

    move-object v2, v10

    :goto_a7
    move-wide v3, v11

    goto/16 :goto_14f

    :cond_aa
    const/4 v3, 0x4

    if-nez v0, :cond_be

    .line 1552
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v0, v9, :cond_b6

    .line 1553
    invoke-virtual {v1, v3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 1555
    :cond_b6
    invoke-virtual {v1, v2, v9, v2, v9}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    :goto_b9
    move v9, v8

    move-object v2, v10

    move-wide v3, v11

    goto/16 :goto_140

    .line 1563
    :cond_be
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v10, v0}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_c6
    .catchall {:try_start_97 .. :try_end_c6} :catchall_a4

    if-eqz v0, :cond_119

    .line 1564
    :try_start_c8
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0
    :try_end_ce
    .catchall {:try_start_c8 .. :try_end_ce} :catchall_115

    if-eqz v0, :cond_e1

    .line 1565
    :try_start_d0
    iget-boolean v4, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v4, :cond_e1

    cmp-long v4, v11, v15

    if-eqz v4, :cond_e1

    .line 1568
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->seekParameters:Lio/bidmachine/media3/exoplayer/SeekParameters;

    .line 1569
    invoke-interface {v0, v11, v12, v4}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->getAdjustedSeekPositionUs(JLio/bidmachine/media3/exoplayer/SeekParameters;)J

    move-result-wide v13
    :try_end_e0
    .catchall {:try_start_d0 .. :try_end_e0} :catchall_a4

    goto :goto_e2

    :cond_e1
    move-wide v13, v11

    .line 1572
    :goto_e2
    :try_start_e2
    invoke-static {v13, v14}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v15

    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;
    :try_end_e8
    .catchall {:try_start_e2 .. :try_end_e8} :catchall_115

    move-object v4, v10

    :try_start_e9
    iget-wide v9, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-static {v9, v10}, Lio/bidmachine/media3/common/util/Util;->usToMs(J)J

    move-result-wide v9

    cmp-long v0, v15, v9

    if-nez v0, :cond_fe

    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v9, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_100

    const/4 v10, 0x3

    if-ne v9, v10, :cond_fe

    goto :goto_100

    :cond_fe
    move v9, v8

    goto :goto_11c

    .line 1576
    :cond_100
    :goto_100
    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J
    :try_end_102
    .catchall {:try_start_e9 .. :try_end_102} :catchall_111

    const/4 v10, 0x2

    move v9, v8

    move-wide v7, v2

    move-wide/from16 v17, v2

    move-object v2, v4

    move-wide/from16 v3, v17

    .line 1597
    :goto_10a
    invoke-virtual/range {v1 .. v10}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    return-void

    :catchall_111
    move-exception v0

    move v9, v8

    :goto_113
    move-object v2, v4

    goto :goto_a7

    :catchall_115
    move-exception v0

    move v9, v8

    move-object v4, v10

    goto :goto_113

    :cond_119
    move v9, v8

    move-object v4, v10

    move-wide v13, v11

    .line 1580
    :goto_11c
    :try_start_11c
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-ne v0, v3, :cond_124

    const/4 v0, 0x1

    goto :goto_125

    :cond_124
    move v0, v2

    .line 1581
    :goto_125
    invoke-virtual {v1, v4, v13, v14, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->seekToPeriodPosition(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v13
    :try_end_129
    .catchall {:try_start_11c .. :try_end_129} :catchall_14d

    cmp-long v0, v11, v13

    if-eqz v0, :cond_12e

    const/4 v2, 0x1

    :cond_12e
    or-int/2addr v9, v2

    .line 1587
    :try_start_12f
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :try_end_135
    .catchall {:try_start_12f .. :try_end_135} :catchall_14a

    const/4 v8, 0x1

    move-object v3, v4

    move-object v4, v2

    move-wide v6, v5

    move-object v5, v0

    :try_start_13a
    invoke-virtual/range {v1 .. v8}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V
    :try_end_13d
    .catchall {:try_start_13a .. :try_end_13d} :catchall_145

    move-object v2, v3

    move-wide v5, v6

    move-wide v3, v13

    :goto_140
    const/4 v10, 0x2

    move-wide v7, v3

    move-object/from16 v1, p0

    goto :goto_10a

    :catchall_145
    move-exception v0

    move-object v2, v3

    move-wide v5, v6

    :goto_148
    move-wide v3, v13

    goto :goto_14f

    :catchall_14a
    move-exception v0

    move-object v2, v4

    goto :goto_148

    :catchall_14d
    move-exception v0

    goto :goto_113

    :goto_14f
    const/4 v10, 0x2

    move-wide v7, v3

    .line 1597
    invoke-virtual/range {v1 .. v10}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-object v2, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 1604
    throw v0
.end method

.method public final seekToPeriodPosition(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1611
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    .line 1614
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    if-eq v0, v1, :cond_15

    const/4 v0, 0x1

    :goto_f
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    move v5, v0

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_f

    .line 1611
    :goto_17
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->seekToPeriodPosition(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final seekToPeriodPosition(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1624
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1625
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updateRebufferingState(ZZ)V

    const/4 v2, 0x2

    if-nez p5, :cond_12

    .line 1626
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget p5, p5, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v3, 0x3

    if-ne p5, v3, :cond_15

    .line 1627
    :cond_12
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    .line 1631
    :cond_15
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {p5}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object p5

    move-object v3, p5

    :goto_1c
    if-eqz v3, :cond_2e

    .line 1634
    iget-object v4, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v4, v4, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v4}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    goto :goto_2e

    .line 1637
    :cond_29
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    goto :goto_1c

    :cond_2e
    :goto_2e
    if-nez p4, :cond_3e

    if-ne p5, v3, :cond_3e

    if-eqz v3, :cond_63

    .line 1645
    invoke-virtual {v3, p2, p3}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p4

    const-wide/16 v4, 0x0

    cmp-long p1, p4, v4

    if-gez p1, :cond_63

    .line 1646
    :cond_3e
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->disableRenderers()V

    if-eqz v3, :cond_63

    .line 1649
    :goto_43
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object p1

    if-eq p1, v3, :cond_51

    .line 1650
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->advancePlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    goto :goto_43

    .line 1652
    :cond_51
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {p1, v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->removeAfter(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)I

    const-wide p4, 0xe8d4a51000L

    .line 1653
    invoke-virtual {v3, p4, p5}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->setRendererOffset(J)V

    .line 1655
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enableRenderers()V

    .line 1656
    iput-boolean v1, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    .line 1661
    :cond_63
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->disableAndResetPrewarmingRenderers()V

    if-eqz v3, :cond_96

    .line 1665
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {p1, v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->removeAfter(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)I

    .line 1666
    iget-boolean p1, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez p1, :cond_7a

    .line 1667
    iget-object p1, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    .line 1668
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->copyWithStartPositionUs(J)Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    move-result-object p1

    iput-object p1, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    goto :goto_8f

    .line 1669
    :cond_7a
    iget-boolean p1, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz p1, :cond_8f

    .line 1670
    iget-object p1, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p2

    .line 1671
    iget-object p1, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    iget-wide p4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long p4, p2, p4

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    invoke-interface {p1, p4, p5, v1}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    .line 1674
    :cond_8f
    :goto_8f
    invoke-virtual {p0, p2, p3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1675
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_9e

    .line 1678
    :cond_96
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->clear()V

    .line 1679
    invoke-virtual {p0, p2, p3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1682
    :goto_9e
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1683
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-interface {p1, v2}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method public declared-synchronized sendMessage(Lio/bidmachine/media3/exoplayer/PlayerMessage;)V
    .registers 4

    monitor-enter p0

    .line 491
    :try_start_1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_21

    .line 496
    :cond_12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/media3/common/util/HandlerWrapper$Message;->sendToTarget()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 497
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    goto :goto_2e

    .line 492
    :cond_21
    :goto_21
    :try_start_21
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 493
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_1f

    .line 494
    monitor-exit p0

    return-void

    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_1f

    throw p1
.end method

.method public final sendMessageInternal(Lio/bidmachine/media3/exoplayer/PlayerMessage;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1899
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->getPositionMs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 1901
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->sendMessageToTarget(Lio/bidmachine/media3/exoplayer/PlayerMessage;)V

    return-void

    .line 1902
    :cond_11
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1904
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Lio/bidmachine/media3/exoplayer/PlayerMessage;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1906
    :cond_26
    new-instance v2, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v2, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Lio/bidmachine/media3/exoplayer/PlayerMessage;)V

    .line 1907
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v6, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    move-object v4, v3

    invoke-static/range {v2 .. v8}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resolvePendingMessagePosition(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/common/Timeline;IZLio/bidmachine/media3/common/Timeline$Window;Lio/bidmachine/media3/common/Timeline$Period;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1915
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1917
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void

    :cond_49
    const/4 v0, 0x0

    .line 1919
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    return-void
.end method

.method public final sendMessageToTarget(Lio/bidmachine/media3/exoplayer/PlayerMessage;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1925
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_1d

    .line 1926
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->deliverMessage(Lio/bidmachine/media3/exoplayer/PlayerMessage;)V

    .line 1927
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget p1, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_17

    if-ne p1, v1, :cond_16

    goto :goto_17

    :cond_16
    return-void

    .line 1930
    :cond_17
    :goto_17
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-interface {p1, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void

    .line 1933
    :cond_1d
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final sendMessageToTargetThread(Lio/bidmachine/media3/exoplayer/PlayerMessage;)V
    .registers 5

    .line 1938
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1939
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1940
    const-string v0, "TAG"

    const-string v1, "Trying to send message on a dead thread."

    invoke-static {v0, v1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1941
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V

    return-void

    .line 1944
    :cond_1a
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->clock:Lio/bidmachine/media3/common/util/Clock;

    const/4 v2, 0x0

    .line 1945
    invoke-interface {v1, v0, v2}, Lio/bidmachine/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;Lio/bidmachine/media3/exoplayer/PlayerMessage;)V

    .line 1946
    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setAllNonPrewarmingRendererStreamsFinal(J)V
    .registers 7

    .line 2857
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 2858
    invoke-virtual {v3, p1, p2}, Lio/bidmachine/media3/exoplayer/RendererHolder;->setAllNonPrewarmingRendererStreamsFinal(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public setAudioAttributes(Lio/bidmachine/media3/common/AudioAttributes;Z)V
    .registers 6

    .line 467
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    .line 468
    invoke-interface {v0, v2, p2, v1, p1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    .line 469
    invoke-interface {p1}, Lio/bidmachine/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final setAudioAttributesInternal(Lio/bidmachine/media3/common/AudioAttributes;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->trackSelector:Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;->setAudioAttributes(Lio/bidmachine/media3/common/AudioAttributes;)V

    .line 1003
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->audioFocusManager:Lio/bidmachine/media3/exoplayer/AudioFocusManager;

    if-eqz p2, :cond_a

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->setAudioAttributes(Lio/bidmachine/media3/common/AudioAttributes;)V

    .line 1004
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updatePlayWhenReadyWithAudioFocus()V

    return-void
.end method

.method public final setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 6

    .line 1712
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->foregroundMode:Z

    if-eq v0, p1, :cond_16

    .line 1713
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->foregroundMode:Z

    if-nez p1, :cond_16

    .line 1715
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_16

    aget-object v2, p1, v1

    .line 1716
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/RendererHolder;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    if-eqz p2, :cond_25

    .line 1721
    monitor-enter p0

    const/4 p1, 0x1

    .line 1722
    :try_start_1a
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1723
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1724
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    throw p1

    :cond_25
    return-void
.end method

.method public final setMediaClockPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)V
    .registers 4

    .line 1273
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 1274
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->setPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public final setMediaItemsInternal(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 934
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 935
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$200(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    .line 936
    new-instance v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    new-instance v1, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;

    .line 939
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$300(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    move-result-object v2

    .line 940
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/Collection;Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)V

    .line 941
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$200(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)I

    move-result v2

    .line 942
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$500(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Lio/bidmachine/media3/common/Timeline;IJ)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 944
    :cond_29
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    .line 946
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$300(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    move-result-object v1

    .line 947
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    move-result-object p1

    .line 945
    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->setMediaSources(Ljava/util/List;Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)Lio/bidmachine/media3/common/Timeline;

    move-result-object p1

    const/4 v0, 0x0

    .line 948
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lio/bidmachine/media3/common/Timeline;Z)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;IJLio/bidmachine/media3/exoplayer/source/ShuffleOrder;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;IJ",
            "Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    const/4 v7, 0x0

    move-object v2, p1

    move v4, p2

    move-wide v5, p3

    move-object v3, p5

    invoke-direct/range {v1 .. v7}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/List;Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;IJLio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$1;)V

    const/16 p1, 0x11

    .line 421
    invoke-interface {v0, p1, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    .line 424
    invoke-interface {p1}, Lio/bidmachine/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final setOffloadSchedulingEnabled(Z)V
    .registers 3

    .line 1105
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-ne p1, v0, :cond_5

    goto :goto_15

    .line 1108
    :cond_5
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-nez p1, :cond_15

    .line 1109
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz p1, :cond_15

    .line 1111
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    :cond_15
    :goto_15
    return-void
.end method

.method public final setPauseAtEndOfWindowInternal(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1094
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    .line 1095
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 1096
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-eq p1, v0, :cond_1f

    const/4 p1, 0x1

    .line 1099
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    const/4 p1, 0x0

    .line 1100
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    :cond_1f
    return-void
.end method

.method public setPlayWhenReady(ZII)V
    .registers 5

    shl-int/lit8 p3, p3, 0x4

    or-int/2addr p2, p3

    .line 374
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/4 v0, 0x1

    .line 375
    invoke-interface {p3, v0, p1, p2}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(III)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    .line 376
    invoke-interface {p1}, Lio/bidmachine/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final setPlayWhenReadyInternal(ZIZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1033
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, p3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 1034
    invoke-virtual {p0, p1, p2, p4}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updatePlayWhenReadyWithAudioFocus(ZII)V

    return-void
.end method

.method public setPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)V
    .registers 4

    .line 404
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final setPlaybackParametersInternal(Lio/bidmachine/media3/common/PlaybackParameters;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1702
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setMediaClockPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)V

    .line 1703
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handlePlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;Z)V

    return-void
.end method

.method public final setPreloadConfigurationInternal(Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V
    .registers 4

    .line 1142
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->preloadConfiguration:Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 1143
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->updatePreloadConfiguration(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .registers 5

    .line 386
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(III)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final setRepeatModeInternal(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1117
    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->repeatMode:I

    .line 1119
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->updateRepeatMode(Lio/bidmachine/media3/common/Timeline;I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_15

    const/4 p1, 0x1

    .line 1121
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    goto :goto_1c

    :cond_15
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1c

    .line 1123
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->disableAndResetPrewarmingRenderers()V

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    .line 1125
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void
.end method

.method public final setSeekParametersInternal(Lio/bidmachine/media3/exoplayer/SeekParameters;)V
    .registers 2

    .line 1707
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->seekParameters:Lio/bidmachine/media3/exoplayer/SeekParameters;

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .registers 5

    .line 390
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-interface {v0, v2, p1, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(III)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final setShuffleModeEnabledInternal(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1130
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 1132
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v0, v1, p1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->updateShuffleModeEnabled(Lio/bidmachine/media3/common/Timeline;Z)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_15

    const/4 p1, 0x1

    .line 1134
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    goto :goto_1c

    :cond_15
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1c

    .line 1136
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->disableAndResetPrewarmingRenderers()V

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    .line 1138
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void
.end method

.method public final setShuffleOrderInternal(Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 987
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 988
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->setShuffleOrder(Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;)Lio/bidmachine/media3/common/Timeline;

    move-result-object p1

    const/4 v0, 0x0

    .line 989
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lio/bidmachine/media3/common/Timeline;Z)V

    return-void
.end method

.method public final setState(I)V
    .registers 5

    .line 902
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v1, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v1, p1, :cond_16

    const/4 v1, 0x2

    if-eq p1, v1, :cond_10

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 904
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    .line 906
    :cond_10
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    :cond_16
    return-void
.end method

.method public declared-synchronized setVideoOutput(Ljava/lang/Object;J)Z
    .registers 8

    monitor-enter p0

    .line 534
    :try_start_1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->released:Z

    const/4 v1, 0x1

    if-nez v0, :cond_43

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_43

    .line 537
    :cond_13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 538
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p1, 0x1e

    .line 539
    invoke-interface {v2, p1, v3}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    .line 540
    invoke-interface {p1}, Lio/bidmachine/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v2

    if-eqz p1, :cond_41

    .line 542
    new-instance p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->waitUninterruptibly(Lcom/google/common/base/Supplier;J)V

    .line 543
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    monitor-exit p0

    return p1

    :catchall_3f
    move-exception p1

    goto :goto_45

    .line 545
    :cond_41
    monitor-exit p0

    return v1

    .line 535
    :cond_43
    :goto_43
    monitor-exit p0

    return v1

    :goto_45
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_3f

    throw p1
.end method

.method public final setVideoOutputInternal(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1731
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 1732
    invoke-virtual {v3, p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->setVideoOutput(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1734
    :cond_e
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget p1, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_18

    if-ne p1, v1, :cond_1d

    .line 1736
    :cond_18
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-interface {p1, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    :cond_1d
    if-eqz p2, :cond_2c

    .line 1739
    monitor-enter p0

    const/4 p1, 0x1

    .line 1740
    :try_start_21
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1741
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1742
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_29

    throw p1

    :cond_2c
    return-void
.end method

.method public setVolume(F)V
    .registers 4

    .line 473
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v1, 0x20

    invoke-interface {v0, v1, p1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final setVolumeInternal(F)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1008
    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->volume:F

    .line 1009
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->audioFocusManager:Lio/bidmachine/media3/exoplayer/AudioFocusManager;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->getVolumeMultiplier()F

    move-result v0

    mul-float/2addr p1, v0

    .line 1010
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 1011
    invoke-virtual {v3, p1}, Lio/bidmachine/media3/exoplayer/RendererHolder;->setVolume(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_17
    return-void
.end method

.method public setVolumeMultiplier(F)V
    .registers 3

    .line 611
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/16 v0, 0x22

    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final shouldAdvancePlayingPeriod()Z
    .registers 7

    .line 2827
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2830
    :cond_8
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v0, :cond_d

    return v1

    .line 2833
    :cond_d
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_16

    return v1

    .line 2837
    :cond_16
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 2838
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2839
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2c

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->allRenderersInCorrectState:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    return v0

    :cond_2c
    return v1
.end method

.method public final shouldContinueLoading()Z
    .registers 21

    move-object/from16 v0, p0

    .line 2962
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->isLoadingPossible(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    return v2

    .line 2965
    :cond_10
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    .line 2967
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNextLoadPositionUs()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v11

    .line 2969
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    if-ne v1, v3, :cond_2e

    .line 2970
    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v1, v3, v4}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v3

    :goto_2c
    move-wide v9, v3

    goto :goto_3a

    .line 2972
    :cond_2e
    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2971
    invoke-virtual {v1, v3, v4}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v3

    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v5, v5, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v3, v5

    goto :goto_2c

    .line 2974
    :goto_3a
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v4, v4, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v3, v4}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 2975
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;

    invoke-interface {v3}, Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;->getTargetLiveOffsetUs()J

    move-result-wide v3

    :goto_4e
    move-wide/from16 v16, v3

    goto :goto_57

    :cond_51
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_4e

    .line 2977
    :goto_57
    new-instance v5, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v7, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    .line 2984
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;

    move-result-object v1

    iget v13, v1, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean v14, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget-boolean v15, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->lastRebufferRealtimeMs:J

    move-wide/from16 v18, v3

    invoke-direct/range {v5 .. v19}, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;-><init>(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJFZZJJ)V

    .line 2989
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Lio/bidmachine/media3/exoplayer/LoadControl;

    invoke-interface {v1, v5}, Lio/bidmachine/media3/exoplayer/LoadControl;->shouldContinueLoading(Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;)Z

    move-result v1

    .line 2990
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    if-nez v1, :cond_ac

    .line 2991
    iget-boolean v4, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-eqz v4, :cond_ac

    const-wide/32 v6, 0x7a120

    cmp-long v4, v11, v6

    if-gez v4, :cond_ac

    iget-wide v6, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->backBufferDurationUs:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gtz v4, :cond_9d

    iget-boolean v4, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    if-eqz v4, :cond_ac

    .line 2997
    :cond_9d
    iget-object v1, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-interface {v1, v3, v4, v2}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    .line 2999
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Lio/bidmachine/media3/exoplayer/LoadControl;

    invoke-interface {v1, v5}, Lio/bidmachine/media3/exoplayer/LoadControl;->shouldContinueLoading(Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;)Z

    move-result v1

    :cond_ac
    return v1
.end method

.method public final shouldPlayWhenReady()Z
    .registers 3

    .line 3253
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    if-eqz v1, :cond_c

    iget v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final shouldTransitionToReadyState(Z)Z
    .registers 23

    move-object/from16 v0, p0

    .line 2222
    iget v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    if-nez v1, :cond_b

    .line 2224
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result v1

    return v1

    :cond_b
    const/4 v1, 0x0

    if-nez p1, :cond_f

    return v1

    .line 2229
    :cond_f
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->isLoading:Z

    const/4 v3, 0x1

    if-nez v2, :cond_17

    return v3

    .line 2235
    :cond_17
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    .line 2237
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v4, v4, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v5, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v5, v5, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v4, v5}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 2238
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;

    invoke-interface {v4}, Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;->getTargetLiveOffsetUs()J

    move-result-wide v4

    :goto_31
    move-wide/from16 v17, v4

    goto :goto_3a

    :cond_34
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_31

    .line 2240
    :goto_3a
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v4

    .line 2241
    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v5

    if-eqz v5, :cond_4e

    iget-object v5, v4, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v5, v5, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->isFinal:Z

    if-eqz v5, :cond_4e

    move v5, v3

    goto :goto_4f

    :cond_4e
    move v5, v1

    .line 2245
    :goto_4f
    iget-object v6, v4, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v6, v6, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v6}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v6

    if-eqz v6, :cond_5e

    iget-boolean v6, v4, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    if-nez v6, :cond_5e

    move v1, v3

    :cond_5e
    if-nez v5, :cond_9b

    if-eqz v1, :cond_63

    goto :goto_9b

    .line 2250
    :cond_63
    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v12

    .line 2252
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Lio/bidmachine/media3/exoplayer/LoadControl;

    new-instance v6, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;

    iget-object v7, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v8, v3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v9, v3, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2257
    invoke-virtual {v2, v3, v4}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v10

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    .line 2259
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;

    move-result-object v2

    iget v14, v2, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean v15, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget-boolean v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->lastRebufferRealtimeMs:J

    move/from16 v16, v2

    move-wide/from16 v19, v3

    invoke-direct/range {v6 .. v20}, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;-><init>(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJFZZJJ)V

    .line 2252
    invoke-interface {v1, v6}, Lio/bidmachine/media3/exoplayer/LoadControl;->shouldStartPlayback(Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;)Z

    move-result v1

    return v1

    :cond_9b
    :goto_9b
    return v3
.end method

.method public final shouldUseLivePlaybackSpeedControl(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .registers 7

    .line 1460
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_38

    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_38

    .line 1463
    :cond_e
    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 1464
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, v0}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    .line 1465
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-boolean p2, p1, Lio/bidmachine/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz p2, :cond_38

    iget-wide p1, p1, Lio/bidmachine/media3/common/Timeline$Window;->windowStartTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v2

    if-eqz p1, :cond_38

    const/4 p1, 0x1

    return p1

    :cond_38
    :goto_38
    return v1
.end method

.method public final startRenderers()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1169
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_24

    .line 1173
    :cond_9
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v0

    const/4 v1, 0x0

    .line 1174
    :goto_e
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_24

    .line 1175
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_21

    .line 1178
    :cond_1a
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/RendererHolder;->start()V

    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_24
    :goto_24
    return-void
.end method

.method public stop()V
    .registers 3

    .line 412
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->obtainMessage(I)Lio/bidmachine/media3/common/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/media3/common/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public final stopInternal(ZZ)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_b

    .line 1747
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->foregroundMode:Z

    if-nez p1, :cond_9

    goto :goto_b

    :cond_9
    move p1, v0

    goto :goto_c

    :cond_b
    :goto_b
    move p1, v1

    :goto_c
    invoke-virtual {p0, p1, v0, v1, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 1752
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 1753
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Lio/bidmachine/media3/exoplayer/LoadControl;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/LoadControl;->onStopped(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    .line 1754
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->audioFocusManager:Lio/bidmachine/media3/exoplayer/AudioFocusManager;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean p2, p2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    invoke-virtual {p1, p2, v1}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->updateAudioFocus(ZI)I

    .line 1755
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setState(I)V

    return-void
.end method

.method public final stopRenderers()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1183
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->stop()V

    .line 1184
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    .line 1185
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/RendererHolder;->stop()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method public final updateIsLoading()V
    .registers 4

    .line 3011
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    .line 3012
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-nez v1, :cond_17

    if-eqz v0, :cond_15

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    .line 3013
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 3014
    :goto_18
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->isLoading:Z

    if-eq v0, v2, :cond_24

    .line 3015
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithIsLoading(Z)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    :cond_24
    return-void
.end method

.method public final updateLoadControlTrackSelection(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;)V
    .registers 23

    move-object/from16 v0, p0

    .line 3224
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    .line 3226
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    if-ne v1, v2, :cond_1e

    .line 3227
    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v2

    :goto_1c
    move-wide v8, v2

    goto :goto_2a

    .line 3229
    :cond_1e
    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 3228
    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v2

    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-wide v4, v4, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v2, v4

    goto :goto_1c

    .line 3231
    :goto_2a
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v10

    .line 3233
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->info:Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;->id:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v2, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 3234
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;

    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;->getTargetLiveOffsetUs()J

    move-result-wide v1

    :goto_46
    move-wide v15, v1

    goto :goto_4e

    :cond_48
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_46

    .line 3236
    :goto_4e
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->loadControl:Lio/bidmachine/media3/exoplayer/LoadControl;

    new-instance v4, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;

    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playerId:Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v6, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    .line 3243
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;

    move-result-object v2

    iget v12, v2, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean v13, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget-boolean v14, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->lastRebufferRealtimeMs:J

    move-object/from16 v7, p1

    move-wide/from16 v17, v2

    invoke-direct/range {v4 .. v18}, Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;-><init>(Lio/bidmachine/media3/exoplayer/analytics/PlayerId;Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJFZZJJ)V

    move-object/from16 v2, p3

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    move-object/from16 v3, p2

    .line 3236
    invoke-interface {v1, v4, v3, v2}, Lio/bidmachine/media3/exoplayer/LoadControl;->onTracksSelected(Lio/bidmachine/media3/exoplayer/LoadControl$Parameters;Lio/bidmachine/media3/exoplayer/source/TrackGroupArray;[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;)V

    return-void
.end method

.method public final updateMediaSourcesWithMediaItemsInternal(IILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 994
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 995
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    .line 996
    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->updateMediaSourcesWithMediaItems(IILjava/util/List;)Lio/bidmachine/media3/common/Timeline;

    move-result-object p1

    const/4 p2, 0x0

    .line 997
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lio/bidmachine/media3/common/Timeline;Z)V

    return-void
.end method

.method public final updatePeriods()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2454
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaSourceList:Lio/bidmachine/media3/exoplayer/MediaSourceList;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaSourceList;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_26

    .line 2458
    :cond_13
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeUpdateLoadingPeriod()Z

    move-result v0

    .line 2459
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeUpdatePrewarmingPeriod()V

    .line 2460
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeUpdateReadingPeriod()V

    .line 2461
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeUpdateReadingRenderers()V

    .line 2462
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeUpdatePlayingPeriod()V

    .line 2463
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeUpdatePreloadPeriods(Z)V

    :cond_26
    :goto_26
    return-void
.end method

.method public final updatePlayWhenReadyWithAudioFocus()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1038
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget v2, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    iget v0, v0, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    invoke-virtual {p0, v1, v2, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updatePlayWhenReadyWithAudioFocus(ZII)V

    return-void
.end method

.method public final updatePlayWhenReadyWithAudioFocus(ZII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1050
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->audioFocusManager:Lio/bidmachine/media3/exoplayer/AudioFocusManager;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    .line 1051
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/exoplayer/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result v0

    .line 1052
    invoke-virtual {p0, p1, v0, p2, p3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updatePlayWhenReadyWithAudioFocus(ZIII)V

    return-void
.end method

.method public final updatePlayWhenReadyWithAudioFocus(ZIII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    const/4 p1, -0x1

    if-eq p2, p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    move p1, v0

    .line 1064
    :goto_9
    invoke-static {p2, p4}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updatePlayWhenReadyChangeReason(II)I

    move-result p4

    .line 1066
    invoke-static {p2, p3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackSuppressionReason(II)I

    move-result p2

    .line 1067
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean v1, p3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    if-ne v1, p1, :cond_20

    iget v1, p3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-ne v1, p2, :cond_20

    iget v1, p3, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReadyChangeReason:I

    if-ne v1, p4, :cond_20

    goto :goto_5d

    .line 1073
    :cond_20
    invoke-virtual {p3, p1, p4, p2}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->copyWithPlayWhenReady(ZII)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    .line 1075
    invoke-virtual {p0, v0, v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updateRebufferingState(ZZ)V

    .line 1076
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->notifyTrackSelectionPlayWhenReadyChanged(Z)V

    .line 1077
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result p1

    if-nez p1, :cond_40

    .line 1078
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->stopRenderers()V

    .line 1079
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1080
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    iget-wide p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->reevaluateBuffer(J)V

    return-void

    .line 1082
    :cond_40
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget p1, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_56

    .line 1083
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->start()V

    .line 1084
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->startRenderers()V

    .line 1085
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-interface {p1, p3}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void

    :cond_56
    if-ne p1, p3, :cond_5d

    .line 1087
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-interface {p1, p3}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    :cond_5d
    :goto_5d
    return-void
.end method

.method public final updatePlaybackPositions()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1194
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    if-nez v1, :cond_a

    goto/16 :goto_100

    .line 1201
    :cond_a
    iget-boolean v2, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->prepared:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_1a

    .line 1202
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->mediaPeriod:Lio/bidmachine/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v2}, Lio/bidmachine/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v5

    goto :goto_1b

    :cond_1a
    move-wide v5, v3

    :goto_1b
    cmp-long v2, v5, v3

    const/4 v10, 0x0

    if-eqz v2, :cond_51

    .line 1205
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v2

    if-nez v2, :cond_31

    .line 1208
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2, v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->removeAfter(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)I

    .line 1209
    invoke-virtual {p0, v10}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1210
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 1212
    :cond_31
    invoke-virtual {p0, v5, v6}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1215
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v1, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v1, v5, v1

    if-eqz v1, :cond_95

    .line 1216
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v1, v2

    move-wide v11, v5

    move-wide v4, v3

    move-wide v2, v11

    move-wide v6, v2

    move-object v0, p0

    .line 1217
    invoke-virtual/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    goto :goto_95

    .line 1226
    :cond_51
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    .line 1228
    invoke-virtual {v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_5e

    move v3, v4

    goto :goto_5f

    :cond_5e
    move v3, v10

    .line 1227
    :goto_5f
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->syncAndGetPositionUs(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1229
    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v2

    .line 1230
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-virtual {p0, v5, v6, v2, v3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->maybeTriggerPendingMessages(JJ)V

    .line 1231
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->hasSkippedSilenceSinceLastCall()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 1233
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfoUpdate:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-boolean v1, v1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    xor-int/lit8 v8, v1, 0x1

    .line 1234
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v4, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    const/4 v9, 0x6

    move-object v1, v4

    move-wide v4, v5

    move-wide v6, v2

    move-object v0, p0

    .line 1235
    invoke-virtual/range {v0 .. v9}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    goto :goto_95

    .line 1243
    :cond_90
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->updatePositionUs(J)V

    .line 1248
    :cond_95
    :goto_95
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getLoadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    .line 1249
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v3

    iput-wide v3, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    .line 1250
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v2

    iput-wide v2, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    .line 1253
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-boolean v2, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    if-eqz v2, :cond_100

    iget v2, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_100

    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->timeline:Lio/bidmachine/media3/common/Timeline;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1255
    invoke-virtual {p0, v2, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v1

    if-eqz v1, :cond_100

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    iget v1, v1, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_100

    .line 1257
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;

    .line 1259
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->getCurrentLiveOffsetUs()J

    move-result-wide v2

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-wide v4, v4, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    .line 1258
    invoke-interface {v1, v2, v3, v4, v5}, Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;->getAdjustedPlaybackSpeed(JJ)F

    move-result v1

    .line 1260
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;

    move-result-object v2

    iget v2, v2, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_100

    .line 1261
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/PlaybackParameters;->withSpeed(F)Lio/bidmachine/media3/common/PlaybackParameters;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setMediaClockPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)V

    .line 1262
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    .line 1264
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;

    move-result-object v2

    iget v2, v2, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    .line 1262
    invoke-virtual {p0, v1, v2, v10, v10}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handlePlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;FZZ)V

    :cond_100
    :goto_100
    return-void
.end method

.method public final updatePlaybackSpeedSettingsForNewPeriod(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2394
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Lio/bidmachine/media3/common/Timeline;Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2398
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lio/bidmachine/media3/common/PlaybackParameters;->DEFAULT:Lio/bidmachine/media3/common/PlaybackParameters;

    goto :goto_13

    :cond_f
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    .line 2399
    :goto_13
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/DefaultMediaClock;->getPlaybackParameters()Lio/bidmachine/media3/common/PlaybackParameters;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_87

    .line 2400
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setMediaClockPlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;)V

    .line 2401
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/PlaybackInfo;->playbackParameters:Lio/bidmachine/media3/common/PlaybackParameters;

    iget p1, p1, Lio/bidmachine/media3/common/PlaybackParameters;->speed:F

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3, p3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->handlePlaybackParameters(Lio/bidmachine/media3/common/PlaybackParameters;FZZ)V

    return-void

    .line 2409
    :cond_2d
    iget-object v0, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 2410
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    .line 2411
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-object v1, v1, Lio/bidmachine/media3/common/Timeline$Window;->liveConfiguration:Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;->setLiveConfiguration(Lio/bidmachine/media3/common/MediaItem$LiveConfiguration;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_60

    .line 2413
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;

    iget-object p2, p2, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2414
    invoke-virtual {p0, p1, p2, p5, p6}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->getLiveOffsetUs(Lio/bidmachine/media3/common/Timeline;Ljava/lang/Object;J)J

    move-result-wide p1

    .line 2413
    invoke-interface {p3, p1, p2}, Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;->setTargetLiveOffsetOverrideUs(J)V

    return-void

    .line 2416
    :cond_60
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->window:Lio/bidmachine/media3/common/Timeline$Window;

    iget-object p1, p1, Lio/bidmachine/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2418
    invoke-virtual {p3}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7d

    .line 2419
    iget-object p2, p4, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->period:Lio/bidmachine/media3/common/Timeline$Period;

    invoke-virtual {p3, p2, p4}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lio/bidmachine/media3/common/Timeline$Period;->windowIndex:I

    .line 2420
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->window:Lio/bidmachine/media3/common/Timeline$Window;

    invoke-virtual {p3, p2, p4}, Lio/bidmachine/media3/common/Timeline;->getWindow(ILio/bidmachine/media3/common/Timeline$Window;)Lio/bidmachine/media3/common/Timeline$Window;

    move-result-object p2

    iget-object p2, p2, Lio/bidmachine/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    goto :goto_7e

    :cond_7d
    const/4 p2, 0x0

    .line 2422
    :goto_7e
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_88

    if-eqz p7, :cond_87

    goto :goto_88

    :cond_87
    return-void

    .line 2425
    :cond_88
    :goto_88
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;

    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;->setTargetLiveOffsetOverrideUs(J)V

    return-void
.end method

.method public final updateRebufferingState(ZZ)V
    .registers 3

    .line 3524
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->isRebuffering:Z

    if-eqz p1, :cond_d

    if-nez p2, :cond_d

    .line 3526
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {p1}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    goto :goto_12

    :cond_d
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_12
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->lastRebufferRealtimeMs:J

    return-void
.end method

.method public final updateRenderersForTransition()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2667
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getReadingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    .line 2668
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    move v7, v1

    move v4, v3

    .line 2670
    :goto_e
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v6, v5

    if-ge v4, v6, :cond_47

    .line 2671
    aget-object v5, v5, v4

    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getEnabledRendererCount()I

    move-result v5

    .line 2672
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v6, v6, v4

    iget-object v8, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->mediaClock:Lio/bidmachine/media3/exoplayer/DefaultMediaClock;

    .line 2673
    invoke-virtual {v6, v2, v0, v8}, Lio/bidmachine/media3/exoplayer/RendererHolder;->replaceStreamsOrDisableRendererForTransition(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;Lio/bidmachine/media3/exoplayer/DefaultMediaClock;)I

    move-result v6

    and-int/lit8 v8, v6, 0x2

    if-eqz v8, :cond_2e

    .line 2675
    iget-boolean v8, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-eqz v8, :cond_2e

    .line 2679
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->setOffloadSchedulingEnabled(Z)V

    .line 2681
    :cond_2e
    iget v8, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v9, v9, v4

    .line 2682
    invoke-virtual {v9}, Lio/bidmachine/media3/exoplayer/RendererHolder;->getEnabledRendererCount()I

    move-result v9

    sub-int/2addr v5, v9

    sub-int/2addr v8, v5

    iput v8, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enabledRendererCount:I

    and-int/lit8 v5, v6, 0x1

    if-eqz v5, :cond_42

    move v5, v1

    goto :goto_43

    :cond_42
    move v5, v3

    :goto_43
    and-int/2addr v7, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_47
    if-eqz v7, :cond_6a

    .line 2688
    :goto_49
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    array-length v1, v1

    if-ge v3, v1, :cond_6a

    .line 2689
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->renderers:[Lio/bidmachine/media3/exoplayer/RendererHolder;

    aget-object v1, v1, v3

    .line 2690
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/RendererHolder;->isReadingFromPeriod(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v1

    if-nez v1, :cond_67

    const/4 v4, 0x0

    .line 2695
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v5

    move-object v1, p0

    .line 2691
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enableRenderer(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;IZJ)V

    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    :cond_6a
    return v7
.end method

.method public final updateTrackSelectionPlaybackSpeed(F)V
    .registers 7

    .line 2198
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->queue:Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodQueue;->getPlayingPeriod()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_21

    .line 2200
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getTrackSelectorResult()Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    if-eqz v4, :cond_19

    .line 2202
    invoke-interface {v4, p1}, Lio/bidmachine/media3/exoplayer/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2205
    :cond_1c
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;->getNext()Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object v0

    goto :goto_6

    :cond_21
    return-void
.end method

.method public final declared-synchronized waitUninterruptibly(Lcom/google/common/base/Supplier;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 883
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {v0}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    .line 886
    :goto_9
    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_24

    if-nez v3, :cond_31

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_31

    .line 888
    :try_start_1b
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {v3}, Lio/bidmachine/media3/common/util/Clock;->onThreadBlocked()V

    .line 889
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_23} :catch_26
    .catchall {:try_start_1b .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception p1

    goto :goto_3c

    :catch_26
    const/4 p2, 0x1

    move v2, p2

    .line 893
    :goto_28
    :try_start_28
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-interface {p2}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide p2

    sub-long p2, v0, p2

    goto :goto_9

    :cond_31
    if-eqz v2, :cond_3a

    .line 897
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_24

    .line 899
    :cond_3a
    monitor-exit p0

    return-void

    :goto_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_24

    throw p1
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImplInternal.AnonymousClass1 (io.bidmachine.media3.exoplayer.ExoPlayerImplInternal$1)
.class public Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$1;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->enableRenderer(Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;IZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;)V
    .registers 2

    .line 3155
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$1;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSleep()V
    .registers 3

    .line 3158
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$1;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->access$602(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;Z)Z

    return-void
.end method

.method public onWakeup()V
    .registers 3

    .line 3163
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$1;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->access$700(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$1;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->access$800(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    return-void

    .line 3164
    :cond_12
    :goto_12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$1;->this$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->access$900(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImplInternal.MediaSourceListUpdateMessage (io.bidmachine.media3.exoplayer.ExoPlayerImplInternal$MediaSourceListUpdateMessage)
.class public final Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSourceListUpdateMessage"
.end annotation


# instance fields
.field public final mediaSourceHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final positionUs:J

.field public final shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

.field public final windowIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;",
            "Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;",
            "IJ)V"
        }
    .end annotation

    .line 3865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3866
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/List;

    .line 3867
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    .line 3868
    iput p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->windowIndex:I

    .line 3869
    iput-wide p4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->positionUs:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;IJLio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$1;)V
    .registers 7

    .line 3854
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/List;Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;IJ)V

    return-void
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)I
    .registers 1

    .line 3854
    iget p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->windowIndex:I

    return p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;
    .registers 1

    .line 3854
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->mediaSourceHolders:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;
    .registers 1

    .line 3854
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

    return-object p0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)J
    .registers 3

    .line 3854
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->positionUs:J

    return-wide v0
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImplInternal.MoveMediaItemsMessage (io.bidmachine.media3.exoplayer.ExoPlayerImplInternal$MoveMediaItemsMessage)
.class public Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$MoveMediaItemsMessage;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoveMediaItemsMessage"
.end annotation


# instance fields
.field public final fromIndex:I

.field public final newFromIndex:I

.field public final shuffleOrder:Lio/bidmachine/media3/exoplayer/source/ShuffleOrder;

.field public final toIndex:I

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImplInternal.PendingMessageInfo (io.bidmachine.media3.exoplayer.ExoPlayerImplInternal$PendingMessageInfo)
.class public final Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingMessageInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final message:Lio/bidmachine/media3/exoplayer/PlayerMessage;

.field public resolvedPeriodIndex:I

.field public resolvedPeriodTimeUs:J

.field public resolvedPeriodUid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/PlayerMessage;)V
    .registers 2

    .line 3825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3826
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->message:Lio/bidmachine/media3/exoplayer/PlayerMessage;

    return-void
.end method


# virtual methods
.method public compareTo(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;)I
    .registers 7

    .line 3837
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    move v3, v2

    goto :goto_9

    :cond_8
    move v3, v1

    :goto_9
    iget-object v4, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-nez v4, :cond_f

    move v4, v2

    goto :goto_10

    :cond_f
    move v4, v1

    :goto_10
    if-eq v3, v4, :cond_17

    if-eqz v0, :cond_16

    const/4 p1, -0x1

    return p1

    :cond_16
    return v2

    :cond_17
    if-nez v0, :cond_1a

    return v1

    .line 3846
    :cond_1a
    iget v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    iget v1, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_22

    return v0

    .line 3850
    :cond_22
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/common/util/Util;->compareLong(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 3817
    check-cast p1, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->compareTo(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;)I

    move-result p1

    return p1
.end method

.method public setResolvedPosition(IJLjava/lang/Object;)V
    .registers 5

    .line 3830
    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    .line 3831
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    .line 3832
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImplInternal.PlaybackInfoUpdate (io.bidmachine.media3.exoplayer.ExoPlayerImplInternal$PlaybackInfoUpdate)
.class public final Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfoUpdate"
.end annotation


# instance fields
.field public discontinuityReason:I

.field public hasPendingChange:Z

.field public operationAcks:I

.field public playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

.field public positionDiscontinuity:Z


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V
    .registers 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z
    .registers 1

    .line 96
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    return p0
.end method


# virtual methods
.method public incrementPendingOperationAcks(I)V
    .registers 4

    .line 110
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    if-lez p1, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    .line 111
    iget v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    return-void
.end method

.method public setPlaybackInfo(Lio/bidmachine/media3/exoplayer/PlaybackInfo;)V
    .registers 4

    .line 115
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    if-eq v1, p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    .line 116
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lio/bidmachine/media3/exoplayer/PlaybackInfo;

    return-void
.end method

.method public setPositionDiscontinuity(I)V
    .registers 5

    .line 120
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_12

    if-ne p1, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 124
    :goto_e
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    return-void

    .line 127
    :cond_12
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPendingChange:Z

    .line 128
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    .line 129
    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImplInternal.PlaybackInfoUpdateListener (io.bidmachine.media3.exoplayer.ExoPlayerImplInternal$PlaybackInfoUpdateListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaybackInfoUpdateListener"
.end annotation


# virtual methods
.method public abstract onPlaybackInfoUpdate(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImplInternal.PositionUpdateForPlaylistChange (io.bidmachine.media3.exoplayer.ExoPlayerImplInternal$PositionUpdateForPlaylistChange)
.class public final Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionUpdateForPlaylistChange"
.end annotation


# instance fields
.field public final endPlayback:Z

.field public final forceBufferingState:Z

.field public final periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final periodPositionUs:J

.field public final requestedContentPositionUs:J

.field public final setTargetLiveOffset:Z


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;JJZZZ)V
    .registers 9

    .line 3807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3808
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodId:Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 3809
    iput-wide p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodPositionUs:J

    .line 3810
    iput-wide p4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->requestedContentPositionUs:J

    .line 3811
    iput-boolean p6, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->forceBufferingState:Z

    .line 3812
    iput-boolean p7, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->endPlayback:Z

    .line 3813
    iput-boolean p8, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImplInternal.SeekPosition (io.bidmachine.media3.exoplayer.ExoPlayerImplInternal$SeekPosition)
.class public final Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeekPosition"
.end annotation


# instance fields
.field public final timeline:Lio/bidmachine/media3/common/Timeline;

.field public final windowIndex:I

.field public final windowPositionUs:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/Timeline;IJ)V
    .registers 5

    .line 3786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3787
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->timeline:Lio/bidmachine/media3/common/Timeline;

    .line 3788
    iput p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    .line 3789
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/PlayerMessage;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;Lio/bidmachine/media3/exoplayer/PlayerMessage;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/media3/exoplayer/PlayerMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/media3/exoplayer/PlayerMessage;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->$r8$lambda$rVJtib-GnBDBcadIZxxXf-X8SBo(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;Lio/bidmachine/media3/exoplayer/PlayerMessage;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;IZ)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    iput p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda2;->f$1:I

    iput-boolean p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda2;->f$1:I

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda2;->f$2:Z

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->$r8$lambda$OytCSxo_kFQDm-htZc6rv1qbQBQ(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;IZ)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda3 (io.bidmachine.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/MediaPeriodHolder$Factory;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    return-void
.end method


# virtual methods
.method public final create(Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;J)Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;
    .registers 5

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda3;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    invoke-static {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->$r8$lambda$Vy5PtHeIyCJ_4qBfT4azDJ4ryrU(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;Lio/bidmachine/media3/exoplayer/MediaPeriodInfo;J)Lio/bidmachine/media3/exoplayer/MediaPeriodHolder;

    move-result-object p1

    return-object p1
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda4 (io.bidmachine.media3.exoplayer.ExoPlayerImplInternal$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda4;->f$0:Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;->$r8$lambda$BV9miMMaIe-r5CfnqzAmiFHyjNU(Lio/bidmachine/media3/exoplayer/ExoPlayerImplInternal;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
