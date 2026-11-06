###### Class io.bidmachine.media3.exoplayer.ExoPlayer (io.bidmachine.media3.exoplayer.ExoPlayer)
.class public interface abstract Lio/bidmachine/media3/exoplayer/ExoPlayer;
.super Ljava/lang/Object;
.source "ExoPlayer.java"

# interfaces
.implements Lio/bidmachine/media3/common/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;,
        Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;,
        Lio/bidmachine/media3/exoplayer/ExoPlayer$AudioOffloadListener;
    }
.end annotation


# virtual methods
.method public bridge synthetic getPlayerError()Lio/bidmachine/media3/common/PlaybackException;
    .registers 2

    .line 164
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayer;->getPlayerError()Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPlayerError()Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
.end method

.method public abstract release()V
.end method

.method public abstract setImageOutput(Lio/bidmachine/media3/exoplayer/image/ImageOutput;)V
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayer.AudioOffloadListener (io.bidmachine.media3.exoplayer.ExoPlayer$AudioOffloadListener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/ExoPlayer$AudioOffloadListener;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioOffloadListener"
.end annotation


# virtual methods
.method public onOffloadedPlayback(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSleepingForOffloadChanged(Z)V
    .registers 2

    .line 0
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayer.Builder (io.bidmachine.media3.exoplayer.ExoPlayer$Builder)
.class public final Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public analyticsCollectorFunction:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Lio/bidmachine/media3/common/util/Clock;",
            "Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;",
            ">;"
        }
    .end annotation
.end field

.field public audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

.field public bandwidthMeterSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;",
            ">;"
        }
    .end annotation
.end field

.field public buildCalled:Z

.field public clock:Lio/bidmachine/media3/common/util/Clock;

.field public final context:Landroid/content/Context;

.field public detachSurfaceTimeoutMs:J

.field public deviceVolumeControlEnabled:Z

.field public dynamicSchedulingEnabled:Z

.field public foregroundModeTimeoutMs:J

.field public handleAudioBecomingNoisy:Z

.field public handleAudioFocus:Z

.field public livePlaybackSpeedControl:Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;

.field public loadControlSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/LoadControl;",
            ">;"
        }
    .end annotation
.end field

.field public looper:Landroid/os/Looper;

.field public maxSeekToPreviousPositionMs:J

.field public mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation
.end field

.field public pauseAtEndOfMediaItems:Z

.field public playbackLooperProvider:Lio/bidmachine/media3/exoplayer/PlaybackLooperProvider;

.field public playerName:Ljava/lang/String;

.field public priority:I

.field public priorityTaskManager:Lio/bidmachine/media3/common/PriorityTaskManager;

.field public releaseTimeoutMs:J

.field public renderersFactorySupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/RenderersFactory;",
            ">;"
        }
    .end annotation
.end field

.field public seekBackIncrementMs:J

.field public seekForwardIncrementMs:J

.field public seekParameters:Lio/bidmachine/media3/exoplayer/SeekParameters;

.field public skipSilenceEnabled:Z

.field public suitableOutputChecker:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;

.field public suppressPlaybackOnUnsuitableOutput:Z

.field public trackSelectorSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;",
            ">;"
        }
    .end annotation
.end field

.field public useLazyPreparation:Z

.field public usePlatformDiagnostics:Z

.field public videoChangeFrameRateStrategy:I

.field public videoScalingMode:I

.field public wakeMode:I


# direct methods
.method public static synthetic $r8$lambda$TESBDVbU6dlwA9awNTOfDngeZIk(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/RenderersFactory;
    .registers 2

    .line 308
    new-instance v0, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$cdJjI1bk3lOH_6InCHAeAnmBXv8(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;
    .registers 3

    .line 309
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;

    new-instance v1, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Lio/bidmachine/media3/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lio/bidmachine/media3/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$yYT6Z1wzML7l7-NrPagh-RpFOEM(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;
    .registers 2

    .line 424
    new-instance v0, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$z0XensGtAdq8PkXydIDR1rlXJK0(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;
    .registers 1

    .line 426
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;->getSingletonInstance(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/upstream/DefaultBandwidthMeter;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 306
    new-instance v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    new-instance v1, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/RenderersFactory;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;",
            ">;)V"
        }
    .end annotation

    .line 420
    new-instance v4, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v4, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    new-instance v5, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda3;-><init>()V

    new-instance v6, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda4;

    invoke-direct {v6, p1}, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    new-instance v7, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda5;

    invoke-direct {v7}, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda5;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/RenderersFactory;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/LoadControl;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;",
            ">;",
            "Lcom/google/common/base/Function<",
            "Lio/bidmachine/media3/common/util/Clock;",
            "Lio/bidmachine/media3/exoplayer/analytics/AnalyticsCollector;",
            ">;)V"
        }
    .end annotation

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    .line 439
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    .line 440
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    .line 441
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    .line 442
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    .line 443
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    .line 444
    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    .line 445
    invoke-static {}, Lio/bidmachine/media3/common/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    .line 446
    sget-object p1, Lio/bidmachine/media3/common/AudioAttributes;->DEFAULT:Lio/bidmachine/media3/common/AudioAttributes;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    const/4 p1, 0x0

    .line 447
    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->wakeMode:I

    const/4 p2, 0x1

    .line 448
    iput p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->videoScalingMode:I

    .line 449
    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    .line 450
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->useLazyPreparation:Z

    .line 451
    sget-object p1, Lio/bidmachine/media3/exoplayer/SeekParameters;->DEFAULT:Lio/bidmachine/media3/exoplayer/SeekParameters;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->seekParameters:Lio/bidmachine/media3/exoplayer/SeekParameters;

    const-wide/16 p3, 0x1388

    .line 452
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->seekBackIncrementMs:J

    const-wide/16 p3, 0x3a98

    .line 453
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->seekForwardIncrementMs:J

    const-wide/16 p3, 0xbb8

    .line 454
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->maxSeekToPreviousPositionMs:J

    .line 455
    new-instance p1, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;-><init>()V

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->build()Lio/bidmachine/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->livePlaybackSpeedControl:Lio/bidmachine/media3/exoplayer/LivePlaybackSpeedControl;

    .line 456
    sget-object p1, Lio/bidmachine/media3/common/util/Clock;->DEFAULT:Lio/bidmachine/media3/common/util/Clock;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->clock:Lio/bidmachine/media3/common/util/Clock;

    const-wide/16 p3, 0x1f4

    .line 457
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->releaseTimeoutMs:J

    const-wide/16 p3, 0x7d0

    .line 458
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    .line 459
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    .line 460
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->playerName:Ljava/lang/String;

    const/16 p1, -0x3e8

    .line 461
    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->priority:I

    .line 462
    new-instance p1, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/DefaultSuitableOutputChecker;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->suitableOutputChecker:Lio/bidmachine/media3/exoplayer/SuitableOutputChecker;

    return-void
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/exoplayer/ExoPlayer;
    .registers 3

    .line 1092
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 1093
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    .line 1094
    new-instance v0, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayerImpl;-><init>(Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;Lio/bidmachine/media3/common/Player;)V

    return-object v0
.end method

.method public setAudioAttributes(Lio/bidmachine/media3/common/AudioAttributes;Z)Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;
    .registers 4

    .line 694
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 695
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/AudioAttributes;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->audioAttributes:Lio/bidmachine/media3/common/AudioAttributes;

    .line 696
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->handleAudioFocus:Z

    return-object p0
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->$r8$lambda$TESBDVbU6dlwA9awNTOfDngeZIk(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/RenderersFactory;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->$r8$lambda$cdJjI1bk3lOH_6InCHAeAnmBXv8(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->$r8$lambda$yYT6Z1wzML7l7-NrPagh-RpFOEM(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/trackselection/TrackSelector;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda3 (io.bidmachine.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda3)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    new-instance v0, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/DefaultLoadControl;-><init>()V

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda4 (io.bidmachine.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda4)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder;->$r8$lambda$z0XensGtAdq8PkXydIDR1rlXJK0(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/upstream/BandwidthMeter;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda5 (io.bidmachine.media3.exoplayer.ExoPlayer$Builder$$ExternalSyntheticLambda5)
.class public final synthetic Lio/bidmachine/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    new-instance v0, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    check-cast p1, Lio/bidmachine/media3/common/util/Clock;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/analytics/DefaultAnalyticsCollector;-><init>(Lio/bidmachine/media3/common/util/Clock;)V

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.ExoPlayer.PreloadConfiguration (io.bidmachine.media3.exoplayer.ExoPlayer$PreloadConfiguration)
.class public Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreloadConfiguration"
.end annotation


# static fields
.field public static final DEFAULT:Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;


# instance fields
.field public final targetPreloadDurationUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 191
    new-instance v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;-><init>(J)V

    sput-object v0, Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;->DEFAULT:Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$PreloadConfiguration;->targetPreloadDurationUs:J

    return-void
.end method
