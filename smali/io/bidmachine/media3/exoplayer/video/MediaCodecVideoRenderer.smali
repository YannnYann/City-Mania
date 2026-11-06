###### Class io.bidmachine.media3.exoplayer.video.MediaCodecVideoRenderer (io.bidmachine.media3.exoplayer.video.MediaCodecVideoRenderer)
.class public Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;
.super Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;,
        Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;,
        Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;,
        Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation


# static fields
.field public static final STANDARD_LONG_EDGE_VIDEO_PX:[I

.field public static deviceNeedsSetOutputSurfaceWorkaround:Z

.field public static evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z


# instance fields
.field public final av1SampleDependencyParser:Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;

.field public buffersInCodecCount:I

.field public changeFrameRateStrategy:I

.field public codecHandlesHdr10PlusOutOfBandMetadata:Z

.field public codecMaxValues:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

.field public codecNeedsSetOutputSurfaceWorkaround:Z

.field public consecutiveDroppedFrameCount:I

.field public consecutiveDroppedInputBufferCount:I

.field public final context:Landroid/content/Context;

.field public decodedVideoSize:Lio/bidmachine/media3/common/VideoSize;

.field public final deviceNeedsNoPostProcessWorkaround:Z

.field public displaySurface:Landroid/view/Surface;

.field public final droppedDecoderInputBufferTimestamps:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public droppedFrameAccumulationStartTimeMs:J

.field public droppedFrames:I

.field public final eventDispatcher:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public frameMetadataListener:Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;

.field public hasSetVideoSink:Z

.field public haveReportedFirstFrameRenderedForCurrentSurface:Z

.field public lastFrameReleaseTimeNs:J

.field public final maxDroppedFramesToNotify:I

.field public final minEarlyUsToDropDecoderInput:J

.field public outputResolution:Lio/bidmachine/media3/common/util/Size;

.field public final ownsVideoSink:Z

.field public pendingVideoSinkInputStreamChange:Z

.field public periodDurationUs:J

.field public placeholderSurface:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

.field public rendererPriority:I

.field public reportedVideoSize:Lio/bidmachine/media3/common/VideoSize;

.field public scalingMode:I

.field public shouldDropDecoderInputBuffers:Z

.field public startPositionUs:J

.field public totalVideoFrameProcessingOffsetUs:J

.field public tunneling:Z

.field public tunnelingAudioSessionId:I

.field public tunnelingOnFrameRenderedListener:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

.field public videoEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public videoFrameProcessingOffsetCount:I

.field public final videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

.field public final videoFrameReleaseInfo:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

.field public videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    .line 125
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    return-void

    :array_a
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V
    .registers 9

    .line 575
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->access$000(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    move-result-object v2

    .line 576
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->access$100(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    move-result-object v3

    .line 577
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->access$200(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Z

    move-result v4

    .line 578
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->access$300(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)F

    move-result v5

    const/4 v1, 0x2

    move-object v0, p0

    .line 573
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;-><init>(ILio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;ZF)V

    .line 579
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->access$400(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 580
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->access$500(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)I

    move-result v2

    iput v2, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    .line 581
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->access$600(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    move-result-object v2

    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 582
    new-instance v2, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->access$700(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->access$800(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;)V

    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 583
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_42

    move v2, v3

    goto :goto_43

    :cond_42
    move v2, v4

    :goto_43
    iput-boolean v2, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->ownsVideoSink:Z

    .line 586
    new-instance v2, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 588
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->access$900(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)J

    move-result-wide v5

    invoke-direct {v2, v1, p0, v5, v6}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;-><init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;J)V

    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 589
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;-><init>()V

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseInfo:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    .line 590
    invoke-static {}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround()Z

    move-result v1

    iput-boolean v1, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    .line 591
    sget-object v1, Lio/bidmachine/media3/common/util/Size;->UNKNOWN:Lio/bidmachine/media3/common/util/Size;

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->outputResolution:Lio/bidmachine/media3/common/util/Size;

    .line 592
    iput v3, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 593
    iput v4, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->changeFrameRateStrategy:I

    .line 594
    sget-object v1, Lio/bidmachine/media3/common/VideoSize;->UNKNOWN:Lio/bidmachine/media3/common/VideoSize;

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Lio/bidmachine/media3/common/VideoSize;

    .line 595
    iput v4, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    const/4 v1, 0x0

    .line 596
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Lio/bidmachine/media3/common/VideoSize;

    const/16 v2, -0x3e8

    .line 597
    iput v2, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->rendererPriority:I

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 598
    iput-wide v2, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->startPositionUs:J

    .line 599
    iput-wide v2, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->periodDurationUs:J

    .line 601
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->access$1000(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Z

    move-result v4

    if-eqz v4, :cond_86

    new-instance v1, Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;-><init>()V

    :cond_86
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->av1SampleDependencyParser:Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;

    .line 602
    new-instance v1, Ljava/util/PriorityQueue;

    invoke-direct {v1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedDecoderInputBufferTimestamps:Ljava/util/PriorityQueue;

    .line 604
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->access$1100(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_9c

    .line 605
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->access$1100(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)J

    move-result-wide v1

    neg-long v2, v1

    .line 606
    :cond_9c
    iput-wide v2, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->minEarlyUsToDropDecoderInput:J

    return-void
.end method

.method public static synthetic access$1200(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;)Landroid/view/Surface;
    .registers 1

    .line 115
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    return-object p0
.end method

.method public static synthetic access$1300(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;)V
    .registers 1

    .line 115
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->notifyRenderedFirstFrame()V

    return-void
.end method

.method public static synthetic access$1600(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V
    .registers 7

    .line 115
    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBuffer(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V

    return-void
.end method

.method public static synthetic access$1700(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .registers 1

    .line 115
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodec()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1800(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;)V
    .registers 1

    .line 115
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->onProcessedTunneledEndOfStream()V

    return-void
.end method

.method public static synthetic access$1900(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)V
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->setPendingPlaybackException(Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)V

    return-void
.end method

.method public static deviceNeedsNoPostProcessWorkaround()Z
    .registers 2

    .line 2427
    const-string v0, "NVIDIA"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static evaluateDeviceNeedsSetOutputSurfaceWorkaround()Z
    .registers 16

    const/16 v0, 0x1a

    const/16 v1, 0x8

    const/16 v2, 0x1b

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 2498
    sget v11, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v12, 0x1c

    const/4 v13, 0x1

    if-gt v11, v12, :cond_80

    .line 2505
    sget-object v14, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_8ac

    :goto_21
    move v14, v9

    goto/16 :goto_7b

    :sswitch_24
    const-string v15, "machuca"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2d

    goto :goto_21

    :cond_2d
    move v14, v3

    goto :goto_7b

    :sswitch_2f
    const-string v15, "once"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_38

    goto :goto_21

    :cond_38
    move v14, v4

    goto :goto_7b

    :sswitch_3a
    const-string v15, "magnolia"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_43

    goto :goto_21

    :cond_43
    move v14, v5

    goto :goto_7b

    :sswitch_45
    const-string v15, "aquaman"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4e

    goto :goto_21

    :cond_4e
    move v14, v6

    goto :goto_7b

    :sswitch_50
    const-string v15, "oneday"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_59

    goto :goto_21

    :cond_59
    move v14, v7

    goto :goto_7b

    :sswitch_5b
    const-string v15, "dangalUHD"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_64

    goto :goto_21

    :cond_64
    move v14, v8

    goto :goto_7b

    :sswitch_66
    const-string v15, "dangalFHD"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6f

    goto :goto_21

    :cond_6f
    move v14, v13

    goto :goto_7b

    :sswitch_71
    const-string v15, "dangal"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7a

    goto :goto_21

    :cond_7a
    move v14, v10

    :goto_7b
    packed-switch v14, :pswitch_data_8ce

    goto :goto_80

    :pswitch_7f
    return v13

    :cond_80
    :goto_80
    if-gt v11, v2, :cond_8d

    .line 2519
    const-string v14, "HWEML"

    sget-object v15, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8d

    return v13

    .line 2524
    :cond_8d
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_8e2

    :goto_99
    move v15, v9

    goto/16 :goto_ff

    :sswitch_9c
    const-string v15, "AFTEUFF014"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a5

    goto :goto_99

    :cond_a5
    move v15, v1

    goto/16 :goto_ff

    :sswitch_a8
    const-string v15, "AFTSO001"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b1

    goto :goto_99

    :cond_b1
    move v15, v3

    goto :goto_ff

    :sswitch_b3
    const-string v15, "AFTEU014"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_bc

    goto :goto_99

    :cond_bc
    move v15, v4

    goto :goto_ff

    :sswitch_be
    const-string v15, "AFTEU011"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c7

    goto :goto_99

    :cond_c7
    move v15, v5

    goto :goto_ff

    :sswitch_c9
    const-string v15, "AFTR"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d2

    goto :goto_99

    :cond_d2
    move v15, v6

    goto :goto_ff

    :sswitch_d4
    const-string v15, "AFTN"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_dd

    goto :goto_99

    :cond_dd
    move v15, v7

    goto :goto_ff

    :sswitch_df
    const-string v15, "AFTA"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e8

    goto :goto_99

    :cond_e8
    move v15, v8

    goto :goto_ff

    :sswitch_ea
    const-string v15, "AFTKMST12"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f3

    goto :goto_99

    :cond_f3
    move v15, v13

    goto :goto_ff

    :sswitch_f5
    const-string v15, "AFTJMST12"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_fe

    goto :goto_99

    :cond_fe
    move v15, v10

    :goto_ff
    packed-switch v15, :pswitch_data_908

    if-gt v11, v0, :cond_8aa

    .line 2559
    sget-object v11, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_91e

    :goto_110
    move v0, v9

    goto/16 :goto_89a

    :sswitch_113
    const-string v0, "HWWAS-H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    goto :goto_110

    :cond_11c
    const/16 v0, 0x8b

    goto/16 :goto_89a

    :sswitch_120
    const-string v0, "HWVNS-H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_129

    goto :goto_110

    :cond_129
    const/16 v0, 0x8a

    goto/16 :goto_89a

    :sswitch_12d
    const-string v0, "ELUGA_Prim"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_136

    goto :goto_110

    :cond_136
    const/16 v0, 0x89

    goto/16 :goto_89a

    :sswitch_13a
    const-string v0, "ELUGA_Note"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_143

    goto :goto_110

    :cond_143
    const/16 v0, 0x88

    goto/16 :goto_89a

    :sswitch_147
    const-string v0, "ASUS_X00AD_2"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_150

    goto :goto_110

    :cond_150
    const/16 v0, 0x87

    goto/16 :goto_89a

    :sswitch_154
    const-string v0, "HWCAM-H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15d

    goto :goto_110

    :cond_15d
    const/16 v0, 0x86

    goto/16 :goto_89a

    :sswitch_161
    const-string v0, "HWBLN-H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16a

    goto :goto_110

    :cond_16a
    const/16 v0, 0x85

    goto/16 :goto_89a

    :sswitch_16e
    const-string v0, "DM-01K"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_177

    goto :goto_110

    :cond_177
    const/16 v0, 0x84

    goto/16 :goto_89a

    :sswitch_17b
    const-string v0, "BRAVIA_ATV3_4K"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_184

    goto :goto_110

    :cond_184
    const/16 v0, 0x83

    goto/16 :goto_89a

    :sswitch_188
    const-string v0, "Infinix-X572"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_192

    goto/16 :goto_110

    :cond_192
    const/16 v0, 0x82

    goto/16 :goto_89a

    :sswitch_196
    const-string v0, "PB2-670M"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a0

    goto/16 :goto_110

    :cond_1a0
    const/16 v0, 0x81

    goto/16 :goto_89a

    :sswitch_1a4
    const-string v0, "santoni"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ae

    goto/16 :goto_110

    :cond_1ae
    const/16 v0, 0x80

    goto/16 :goto_89a

    :sswitch_1b2
    const-string v0, "iball8735_9806"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bc

    goto/16 :goto_110

    :cond_1bc
    const/16 v0, 0x7f

    goto/16 :goto_89a

    :sswitch_1c0
    const-string v0, "CPH1715"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ca

    goto/16 :goto_110

    :cond_1ca
    const/16 v0, 0x7e

    goto/16 :goto_89a

    :sswitch_1ce
    const-string v0, "CPH1609"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d8

    goto/16 :goto_110

    :cond_1d8
    const/16 v0, 0x7d

    goto/16 :goto_89a

    :sswitch_1dc
    const-string v0, "woods_f"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e6

    goto/16 :goto_110

    :cond_1e6
    const/16 v0, 0x7c

    goto/16 :goto_89a

    :sswitch_1ea
    const-string v0, "htc_e56ml_dtul"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f4

    goto/16 :goto_110

    :cond_1f4
    const/16 v0, 0x7b

    goto/16 :goto_89a

    :sswitch_1f8
    const-string v0, "EverStar_S"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_202

    goto/16 :goto_110

    :cond_202
    const/16 v0, 0x7a

    goto/16 :goto_89a

    :sswitch_206
    const-string v0, "hwALE-H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_210

    goto/16 :goto_110

    :cond_210
    const/16 v0, 0x79

    goto/16 :goto_89a

    :sswitch_214
    const-string v0, "itel_S41"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21e

    goto/16 :goto_110

    :cond_21e
    const/16 v0, 0x78

    goto/16 :goto_89a

    :sswitch_222
    const-string v0, "LS-5017"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22c

    goto/16 :goto_110

    :cond_22c
    const/16 v0, 0x77

    goto/16 :goto_89a

    :sswitch_230
    const-string v0, "panell_d"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23a

    goto/16 :goto_110

    :cond_23a
    const/16 v0, 0x76

    goto/16 :goto_89a

    :sswitch_23e
    const-string v0, "j2xlteins"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_248

    goto/16 :goto_110

    :cond_248
    const/16 v0, 0x75

    goto/16 :goto_89a

    :sswitch_24c
    const-string v0, "A7000plus"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_256

    goto/16 :goto_110

    :cond_256
    const/16 v0, 0x74

    goto/16 :goto_89a

    :sswitch_25a
    const-string v0, "manning"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_264

    goto/16 :goto_110

    :cond_264
    const/16 v0, 0x73

    goto/16 :goto_89a

    :sswitch_268
    const-string v0, "GIONEE_WBL7519"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_272

    goto/16 :goto_110

    :cond_272
    const/16 v0, 0x72

    goto/16 :goto_89a

    :sswitch_276
    const-string v0, "GIONEE_WBL7365"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_280

    goto/16 :goto_110

    :cond_280
    const/16 v0, 0x71

    goto/16 :goto_89a

    :sswitch_284
    const-string v0, "GIONEE_WBL5708"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28e

    goto/16 :goto_110

    :cond_28e
    const/16 v0, 0x70

    goto/16 :goto_89a

    :sswitch_292
    const-string v0, "QM16XE_U"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29c

    goto/16 :goto_110

    :cond_29c
    const/16 v0, 0x6f

    goto/16 :goto_89a

    :sswitch_2a0
    const-string v0, "Pixi5-10_4G"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2aa

    goto/16 :goto_110

    :cond_2aa
    const/16 v0, 0x6e

    goto/16 :goto_89a

    :sswitch_2ae
    const-string v0, "TB3-850M"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b8

    goto/16 :goto_110

    :cond_2b8
    const/16 v0, 0x6d

    goto/16 :goto_89a

    :sswitch_2bc
    const-string v0, "TB3-850F"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c6

    goto/16 :goto_110

    :cond_2c6
    const/16 v0, 0x6c

    goto/16 :goto_89a

    :sswitch_2ca
    const-string v0, "TB3-730X"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d4

    goto/16 :goto_110

    :cond_2d4
    const/16 v0, 0x6b

    goto/16 :goto_89a

    :sswitch_2d8
    const-string v0, "TB3-730F"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e2

    goto/16 :goto_110

    :cond_2e2
    const/16 v0, 0x6a

    goto/16 :goto_89a

    :sswitch_2e6
    const-string v0, "A7020a48"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f0

    goto/16 :goto_110

    :cond_2f0
    const/16 v0, 0x69

    goto/16 :goto_89a

    :sswitch_2f4
    const-string v0, "A7010a48"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2fe

    goto/16 :goto_110

    :cond_2fe
    const/16 v0, 0x68

    goto/16 :goto_89a

    :sswitch_302
    const-string v0, "griffin"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30c

    goto/16 :goto_110

    :cond_30c
    const/16 v0, 0x67

    goto/16 :goto_89a

    :sswitch_310
    const-string v0, "marino_f"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31a

    goto/16 :goto_110

    :cond_31a
    const/16 v0, 0x66

    goto/16 :goto_89a

    :sswitch_31e
    const-string v0, "CPY83_I00"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_328

    goto/16 :goto_110

    :cond_328
    const/16 v0, 0x65

    goto/16 :goto_89a

    :sswitch_32c
    const-string v0, "A2016a40"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_336

    goto/16 :goto_110

    :cond_336
    const/16 v0, 0x64

    goto/16 :goto_89a

    :sswitch_33a
    const-string v0, "le_x6"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_344

    goto/16 :goto_110

    :cond_344
    const/16 v0, 0x63

    goto/16 :goto_89a

    :sswitch_348
    const-string v0, "l5460"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_352

    goto/16 :goto_110

    :cond_352
    const/16 v0, 0x62

    goto/16 :goto_89a

    :sswitch_356
    const-string v0, "i9031"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_360

    goto/16 :goto_110

    :cond_360
    const/16 v0, 0x61

    goto/16 :goto_89a

    :sswitch_364
    const-string v0, "X3_HK"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36e

    goto/16 :goto_110

    :cond_36e
    const/16 v0, 0x60

    goto/16 :goto_89a

    :sswitch_372
    const-string v0, "V23GB"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37c

    goto/16 :goto_110

    :cond_37c
    const/16 v0, 0x5f

    goto/16 :goto_89a

    :sswitch_380
    const-string v0, "Q4310"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38a

    goto/16 :goto_110

    :cond_38a
    const/16 v0, 0x5e

    goto/16 :goto_89a

    :sswitch_38e
    const-string v0, "Q4260"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_398

    goto/16 :goto_110

    :cond_398
    const/16 v0, 0x5d

    goto/16 :goto_89a

    :sswitch_39c
    const-string v0, "PRO7S"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a6

    goto/16 :goto_110

    :cond_3a6
    const/16 v0, 0x5c

    goto/16 :goto_89a

    :sswitch_3aa
    const-string v0, "F3311"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b4

    goto/16 :goto_110

    :cond_3b4
    const/16 v0, 0x5b

    goto/16 :goto_89a

    :sswitch_3b8
    const-string v0, "F3215"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c2

    goto/16 :goto_110

    :cond_3c2
    const/16 v0, 0x5a

    goto/16 :goto_89a

    :sswitch_3c6
    const-string v0, "F3213"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d0

    goto/16 :goto_110

    :cond_3d0
    const/16 v0, 0x59

    goto/16 :goto_89a

    :sswitch_3d4
    const-string v0, "F3211"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3de

    goto/16 :goto_110

    :cond_3de
    const/16 v0, 0x58

    goto/16 :goto_89a

    :sswitch_3e2
    const-string v0, "F3116"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3ec

    goto/16 :goto_110

    :cond_3ec
    const/16 v0, 0x57

    goto/16 :goto_89a

    :sswitch_3f0
    const-string v0, "F3113"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3fa

    goto/16 :goto_110

    :cond_3fa
    const/16 v0, 0x56

    goto/16 :goto_89a

    :sswitch_3fe
    const-string v0, "F3111"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_408

    goto/16 :goto_110

    :cond_408
    const/16 v0, 0x55

    goto/16 :goto_89a

    :sswitch_40c
    const-string v0, "E5643"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_416

    goto/16 :goto_110

    :cond_416
    const/16 v0, 0x54

    goto/16 :goto_89a

    :sswitch_41a
    const-string v0, "A1601"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_424

    goto/16 :goto_110

    :cond_424
    const/16 v0, 0x53

    goto/16 :goto_89a

    :sswitch_428
    const-string v0, "Aura_Note_2"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_432

    goto/16 :goto_110

    :cond_432
    const/16 v0, 0x52

    goto/16 :goto_89a

    :sswitch_436
    const-string v0, "602LV"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_440

    goto/16 :goto_110

    :cond_440
    const/16 v0, 0x51

    goto/16 :goto_89a

    :sswitch_444
    const-string v0, "601LV"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44e

    goto/16 :goto_110

    :cond_44e
    const/16 v0, 0x50

    goto/16 :goto_89a

    :sswitch_452
    const-string v0, "MEIZU_M5"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45c

    goto/16 :goto_110

    :cond_45c
    const/16 v0, 0x4f

    goto/16 :goto_89a

    :sswitch_460
    const-string v0, "p212"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46a

    goto/16 :goto_110

    :cond_46a
    const/16 v0, 0x4e

    goto/16 :goto_89a

    :sswitch_46e
    const-string v0, "mido"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_478

    goto/16 :goto_110

    :cond_478
    const/16 v0, 0x4d

    goto/16 :goto_89a

    :sswitch_47c
    const-string v0, "kate"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_486

    goto/16 :goto_110

    :cond_486
    const/16 v0, 0x4c

    goto/16 :goto_89a

    :sswitch_48a
    const-string v0, "fugu"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_494

    goto/16 :goto_110

    :cond_494
    const/16 v0, 0x4b

    goto/16 :goto_89a

    :sswitch_498
    const-string v0, "XE2X"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a2

    goto/16 :goto_110

    :cond_4a2
    const/16 v0, 0x4a

    goto/16 :goto_89a

    :sswitch_4a6
    const-string v0, "Q427"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b0

    goto/16 :goto_110

    :cond_4b0
    const/16 v0, 0x49

    goto/16 :goto_89a

    :sswitch_4b4
    const-string v0, "Q350"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4be

    goto/16 :goto_110

    :cond_4be
    const/16 v0, 0x48

    goto/16 :goto_89a

    :sswitch_4c2
    const-string v0, "P681"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4cc

    goto/16 :goto_110

    :cond_4cc
    const/16 v0, 0x47

    goto/16 :goto_89a

    :sswitch_4d0
    const-string v0, "F04J"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4da

    goto/16 :goto_110

    :cond_4da
    const/16 v0, 0x46

    goto/16 :goto_89a

    :sswitch_4de
    const-string v0, "F04H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e8

    goto/16 :goto_110

    :cond_4e8
    const/16 v0, 0x45

    goto/16 :goto_89a

    :sswitch_4ec
    const-string v0, "F03H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f6

    goto/16 :goto_110

    :cond_4f6
    const/16 v0, 0x44

    goto/16 :goto_89a

    :sswitch_4fa
    const-string v0, "F02H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_504

    goto/16 :goto_110

    :cond_504
    const/16 v0, 0x43

    goto/16 :goto_89a

    :sswitch_508
    const-string v0, "F01J"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_512

    goto/16 :goto_110

    :cond_512
    const/16 v0, 0x42

    goto/16 :goto_89a

    :sswitch_516
    const-string v0, "F01H"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_520

    goto/16 :goto_110

    :cond_520
    const/16 v0, 0x41

    goto/16 :goto_89a

    :sswitch_524
    const-string v0, "1714"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52e

    goto/16 :goto_110

    :cond_52e
    const/16 v0, 0x40

    goto/16 :goto_89a

    :sswitch_532
    const-string v0, "1713"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53c

    goto/16 :goto_110

    :cond_53c
    const/16 v0, 0x3f

    goto/16 :goto_89a

    :sswitch_540
    const-string v0, "1601"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54a

    goto/16 :goto_110

    :cond_54a
    const/16 v0, 0x3e

    goto/16 :goto_89a

    :sswitch_54e
    const-string v0, "flo"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_558

    goto/16 :goto_110

    :cond_558
    const/16 v0, 0x3d

    goto/16 :goto_89a

    :sswitch_55c
    const-string v0, "deb"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_566

    goto/16 :goto_110

    :cond_566
    const/16 v0, 0x3c

    goto/16 :goto_89a

    :sswitch_56a
    const-string v0, "cv3"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_574

    goto/16 :goto_110

    :cond_574
    const/16 v0, 0x3b

    goto/16 :goto_89a

    :sswitch_578
    const-string v0, "cv1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_582

    goto/16 :goto_110

    :cond_582
    const/16 v0, 0x3a

    goto/16 :goto_89a

    :sswitch_586
    const-string v0, "Z80"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_590

    goto/16 :goto_110

    :cond_590
    const/16 v0, 0x39

    goto/16 :goto_89a

    :sswitch_594
    const-string v0, "QX1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59e

    goto/16 :goto_110

    :cond_59e
    const/16 v0, 0x38

    goto/16 :goto_89a

    :sswitch_5a2
    const-string v0, "PLE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ac

    goto/16 :goto_110

    :cond_5ac
    const/16 v0, 0x37

    goto/16 :goto_89a

    :sswitch_5b0
    const-string v0, "P85"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ba

    goto/16 :goto_110

    :cond_5ba
    const/16 v0, 0x36

    goto/16 :goto_89a

    :sswitch_5be
    const-string v0, "MX6"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c8

    goto/16 :goto_110

    :cond_5c8
    const/16 v0, 0x35

    goto/16 :goto_89a

    :sswitch_5cc
    const-string v0, "M5c"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d6

    goto/16 :goto_110

    :cond_5d6
    const/16 v0, 0x34

    goto/16 :goto_89a

    :sswitch_5da
    const-string v0, "M04"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e4

    goto/16 :goto_110

    :cond_5e4
    const/16 v0, 0x33

    goto/16 :goto_89a

    :sswitch_5e8
    const-string v0, "JGZ"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f2

    goto/16 :goto_110

    :cond_5f2
    const/16 v0, 0x32

    goto/16 :goto_89a

    :sswitch_5f6
    const-string v0, "mh"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_600

    goto/16 :goto_110

    :cond_600
    const/16 v0, 0x31

    goto/16 :goto_89a

    :sswitch_604
    const-string v0, "b5"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60e

    goto/16 :goto_110

    :cond_60e
    const/16 v0, 0x30

    goto/16 :goto_89a

    :sswitch_612
    const-string v0, "V5"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61c

    goto/16 :goto_110

    :cond_61c
    const/16 v0, 0x2f

    goto/16 :goto_89a

    :sswitch_620
    const-string v0, "V1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62a

    goto/16 :goto_110

    :cond_62a
    const/16 v0, 0x2e

    goto/16 :goto_89a

    :sswitch_62e
    const-string v0, "Q5"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_638

    goto/16 :goto_110

    :cond_638
    const/16 v0, 0x2d

    goto/16 :goto_89a

    :sswitch_63c
    const-string v0, "C1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_646

    goto/16 :goto_110

    :cond_646
    const/16 v0, 0x2c

    goto/16 :goto_89a

    :sswitch_64a
    const-string v0, "woods_fn"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_654

    goto/16 :goto_110

    :cond_654
    const/16 v0, 0x2b

    goto/16 :goto_89a

    :sswitch_658
    const-string v0, "ELUGA_A3_Pro"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_662

    goto/16 :goto_110

    :cond_662
    const/16 v0, 0x2a

    goto/16 :goto_89a

    :sswitch_666
    const-string v0, "Z12_PRO"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_670

    goto/16 :goto_110

    :cond_670
    const/16 v0, 0x29

    goto/16 :goto_89a

    :sswitch_674
    const-string v0, "BLACK-1X"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67e

    goto/16 :goto_110

    :cond_67e
    const/16 v0, 0x28

    goto/16 :goto_89a

    :sswitch_682
    const-string v0, "taido_row"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68c

    goto/16 :goto_110

    :cond_68c
    const/16 v0, 0x27

    goto/16 :goto_89a

    :sswitch_690
    const-string v0, "Pixi4-7_3G"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69a

    goto/16 :goto_110

    :cond_69a
    const/16 v0, 0x26

    goto/16 :goto_89a

    :sswitch_69e
    const-string v0, "GIONEE_GBL7360"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a8

    goto/16 :goto_110

    :cond_6a8
    const/16 v0, 0x25

    goto/16 :goto_89a

    :sswitch_6ac
    const-string v0, "GiONEE_CBL7513"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b6

    goto/16 :goto_110

    :cond_6b6
    const/16 v0, 0x24

    goto/16 :goto_89a

    :sswitch_6ba
    const-string v0, "OnePlus5T"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c4

    goto/16 :goto_110

    :cond_6c4
    const/16 v0, 0x23

    goto/16 :goto_89a

    :sswitch_6c8
    const-string v0, "whyred"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d2

    goto/16 :goto_110

    :cond_6d2
    const/16 v0, 0x22

    goto/16 :goto_89a

    :sswitch_6d6
    const-string v0, "watson"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e0

    goto/16 :goto_110

    :cond_6e0
    const/16 v0, 0x21

    goto/16 :goto_89a

    :sswitch_6e4
    const-string v0, "SVP-DTV15"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6ee

    goto/16 :goto_110

    :cond_6ee
    const/16 v0, 0x20

    goto/16 :goto_89a

    :sswitch_6f2
    const-string v0, "A7000-a"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6fc

    goto/16 :goto_110

    :cond_6fc
    const/16 v0, 0x1f

    goto/16 :goto_89a

    :sswitch_700
    const-string v0, "nicklaus_f"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70a

    goto/16 :goto_110

    :cond_70a
    const/16 v0, 0x1e

    goto/16 :goto_89a

    :sswitch_70e
    const-string v0, "tcl_eu"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_718

    goto/16 :goto_110

    :cond_718
    const/16 v0, 0x1d

    goto/16 :goto_89a

    :sswitch_71c
    const-string v0, "ELUGA_Ray_X"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_726

    goto/16 :goto_110

    :cond_726
    move v0, v12

    goto/16 :goto_89a

    :sswitch_729
    const-string v0, "s905x018"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_733

    goto/16 :goto_110

    :cond_733
    move v0, v2

    goto/16 :goto_89a

    :sswitch_736
    const-string v1, "A10-70L"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_89a

    goto/16 :goto_110

    :sswitch_740
    const-string v0, "A10-70F"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74a

    goto/16 :goto_110

    :cond_74a
    const/16 v0, 0x19

    goto/16 :goto_89a

    :sswitch_74e
    const-string v0, "namath"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_758

    goto/16 :goto_110

    :cond_758
    const/16 v0, 0x18

    goto/16 :goto_89a

    :sswitch_75c
    const-string v0, "Slate_Pro"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_766

    goto/16 :goto_110

    :cond_766
    const/16 v0, 0x17

    goto/16 :goto_89a

    :sswitch_76a
    const-string v0, "iris60"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_774

    goto/16 :goto_110

    :cond_774
    const/16 v0, 0x16

    goto/16 :goto_89a

    :sswitch_778
    const-string v0, "BRAVIA_ATV2"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_782

    goto/16 :goto_110

    :cond_782
    const/16 v0, 0x15

    goto/16 :goto_89a

    :sswitch_786
    const-string v0, "GiONEE_GBL7319"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_790

    goto/16 :goto_110

    :cond_790
    const/16 v0, 0x14

    goto/16 :goto_89a

    :sswitch_794
    const-string v0, "panell_dt"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79e

    goto/16 :goto_110

    :cond_79e
    const/16 v0, 0x13

    goto/16 :goto_89a

    :sswitch_7a2
    const-string v0, "panell_ds"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7ac

    goto/16 :goto_110

    :cond_7ac
    const/16 v0, 0x12

    goto/16 :goto_89a

    :sswitch_7b0
    const-string v0, "panell_dl"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7ba

    goto/16 :goto_110

    :cond_7ba
    const/16 v0, 0x11

    goto/16 :goto_89a

    :sswitch_7be
    const-string v0, "vernee_M5"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c8

    goto/16 :goto_110

    :cond_7c8
    const/16 v0, 0x10

    goto/16 :goto_89a

    :sswitch_7cc
    const-string v0, "pacificrim"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d6

    goto/16 :goto_110

    :cond_7d6
    const/16 v0, 0xf

    goto/16 :goto_89a

    :sswitch_7da
    const-string v0, "Phantom6"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e4

    goto/16 :goto_110

    :cond_7e4
    const/16 v0, 0xe

    goto/16 :goto_89a

    :sswitch_7e8
    const-string v0, "ComioS1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f2

    goto/16 :goto_110

    :cond_7f2
    const/16 v0, 0xd

    goto/16 :goto_89a

    :sswitch_7f6
    const-string v0, "XT1663"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_800

    goto/16 :goto_110

    :cond_800
    const/16 v0, 0xc

    goto/16 :goto_89a

    :sswitch_804
    const-string v0, "RAIJIN"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80e

    goto/16 :goto_110

    :cond_80e
    const/16 v0, 0xb

    goto/16 :goto_89a

    :sswitch_812
    const-string v0, "AquaPowerM"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81c

    goto/16 :goto_110

    :cond_81c
    const/16 v0, 0xa

    goto/16 :goto_89a

    :sswitch_820
    const-string v0, "PGN611"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82a

    goto/16 :goto_110

    :cond_82a
    const/16 v0, 0x9

    goto/16 :goto_89a

    :sswitch_82e
    const-string v0, "PGN610"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_838

    goto/16 :goto_110

    :cond_838
    move v0, v1

    goto/16 :goto_89a

    :sswitch_83b
    const-string v0, "PGN528"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_845

    goto/16 :goto_110

    :cond_845
    move v0, v3

    goto :goto_89a

    :sswitch_847
    const-string v0, "NX573J"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_851

    goto/16 :goto_110

    :cond_851
    move v0, v4

    goto :goto_89a

    :sswitch_853
    const-string v0, "NX541J"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85d

    goto/16 :goto_110

    :cond_85d
    move v0, v5

    goto :goto_89a

    :sswitch_85f
    const-string v0, "CP8676_I02"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_869

    goto/16 :goto_110

    :cond_869
    move v0, v6

    goto :goto_89a

    :sswitch_86b
    const-string v0, "K50a40"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_875

    goto/16 :goto_110

    :cond_875
    move v0, v7

    goto :goto_89a

    :sswitch_877
    const-string v0, "GIONEE_SWW1631"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_881

    goto/16 :goto_110

    :cond_881
    move v0, v8

    goto :goto_89a

    :sswitch_883
    const-string v0, "GIONEE_SWW1627"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88d

    goto/16 :goto_110

    :cond_88d
    move v0, v13

    goto :goto_89a

    :sswitch_88f
    const-string v0, "GIONEE_SWW1609"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_899

    goto/16 :goto_110

    :cond_899
    move v0, v10

    :cond_89a
    :goto_89a
    packed-switch v0, :pswitch_data_b50

    .line 2704
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "JSN-L21"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a9

    goto :goto_8aa

    :cond_8a9
    :pswitch_8a9
    return v13

    :cond_8aa
    :goto_8aa
    return v10

    :pswitch_8ab
    return v13

    :sswitch_data_8ac
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_71
        -0x48b8f57f -> :sswitch_66
        -0x48b8bd30 -> :sswitch_5b
        -0x3c588c8a -> :sswitch_50
        -0x2d5172e2 -> :sswitch_45
        -0x3de1850 -> :sswitch_3a
        0x341e81 -> :sswitch_2f
        0x31316ffa -> :sswitch_24
    .end sparse-switch

    :pswitch_data_8ce
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
    .end packed-switch

    :sswitch_data_8e2
    .sparse-switch
        -0x14d76e6c -> :sswitch_f5
        -0x132295cd -> :sswitch_ea
        0x1e9d52 -> :sswitch_df
        0x1e9d5f -> :sswitch_d4
        0x1e9d63 -> :sswitch_c9
        0x6a6b6031 -> :sswitch_be
        0x6a6b6034 -> :sswitch_b3
        0x6b2deee6 -> :sswitch_a8
        0x7e53ab34 -> :sswitch_9c
    .end sparse-switch

    :pswitch_data_908
    .packed-switch 0x0
        :pswitch_8ab
        :pswitch_8ab
        :pswitch_8ab
        :pswitch_8ab
        :pswitch_8ab
        :pswitch_8ab
        :pswitch_8ab
        :pswitch_8ab
        :pswitch_8ab
    .end packed-switch

    :sswitch_data_91e
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_88f
        -0x7fd6c381 -> :sswitch_883
        -0x7fd6c368 -> :sswitch_877
        -0x7d026749 -> :sswitch_86b
        -0x78929d6a -> :sswitch_85f
        -0x75f50a1e -> :sswitch_853
        -0x75f4fe9d -> :sswitch_847
        -0x736f875c -> :sswitch_83b
        -0x736f83c2 -> :sswitch_82e
        -0x736f83c1 -> :sswitch_820
        -0x7327ce1c -> :sswitch_812
        -0x705c574b -> :sswitch_804
        -0x651ebb62 -> :sswitch_7f6
        -0x6423293b -> :sswitch_7e8
        -0x604f5117 -> :sswitch_7da
        -0x5f691e13 -> :sswitch_7cc
        -0x5ca40cc4 -> :sswitch_7be
        -0x58520ec1 -> :sswitch_7b0
        -0x58520eba -> :sswitch_7a2
        -0x58520eb9 -> :sswitch_794
        -0x4eaed329 -> :sswitch_786
        -0x4892fb4f -> :sswitch_778
        -0x465b3df3 -> :sswitch_76a
        -0x43e6c939 -> :sswitch_75c
        -0x3ec0fcc5 -> :sswitch_74e
        -0x3b33cca0 -> :sswitch_740
        -0x3b33cc9a -> :sswitch_736
        -0x398ae3f6 -> :sswitch_729
        -0x391f0fb4 -> :sswitch_71c
        -0x346837ae -> :sswitch_70e
        -0x323788e3 -> :sswitch_700
        -0x30f57652 -> :sswitch_6f2
        -0x2f88a116 -> :sswitch_6e4
        -0x2f61ed98 -> :sswitch_6d6
        -0x2efd0837 -> :sswitch_6c8
        -0x2e9e9441 -> :sswitch_6ba
        -0x2247b8b1 -> :sswitch_6ac
        -0x1f0fa2b7 -> :sswitch_69e
        -0x19af3b41 -> :sswitch_690
        -0x114fad3e -> :sswitch_682
        -0x10dae90b -> :sswitch_674
        -0x1084b7b7 -> :sswitch_666
        -0xa5988e9 -> :sswitch_658
        -0x35f9fbf -> :sswitch_64a
        0x84e -> :sswitch_63c
        0xa04 -> :sswitch_62e
        0xa9b -> :sswitch_620
        0xa9f -> :sswitch_612
        0xc13 -> :sswitch_604
        0xd9b -> :sswitch_5f6
        0x11ebd -> :sswitch_5e8
        0x12711 -> :sswitch_5da
        0x127db -> :sswitch_5cc
        0x12beb -> :sswitch_5be
        0x1334d -> :sswitch_5b0
        0x135c9 -> :sswitch_5a2
        0x13aea -> :sswitch_594
        0x158d2 -> :sswitch_586
        0x1821e -> :sswitch_578
        0x18220 -> :sswitch_56a
        0x18401 -> :sswitch_55c
        0x18c69 -> :sswitch_54e
        0x1716e6 -> :sswitch_540
        0x171ac8 -> :sswitch_532
        0x171ac9 -> :sswitch_524
        0x208c61 -> :sswitch_516
        0x208c63 -> :sswitch_508
        0x208c80 -> :sswitch_4fa
        0x208c9f -> :sswitch_4ec
        0x208cbe -> :sswitch_4de
        0x208cc0 -> :sswitch_4d0
        0x252f5f -> :sswitch_4c2
        0x25981d -> :sswitch_4b4
        0x259b88 -> :sswitch_4a6
        0x290a13 -> :sswitch_498
        0x3021fd -> :sswitch_48a
        0x321e47 -> :sswitch_47c
        0x332327 -> :sswitch_46e
        0x33ab63 -> :sswitch_460
        0x27691fb -> :sswitch_452
        0x30f8881 -> :sswitch_444
        0x30f8c42 -> :sswitch_436
        0x349f581 -> :sswitch_428
        0x3ab0ea7 -> :sswitch_41a
        0x3e53ea5 -> :sswitch_40c
        0x3f25a44 -> :sswitch_3fe
        0x3f25a46 -> :sswitch_3f0
        0x3f25a49 -> :sswitch_3e2
        0x3f25e05 -> :sswitch_3d4
        0x3f25e07 -> :sswitch_3c6
        0x3f25e09 -> :sswitch_3b8
        0x3f261c6 -> :sswitch_3aa
        0x48dce49 -> :sswitch_39c
        0x48dd589 -> :sswitch_38e
        0x48dd8af -> :sswitch_380
        0x4d36832 -> :sswitch_372
        0x4f0b0e7 -> :sswitch_364
        0x5e2479e -> :sswitch_356
        0x60acc05 -> :sswitch_348
        0x6214744 -> :sswitch_33a
        0x9d91379 -> :sswitch_32c
        0xadc0551 -> :sswitch_31e
        0xea056b3 -> :sswitch_310
        0x1121dbc3 -> :sswitch_302
        0x1255818c -> :sswitch_2f4
        0x1263990d -> :sswitch_2e6
        0x12d90f3a -> :sswitch_2d8
        0x12d90f4c -> :sswitch_2ca
        0x12d98b1b -> :sswitch_2bc
        0x12d98b22 -> :sswitch_2ae
        0x1844c711 -> :sswitch_2a0
        0x1e3e8044 -> :sswitch_292
        0x2f5336ed -> :sswitch_284
        0x2f54115e -> :sswitch_276
        0x2f541849 -> :sswitch_268
        0x31cf010e -> :sswitch_25a
        0x36ad82f4 -> :sswitch_24c
        0x391a0b61 -> :sswitch_23e
        0x3f3728cd -> :sswitch_230
        0x448ec687 -> :sswitch_222
        0x46260f63 -> :sswitch_214
        0x4c505106 -> :sswitch_206
        0x4de67084 -> :sswitch_1f8
        0x506ac5a9 -> :sswitch_1ea
        0x5abad9cd -> :sswitch_1dc
        0x64d2e6e9 -> :sswitch_1ce
        0x64d2eac5 -> :sswitch_1c0
        0x65e4085b -> :sswitch_1b2
        0x6f373556 -> :sswitch_1a4
        0x719f1dcb -> :sswitch_196
        0x75d9a0f0 -> :sswitch_188
        0x7796d144 -> :sswitch_17b
        0x785bcb26 -> :sswitch_16e
        0x78fc0e50 -> :sswitch_161
        0x790521fb -> :sswitch_154
        0x7933207f -> :sswitch_147
        0x7a05a409 -> :sswitch_13a
        0x7a0696bd -> :sswitch_12d
        0x7a16dfe7 -> :sswitch_120
        0x7a1f0e95 -> :sswitch_113
    .end sparse-switch

    :pswitch_data_b50
    .packed-switch 0x0
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
        :pswitch_8a9
    .end packed-switch
.end method

.method public static getCodecMaxInputSize(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;)I
    .registers 13

    const/4 v0, 0x4

    .line 1317
    const-string v1, "video/hevc"

    const-string v2, "video/avc"

    const-string v3, "video/av01"

    const/4 v4, 0x1

    const/4 v5, 0x2

    iget v6, p1, Lio/bidmachine/media3/common/Format;->width:I

    .line 1318
    iget v7, p1, Lio/bidmachine/media3/common/Format;->height:I

    const/4 v8, -0x1

    if-eq v6, v8, :cond_ec

    if-ne v7, v8, :cond_14

    goto/16 :goto_ec

    .line 1324
    :cond_14
    iget-object v9, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v9}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1325
    const-string v10, "video/dolby-vision"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 1333
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lio/bidmachine/media3/common/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 1335
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v9, 0x200

    if-eq p1, v9, :cond_41

    if-eq p1, v4, :cond_41

    if-ne p1, v5, :cond_3b

    goto :goto_41

    :cond_3b
    const/16 v9, 0x400

    if-ne p1, v9, :cond_43

    move-object v9, v3

    goto :goto_44

    :cond_41
    :goto_41
    move-object v9, v2

    goto :goto_44

    :cond_43
    move-object v9, v1

    .line 1347
    :cond_44
    :goto_44
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_ee

    :goto_4e
    move v4, v8

    goto :goto_94

    :sswitch_50
    const-string p1, "video/x-vnd.on2.vp9"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    goto :goto_4e

    :cond_59
    const/4 v4, 0x6

    goto :goto_94

    :sswitch_5b
    const-string p1, "video/x-vnd.on2.vp8"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    goto :goto_4e

    :cond_64
    const/4 v4, 0x5

    goto :goto_94

    :sswitch_66
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6d

    goto :goto_4e

    :cond_6d
    move v4, v0

    goto :goto_94

    :sswitch_6f
    const-string p1, "video/mp4v-es"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_78

    goto :goto_4e

    :cond_78
    const/4 v4, 0x3

    goto :goto_94

    :sswitch_7a
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_81

    goto :goto_4e

    :cond_81
    move v4, v5

    goto :goto_94

    :sswitch_83
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_94

    goto :goto_4e

    :sswitch_8a
    const-string p1, "video/3gpp"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_93

    goto :goto_4e

    :cond_93
    const/4 v4, 0x0

    :cond_94
    :goto_94
    packed-switch v4, :pswitch_data_10c

    return v8

    :pswitch_98
    mul-int/2addr v6, v7

    .line 1374
    invoke-static {v6, v0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxSampleSize(II)I

    move-result p0

    return p0

    .line 1362
    :pswitch_9e
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "BRAVIA 4K 2015"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    const-string v0, "Amazon"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 1363
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    const-string v0, "KFSOWI"

    .line 1364
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    const-string v0, "AFTS"

    .line 1365
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c7

    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p0, :cond_c7

    goto :goto_d9

    :cond_c7
    const/16 p0, 0x10

    .line 1371
    invoke-static {v6, p0}, Lio/bidmachine/media3/common/util/Util;->ceilDivide(II)I

    move-result p1

    invoke-static {v7, p0}, Lio/bidmachine/media3/common/util/Util;->ceilDivide(II)I

    move-result p0

    mul-int/2addr p1, p0

    mul-int/lit16 p1, p1, 0x100

    .line 1372
    invoke-static {p1, v5}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxSampleSize(II)I

    move-result p0

    return p0

    :cond_d9
    :goto_d9
    return v8

    :pswitch_da
    mul-int/2addr v6, v7

    .line 1360
    invoke-static {v6, v5}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxSampleSize(II)I

    move-result p0

    const/high16 p1, 0x200000

    .line 1358
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :pswitch_e6
    mul-int/2addr v6, v7

    .line 1354
    invoke-static {v6, v5}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxSampleSize(II)I

    move-result p0

    return p0

    :cond_ec
    :goto_ec
    return v8

    nop

    :sswitch_data_ee
    .sparse-switch
        -0x63306f58 -> :sswitch_8a
        -0x631b55f6 -> :sswitch_83
        -0x63185e82 -> :sswitch_7a
        0x46cdc642 -> :sswitch_6f
        0x4f62373a -> :sswitch_66
        0x5f50bed8 -> :sswitch_5b
        0x5f50bed9 -> :sswitch_50
    .end sparse-switch

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_e6
        :pswitch_e6
        :pswitch_da
        :pswitch_e6
        :pswitch_9e
        :pswitch_e6
        :pswitch_98
    .end packed-switch
.end method

.method public static getCodecMaxSize(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;)Landroid/graphics/Point;
    .registers 15

    .line 2365
    iget v0, p1, Lio/bidmachine/media3/common/Format;->height:I

    iget v1, p1, Lio/bidmachine/media3/common/Format;->width:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_9

    const/4 v3, 0x1

    goto :goto_a

    :cond_9
    move v3, v2

    :goto_a
    if-eqz v3, :cond_e

    move v4, v0

    goto :goto_f

    :cond_e
    move v4, v1

    :goto_f
    if-eqz v3, :cond_12

    move v0, v1

    :cond_12
    int-to-float v1, v0

    int-to-float v5, v4

    div-float/2addr v1, v5

    .line 2369
    sget-object v5, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    array-length v6, v5

    :goto_18
    const/4 v7, 0x0

    if-ge v2, v6, :cond_45

    aget v8, v5, v2

    int-to-float v9, v8

    mul-float/2addr v9, v1

    float-to-int v9, v9

    if-le v8, v4, :cond_45

    if-gt v9, v0, :cond_25

    goto :goto_45

    :cond_25
    if-eqz v3, :cond_29

    move v7, v9

    goto :goto_2a

    :cond_29
    move v7, v8

    :goto_2a
    if-eqz v3, :cond_2d

    goto :goto_2e

    :cond_2d
    move v8, v9

    .line 2376
    :goto_2e
    invoke-virtual {p0, v7, v8}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->alignVideoSizeV21(II)Landroid/graphics/Point;

    move-result-object v7

    .line 2379
    iget v8, p1, Lio/bidmachine/media3/common/Format;->frameRate:F

    if-eqz v7, :cond_42

    .line 2380
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    float-to-double v11, v8

    .line 2381
    invoke-virtual {p0, v9, v10, v11, v12}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v8

    if-eqz v8, :cond_42

    return-object v7

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_45
    :goto_45
    return-object v7
.end method

.method public static getDecoderInfos(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;ZZ)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Lio/bidmachine/media3/common/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 807
    iget-object v0, p2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 808
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 810
    :cond_9
    sget v1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_28

    const-string v1, "video/dolby-vision"

    .line 811
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 812
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;->doesDisplaySupportDolbyVision(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_28

    .line 814
    invoke-static {p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeDecoderInfos(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p0

    .line 816
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    return-object p0

    .line 820
    :cond_28
    invoke-static {p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosSoftMatch(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxInputSize(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;)I
    .registers 5

    .line 2398
    iget v0, p1, Lio/bidmachine/media3/common/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 2402
    iget-object p0, p1, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v0, p0, :cond_1c

    .line 2404
    iget-object v2, p1, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2406
    :cond_1c
    iget p0, p1, Lio/bidmachine/media3/common/Format;->maxInputSize:I

    add-int/2addr p0, v1

    return p0

    .line 2408
    :cond_20
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;)I

    move-result p0

    return p0
.end method

.method public static getMaxSampleSize(II)I
    .registers 2

    mul-int/lit8 p0, p0, 0x3

    mul-int/lit8 p1, p1, 0x2

    .line 2494
    div-int/2addr p0, p1

    return p0
.end method

.method public static setHdr10PlusInfoV29(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;[B)V
    .registers 4

    .line 2192
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2193
    const-string v1, "hdr10-plus-info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2194
    invoke-interface {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public static supportsFormatInternal(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 677
    iget-object v0, p2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 678
    invoke-static {v0}, Lio/bidmachine/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 679
    invoke-static {v1}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p0

    return p0

    .line 681
    :cond_e
    iget-object v0, p2, Lio/bidmachine/media3/common/Format;->drmInitData:Lio/bidmachine/media3/common/DrmInitData;

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    .line 685
    :goto_16
    invoke-static {p0, p1, p2, v0, v1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_26

    .line 691
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 694
    invoke-static {p0, p1, p2, v1, v1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object v3

    .line 701
    :cond_26
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 702
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p0

    return p0

    .line 704
    :cond_31
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->supportsFormatDrm(Lio/bidmachine/media3/common/Format;)Z

    move-result v4

    if-nez v4, :cond_3d

    const/4 p0, 0x2

    .line 705
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p0

    return p0

    .line 709
    :cond_3d
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 710
    invoke-virtual {v4, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Lio/bidmachine/media3/common/Format;)Z

    move-result v5

    if-nez v5, :cond_63

    move v6, v2

    .line 714
    :goto_4a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_63

    .line 715
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 716
    invoke-virtual {v7, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Lio/bidmachine/media3/common/Format;)Z

    move-result v8

    if-eqz v8, :cond_60

    move v3, v1

    move v5, v2

    move-object v4, v7

    goto :goto_64

    :cond_60
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    :cond_63
    move v3, v2

    :goto_64
    if-eqz v5, :cond_68

    const/4 v6, 0x4

    goto :goto_69

    :cond_68
    const/4 v6, 0x3

    .line 728
    :goto_69
    invoke-virtual {v4, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lio/bidmachine/media3/common/Format;)Z

    move-result v7

    if-eqz v7, :cond_72

    const/16 v7, 0x10

    goto :goto_74

    :cond_72
    const/16 v7, 0x8

    .line 733
    :goto_74
    iget-boolean v4, v4, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->hardwareAccelerated:Z

    if-eqz v4, :cond_7b

    const/16 v4, 0x40

    goto :goto_7c

    :cond_7b
    move v4, v1

    :goto_7c
    if-eqz v3, :cond_81

    const/16 v3, 0x80

    goto :goto_82

    :cond_81
    move v3, v1

    .line 739
    :goto_82
    sget v8, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v9, 0x1a

    if-lt v8, v9, :cond_9a

    const-string v8, "video/dolby-vision"

    iget-object v9, p2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 740
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9a

    .line 741
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;->doesDisplaySupportDolbyVision(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_9a

    const/16 v3, 0x100

    :cond_9a
    if-eqz v5, :cond_be

    .line 748
    invoke-static {p0, p1, p2, v0, v2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p0

    .line 754
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_be

    .line 756
    invoke-static {p0, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Lio/bidmachine/media3/common/Format;)Ljava/util/List;

    move-result-object p0

    .line 757
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 758
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Lio/bidmachine/media3/common/Format;)Z

    move-result p1

    if-eqz p1, :cond_be

    .line 759
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lio/bidmachine/media3/common/Format;)Z

    move-result p0

    if-eqz p0, :cond_be

    const/16 v1, 0x20

    .line 765
    :cond_be
    invoke-static {v6, v7, v1, v4, v3}, Lio/bidmachine/media3/exoplayer/RendererCapabilities;->create(IIIII)I

    move-result p0

    return p0
.end method

.method private updateCodecImportance()V
    .registers 5

    .line 2127
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodec()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_22

    .line 2132
    :cond_7
    sget v1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_22

    .line 2133
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2134
    iget v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->rendererPriority:I

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-string v3, "importance"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2135
    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method public canReuseCodec(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;
    .registers 12

    .line 1250
    invoke-virtual {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->canReuseCodec(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v0

    .line 1252
    iget v1, v0, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->discardReasons:I

    .line 1253
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->codecMaxValues:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 1254
    iget v3, p3, Lio/bidmachine/media3/common/Format;->width:I

    iget v4, v2, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    if-gt v3, v4, :cond_1a

    iget v3, p3, Lio/bidmachine/media3/common/Format;->height:I

    iget v4, v2, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    if-le v3, v4, :cond_1c

    :cond_1a
    or-int/lit16 v1, v1, 0x100

    .line 1257
    :cond_1c
    invoke-static {p1, p3}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxInputSize(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;)I

    move-result v3

    iget v2, v2, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    if-le v3, v2, :cond_26

    or-int/lit8 v1, v1, 0x40

    :cond_26
    move v7, v1

    .line 1261
    new-instance v2, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v3, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_32

    const/4 p1, 0x0

    :goto_2e
    move v6, p1

    move-object v4, p2

    move-object v5, p3

    goto :goto_35

    .line 1265
    :cond_32
    iget p1, v0, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->result:I

    goto :goto_2e

    :goto_35
    invoke-direct/range {v2 .. v7}, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;II)V

    return-object v2
.end method

.method public changeVideoSinkInputStream(Lio/bidmachine/media3/exoplayer/video/VideoSink;ILio/bidmachine/media3/common/Format;)V
    .registers 5

    .line 1642
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoEffects:Ljava/util/List;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1643
    :goto_9
    invoke-interface {p1, p2, p3, v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->onInputStreamChanged(ILio/bidmachine/media3/common/Format;Ljava/util/List;)V

    return-void
.end method

.method public codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z
    .registers 3

    .line 2453
    const-string v0, "OMX.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2457
    :cond_a
    const-class p1, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    monitor-enter p1

    .line 2458
    :try_start_d
    sget-boolean v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    if-nez v0, :cond_1d

    .line 2459
    invoke-static {}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->evaluateDeviceNeedsSetOutputSurfaceWorkaround()Z

    move-result v0

    sput-boolean v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    const/4 v0, 0x1

    .line 2460
    sput-boolean v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    goto :goto_1d

    :catchall_1b
    move-exception v0

    goto :goto_21

    .line 2462
    :cond_1d
    :goto_1d
    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1b

    .line 2463
    sget-boolean p1, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    return p1

    .line 2462
    :goto_21
    :try_start_21
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1b

    throw v0
.end method

.method public createDecoderException(Ljava/lang/Throwable;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    .registers 5

    .line 2350
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoDecoderException;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoDecoderException;-><init>(Ljava/lang/Throwable;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/view/Surface;)V

    return-object v0
.end method

.method public detachOutputSurfaceV35(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;)V
    .registers 2

    .line 2214
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->detachOutputSurface()V

    return-void
.end method

.method public dropOutputBuffer(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V
    .registers 5

    .line 1907
    const-string p3, "dropVideoBuffer"

    invoke-static {p3}, Lio/bidmachine/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1908
    invoke-interface {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1909
    invoke-static {}, Lio/bidmachine/media3/common/util/TraceUtil;->endSection()V

    const/4 p1, 0x1

    .line 1910
    invoke-virtual {p0, p3, p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    return-void
.end method

.method public enableMayRenderStartOfStream()V
    .registers 2

    .line 939
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_8

    .line 940
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->enableMayRenderStartOfStream()V

    return-void

    .line 942
    :cond_8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->allowReleaseFirstFrameBeforeStarted()V

    return-void
.end method

.method public getBufferTimestampAdjustmentUs()J
    .registers 3

    .line 1768
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->startPositionUs:J

    neg-long v0, v0

    return-wide v0
.end method

.method public getCodecBufferFlags(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)I
    .registers 4

    .line 1489
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_13

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->isBufferBeforeStartTime(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/16 p1, 0x20

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public getCodecMaxValues(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;[Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;
    .registers 16

    .line 2295
    iget v0, p2, Lio/bidmachine/media3/common/Format;->width:I

    .line 2296
    iget v1, p2, Lio/bidmachine/media3/common/Format;->height:I

    .line 2297
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxInputSize(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;)I

    move-result v2

    .line 2298
    array-length v3, p3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_24

    if-eq v2, v4, :cond_1e

    .line 2302
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;)I

    move-result p1

    if-eq p1, v4, :cond_1e

    int-to-float p2, v2

    const/high16 p3, 0x3fc00000    # 1.5f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    .line 2310
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2313
    :cond_1e
    new-instance p1, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1

    .line 2316
    :cond_24
    array-length v3, p3

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_28
    if-ge v7, v3, :cond_6c

    aget-object v9, p3, v7

    .line 2317
    iget-object v10, p2, Lio/bidmachine/media3/common/Format;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    if-eqz v10, :cond_42

    iget-object v10, v9, Lio/bidmachine/media3/common/Format;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    if-nez v10, :cond_42

    .line 2320
    invoke-virtual {v9}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v9

    iget-object v10, p2, Lio/bidmachine/media3/common/Format;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    invoke-virtual {v9, v10}, Lio/bidmachine/media3/common/Format$Builder;->setColorInfo(Lio/bidmachine/media3/common/ColorInfo;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v9

    .line 2322
    :cond_42
    invoke-virtual {p1, p2, v9}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->canReuseCodec(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v10

    iget v10, v10, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->result:I

    if-eqz v10, :cond_69

    .line 2323
    iget v10, v9, Lio/bidmachine/media3/common/Format;->width:I

    if-eq v10, v4, :cond_55

    iget v11, v9, Lio/bidmachine/media3/common/Format;->height:I

    if-ne v11, v4, :cond_53

    goto :goto_55

    :cond_53
    move v11, v6

    goto :goto_56

    :cond_55
    :goto_55
    move v11, v5

    :goto_56
    or-int/2addr v8, v11

    .line 2325
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2326
    iget v10, v9, Lio/bidmachine/media3/common/Format;->height:I

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2327
    invoke-static {p1, v9}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxInputSize(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_69
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_6c
    if-eqz v8, :cond_d0

    .line 2331
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v4, "MediaCodecVideoRenderer"

    invoke-static {v4, p3}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecMaxSize(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;)Landroid/graphics/Point;

    move-result-object p3

    if-eqz p3, :cond_d0

    .line 2334
    iget v5, p3, Landroid/graphics/Point;->x:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2335
    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2340
    invoke-virtual {p2}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/Format$Builder;->setWidth(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lio/bidmachine/media3/common/Format$Builder;->setHeight(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p2

    .line 2339
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;)I

    move-result p1

    .line 2337
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2341
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Codec max resolution adjusted to: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    :cond_d0
    new-instance p1, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1
.end method

.method public getCodecNeedsEosPropagation()Z
    .registers 3

    .line 1215
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_c

    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public getCodecOperatingRateV23(FLio/bidmachine/media3/common/Format;[Lio/bidmachine/media3/common/Format;)F
    .registers 9

    .line 1387
    array-length p2, p3

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    move v2, v0

    :goto_5
    if-ge v1, p2, :cond_16

    aget-object v3, p3, v1

    .line 1388
    iget v3, v3, Lio/bidmachine/media3/common/Format;->frameRate:F

    cmpl-float v4, v3, v0

    if-eqz v4, :cond_13

    .line 1390
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    cmpl-float p2, v2, v0

    if-nez p2, :cond_1b

    return v0

    :cond_1b
    mul-float/2addr v2, p1

    return v2
.end method

.method public getDecoderInfos(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Lio/bidmachine/media3/common/Format;",
            "Z)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 778
    invoke-static {v0, p1, p2, p3, v1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p1

    .line 777
    invoke-static {p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Lio/bidmachine/media3/common/Format;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMediaCodecConfiguration(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;Landroid/media/MediaCrypto;F)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
    .registers 12

    .line 1224
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    .line 1225
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getStreamFormats()[Lio/bidmachine/media3/common/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecMaxValues(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;[Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->codecMaxValues:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 1226
    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    .line 1233
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    :goto_14
    move-object v1, p2

    move v4, p4

    move v6, v0

    move-object v0, p0

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_14

    .line 1227
    :goto_1b
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getMediaFormat(Lio/bidmachine/media3/common/Format;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;

    move-result-object p2

    .line 1234
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getSurfaceForCodec(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroid/view/Surface;

    move-result-object p4

    .line 1235
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeSetKeyAllowFrameDrop(Landroid/media/MediaFormat;)V

    .line 1236
    invoke-static {p1, p2, v1, p4, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->createForVideoDecoding(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lio/bidmachine/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;

    move-result-object p1

    return-object p1
.end method

.method public getMediaFormat(Lio/bidmachine/media3/common/Format;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 2239
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 2241
    const-string v1, "mime"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    iget p2, p1, Lio/bidmachine/media3/common/Format;->width:I

    const-string v1, "width"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2243
    const-string p2, "height"

    iget v1, p1, Lio/bidmachine/media3/common/Format;->height:I

    invoke-virtual {v0, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2244
    iget-object p2, p1, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, p2}, Lio/bidmachine/media3/common/util/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 2246
    const-string p2, "frame-rate"

    iget v1, p1, Lio/bidmachine/media3/common/Format;->frameRate:F

    invoke-static {v0, p2, v1}, Lio/bidmachine/media3/common/util/MediaFormatUtil;->maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 2247
    const-string p2, "rotation-degrees"

    iget v1, p1, Lio/bidmachine/media3/common/Format;->rotationDegrees:I

    invoke-static {v0, p2, v1}, Lio/bidmachine/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 2248
    iget-object p2, p1, Lio/bidmachine/media3/common/Format;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    invoke-static {v0, p2}, Lio/bidmachine/media3/common/util/MediaFormatUtil;->maybeSetColorInfo(Landroid/media/MediaFormat;Lio/bidmachine/media3/common/ColorInfo;)V

    .line 2249
    const-string p2, "video/dolby-vision"

    iget-object v1, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 2252
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lio/bidmachine/media3/common/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 2254
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 2255
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2254
    const-string p2, "profile"

    invoke-static {v0, p2, p1}, Lio/bidmachine/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 2259
    :cond_4d
    iget p1, p3, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    const-string p2, "max-width"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2260
    const-string p1, "max-height"

    iget p2, p3, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2261
    const-string p1, "max-input-size"

    iget p2, p3, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    invoke-static {v0, p1, p2}, Lio/bidmachine/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 2264
    sget p1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 p2, 0x17

    const/4 p3, 0x0

    if-lt p1, p2, :cond_79

    .line 2265
    const-string p2, "priority"

    invoke-virtual {v0, p2, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p4, p2

    if-eqz p2, :cond_79

    .line 2267
    const-string p2, "operating-rate"

    invoke-virtual {v0, p2, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_79
    const/4 p2, 0x1

    if-eqz p5, :cond_86

    .line 2271
    const-string p4, "no-post-process"

    invoke-virtual {v0, p4, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2272
    const-string p4, "auto-frc"

    invoke-virtual {v0, p4, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_86
    if-eqz p6, :cond_92

    .line 2275
    const-string p4, "tunneled-playback"

    invoke-virtual {v0, p4, p2}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    .line 2276
    const-string p2, "audio-session-id"

    invoke-virtual {v0, p2, p6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_92
    const/16 p2, 0x23

    if-lt p1, p2, :cond_a2

    .line 2279
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->rendererPriority:I

    neg-int p1, p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const-string p2, "importance"

    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_a2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 649
    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method public final getSurfaceForCodec(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroid/view/Surface;
    .registers 4

    .line 2067
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_9

    .line 2068
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->getInputSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 2069
    :cond_9
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eqz v0, :cond_e

    return-object v0

    .line 2071
    :cond_e
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldUseDetachedSurface(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p1, 0x0

    return-object p1

    .line 2074
    :cond_16
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldUsePlaceholderSurface(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 2075
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_2a

    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->secure:Z

    iget-boolean v1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    if-eq v0, v1, :cond_2a

    .line 2077
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->releasePlaceholderSurface()V

    .line 2079
    :cond_2a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    if-nez v0, :cond_38

    .line 2080
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->newInstance(Landroid/content/Context;Z)Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    .line 2082
    :cond_38
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    return-object p1
.end method

.method public handleInputBufferSupplementalData(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1650
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    if-nez v0, :cond_5

    goto :goto_57

    .line 1653
    :cond_5
    iget-object p1, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 1654
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_57

    .line 1656
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1657
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 1658
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 1659
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 1660
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    .line 1661
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_57

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_57

    const/4 v0, 0x1

    if-ne v2, v0, :cond_57

    const/4 v1, 0x4

    if-ne v3, v1, :cond_57

    if-eqz v4, :cond_3e

    if-ne v4, v0, :cond_57

    .line 1669
    :cond_3e
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 1670
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1671
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1672
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodec()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->setHdr10PlusInfoV29(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;[B)V

    :cond_57
    :goto_57
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_cc

    const/4 v1, 0x7

    if-eq p1, v1, :cond_bc

    const/16 v1, 0xa

    if-eq p1, v1, :cond_a4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_8c

    const/4 v1, 0x5

    if-eq p1, v1, :cond_72

    const/16 v1, 0xd

    if-eq p1, v1, :cond_68

    const/16 v1, 0xe

    if-eq p1, v1, :cond_44

    const/16 v1, 0x10

    if-eq p1, v1, :cond_34

    const/16 v1, 0x11

    if-eq p1, v1, :cond_24

    .line 1150
    invoke-super {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    return-void

    .line 1143
    :cond_24
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    const/4 v1, 0x0

    .line 1144
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->setOutput(Ljava/lang/Object;)V

    .line 1145
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 1146
    invoke-virtual {p2, v0, p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->handleMessage(ILjava/lang/Object;)V

    return-void

    .line 1138
    :cond_34
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->rendererPriority:I

    .line 1139
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->updateCodecImportance()V

    return-void

    .line 1129
    :cond_44
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/util/Size;

    .line 1130
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/Size;->getWidth()I

    move-result p2

    if-eqz p2, :cond_cb

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/Size;->getHeight()I

    move-result p2

    if-eqz p2, :cond_cb

    .line 1131
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->outputResolution:Lio/bidmachine/media3/common/util/Size;

    .line 1132
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz p2, :cond_cb

    .line 1133
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-interface {p2, v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setOutputSurfaceInfo(Landroid/view/Surface;Lio/bidmachine/media3/common/util/Size;)V

    return-void

    .line 1125
    :cond_68
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1126
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->setVideoEffects(Ljava/util/List;)V

    return-void

    .line 1101
    :cond_72
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->changeFrameRateStrategy:I

    .line 1102
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz p2, :cond_86

    .line 1103
    invoke-interface {p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setChangeFrameRateStrategy(I)V

    return-void

    .line 1105
    :cond_86
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->setChangeFrameRateStrategy(I)V

    return-void

    .line 1094
    :cond_8c
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 1095
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodec()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object p1

    if-eqz p1, :cond_cb

    .line 1097
    iget p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    return-void

    .line 1115
    :cond_a4
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1116
    iget p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eq p2, p1, :cond_cb

    .line 1117
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 1118
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz p1, :cond_cb

    .line 1119
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    return-void

    .line 1109
    :cond_bc
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->frameMetadataListener:Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 1110
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz p2, :cond_cb

    .line 1111
    invoke-interface {p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setVideoFrameMetadataListener(Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;)V

    :cond_cb
    return-void

    .line 1091
    :cond_cc
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->setOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public final hasSurfaceForCodec(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .registers 3

    .line 2054
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eqz v0, :cond_e

    .line 2055
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2056
    :cond_e
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldUseDetachedSurface(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2057
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldUsePlaceholderSurface(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    return p1

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    return p1
.end method

.method public final isBufferBeforeStartTime(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z
    .registers 6

    .line 1573
    iget-wide v0, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public final isBufferProbablyLastSample(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z
    .registers 8

    .line 1559
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2e

    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/Buffer;->isLastSample()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_2e

    .line 1564
    :cond_e
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->periodDurationUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_1a

    return v1

    .line 1568
    :cond_1a
    iget-wide v2, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getOutputStreamOffsetUs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1569
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->periodDurationUs:J

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x186a0

    cmp-long p1, v4, v2

    if-gtz p1, :cond_2c

    return v1

    :cond_2c
    const/4 p1, 0x0

    return p1

    :cond_2e
    :goto_2e
    return v1
.end method

.method public isEnded()Z
    .registers 2

    .line 1004
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .registers 3

    .line 1009
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    .line 1010
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz v1, :cond_d

    .line 1011
    invoke-interface {v1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->isReady(Z)Z

    move-result v0

    return v0

    :cond_d
    if-eqz v0, :cond_1b

    .line 1013
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodec()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v1, :cond_1b

    :cond_19
    const/4 v0, 0x1

    return v0

    .line 1017
    :cond_1b
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->isReady(Z)Z

    move-result v0

    return v0
.end method

.method public maybeDropBuffersToKeyframe(JZ)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1927
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->skipSource(J)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return p2

    :cond_8
    const/4 v0, 0x1

    if-eqz p3, :cond_23

    .line 1934
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    iget v1, p3, Lio/bidmachine/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    add-int/2addr v1, p1

    iput v1, p3, Lio/bidmachine/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    .line 1935
    iget p1, p3, Lio/bidmachine/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    iget v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/2addr p1, v2

    iput p1, p3, Lio/bidmachine/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    .line 1936
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedDecoderInputBufferTimestamps:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result p1

    add-int/2addr v1, p1

    iput v1, p3, Lio/bidmachine/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    goto :goto_36

    .line 1938
    :cond_23
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    iget v1, p3, Lio/bidmachine/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    add-int/2addr v1, v0

    iput v1, p3, Lio/bidmachine/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    .line 1939
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedDecoderInputBufferTimestamps:Ljava/util/PriorityQueue;

    .line 1941
    invoke-virtual {p3}, Ljava/util/PriorityQueue;->size()I

    move-result p3

    add-int/2addr p1, p3

    iget p3, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 1939
    invoke-virtual {p0, p1, p3}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    .line 1944
    :goto_36
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushOrReinitializeCodec()Z

    .line 1945
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_40

    .line 1946
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->flush(Z)V

    :cond_40
    return v0
.end method

.method public maybeInitializeProcessingPipeline(Lio/bidmachine/media3/common/Format;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1399
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1401
    :try_start_a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->initialize(Lio/bidmachine/media3/common/Format;)Z

    move-result p1
    :try_end_10
    .catch Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_a .. :try_end_10} :catch_11

    return p1

    :catch_11
    move-exception v0

    const/16 v1, 0x1b58

    .line 1403
    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lio/bidmachine/media3/common/Format;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_19
    const/4 p1, 0x1

    return p1
.end method

.method public final maybeNotifyDroppedFrames()V
    .registers 7

    .line 2172
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_1c

    .line 2173
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getClock()Lio/bidmachine/media3/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 2174
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 2175
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    const/4 v2, 0x0

    .line 2176
    iput v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 2177
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_1c
    return-void
.end method

.method public final maybeNotifyRenderedFirstFrame()V
    .registers 2

    .line 2140
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->onFrameReleasedIsFirstFrame()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eqz v0, :cond_f

    .line 2141
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->notifyRenderedFirstFrame()V

    :cond_f
    return-void
.end method

.method public final maybeNotifyVideoFrameProcessingOffset()V
    .registers 5

    .line 2182
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    if-eqz v0, :cond_12

    .line 2183
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    invoke-virtual {v1, v2, v3, v0}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->reportVideoFrameProcessingOffset(JI)V

    const-wide/16 v0, 0x0

    .line 2185
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    const/4 v0, 0x0

    .line 2186
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    :cond_12
    return-void
.end method

.method public final maybeNotifyVideoSizeChanged(Lio/bidmachine/media3/common/VideoSize;)V
    .registers 3

    .line 2159
    sget-object v0, Lio/bidmachine/media3/common/VideoSize;->UNKNOWN:Lio/bidmachine/media3/common/VideoSize;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Lio/bidmachine/media3/common/VideoSize;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2160
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Lio/bidmachine/media3/common/VideoSize;

    .line 2161
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Lio/bidmachine/media3/common/VideoSize;)V

    :cond_17
    return-void
.end method

.method public final maybeRenotifyRenderedFirstFrame()V
    .registers 3

    .line 2152
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    if-eqz v1, :cond_d

    .line 2153
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public final maybeRenotifyVideoSizeChanged()V
    .registers 3

    .line 2166
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Lio/bidmachine/media3/common/VideoSize;

    if-eqz v0, :cond_9

    .line 2167
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Lio/bidmachine/media3/common/VideoSize;)V

    :cond_9
    return-void
.end method

.method public final maybeSetKeyAllowFrameDrop(Landroid/media/MediaFormat;)V
    .registers 4

    .line 1242
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->isFrameDropAllowedOnSurfaceInput(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1243
    const-string v0, "allow-frame-drop"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_12
    return-void
.end method

.method public final maybeSetupTunnelingForFirstFrame()V
    .registers 5

    .line 2105
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_2b

    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_b

    goto :goto_2b

    .line 2110
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodec()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_2b

    .line 2115
    :cond_12
    new-instance v2, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    invoke-direct {v2, p0, v1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;)V

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    const/16 v2, 0x21

    if-lt v0, v2, :cond_2b

    .line 2120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2121
    const-string v2, "tunnel-peek"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2122
    invoke-interface {v1, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final notifyFrameMetadataListener(JJLio/bidmachine/media3/common/Format;)V
    .registers 13

    .line 1791
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->frameMetadataListener:Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_e

    .line 1793
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 1792
    invoke-interface/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLio/bidmachine/media3/common/Format;Landroid/media/MediaFormat;)V

    :cond_e
    return-void
.end method

.method public final notifyRenderedFirstFrame()V
    .registers 3

    .line 2147
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2148
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    return-void
.end method

.method public onCodecError(Ljava/lang/Exception;)V
    .registers 4

    .line 1438
    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    invoke-static {v0, v1, p1}, Lio/bidmachine/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1439
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onCodecInitialized(Ljava/lang/String;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;JJ)V
    .registers 7

    move-object p2, p1

    .line 1424
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual/range {p1 .. p6}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 1425
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    .line 1427
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecInfo()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->isHdr10PlusOutOfBandMetadataSupported()Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    .line 1428
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeSetupTunnelingForFirstFrame()V

    return-void
.end method

.method public onCodecReleased(Ljava/lang/String;)V
    .registers 3

    .line 1433
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public onDisabled()V
    .registers 4

    const/4 v0, 0x0

    .line 1049
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Lio/bidmachine/media3/common/VideoSize;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1050
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->periodDurationUs:J

    .line 1051
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz v1, :cond_12

    .line 1052
    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->onRendererDisabled()V

    goto :goto_17

    .line 1054
    :cond_12
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->onDisabled()V

    .line 1056
    :goto_17
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeSetupTunnelingForFirstFrame()V

    const/4 v1, 0x0

    .line 1057
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    .line 1058
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 1060
    :try_start_1f
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_31

    .line 1062
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->disabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    .line 1063
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    sget-object v1, Lio/bidmachine/media3/common/VideoSize;->UNKNOWN:Lio/bidmachine/media3/common/VideoSize;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Lio/bidmachine/media3/common/VideoSize;)V

    return-void

    :catchall_31
    move-exception v0

    .line 1062
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->disabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    .line 1063
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    sget-object v2, Lio/bidmachine/media3/common/VideoSize;->UNKNOWN:Lio/bidmachine/media3/common/VideoSize;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Lio/bidmachine/media3/common/VideoSize;)V

    .line 1064
    throw v0
.end method

.method public onEnabled(ZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 853
    invoke-super {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onEnabled(ZZ)V

    .line 854
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getConfiguration()Lio/bidmachine/media3/exoplayer/RendererConfiguration;

    move-result-object p1

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/RendererConfiguration;->tunneling:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_14

    .line 855
    iget v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eqz v2, :cond_12

    goto :goto_14

    :cond_12
    move v2, v0

    goto :goto_15

    :cond_14
    :goto_14
    move v2, v1

    :goto_15
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 856
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eq v2, p1, :cond_21

    .line 857
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 858
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 860
    :cond_21
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    invoke-virtual {p1, v2}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->enabled(Lio/bidmachine/media3/exoplayer/DecoderCounters;)V

    .line 863
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->hasSetVideoSink:Z

    if-nez p1, :cond_54

    .line 864
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoEffects:Ljava/util/List;

    if-eqz p1, :cond_52

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-nez p1, :cond_52

    .line 865
    new-instance p1, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-direct {p1, v2, v3}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;-><init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;)V

    .line 867
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getClock()Lio/bidmachine/media3/common/util/Clock;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->setClock(Lio/bidmachine/media3/common/util/Clock;)Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;

    move-result-object p1

    .line 868
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->build()Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    move-result-object p1

    .line 869
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->setTotalVideoInputCount(I)V

    .line 870
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->getSink(I)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 872
    :cond_52
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->hasSetVideoSink:Z

    .line 874
    :cond_54
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_ae

    .line 878
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$1;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$1;-><init>(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;)V

    .line 914
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 878
    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setListener(Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V

    .line 915
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->frameMetadataListener:Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;

    if-eqz p1, :cond_6d

    .line 916
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setVideoFrameMetadataListener(Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;)V

    .line 918
    :cond_6d
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eqz p1, :cond_84

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->outputResolution:Lio/bidmachine/media3/common/util/Size;

    sget-object v0, Lio/bidmachine/media3/common/util/Size;->UNKNOWN:Lio/bidmachine/media3/common/util/Size;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_84

    .line 919
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->outputResolution:Lio/bidmachine/media3/common/util/Size;

    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setOutputSurfaceInfo(Landroid/view/Surface;Lio/bidmachine/media3/common/util/Size;)V

    .line 921
    :cond_84
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->changeFrameRateStrategy:I

    invoke-interface {p1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setChangeFrameRateStrategy(I)V

    .line 922
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getPlaybackSpeed()F

    move-result v0

    invoke-interface {p1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setPlaybackSpeed(F)V

    .line 923
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoEffects:Ljava/util/List;

    if-eqz p1, :cond_9d

    .line 924
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setVideoEffects(Ljava/util/List;)V

    .line 926
    :cond_9d
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->onRendererEnabled(Z)V

    .line 927
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getWakeupListener()Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;

    move-result-object p1

    if-eqz p1, :cond_ad

    .line 929
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    invoke-interface {p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setWakeupListener(Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;)V

    :cond_ad
    return-void

    .line 932
    :cond_ae
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getClock()Lio/bidmachine/media3/common/util/Clock;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->setClock(Lio/bidmachine/media3/common/util/Clock;)V

    .line 933
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->onEnabled(Z)V

    return-void
.end method

.method public onInit()V
    .registers 1

    .line 847
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->onInit()V

    return-void
.end method

.method public onInputFormatChanged(Lio/bidmachine/media3/exoplayer/FormatHolder;)Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1453
    invoke-super {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lio/bidmachine/media3/exoplayer/FormatHolder;)Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v0

    .line 1454
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/FormatHolder;->format:Lio/bidmachine/media3/common/Format;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/Format;

    invoke-virtual {v1, p1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;)V

    return-object v0
.end method

.method public onOutputFormatChanged(Lio/bidmachine/media3/common/Format;Landroid/media/MediaFormat;)V
    .registers 11

    .line 1578
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodec()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1581
    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    .line 1587
    :cond_b
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    .line 1588
    iget p2, p1, Lio/bidmachine/media3/common/Format;->width:I

    .line 1589
    iget v0, p1, Lio/bidmachine/media3/common/Format;->height:I

    goto :goto_66

    .line 1591
    :cond_16
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "crop-top"

    const-string v5, "crop-bottom"

    const-string v6, "crop-left"

    if-eqz v3, :cond_3b

    .line 1594
    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1595
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1596
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    move v3, v2

    goto :goto_3c

    :cond_3b
    move v3, v1

    :goto_3c
    if-eqz v3, :cond_49

    .line 1599
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v0, v6

    add-int/2addr v0, v2

    goto :goto_4f

    .line 1600
    :cond_49
    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_4f
    if-eqz v3, :cond_5d

    .line 1603
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v3, p2

    add-int/2addr v3, v2

    move p2, v3

    goto :goto_63

    .line 1604
    :cond_5d
    const-string v3, "height"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    :goto_63
    move v7, v0

    move v0, p2

    move p2, v7

    .line 1606
    :goto_66
    iget v3, p1, Lio/bidmachine/media3/common/Format;->pixelWidthHeightRatio:F

    .line 1610
    iget v4, p1, Lio/bidmachine/media3/common/Format;->rotationDegrees:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_72

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_79

    :cond_72
    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    move v7, v0

    move v0, p2

    move p2, v7

    .line 1616
    :cond_79
    new-instance v4, Lio/bidmachine/media3/common/VideoSize;

    invoke-direct {v4, p2, v0, v3}, Lio/bidmachine/media3/common/VideoSize;-><init>(IIF)V

    iput-object v4, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Lio/bidmachine/media3/common/VideoSize;

    .line 1618
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz v4, :cond_a0

    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->pendingVideoSinkInputStreamChange:Z

    if-eqz v5, :cond_a0

    .line 1623
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 1624
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/Format$Builder;->setWidth(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 1625
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Format$Builder;->setHeight(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 1626
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 1627
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    .line 1619
    invoke-virtual {p0, v4, v2, p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->changeVideoSinkInputStream(Lio/bidmachine/media3/exoplayer/video/VideoSink;ILio/bidmachine/media3/common/Format;)V

    goto :goto_a7

    .line 1629
    :cond_a0
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    iget p1, p1, Lio/bidmachine/media3/common/Format;->frameRate:F

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->setFrameRate(F)V

    .line 1631
    :goto_a7
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->pendingVideoSinkInputStreamChange:Z

    return-void
.end method

.method public onPositionReset(JZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 974
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    if-nez p3, :cond_a

    .line 978
    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->flush(Z)V

    .line 980
    :cond_a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 981
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getOutputStreamStartPositionUs()J

    move-result-wide v2

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getBufferTimestampAdjustmentUs()J

    move-result-wide v4

    .line 980
    invoke-interface {v0, v2, v3, v4, v5}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setStreamTimestampInfo(JJ)V

    .line 982
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->pendingVideoSinkInputStreamChange:Z

    .line 984
    :cond_19
    invoke-super {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 985
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-nez p1, :cond_25

    .line 986
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->reset()V

    :cond_25
    const/4 p1, 0x0

    if-eqz p3, :cond_35

    .line 992
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz p2, :cond_30

    .line 993
    invoke-interface {p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->join(Z)V

    goto :goto_35

    .line 995
    :cond_30
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->join(Z)V

    .line 998
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeSetupTunnelingForFirstFrame()V

    .line 999
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    return-void
.end method

.method public onProcessedOutputBuffer(J)V
    .registers 3

    .line 1814
    invoke-super {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 1815
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez p1, :cond_d

    .line 1816
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    :cond_d
    return-void
.end method

.method public onProcessedStreamChange()V
    .registers 6

    .line 1822
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    .line 1823
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_18

    .line 1825
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->signalEndOfCurrentInputStream()V

    .line 1826
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 1827
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getOutputStreamStartPositionUs()J

    move-result-wide v1

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getBufferTimestampAdjustmentUs()J

    move-result-wide v3

    .line 1826
    invoke-interface {v0, v1, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setStreamTimestampInfo(JJ)V

    goto :goto_1d

    .line 1829
    :cond_18
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->onProcessedStreamChange()V

    :goto_1d
    const/4 v0, 0x1

    .line 1831
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->pendingVideoSinkInputStreamChange:Z

    .line 1832
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeSetupTunnelingForFirstFrame()V

    return-void
.end method

.method public onProcessedTunneledBuffer(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1799
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateOutputFormatForTime(J)V

    .line 1800
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Lio/bidmachine/media3/common/VideoSize;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged(Lio/bidmachine/media3/common/VideoSize;)V

    .line 1801
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    iget v1, v0, Lio/bidmachine/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lio/bidmachine/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    .line 1802
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 1803
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->onProcessedOutputBuffer(J)V

    return-void
.end method

.method public final onProcessedTunneledEndOfStream()V
    .registers 1

    .line 1808
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->setPendingOutputEndOfStream()V

    return-void
.end method

.method public onQueueInputBuffer(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1469
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->av1SampleDependencyParser:Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;

    if-eqz v0, :cond_21

    .line 1470
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecInfo()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    const-string v1, "video/av01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_21

    .line 1472
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->av1SampleDependencyParser:Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;->queueInputBuffer(Ljava/nio/ByteBuffer;)V

    :cond_21
    const/4 v0, 0x0

    .line 1474
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedInputBufferCount:I

    .line 1477
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_2e

    .line 1478
    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 1480
    :cond_2e
    sget v1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_3b

    if-eqz v0, :cond_3b

    .line 1483
    iget-wide v0, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V

    :cond_3b
    return-void
.end method

.method public onRelease()V
    .registers 3

    .line 1080
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->onRelease()V

    .line 1081
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_e

    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->ownsVideoSink:Z

    if-eqz v1, :cond_e

    .line 1082
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->release()V

    :cond_e
    return-void
.end method

.method public onReset()V
    .registers 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    .line 1070
    :try_start_6
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onReset()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_11

    .line 1072
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->hasSetVideoSink:Z

    .line 1073
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->startPositionUs:J

    .line 1074
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->releasePlaceholderSurface()V

    return-void

    :catchall_11
    move-exception v3

    .line 1072
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->hasSetVideoSink:Z

    .line 1073
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->startPositionUs:J

    .line 1074
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->releasePlaceholderSurface()V

    .line 1075
    throw v3
.end method

.method public onStarted()V
    .registers 4

    .line 1022
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onStarted()V

    const/4 v0, 0x0

    .line 1023
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1024
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getClock()Lio/bidmachine/media3/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 1025
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    const-wide/16 v1, 0x0

    .line 1026
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 1027
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    .line 1028
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_1e

    .line 1029
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->onRendererStarted()V

    return-void

    .line 1031
    :cond_1e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->onStarted()V

    return-void
.end method

.method public onStopped()V
    .registers 2

    .line 1037
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 1038
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyVideoFrameProcessingOffset()V

    .line 1039
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_e

    .line 1040
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->onRendererStopped()V

    goto :goto_13

    .line 1042
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->onStopped()V

    .line 1044
    :goto_13
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onStopped()V

    return-void
.end method

.method public onStreamChanged([Lio/bidmachine/media3/common/Format;JJLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 953
    invoke-super/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onStreamChanged([Lio/bidmachine/media3/common/Format;JJLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    move-object p1, p0

    .line 954
    iget-wide p4, p1, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->startPositionUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p4, p4, v0

    if-nez p4, :cond_11

    .line 955
    iput-wide p2, p1, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->startPositionUs:J

    .line 957
    :cond_11
    invoke-virtual {p0, p6}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->updatePeriodDurationUs(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public onWakeupListenerSet(Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;)V
    .registers 3

    .line 1444
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_7

    .line 1445
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setWakeupListener(Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;)V

    :cond_7
    return-void
.end method

.method public processOutputBuffer(JJLio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLio/bidmachine/media3/common/Format;)Z
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move/from16 v3, p7

    move-wide/from16 v4, p10

    move/from16 v10, p13

    .line 1691
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getOutputStreamOffsetUs()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 1695
    invoke-virtual {v1, v4, v5}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->updateDroppedBufferCountersWithInputBuffers(J)V

    .line 1697
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    const/4 v12, 0x1

    if-eqz v0, :cond_36

    if-eqz p12, :cond_23

    if-nez v10, :cond_23

    .line 1700
    invoke-virtual {v1, v2, v3, v6, v7}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    return v12

    .line 1703
    :cond_23
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getBufferTimestampAdjustmentUs()J

    move-result-wide v8

    add-long/2addr v8, v4

    .line 1704
    iget-object v11, v1, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    new-instance v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$2;

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$2;-><init>(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    move-object v13, v1

    invoke-interface {v11, v8, v9, v10, v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->handleInputFrame(JZLio/bidmachine/media3/exoplayer/video/VideoSink$VideoFrameHandler;)Z

    move-result v0

    return v0

    :cond_36
    move-object v13, v1

    move-object v14, v2

    move v15, v3

    move-wide v0, v6

    .line 1721
    iget-object v2, v13, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 1726
    invoke-virtual {v13}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getOutputStreamStartPositionUs()J

    move-result-wide v7

    iget-object v11, v13, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseInfo:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    move/from16 v9, p12

    move-wide/from16 v16, v0

    move-object v0, v2

    move-wide v1, v4

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    .line 1722
    invoke-virtual/range {v0 .. v11}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->getFrameReleaseAction(JJJJZZLio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)I

    move-result v0

    if-eqz v0, :cond_a1

    if-eq v0, v12, :cond_8b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6b

    const/4 v1, 0x5

    if-ne v0, v1, :cond_61

    goto :goto_6b

    .line 1752
    :cond_61
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6b
    :goto_6b
    const/4 v0, 0x0

    return v0

    :cond_6d
    move-wide/from16 v4, v16

    .line 1738
    invoke-virtual {v13, v14, v15, v4, v5}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    .line 1739
    iget-object v0, v13, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseInfo:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->getEarlyUs()J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v12

    :cond_7c
    move-wide/from16 v4, v16

    .line 1742
    invoke-virtual {v13, v14, v15, v4, v5}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->dropOutputBuffer(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    .line 1743
    iget-object v0, v13, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseInfo:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->getEarlyUs()J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v12

    :cond_8b
    move-wide/from16 v4, v16

    .line 1749
    invoke-static {v14}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-object/from16 p6, p14

    move-object/from16 p2, v0

    move-wide/from16 p4, v4

    move-object/from16 p1, v13

    move/from16 p3, v15

    invoke-virtual/range {p1 .. p6}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->releaseFrame(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJLio/bidmachine/media3/common/Format;)V

    return v12

    :cond_a1
    move-wide/from16 v4, v16

    .line 1732
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getClock()Lio/bidmachine/media3/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/media3/common/util/Clock;->nanoTime()J

    move-result-wide v0

    move-object/from16 p8, p0

    move-object/from16 p13, p14

    move-wide/from16 p11, v0

    move-wide/from16 p9, v4

    .line 1733
    invoke-virtual/range {p8 .. p13}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLio/bidmachine/media3/common/Format;)V

    move-wide/from16 p13, p11

    move-wide/from16 p11, p9

    move-object/from16 p9, v14

    move/from16 p10, p7

    .line 1734
    invoke-virtual/range {p8 .. p14}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBuffer(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V

    move-object/from16 v1, p8

    .line 1735
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseInfo:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->getEarlyUs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v12
.end method

.method public final releaseFrame(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJLio/bidmachine/media3/common/Format;)V
    .registers 16

    .line 1773
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseInfo:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->getReleaseTimeNs()J

    move-result-wide v4

    .line 1774
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseInfo:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->getEarlyUs()J

    move-result-wide v8

    .line 1775
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldSkipBuffersWithIdenticalReleaseTime()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->lastFrameReleaseTimeNs:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_1d

    .line 1780
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    move-object v1, p0

    goto :goto_2b

    :cond_1d
    move-object v1, p0

    move-wide v2, p3

    move-object v6, p5

    .line 1782
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLio/bidmachine/media3/common/Format;)V

    move-wide v6, v4

    move-wide v4, v2

    move-object v2, p1

    move v3, p2

    .line 1783
    invoke-virtual/range {v1 .. v7}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V

    move-wide v4, v6

    .line 1785
    :goto_2b
    invoke-virtual {p0, v8, v9}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    .line 1786
    iput-wide v4, v1, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->lastFrameReleaseTimeNs:J

    return-void
.end method

.method public final releasePlaceholderSurface()V
    .registers 2

    .line 2098
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_a

    .line 2099
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->release()V

    const/4 v0, 0x0

    .line 2100
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;

    :cond_a
    return-void
.end method

.method public render(JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1272
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_12

    .line 1275
    :try_start_4
    invoke-interface {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->render(JJ)V
    :try_end_7
    .catch Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_12

    :catch_8
    move-exception p1

    .line 1277
    iget-object p2, p1, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;->format:Lio/bidmachine/media3/common/Format;

    const/16 p3, 0x1b59

    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lio/bidmachine/media3/common/Format;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 1281
    :cond_12
    :goto_12
    invoke-super {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->render(JJ)V

    return-void
.end method

.method public final renderOutputBuffer(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V
    .registers 7

    .line 2012
    invoke-virtual/range {p0 .. p6}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V

    return-void
.end method

.method public renderOutputBufferV21(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V
    .registers 7

    .line 2042
    const-string p3, "releaseOutputBuffer"

    invoke-static {p3}, Lio/bidmachine/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 2043
    invoke-interface {p1, p2, p5, p6}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IJ)V

    .line 2044
    invoke-static {}, Lio/bidmachine/media3/common/util/TraceUtil;->endSection()V

    .line 2045
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    iget p2, p1, Lio/bidmachine/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lio/bidmachine/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    .line 2046
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 2047
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-nez p1, :cond_22

    .line 2048
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Lio/bidmachine/media3/common/VideoSize;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged(Lio/bidmachine/media3/common/VideoSize;)V

    .line 2049
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    :cond_22
    return-void
.end method

.method public renderToEndOfStream()V
    .registers 2

    .line 1758
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_7

    .line 1759
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->signalEndOfCurrentInputStream()V

    :cond_7
    return-void
.end method

.method public resetCodecStateForFlush()V
    .registers 2

    .line 1287
    invoke-super {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    .line 1288
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedDecoderInputBufferTimestamps:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    const/4 v0, 0x0

    .line 1289
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldDropDecoderInputBuffers:Z

    .line 1290
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 1291
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedInputBufferCount:I

    .line 1292
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->av1SampleDependencyParser:Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;

    if-eqz v0, :cond_16

    .line 1293
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;->reset()V

    :cond_16
    return-void
.end method

.method public final setOutput(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1156
    instance-of v0, p1, Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Landroid/view/Surface;

    goto :goto_9

    :cond_8
    move-object p1, v1

    .line 1158
    :goto_9
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_75

    .line 1159
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 1160
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-nez v0, :cond_18

    .line 1161
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->setOutputSurface(Landroid/view/Surface;)V

    :cond_18
    const/4 v0, 0x0

    .line 1163
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    .line 1165
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getState()I

    move-result v0

    .line 1166
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodec()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 1167
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-nez v3, :cond_51

    .line 1168
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecInfo()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 1169
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->hasSurfaceForCodec(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result v4

    .line 1170
    sget v5, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_4b

    if-eqz v4, :cond_4b

    iget-boolean v4, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    if-nez v4, :cond_4b

    .line 1171
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->getSurfaceForCodec(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->setOutputSurface(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V

    goto :goto_51

    .line 1173
    :cond_4b
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 1174
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    :cond_51
    :goto_51
    if-eqz p1, :cond_57

    .line 1179
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    goto :goto_60

    .line 1182
    :cond_57
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Lio/bidmachine/media3/common/VideoSize;

    .line 1183
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_60

    .line 1184
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->clearOutputSurfaceInfo()V

    :cond_60
    :goto_60
    const/4 p1, 0x2

    if-ne v0, p1, :cond_71

    .line 1192
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    const/4 v0, 0x1

    if-eqz p1, :cond_6c

    .line 1193
    invoke-interface {p1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->join(Z)V

    goto :goto_71

    .line 1195
    :cond_6c
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->join(Z)V

    .line 1198
    :cond_71
    :goto_71
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeSetupTunnelingForFirstFrame()V

    return-void

    :cond_75
    if-eqz p1, :cond_7d

    .line 1202
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 1203
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    :cond_7d
    return-void
.end method

.method public final setOutputSurface(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V
    .registers 5

    .line 2198
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_c

    if-eqz p2, :cond_c

    .line 2199
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->setOutputSurfaceV23(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V

    return-void

    :cond_c
    const/16 p2, 0x23

    if-lt v0, p2, :cond_14

    .line 2201
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->detachOutputSurfaceV35(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;)V

    return-void

    .line 2203
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setOutputSurfaceV23(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V
    .registers 3

    .line 2209
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1300
    invoke-super {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->setPlaybackSpeed(FF)V

    .line 1301
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz p2, :cond_b

    .line 1302
    invoke-interface {p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setPlaybackSpeed(F)V

    return-void

    .line 1304
    :cond_b
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->setPlaybackSpeed(F)V

    return-void
.end method

.method public setVideoEffects(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1412
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoEffects:Ljava/util/List;

    .line 1413
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_9

    .line 1414
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setVideoEffects(Ljava/util/List;)V

    :cond_9
    return-void
.end method

.method public shouldDiscardDecoderInputBuffer(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z
    .registers 9

    .line 1501
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->isBufferProbablyLastSample(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1505
    :cond_8
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 1510
    :cond_f
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->isBufferBeforeStartTime(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1511
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldDropDecoderInputBuffers:Z

    if-nez v2, :cond_1a

    return v1

    .line 1514
    :cond_1a
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/Buffer;->hasSupplementalData()Z

    move-result v2

    if-eqz v2, :cond_21

    return v1

    .line 1517
    :cond_21
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/Buffer;->notDependedOn()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4a

    .line 1518
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    if-eqz v0, :cond_35

    .line 1520
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    iget v0, p1, Lio/bidmachine/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    add-int/2addr v0, v3

    iput v0, p1, Lio/bidmachine/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    goto :goto_49

    .line 1521
    :cond_35
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldDropDecoderInputBuffers:Z

    if-eqz v0, :cond_49

    .line 1522
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedDecoderInputBufferTimestamps:Ljava/util/PriorityQueue;

    iget-wide v1, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 1523
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedInputBufferCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedInputBufferCount:I

    :cond_49
    :goto_49
    return v3

    .line 1527
    :cond_4a
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->av1SampleDependencyParser:Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;

    if-eqz v2, :cond_c3

    .line 1528
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecInfo()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    const-string v4, "video/av01"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    iget-object v2, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_c3

    if-nez v0, :cond_6f

    .line 1530
    iget v4, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedInputBufferCount:I

    if-gtz v4, :cond_6d

    goto :goto_6f

    :cond_6d
    move v4, v1

    goto :goto_70

    :cond_6f
    :goto_6f
    move v4, v3

    .line 1534
    :goto_70
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1535
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1536
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->av1SampleDependencyParser:Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;

    .line 1537
    invoke-virtual {v5, v2, v4}, Lio/bidmachine/media3/exoplayer/video/Av1SampleDependencyParser;->sampleLimitAfterSkippingNonReferenceFrame(Ljava/nio/ByteBuffer;Z)I

    move-result v4

    .line 1539
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->codecMaxValues:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    .line 1540
    invoke-static {v5}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v5, v5, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    add-int/2addr v5, v4

    .line 1541
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v6

    if-ge v5, v6, :cond_90

    move v5, v3

    goto :goto_91

    :cond_90
    move v5, v1

    .line 1542
    :goto_91
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    if-eq v4, v2, :cond_c3

    if-eqz v5, :cond_c3

    .line 1544
    iget-object v1, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-eqz v0, :cond_ae

    .line 1546
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    iget v0, p1, Lio/bidmachine/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    add-int/2addr v0, v3

    iput v0, p1, Lio/bidmachine/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    goto :goto_c2

    .line 1547
    :cond_ae
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldDropDecoderInputBuffers:Z

    if-eqz v0, :cond_c2

    .line 1548
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedDecoderInputBufferTimestamps:Ljava/util/PriorityQueue;

    iget-wide v1, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 1549
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedInputBufferCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedInputBufferCount:I

    :cond_c2
    :goto_c2
    return v3

    :cond_c3
    return v1
.end method

.method public shouldDropBuffersToKeyframe(JJZ)Z
    .registers 6

    .line 0
    const-wide/32 p3, -0x7a120

    cmp-long p1, p1, p3

    if-gez p1, :cond_b

    if-nez p5, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public shouldDropFrame(JJZ)Z
    .registers 6

    .line 618
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldDropOutputBuffer(JJZ)Z

    move-result p1

    return p1
.end method

.method public shouldDropOutputBuffer(JJZ)Z
    .registers 6

    .line 0
    const-wide/16 p3, -0x7530

    cmp-long p1, p1, p3

    if-gez p1, :cond_a

    if-nez p5, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public shouldForceReleaseFrame(JJ)Z
    .registers 5

    .line 613
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result p1

    return p1
.end method

.method public shouldForceRenderOutputBuffer(JJ)Z
    .registers 7

    .line 0
    const-wide/16 v0, -0x7530

    cmp-long p1, p1, v0

    if-gez p1, :cond_f

    const-wide/32 p1, 0x186a0

    cmp-long p1, p3, p1

    if-lez p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public shouldIgnoreFrame(JJJZZ)Z
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 629
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->minEarlyUsToDropDecoderInput:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_24

    .line 636
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v1

    const-wide/32 v3, 0x30d40

    add-long/2addr v1, v3

    cmp-long v1, p3, v1

    if-lez v1, :cond_21

    .line 638
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->minEarlyUsToDropDecoderInput:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_21

    move v1, v7

    goto :goto_22

    :cond_21
    move v1, v6

    :goto_22
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldDropDecoderInputBuffers:Z

    :cond_24
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p5

    move v5, p7

    .line 641
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldDropBuffersToKeyframe(JJZ)Z

    move-result v1

    if-eqz v1, :cond_37

    move/from16 v1, p8

    .line 642
    invoke-virtual {p0, p3, p4, v1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeDropBuffersToKeyframe(JZ)Z

    move-result v1

    if-eqz v1, :cond_37

    return v7

    :cond_37
    return v6
.end method

.method public shouldInitCodec(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .registers 2

    .line 1209
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->hasSurfaceForCodec(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result p1

    return p1
.end method

.method public shouldSkipBuffersWithIdenticalReleaseTime()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public shouldUseDetachedSurface(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .registers 4

    .line 2087
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_c

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->detachedSurfaceSupported:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public shouldUsePlaceholderSurface(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .registers 4

    .line 2091
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_20

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_20

    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 2093
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 2094
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/PlaceholderSurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_20

    :cond_1e
    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public skipOutputBuffer(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V
    .registers 5

    .line 1893
    const-string p3, "skipVideoBuffer"

    invoke-static {p3}, Lio/bidmachine/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1894
    invoke-interface {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1895
    invoke-static {}, Lio/bidmachine/media3/common/util/TraceUtil;->endSection()V

    .line 1896
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    iget p2, p1, Lio/bidmachine/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lio/bidmachine/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    return-void
.end method

.method public supportsFormat(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->supportsFormatInternal(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;)I

    move-result p1

    return p1
.end method

.method public updateDroppedBufferCounters(II)V
    .registers 5

    .line 1961
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    iget v1, v0, Lio/bidmachine/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lio/bidmachine/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr p1, p2

    .line 1963
    iget p2, v0, Lio/bidmachine/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    add-int/2addr p2, p1

    iput p2, v0, Lio/bidmachine/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    .line 1964
    iget p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    add-int/2addr p2, p1

    iput p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1965
    iget p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr p2, p1

    iput p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1966
    iget p1, v0, Lio/bidmachine/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 1967
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lio/bidmachine/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 1968
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez p1, :cond_2a

    iget p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lt p2, p1, :cond_2a

    .line 1969
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_2a
    return-void
.end method

.method public final updateDroppedBufferCountersWithInputBuffers(J)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 1982
    :goto_2
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedDecoderInputBufferTimestamps:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1c

    .line 1983
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_1c

    add-int/lit8 v1, v1, 0x1

    .line 1985
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedDecoderInputBufferTimestamps:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    goto :goto_2

    .line 1987
    :cond_1c
    invoke-virtual {p0, v1, v0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    return-void
.end method

.method public final updatePeriodDurationUs(Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 4

    .line 961
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getTimeline()Lio/bidmachine/media3/common/Timeline;

    move-result-object v0

    .line 962
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 963
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->periodDurationUs:J

    return-void

    .line 968
    :cond_12
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    new-instance v1, Lio/bidmachine/media3/common/Timeline$Period;

    invoke-direct {v1}, Lio/bidmachine/media3/common/Timeline$Period;-><init>()V

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Lio/bidmachine/media3/common/Timeline$Period;)Lio/bidmachine/media3/common/Timeline$Period;

    move-result-object p1

    .line 969
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->periodDurationUs:J

    return-void
.end method

.method public updateVideoFrameProcessingOffsetCounters(J)V
    .registers 5

    .line 1996
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/DecoderCounters;->addVideoFrameProcessingOffset(J)V

    .line 1997
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 1998
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.MediaCodecVideoRenderer.AnonymousClass1 (io.bidmachine.media3.exoplayer.video.MediaCodecVideoRenderer$1)
.class public Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$1;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->onEnabled(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;)V
    .registers 2

    .line 879
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstFrameRendered(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V
    .registers 2

    .line 882
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1200(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 883
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1300(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;)V

    :cond_d
    return-void
.end method

.method public onFrameDropped(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V
    .registers 4

    .line 889
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1200(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 890
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    :cond_f
    return-void
.end method

.method public onVideoSizeChanged(Lio/bidmachine/media3/exoplayer/video/VideoSink;Lio/bidmachine/media3/common/VideoSize;)V
    .registers 3

    .line 0
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.MediaCodecVideoRenderer.AnonymousClass2 (io.bidmachine.media3.exoplayer.video.MediaCodecVideoRenderer$2)
.class public Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$2;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoFrameHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->processOutputBuffer(JJLio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLio/bidmachine/media3/common/Format;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

.field public final synthetic val$bufferIndex:I

.field public final synthetic val$codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

.field public final synthetic val$presentationTimeUs:J


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1707
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$2;->this$0:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$2;->val$codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    iput p3, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$2;->val$bufferIndex:I

    iput-wide p4, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$2;->val$presentationTimeUs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public render(J)V
    .registers 10

    .line 1710
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$2;->this$0:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$2;->val$codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$2;->val$bufferIndex:I

    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$2;->val$presentationTimeUs:J

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1600(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V

    return-void
.end method

.method public skip()V
    .registers 6

    .line 1715
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$2;->this$0:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$2;->val$codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$2;->val$bufferIndex:I

    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$2;->val$presentationTimeUs:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->skipOutputBuffer(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.MediaCodecVideoRenderer.Api26 (io.bidmachine.media3.exoplayer.video.MediaCodecVideoRenderer$Api26)
.class public final Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api26"
.end annotation


# direct methods
.method public static doesDisplaySupportDolbyVision(Landroid/content/Context;)Z
    .registers 6

    .line 828
    const-string v0, "display"

    .line 829
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    .line 831
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    if-eqz p0, :cond_2e

    .line 832
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Api26$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 833
    invoke-virtual {p0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object p0

    .line 834
    array-length v1, p0

    move v2, v0

    :goto_23
    if-ge v2, v1, :cond_2e

    aget v3, p0, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2b

    return v4

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_2e
    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.video.MediaCodecVideoRenderer.Builder (io.bidmachine.media3.exoplayer.video.MediaCodecVideoRenderer$Builder)
.class public final Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public allowedJoiningTimeMs:J

.field public assumedMinimumCodecOperatingRate:F

.field public buildCalled:Z

.field public codecAdapterFactory:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

.field public final context:Landroid/content/Context;

.field public enableDecoderFallback:Z

.field public eventHandler:Landroid/os/Handler;

.field public eventListener:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

.field public lateThresholdToDropDecoderInputUs:J

.field public maxDroppedFramesToNotify:I

.field public mediaCodecSelector:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

.field public parseAv1SampleDependencies:Z

.field public videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->context:Landroid/content/Context;

    .line 251
    sget-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;->DEFAULT:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->mediaCodecSelector:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 252
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;->getDefault(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->codecAdapterFactory:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    const/high16 p1, 0x41f00000    # 30.0f

    .line 253
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->assumedMinimumCodecOperatingRate:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 254
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->lateThresholdToDropDecoderInputUs:J

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;
    .registers 1

    .line 229
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->codecAdapterFactory:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    return-object p0
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;
    .registers 1

    .line 229
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->mediaCodecSelector:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    return-object p0
.end method

.method public static synthetic access$1000(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Z
    .registers 1

    .line 229
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->parseAv1SampleDependencies:Z

    return p0
.end method

.method public static synthetic access$1100(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)J
    .registers 3

    .line 229
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->lateThresholdToDropDecoderInputUs:J

    return-wide v0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Z
    .registers 1

    .line 229
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->enableDecoderFallback:Z

    return p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)F
    .registers 1

    .line 229
    iget p0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->assumedMinimumCodecOperatingRate:F

    return p0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Landroid/content/Context;
    .registers 1

    .line 229
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)I
    .registers 1

    .line 229
    iget p0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->maxDroppedFramesToNotify:I

    return p0
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Lio/bidmachine/media3/exoplayer/video/VideoSink;
    .registers 1

    .line 229
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->videoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    return-object p0
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Landroid/os/Handler;
    .registers 1

    .line 229
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$800(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;
    .registers 1

    .line 229
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventListener:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    return-object p0
.end method

.method public static synthetic access$900(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)J
    .registers 3

    .line 229
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->allowedJoiningTimeMs:J

    return-wide v0
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;
    .registers 4

    .line 391
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 392
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventListener:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    if-eqz v2, :cond_15

    :cond_f
    if-eqz v0, :cond_17

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventListener:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    if-eqz v0, :cond_17

    :cond_15
    move v0, v1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 395
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->buildCalled:Z

    .line 396
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V

    return-object v0
.end method

.method public experimentalSetLateThresholdToDropDecoderInputUs(J)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .registers 3

    .line 379
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->lateThresholdToDropDecoderInputUs:J

    return-object p0
.end method

.method public experimentalSetParseAv1SampleDependencies(Z)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .registers 2

    .line 363
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->parseAv1SampleDependencies:Z

    return-object p0
.end method

.method public setAllowedJoiningTimeMs(J)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .registers 3

    .line 280
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->allowedJoiningTimeMs:J

    return-object p0
.end method

.method public setCodecAdapterFactory(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .registers 2

    .line 270
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->codecAdapterFactory:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    return-object p0
.end method

.method public setEnableDecoderFallback(Z)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .registers 2

    .line 290
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->enableDecoderFallback:Z

    return-object p0
.end method

.method public setEventHandler(Landroid/os/Handler;)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .registers 2

    .line 302
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public setEventListener(Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .registers 2

    .line 314
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventListener:Lio/bidmachine/media3/exoplayer/video/VideoRendererEventListener;

    return-object p0
.end method

.method public setMaxDroppedFramesToNotify(I)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .registers 2

    .line 324
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->maxDroppedFramesToNotify:I

    return-object p0
.end method

.method public setMediaCodecSelector(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;)Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .registers 2

    .line 260
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->mediaCodecSelector:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    return-object p0
.end method

###### Class io.bidmachine.media3.exoplayer.video.MediaCodecVideoRenderer.CodecMaxValues (io.bidmachine.media3.exoplayer.video.MediaCodecVideoRenderer$CodecMaxValues)
.class public final Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecMaxValues"
.end annotation


# instance fields
.field public final height:I

.field public final inputSize:I

.field public final width:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 2479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2480
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    .line 2481
    iput p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    .line 2482
    iput p3, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.MediaCodecVideoRenderer.OnFrameRenderedListenerV23 (io.bidmachine.media3.exoplayer.video.MediaCodecVideoRenderer$OnFrameRenderedListenerV23)
.class public final Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OnFrameRenderedListenerV23"
.end annotation


# instance fields
.field public final handler:Landroid/os/Handler;

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;)V
    .registers 3

    .line 2722
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2723
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Util;->createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Landroid/os/Handler;

    .line 2724
    invoke-interface {p2, p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->setOnFrameRenderedListener(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final handleFrameRendered(J)V
    .registers 5

    .line 2761
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    if-ne p0, v1, :cond_28

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1700(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_28

    :cond_d
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_1c

    .line 2766
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1800(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;)V

    return-void

    .line 2769
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V
    :try_end_21
    .catch Lio/bidmachine/media3/exoplayer/ExoPlaybackException; {:try_start_1c .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception p1

    .line 2771
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->this$0:Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-static {p2, p1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1900(Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer;Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 2751
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 2753
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/util/Util;->toLong(II)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handleFrameRendered(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public onFrameRendered(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;JJ)V
    .registers 6

    .line 2736
    sget p1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 p4, 0x1e

    if-ge p1, p4, :cond_19

    .line 2737
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Landroid/os/Handler;

    const/16 p4, 0x20

    shr-long p4, p2, p4

    long-to-int p4, p4

    long-to-int p2, p2

    const/4 p3, 0x0

    .line 2738
    invoke-static {p1, p3, p4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 2743
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void

    .line 2745
    :cond_19
    invoke-virtual {p0, p2, p3}, Lio/bidmachine/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;->handleFrameRendered(J)V

    return-void
.end method
