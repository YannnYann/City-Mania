###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer)
.class public abstract Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;
.super Lio/bidmachine/media3/exoplayer/BaseRenderer;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;,
        Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;,
        Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$Api31;,
        Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$MediaCodecRendererCodecAdapterListener;
    }
.end annotation


# static fields
.field public static final ADAPTATION_WORKAROUND_BUFFER:[B


# instance fields
.field public final assumedMinimumCodecOperatingRate:F

.field public availableCodecInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

.field public final bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

.field public bypassDrainAndReinitialize:Z

.field public bypassEnabled:Z

.field public final bypassSampleBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

.field public bypassSampleBufferPending:Z

.field public codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

.field public codecAdaptationWorkaroundMode:I

.field public final codecAdapterFactory:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

.field public codecDrainAction:I

.field public codecDrainState:I

.field public codecDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

.field public codecHasOutputMediaFormat:Z

.field public codecHotswapDeadlineMs:J

.field public codecInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

.field public codecInputFormat:Lio/bidmachine/media3/common/Format;

.field public codecNeedsAdaptationWorkaroundBuffer:Z

.field public codecNeedsEosFlushWorkaround:Z

.field public codecNeedsEosOutputExceptionWorkaround:Z

.field public codecNeedsEosPropagation:Z

.field public codecNeedsSosFlushWorkaround:Z

.field public codecOperatingRate:F

.field public codecOutputMediaFormat:Landroid/media/MediaFormat;

.field public codecOutputMediaFormatChanged:Z

.field public codecReceivedBuffers:Z

.field public codecReceivedEos:Z

.field public codecReconfigurationState:I

.field public codecReconfigured:Z

.field public codecRegisteredOnBufferAvailableListener:Z

.field public currentPlaybackSpeed:F

.field public decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

.field public final enableDecoderFallback:Z

.field public experimentalEnableProcessedStreamChangedAtStart:Z

.field public inputFormat:Lio/bidmachine/media3/common/Format;

.field public inputIndex:I

.field public inputStreamEnded:Z

.field public isDecodeOnlyOutputBuffer:Z

.field public isLastOutputBuffer:Z

.field public largestQueuedPresentationTimeUs:J

.field public lastBufferInStreamPresentationTimeUs:J

.field public lastOutputBufferProcessedRealtimeMs:J

.field public lastProcessedOutputBufferTimeUs:J

.field public final mediaCodecSelector:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

.field public mediaCrypto:Landroid/media/MediaCrypto;

.field public needToNotifyOutputFormatChangeAfterStreamChange:Z

.field public final noDataBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

.field public final oggOpusAudioPacketizer:Lio/bidmachine/media3/exoplayer/audio/OggOpusAudioPacketizer;

.field public outputBuffer:Ljava/nio/ByteBuffer;

.field public final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field public outputFormat:Lio/bidmachine/media3/common/Format;

.field public outputIndex:I

.field public outputStreamEnded:Z

.field public outputStreamInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

.field public pendingOutputEndOfStream:Z

.field public final pendingOutputStreamChanges:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field public pendingPlaybackException:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

.field public preferredDecoderInitializationException:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

.field public renderTimeLimitMs:J

.field public shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field public sourceDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

.field public targetPlaybackSpeed:F

.field public waitingForFirstSampleInFormat:Z

.field public wakeupListener:Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x26

    .line 315
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    return-void

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;ZF)V
    .registers 6

    .line 420
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/BaseRenderer;-><init>(I)V

    .line 421
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdapterFactory:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    .line 422
    invoke-static {p3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 423
    iput-boolean p4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->enableDecoderFallback:Z

    .line 424
    iput p5, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    .line 425
    invoke-static {}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->newNoDataInstance()Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->noDataBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 426
    new-instance p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 427
    new-instance p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 428
    new-instance p1, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    .line 429
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 430
    iput p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    .line 431
    iput p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 432
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    .line 433
    new-instance p5, Ljava/util/ArrayDeque;

    invoke-direct {p5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 434
    sget-object p5, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->UNSET:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 440
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 441
    iget-object p1, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 442
    new-instance p1, Lio/bidmachine/media3/exoplayer/audio/OggOpusAudioPacketizer;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/audio/OggOpusAudioPacketizer;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Lio/bidmachine/media3/exoplayer/audio/OggOpusAudioPacketizer;

    const/high16 p1, -0x40800000    # -1.0f

    .line 444
    iput p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 445
    iput p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 446
    iput p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    const/4 p1, -0x1

    .line 447
    iput p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 448
    iput p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 449
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 450
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 451
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    .line 452
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    .line 453
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastOutputBufferProcessedRealtimeMs:J

    .line 454
    iput p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 455
    iput p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 456
    new-instance p1, Lio/bidmachine/media3/exoplayer/DecoderCounters;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/DecoderCounters;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    return-void
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;)Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;
    .registers 1

    .line 118
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->wakeupListener:Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;

    return-object p0
.end method

.method public static codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z
    .registers 3

    .line 2662
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_10

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z
    .registers 3

    .line 2677
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_10

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static codecNeedsEosPropagationWorkaround(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .registers 4

    .line 2636
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 2637
    sget v1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x19

    if-gt v1, v2, :cond_10

    const-string v2, "OMX.rk.video_decoder.avc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    :cond_10
    const/16 v2, 0x1d

    if-gt v1, v2, :cond_44

    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    .line 2639
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 2640
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "OMX.bcm.vdec.avc.tunnel"

    .line 2641
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "OMX.bcm.vdec.avc.tunnel.secure"

    .line 2642
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "OMX.bcm.vdec.hevc.tunnel"

    .line 2643
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "OMX.bcm.vdec.hevc.tunnel.secure"

    .line 2644
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_44
    const-string v0, "Amazon"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2645
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "AFTS"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p0, :cond_5e

    :cond_5c
    const/4 p0, 0x1

    return p0

    :cond_5e
    const/4 p0, 0x0

    return p0
.end method

.method public static codecNeedsSosFlushWorkaround(Ljava/lang/String;)Z
    .registers 3

    .line 2620
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_10

    const-string v0, "c2.android.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static isMediaCodecException(Ljava/lang/IllegalStateException;)Z
    .registers 4

    .line 2566
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 2569
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 2570
    array-length v0, p0

    const/4 v2, 0x0

    if-lez v0, :cond_1d

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.media.MediaCodec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    return v1

    :cond_1d
    return v2
.end method

.method public static supportsFormatDrm(Lio/bidmachine/media3/common/Format;)Z
    .registers 2

    .line 2277
    iget p0, p0, Lio/bidmachine/media3/common/Format;->cryptoType:I

    if-eqz p0, :cond_a

    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_a
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final bypassRead()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2461
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 2462
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getFormatHolder()Lio/bidmachine/media3/exoplayer/FormatHolder;

    move-result-object v0

    .line 2463
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 2465
    :cond_10
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 2466
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->readSource(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I

    move-result v2

    const/4 v4, -0x5

    if-eq v2, v4, :cond_f9

    const/4 v4, -0x4

    if-eq v2, v4, :cond_36

    const/4 v0, -0x3

    if-ne v2, v0, :cond_30

    .line 2472
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2474
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    :cond_2f
    return-void

    .line 2527
    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2478
    :cond_36
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 2479
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 2480
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    return-void

    .line 2483
    :cond_45
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iget-wide v6, v2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 2484
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 2485
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v2

    if-nez v2, :cond_5f

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lio/bidmachine/media3/decoder/Buffer;->isLastSample()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 2487
    :cond_5f
    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    .line 2489
    :cond_63
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    const-string v4, "audio/opus"

    if-eqz v2, :cond_ab

    .line 2491
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/Format;

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Lio/bidmachine/media3/common/Format;

    .line 2492
    iget-object v2, v2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Lio/bidmachine/media3/common/Format;

    iget-object v2, v2, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    .line 2493
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a3

    .line 2496
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Lio/bidmachine/media3/common/Format;

    iget-object v2, v2, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    .line 2497
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lio/bidmachine/media3/extractor/OpusUtil;->getPreSkipSamples([B)I

    move-result v2

    .line 2498
    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v5}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lio/bidmachine/media3/common/Format$Builder;->setEncoderDelay(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Lio/bidmachine/media3/common/Format;

    .line 2500
    :cond_a3
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Lio/bidmachine/media3/common/Format;

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Lio/bidmachine/media3/common/Format;Landroid/media/MediaFormat;)V

    .line 2501
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 2504
    :cond_ab
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->flip()V

    .line 2506
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Lio/bidmachine/media3/common/Format;

    if-eqz v2, :cond_e6

    iget-object v2, v2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 2507
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 2508
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lio/bidmachine/media3/decoder/Buffer;->hasSupplementalData()Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 2510
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Lio/bidmachine/media3/common/Format;

    iput-object v3, v2, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->format:Lio/bidmachine/media3/common/Format;

    .line 2511
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->handleInputBufferSupplementalData(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V

    .line 2514
    :cond_cd
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v2

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iget-wide v4, v4, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 2513
    invoke-static {v2, v3, v4, v5}, Lio/bidmachine/media3/extractor/OpusUtil;->needToDecodeOpusFrame(JJ)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 2517
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Lio/bidmachine/media3/exoplayer/audio/OggOpusAudioPacketizer;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Lio/bidmachine/media3/common/Format;

    iget-object v4, v4, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lio/bidmachine/media3/exoplayer/audio/OggOpusAudioPacketizer;->packetize(Lio/bidmachine/media3/decoder/DecoderInputBuffer;Ljava/util/List;)V

    .line 2520
    :cond_e6
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->haveBypassBatchBufferAndNewSampleSameDecodeOnlyState()Z

    move-result v2

    if-eqz v2, :cond_f6

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    .line 2521
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->append(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 2522
    :cond_f6
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    return-void

    .line 2469
    :cond_f9
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lio/bidmachine/media3/exoplayer/FormatHolder;)Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;

    return-void
.end method

.method public final bypassRender(JJ)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2398
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    const/4 v15, 0x1

    xor-int/2addr v1, v15

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 2399
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5c

    .line 2400
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    iget-object v6, v1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget v7, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 2407
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->getSampleCount()I

    move-result v9

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    .line 2408
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->getFirstSampleTimeUs()J

    move-result-wide v10

    .line 2409
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v3

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->getLastSampleTimeUs()J

    move-result-wide v12

    invoke-virtual {v0, v3, v4, v12, v13}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnly(JJ)Z

    move-result v12

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    .line 2410
    invoke-virtual {v1}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result v13

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Lio/bidmachine/media3/common/Format;

    .line 2411
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lio/bidmachine/media3/common/Format;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-wide/from16 v3, p3

    move v15, v2

    move-wide/from16 v1, p1

    .line 2400
    invoke-virtual/range {v0 .. v14}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLio/bidmachine/media3/common/Format;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 2413
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->getLastSampleTimeUs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 2414
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->clear()V

    goto :goto_5d

    :cond_5b
    return v15

    :cond_5c
    move v15, v2

    .line 2422
    :goto_5d
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-eqz v1, :cond_65

    const/4 v1, 0x1

    .line 2423
    iput-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    return v15

    .line 2427
    :cond_65
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    if-eqz v1, :cond_76

    .line 2428
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->append(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z

    move-result v1

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 2429
    iput-boolean v15, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    .line 2432
    :cond_76
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    if-eqz v1, :cond_92

    .line 2433
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    if-eqz v1, :cond_85

    const/16 v16, 0x1

    return v16

    .line 2439
    :cond_85
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->disableBypass()V

    .line 2440
    iput-boolean v15, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    .line 2441
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    .line 2442
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-nez v1, :cond_92

    return v15

    .line 2449
    :cond_92
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassRead()V

    .line 2451
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 2452
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->flip()V

    .line 2457
    :cond_a2
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    if-nez v1, :cond_b2

    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v1, :cond_b2

    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    if-eqz v1, :cond_b5

    :cond_b2
    const/16 v16, 0x1

    goto :goto_b6

    :cond_b5
    return v15

    :goto_b6
    return v16
.end method

.method public abstract canReuseCodec(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;
.end method

.method public final codecAdaptationWorkaroundMode(Ljava/lang/String;)I
    .registers 5

    .line 2587
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_32

    const-string v1, "OMX.Exynos.avc.dec.secure"

    .line 2588
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SM-T585"

    .line 2589
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "SM-A510"

    .line 2590
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "SM-A520"

    .line 2591
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "SM-J700"

    .line 2592
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    :cond_30
    const/4 p1, 0x2

    return p1

    :cond_32
    const/16 v1, 0x18

    if-ge v0, v1, :cond_6a

    .line 2594
    const-string v0, "OMX.Nvidia.h264.decode"

    .line 2595
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    :cond_46
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 2596
    const-string v0, "flounder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "flounder_lte"

    .line 2597
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "grouper"

    .line 2598
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "tilapia"

    .line 2599
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    :cond_68
    const/4 p1, 0x1

    return p1

    :cond_6a
    const/4 p1, 0x0

    return p1
.end method

.method public createDecoderException(Ljava/lang/Throwable;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    .registers 4

    .line 1029
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecDecoderException;-><init>(Ljava/lang/Throwable;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)V

    return-object v0
.end method

.method public final disableBypass()V
    .registers 3

    const/4 v0, 0x0

    .line 798
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    .line 799
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->clear()V

    .line 800
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 801
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    .line 802
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    .line 803
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Lio/bidmachine/media3/exoplayer/audio/OggOpusAudioPacketizer;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/OggOpusAudioPacketizer;->reset()V

    return-void
.end method

.method public final drainAndFlushCodec()Z
    .registers 3

    .line 1957
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 1958
    iput v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 1959
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    .line 1960
    iput v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v0, 0x0

    return v0

    .line 1963
    :cond_10
    iput v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    :cond_12
    return v1
.end method

.method public final drainAndReinitializeCodec()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2002
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    .line 2003
    iput v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v0, 0x3

    .line 2004
    iput v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    return-void

    .line 2007
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->reinitializeCodec()V

    return-void
.end method

.method public final drainAndUpdateCodecDrmSessionV23()Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1980
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 1981
    iput v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 1982
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    .line 1983
    iput v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v0, 0x0

    return v0

    :cond_10
    const/4 v0, 0x2

    .line 1986
    iput v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_17

    .line 1990
    :cond_14
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateDrmSessionV23()V

    :goto_17
    return v1
.end method

.method public final drainOutputBuffer(JJ)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2017
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 2018
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->hasOutputBuffer()Z

    move-result v1

    const/4 v15, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_cc

    .line 2020
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v1, :cond_2d

    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v1, :cond_2d

    .line 2022
    :try_start_1b
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v5, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1
    :try_end_21
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_21} :catch_22

    goto :goto_33

    .line 2024
    :catch_22
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 2025
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v1, :cond_2c

    .line 2027
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    :cond_2c
    return v2

    .line 2032
    :cond_2d
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v5, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1

    :goto_33
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v1, :cond_6a

    const/4 v5, -0x2

    if-ne v1, v5, :cond_41

    .line 2037
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->processOutputMediaFormatChanged()V

    return v15

    .line 2041
    :cond_41
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v1, :cond_51

    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v1, :cond_4e

    iget v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_51

    .line 2043
    :cond_4e
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 2045
    :cond_51
    iget-wide v5, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastOutputBufferProcessedRealtimeMs:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_69

    const-wide/16 v3, 0x64

    add-long/2addr v5, v3

    .line 2046
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getClock()Lio/bidmachine/media3/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lio/bidmachine/media3/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v5, v3

    if-gez v1, :cond_69

    .line 2050
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_69
    return v2

    .line 2056
    :cond_6a
    iget-boolean v6, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    if-eqz v6, :cond_74

    .line 2057
    iput-boolean v2, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 2058
    invoke-interface {v5, v1, v2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    return v15

    .line 2060
    :cond_74
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v7, :cond_84

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_84

    .line 2063
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    return v2

    .line 2067
    :cond_84
    iput v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 2068
    invoke-interface {v5, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_a1

    .line 2073
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2074
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v7, v6

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2076
    :cond_a1
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_af

    move v1, v15

    goto :goto_b0

    :cond_af
    move v1, v2

    :goto_b0
    iput-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    .line 2077
    iget-wide v6, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    cmp-long v1, v6, v3

    if-eqz v1, :cond_c2

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v1, v6, v3

    if-gtz v1, :cond_c2

    move v1, v15

    goto :goto_c3

    :cond_c2
    move v1, v2

    :goto_c3
    iput-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    .line 2080
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v3, v4}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateOutputFormatForTime(J)V

    .line 2084
    :cond_cc
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    if-eqz v1, :cond_104

    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v1, :cond_104

    .line 2086
    :try_start_d4
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v7, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iget-boolean v13, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Lio/bidmachine/media3/common/Format;

    .line 2098
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lio/bidmachine/media3/common/Format;
    :try_end_eb
    .catch Ljava/lang/IllegalStateException; {:try_start_d4 .. :try_end_eb} :catch_f7

    const/4 v9, 0x1

    move-wide/from16 v3, p3

    move/from16 v16, v2

    move-wide/from16 v1, p1

    .line 2087
    :try_start_f2
    invoke-virtual/range {v0 .. v14}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLio/bidmachine/media3/common/Format;)Z

    move-result v1
    :try_end_f6
    .catch Ljava/lang/IllegalStateException; {:try_start_f2 .. :try_end_f6} :catch_f9

    goto :goto_126

    :catch_f7
    move/from16 v16, v2

    .line 2100
    :catch_f9
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 2101
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v1, :cond_103

    .line 2103
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    :cond_103
    return v16

    :cond_104
    move/from16 v16, v2

    .line 2108
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v7, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iget-boolean v13, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Lio/bidmachine/media3/common/Format;

    .line 2120
    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lio/bidmachine/media3/common/Format;

    const/4 v9, 0x1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 2109
    invoke-virtual/range {v0 .. v14}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLio/bidmachine/media3/common/Format;)Z

    move-result v1

    :goto_126
    if-eqz v1, :cond_158

    .line 2124
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 2125
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_139

    move v2, v15

    goto :goto_13b

    :cond_139
    move/from16 v2, v16

    :goto_13b
    if-nez v2, :cond_14f

    .line 2126
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v1, :cond_14f

    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    if-eqz v1, :cond_14f

    .line 2127
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getClock()Lio/bidmachine/media3/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lio/bidmachine/media3/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastOutputBufferProcessedRealtimeMs:J

    .line 2129
    :cond_14f
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    if-nez v2, :cond_155

    return v15

    .line 2133
    :cond_155
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_158
    return v16
.end method

.method public final drmNeedsCodecReinitialization(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/drm/DrmSession;Lio/bidmachine/media3/exoplayer/drm/DrmSession;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p4, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-eqz p4, :cond_82

    if-nez p3, :cond_b

    goto/16 :goto_82

    .line 2303
    :cond_b
    invoke-interface {p4}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getCryptoConfig()Lio/bidmachine/media3/decoder/CryptoConfig;

    move-result-object v2

    if-nez v2, :cond_12

    return v1

    .line 2315
    :cond_12
    invoke-interface {p3}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getCryptoConfig()Lio/bidmachine/media3/decoder/CryptoConfig;

    move-result-object v3

    if-eqz v3, :cond_82

    .line 2316
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_82

    .line 2323
    :cond_27
    instance-of v2, v2, Lio/bidmachine/media3/exoplayer/drm/FrameworkCryptoConfig;

    if-nez v2, :cond_2c

    return v0

    .line 2333
    :cond_2c
    invoke-interface {p4}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {p3}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    return v1

    .line 2338
    :cond_3b
    sget v2, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_42

    return v1

    .line 2343
    :cond_42
    sget-object v2, Lio/bidmachine/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-interface {p3}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_82

    .line 2344
    invoke-interface {p4}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_59

    goto :goto_82

    .line 2353
    :cond_59
    iget-boolean p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    if-nez p1, :cond_81

    .line 2354
    invoke-interface {p4}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getState()I

    move-result p1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_80

    .line 2355
    invoke-interface {p4}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getState()I

    move-result p1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_72

    .line 2356
    invoke-interface {p4}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getState()I

    move-result p1

    const/4 p3, 0x4

    if-ne p1, p3, :cond_81

    :cond_72
    iget-object p1, p2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 2357
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p4, p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->requiresSecureDecoder(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_81

    :cond_80
    return v1

    :cond_81
    return v0

    :cond_82
    :goto_82
    return v1
.end method

.method public final feedInputBuffer()Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1308
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    const/4 v2, 0x0

    if-eqz v0, :cond_20b

    iget v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_20b

    iget-boolean v4, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-eqz v4, :cond_12

    goto/16 :goto_20b

    :cond_12
    if-nez v0, :cond_1d

    .line 1311
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldReinitCodec()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1312
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    .line 1315
    :cond_1d
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 1316
    iget v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v0, :cond_40

    .line 1317
    invoke-interface {v4}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->dequeueInputBufferIndex()I

    move-result v0

    iput v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v0, :cond_33

    return v2

    .line 1321
    :cond_33
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-interface {v4, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v5, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 1322
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 1325
    :cond_40
    iget v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v11, 0x1

    if-ne v0, v11, :cond_5c

    .line 1328
    iget-boolean v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_4a

    goto :goto_59

    .line 1331
    :cond_4a
    iput-boolean v11, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 1332
    iget v5, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v10}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V

    .line 1333
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 1335
    :goto_59
    iput v3, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    return v2

    .line 1339
    :cond_5c
    iget-boolean v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    if-eqz v0, :cond_81

    .line 1340
    iput-boolean v2, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 1341
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    sget-object v2, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1342
    iget v5, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    array-length v7, v2

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v4 .. v10}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V

    .line 1343
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 1344
    iput-boolean v11, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    return v11

    .line 1350
    :cond_81
    iget v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v11, :cond_b2

    move v0, v2

    .line 1351
    :goto_86
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {v5}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/bidmachine/media3/common/Format;

    iget-object v5, v5, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_b0

    .line 1352
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Lio/bidmachine/media3/common/Format;

    iget-object v5, v5, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1353
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iget-object v6, v6, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v6}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 1355
    :cond_b0
    iput v3, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1357
    :cond_b2
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 1359
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getFormatHolder()Lio/bidmachine/media3/exoplayer/FormatHolder;

    move-result-object v5

    .line 1363
    :try_start_c4
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v5, v6, v2}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->readSource(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I

    move-result v6
    :try_end_ca
    .catch Lio/bidmachine/media3/decoder/DecoderInputBuffer$InsufficientCapacityException; {:try_start_c4 .. :try_end_ca} :catch_200

    const/4 v7, -0x3

    if-ne v6, v7, :cond_d8

    .line 1374
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 1376
    iget-wide v3, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v3, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    :cond_d7
    return v2

    :cond_d8
    const/4 v7, -0x5

    if-ne v6, v7, :cond_ea

    .line 1381
    iget v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v3, :cond_e6

    .line 1384
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 1385
    iput v11, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1387
    :cond_e6
    invoke-virtual {v1, v5}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lio/bidmachine/media3/exoplayer/FormatHolder;)Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;

    return v11

    .line 1392
    :cond_ea
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v5}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_120

    .line 1393
    iget-wide v5, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v5, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    .line 1394
    iget v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v3, :cond_101

    .line 1398
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 1399
    iput v11, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1401
    :cond_101
    iput-boolean v11, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 1402
    iget-boolean v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v0, :cond_10b

    .line 1403
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    return v2

    .line 1406
    :cond_10b
    iget-boolean v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_110

    goto :goto_11f

    .line 1409
    :cond_110
    iput-boolean v11, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 1410
    iget v5, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v10}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V

    .line 1416
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    :goto_11f
    return v2

    .line 1427
    :cond_120
    iget-boolean v5, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v5, :cond_138

    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v5}, Lio/bidmachine/media3/decoder/Buffer;->isKeyFrame()Z

    move-result v5

    if-nez v5, :cond_138

    .line 1428
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 1429
    iget v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v3, :cond_137

    .line 1432
    iput v11, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    :cond_137
    return v11

    .line 1437
    :cond_138
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldDiscardDecoderInputBuffer(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z

    move-result v3

    if-eqz v3, :cond_141

    return v11

    .line 1441
    :cond_141
    iget-object v3, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_150

    .line 1443
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iget-object v5, v5, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->cryptoInfo:Lio/bidmachine/media3/decoder/CryptoInfo;

    invoke-virtual {v5, v0}, Lio/bidmachine/media3/decoder/CryptoInfo;->increaseClearDataFirstSubSampleBy(I)V

    .line 1446
    :cond_150
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iget-wide v5, v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 1448
    iget-boolean v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v0, :cond_187

    .line 1449
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_176

    .line 1450
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 1451
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lio/bidmachine/media3/common/util/TimedValueQueue;

    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    .line 1453
    invoke-static {v7}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/common/Format;

    invoke-virtual {v0, v5, v6, v7}, Lio/bidmachine/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    goto :goto_185

    .line 1455
    :cond_176
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lio/bidmachine/media3/common/util/TimedValueQueue;

    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {v7}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/media3/common/Format;

    invoke-virtual {v0, v5, v6, v7}, Lio/bidmachine/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 1457
    :goto_185
    iput-boolean v2, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 1459
    :cond_187
    iget-wide v7, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 1460
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v0

    if-nez v0, :cond_19d

    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/Buffer;->isLastSample()Z

    move-result v0

    if-eqz v0, :cond_1a1

    .line 1462
    :cond_19d
    iget-wide v7, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v7, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    .line 1464
    :cond_1a1
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->flip()V

    .line 1465
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/decoder/Buffer;->hasSupplementalData()Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 1466
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->handleInputBufferSupplementalData(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V

    .line 1469
    :cond_1b3
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onQueueInputBuffer(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V

    .line 1470
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecBufferFlags(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)I

    move-result v18

    if-eqz v3, :cond_1d4

    .line 1472
    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    iget v13, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iget-object v15, v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->cryptoInfo:Lio/bidmachine/media3/decoder/CryptoInfo;

    const/4 v14, 0x0

    move-wide/from16 v16, v5

    .line 1473
    invoke-interface/range {v12 .. v18}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueSecureInputBuffer(IILio/bidmachine/media3/decoder/CryptoInfo;JI)V

    goto :goto_1f1

    :cond_1d4
    move-wide/from16 v16, v5

    .line 1476
    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    iget v13, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 1480
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v15

    const/4 v14, 0x0

    .line 1477
    invoke-interface/range {v12 .. v18}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V

    .line 1485
    :goto_1f1
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 1486
    iput-boolean v11, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 1487
    iput v2, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1488
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    iget v2, v0, Lio/bidmachine/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    add-int/2addr v2, v11

    iput v2, v0, Lio/bidmachine/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    return v11

    :catch_200
    move-exception v0

    .line 1365
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    .line 1368
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    .line 1369
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushCodec()V

    return v11

    :cond_20b
    :goto_20b
    return v2
.end method

.method public final flushCodec()V
    .registers 2

    .line 968
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->flush()V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_f

    .line 970
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    return-void

    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    .line 971
    throw v0
.end method

.method public final flushOrReinitializeCodec()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 925
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 927
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    :cond_9
    return v0
.end method

.method public flushOrReleaseCodec()Z
    .registers 6

    .line 939
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 942
    :cond_6
    iget v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_42

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    if-eqz v2, :cond_14

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    if-eqz v2, :cond_42

    :cond_14
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v2, :cond_1d

    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v2, :cond_1d

    goto :goto_42

    :cond_1d
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3e

    .line 949
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_28

    move v4, v3

    goto :goto_29

    :cond_28
    move v4, v1

    :goto_29
    invoke-static {v4}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    if-lt v0, v2, :cond_3e

    .line 953
    :try_start_2e
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateDrmSessionV23()V
    :try_end_31
    .catch Lio/bidmachine/media3/exoplayer/ExoPlaybackException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_3e

    :catch_32
    move-exception v0

    .line 955
    const-string v1, "MediaCodecRenderer"

    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    invoke-static {v1, v2, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 956
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    return v3

    .line 961
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushCodec()V

    return v1

    .line 945
    :cond_42
    :goto_42
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    return v3
.end method

.method public final getAvailableCodecInfos(Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
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

    .line 1174
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/Format;

    .line 1175
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 1176
    invoke-virtual {p0, v1, v0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getDecoderInfos(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;Z)Ljava/util/List;

    move-result-object v1

    .line 1177
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_49

    if-eqz p1, :cond_49

    .line 1182
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    const/4 v1, 0x0

    .line 1183
    invoke-virtual {p0, p1, v0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getDecoderInfos(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;Z)Ljava/util/List;

    move-result-object p1

    .line 1184
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_48

    .line 1185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drm session requires secure decoder for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    return-object p1

    :cond_49
    return-object v1
.end method

.method public final getCodec()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .registers 2

    .line 697
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    return-object v0
.end method

.method public getCodecBufferFlags(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)I
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public final getCodecInfo()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;
    .registers 2

    .line 707
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    return-object v0
.end method

.method public getCodecNeedsEosPropagation()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getCodecOperatingRateV23(FLio/bidmachine/media3/common/Format;[Lio/bidmachine/media3/common/Format;)F
.end method

.method public final getCodecOutputMediaFormat()Landroid/media/MediaFormat;
    .registers 2

    .line 702
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public abstract getDecoderInfos(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;Z)Ljava/util/List;
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
.end method

.method public final getDurationToProgressUs(JJ)J
    .registers 11

    .line 499
    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecRegisteredOnBufferAvailableListener:Z

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getDurationToProgressUs(JJZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getDurationToProgressUs(JJZ)J
    .registers 6

    .line 535
    invoke-super {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/Renderer;->getDurationToProgressUs(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLastBufferInStreamPresentationTimeUs()J
    .registers 3

    .line 1790
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    return-wide v0
.end method

.method public abstract getMediaCodecConfiguration(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;Landroid/media/MediaCrypto;F)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
.end method

.method public final getOutputStreamOffsetUs()J
    .registers 3

    .line 2259
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    return-wide v0
.end method

.method public final getOutputStreamStartPositionUs()J
    .registers 3

    .line 2264
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->startPositionUs:J

    return-wide v0
.end method

.method public getPlaybackSpeed()F
    .registers 2

    .line 1861
    iget v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    return v0
.end method

.method public final getWakeupListener()Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;
    .registers 2

    .line 1891
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->wakeupListener:Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;

    return-object v0
.end method

.method public abstract handleInputBufferSupplementalData(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/16 v0, 0xb

    if-ne p1, v0, :cond_12

    .line 841
    check-cast p2, Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->wakeupListener:Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;

    .line 842
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onWakeupListenerSet(Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;)V

    return-void

    .line 844
    :cond_12
    invoke-super {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final hasOutputBuffer()Z
    .registers 2

    .line 1280
    iget v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final haveBypassBatchBufferAndNewSampleSameDecodeOnlyState()Z
    .registers 7

    .line 2536
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 2539
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getLastResetPositionUs()J

    move-result-wide v2

    .line 2540
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    .line 2541
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->getLastSampleTimeUs()J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnly(JJ)Z

    move-result v0

    .line 2542
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    iget-wide v4, v4, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnly(JJ)Z

    move-result v2

    if-ne v0, v2, :cond_23

    return v1

    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public final initBypass(Lio/bidmachine/media3/common/Format;)V
    .registers 4

    .line 1199
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->disableBypass()V

    .line 1201
    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1202
    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_24

    const-string v0, "audio/mpeg"

    .line 1203
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "audio/opus"

    .line 1204
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 1206
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->setMaxSampleCount(I)V

    goto :goto_2b

    .line 1208
    :cond_24
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->setMaxSampleCount(I)V

    .line 1210
    :goto_2b
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    return-void
.end method

.method public final initCodec(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1214
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/Format;

    .line 1217
    iget-object v2, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 1219
    sget v1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    const/high16 v4, -0x40800000    # -1.0f

    if-ge v1, v3, :cond_14

    move v3, v4

    goto :goto_1e

    .line 1221
    :cond_14
    iget v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getStreamFormats()[Lio/bidmachine/media3/common/Format;

    move-result-object v5

    invoke-virtual {p0, v3, v0, v5}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecOperatingRateV23(FLio/bidmachine/media3/common/Format;[Lio/bidmachine/media3/common/Format;)F

    move-result v3

    .line 1222
    :goto_1e
    iget v5, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_25

    goto :goto_26

    :cond_25
    move v4, v3

    .line 1225
    :goto_26
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getClock()Lio/bidmachine/media3/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 1227
    invoke-virtual {p0, p1, v0, p2, v4}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getMediaCodecConfiguration(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;Landroid/media/MediaCrypto;F)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;

    move-result-object v3

    const/16 p2, 0x1f

    if-lt v1, p2, :cond_3d

    .line 1229
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getPlayerId()Lio/bidmachine/media3/exoplayer/analytics/PlayerId;

    move-result-object p2

    invoke-static {v3, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$Api31;->setLogSessionIdToMediaCodecFormat(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V

    .line 1232
    :cond_3d
    :try_start_3d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCodec:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/bidmachine/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1233
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdapterFactory:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    invoke-interface {p2, v3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;->createAdapter(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 1234
    new-instance v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$MediaCodecRendererCodecAdapterListener;

    const/4 v7, 0x0

    invoke-direct {v1, p0, v7}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$MediaCodecRendererCodecAdapterListener;-><init>(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$1;)V

    .line 1235
    invoke-interface {p2, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->registerOnBufferAvailableListener(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;)Z

    move-result p2

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecRegisteredOnBufferAvailableListener:Z
    :try_end_65
    .catchall {:try_start_3d .. :try_end_65} :catchall_f8

    .line 1237
    invoke-static {}, Lio/bidmachine/media3/common/util/TraceUtil;->endSection()V

    .line 1239
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getClock()Lio/bidmachine/media3/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 1241
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Lio/bidmachine/media3/common/Format;)Z

    move-result p2

    if-nez p2, :cond_89

    .line 1246
    invoke-static {v0}, Lio/bidmachine/media3/common/Format;->toLogString(Lio/bidmachine/media3/common/Format;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object p2

    .line 1244
    const-string v1, "Format exceeds selected codec\'s capabilities [%s, %s]"

    invoke-static {v1, p2}, Lio/bidmachine/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1242
    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, p2}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    :cond_89
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 1250
    iput v4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 1251
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Lio/bidmachine/media3/common/Format;

    .line 1252
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 1253
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    .line 1254
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 1255
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 1257
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_b8

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecNeedsEosPropagation()Z

    move-result p1

    if-eqz p1, :cond_b6

    goto :goto_b8

    :cond_b6
    move p1, p2

    goto :goto_b9

    :cond_b8
    :goto_b8
    move p1, v0

    :goto_b9
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    .line 1258
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->needsReconfiguration()Z

    move-result p1

    if-eqz p1, :cond_d4

    .line 1259
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 1260
    iput v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1261
    iget p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-eqz p1, :cond_d2

    move p2, v0

    :cond_d2
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 1265
    :cond_d4
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_e8

    .line 1266
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getClock()Lio/bidmachine/media3/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 v9, 0x3e8

    add-long/2addr p1, v9

    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 1269
    :cond_e8
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    iget p2, p1, Lio/bidmachine/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    add-int/2addr p2, v0

    iput p2, p1, Lio/bidmachine/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    sub-long p1, v7, v5

    move-object v1, p0

    move-wide v4, v7

    move-wide v6, p1

    .line 1271
    invoke-virtual/range {v1 .. v7}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onCodecInitialized(Ljava/lang/String;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;JJ)V

    return-void

    :catchall_f8
    move-exception v0

    move-object p1, v0

    .line 1237
    invoke-static {}, Lio/bidmachine/media3/common/util/TraceUtil;->endSection()V

    .line 1238
    throw p1
.end method

.method public final initMediaCryptoIfDrmSessionReady()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1065
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 1066
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    .line 1067
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getCryptoConfig()Lio/bidmachine/media3/decoder/CryptoConfig;

    move-result-object v3

    .line 1068
    sget-boolean v4, Lio/bidmachine/media3/exoplayer/drm/FrameworkCryptoConfig;->WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z

    if-eqz v4, :cond_37

    instance-of v4, v3, Lio/bidmachine/media3/exoplayer/drm/FrameworkCryptoConfig;

    if-eqz v4, :cond_37

    .line 1070
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v4

    if-eq v4, v2, :cond_24

    const/4 v5, 0x4

    if-eq v4, v5, :cond_37

    return v1

    .line 1073
    :cond_24
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getError()Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 1074
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    iget v2, v0, Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lio/bidmachine/media3/common/Format;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_37
    if-nez v3, :cond_41

    .line 1082
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getError()Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object v0

    if-eqz v0, :cond_40

    return v2

    :cond_40
    return v1

    .line 1091
    :cond_41
    instance-of v0, v3, Lio/bidmachine/media3/exoplayer/drm/FrameworkCryptoConfig;

    if-eqz v0, :cond_5d

    .line 1092
    check-cast v3, Lio/bidmachine/media3/exoplayer/drm/FrameworkCryptoConfig;

    .line 1094
    :try_start_47
    new-instance v0, Landroid/media/MediaCrypto;

    iget-object v1, v3, Lio/bidmachine/media3/exoplayer/drm/FrameworkCryptoConfig;->uuid:Ljava/util/UUID;

    iget-object v3, v3, Lio/bidmachine/media3/exoplayer/drm/FrameworkCryptoConfig;->sessionId:[B

    invoke-direct {v0, v1, v3}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;
    :try_end_52
    .catch Landroid/media/MediaCryptoException; {:try_start_47 .. :try_end_52} :catch_53

    goto :goto_5d

    :catch_53
    move-exception v0

    .line 1096
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    const/16 v2, 0x1776

    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lio/bidmachine/media3/common/Format;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_5d
    :goto_5d
    return v2
.end method

.method public final isBypassEnabled()Z
    .registers 2

    .line 650
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    return v0
.end method

.method public final isBypassPossible(Lio/bidmachine/media3/common/Format;)Z
    .registers 3

    .line 612
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldUseBypass(Lio/bidmachine/media3/common/Format;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public final isDecodeOnly(JJ)Z
    .registers 7

    cmp-long v0, p3, p1

    if-gez v0, :cond_1a

    .line 2558
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Lio/bidmachine/media3/common/Format;

    if-eqz v0, :cond_18

    iget-object v0, v0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/opus"

    .line 2560
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2561
    invoke-static {p1, p2, p3, p4}, Lio/bidmachine/media3/extractor/OpusUtil;->needToDecodeOpusFrame(JJ)Z

    move-result p1

    if-nez p1, :cond_1a

    :cond_18
    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public isEnded()Z
    .registers 2

    .line 1847
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .registers 5

    .line 1852
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    if-eqz v0, :cond_2b

    .line 1853
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1854
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->hasOutputBuffer()Z

    move-result v0

    if-nez v0, :cond_29

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2b

    .line 1856
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getClock()Lio/bidmachine/media3/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2b

    :cond_29
    const/4 v0, 0x1

    return v0

    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method public final maybeInitCodecOrBypass()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez v0, :cond_6b

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-nez v0, :cond_6b

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    if-nez v0, :cond_d

    goto :goto_6b

    .line 575
    :cond_d
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isBypassPossible(Lio/bidmachine/media3/common/Format;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 576
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->initBypass(Lio/bidmachine/media3/common/Format;)V

    return-void

    .line 580
    :cond_17
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lio/bidmachine/media3/exoplayer/drm/DrmSession;)V

    .line 581
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->initMediaCryptoIfDrmSessionReady()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 583
    :cond_26
    :try_start_26
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    if-eqz v1, :cond_4f

    .line 585
    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3d

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    .line 586
    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4f

    goto :goto_3d

    :catch_3b
    move-exception v1

    goto :goto_64

    :cond_3d
    :goto_3d
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    iget-object v2, v0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 588
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 587
    invoke-interface {v1, v2}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->requiresSecureDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v1, 0x1

    goto :goto_50

    :cond_4f
    const/4 v1, 0x0

    .line 589
    :goto_50
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {p0, v2, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecWithFallback(Landroid/media/MediaCrypto;Z)V
    :try_end_55
    .catch Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException; {:try_start_26 .. :try_end_55} :catch_3b

    .line 595
    :cond_55
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v0, :cond_6b

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez v1, :cond_6b

    .line 597
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    const/4 v0, 0x0

    .line 598
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    return-void

    :goto_64
    const/16 v2, 0xfa1

    .line 591
    invoke-virtual {p0, v1, v0, v2}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lio/bidmachine/media3/common/Format;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :cond_6b
    :goto_6b
    return-void
.end method

.method public final maybeInitCodecWithFallback(Landroid/media/MediaCrypto;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;,
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1106
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/Format;

    .line 1107
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    if-nez v1, :cond_40

    .line 1110
    :try_start_d
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getAvailableCodecInfos(Z)Ljava/util/List;

    move-result-object v1

    .line 1111
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 1112
    iget-boolean v4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->enableDecoderFallback:Z

    if-eqz v4, :cond_22

    .line 1113
    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_34

    :catch_20
    move-exception p1

    goto :goto_37

    .line 1114
    :cond_22
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_34

    .line 1115
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1117
    :cond_34
    :goto_34
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :try_end_36
    .catch Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_d .. :try_end_36} :catch_20

    goto :goto_40

    .line 1119
    :goto_37
    new-instance v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    const v2, -0xc34e

    invoke-direct {v1, v0, p1, p2, v2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lio/bidmachine/media3/common/Format;Ljava/lang/Throwable;ZI)V

    throw v1

    .line 1127
    :cond_40
    :goto_40
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b0

    .line 1135
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    .line 1136
    :goto_50
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez v3, :cond_ad

    .line 1137
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 1138
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitializeProcessingPipeline(Lio/bidmachine/media3/common/Format;)Z

    move-result v4

    if-nez v4, :cond_67

    goto :goto_6d

    .line 1142
    :cond_67
    invoke-virtual {p0, v3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldInitCodec(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result v4

    if-nez v4, :cond_6e

    :goto_6d
    return-void

    .line 1146
    :cond_6e
    :try_start_6e
    invoke-virtual {p0, v3, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->initCodec(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_50

    :catch_72
    move-exception v4

    .line 1148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to initialize decoder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaCodecRenderer"

    invoke-static {v6, v5, v4}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1152
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 1153
    new-instance v5, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    invoke-direct {v5, v0, v4, p2, v3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lio/bidmachine/media3/common/Format;Ljava/lang/Throwable;ZLio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)V

    .line 1156
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    .line 1157
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-nez v3, :cond_9b

    .line 1158
    iput-object v5, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    goto :goto_a3

    .line 1160
    :cond_9b
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 1161
    invoke-static {v3, v5}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->access$000(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 1163
    :goto_a3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_aa

    goto :goto_50

    .line 1164
    :cond_aa
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    throw p1

    .line 1169
    :cond_ad
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    return-void

    .line 1128
    :cond_b0
    new-instance p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    const v1, -0xc34f

    invoke-direct {p1, v0, v2, p2, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Lio/bidmachine/media3/common/Format;Ljava/lang/Throwable;ZI)V

    throw p1
.end method

.method public maybeInitializeProcessingPipeline(Lio/bidmachine/media3/common/Format;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public abstract onCodecError(Ljava/lang/Exception;)V
.end method

.method public abstract onCodecInitialized(Ljava/lang/String;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;JJ)V
.end method

.method public abstract onCodecReleased(Ljava/lang/String;)V
.end method

.method public onDisabled()V
    .registers 2

    const/4 v0, 0x0

    .line 781
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    .line 782
    sget-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->UNSET:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 783
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 784
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    return-void
.end method

.method public onEnabled(ZZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 713
    new-instance p1, Lio/bidmachine/media3/exoplayer/DecoderCounters;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/DecoderCounters;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    return-void
.end method

.method public onInputFormatChanged(Lio/bidmachine/media3/exoplayer/FormatHolder;)Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1572
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 1573
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/FormatHolder;->format:Lio/bidmachine/media3/common/Format;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/common/Format;

    .line 1574
    iget-object v2, v1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v2, :cond_111

    .line 1586
    const-string v3, "video/av01"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2c

    iget-object v2, v1, Lio/bidmachine/media3/common/Format;->initializationData:Ljava/util/List;

    .line 1587
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 1588
    invoke-virtual {v1}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v1

    :cond_2c
    move-object v7, v1

    .line 1591
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/FormatHolder;->drmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Lio/bidmachine/media3/exoplayer/drm/DrmSession;)V

    .line 1592
    iput-object v7, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    .line 1594
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz p1, :cond_3b

    .line 1595
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    return-object v3

    .line 1599
    :cond_3b
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez p1, :cond_45

    .line 1600
    iput-object v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 1601
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    return-object v3

    .line 1612
    :cond_45
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 1614
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lio/bidmachine/media3/common/Format;

    .line 1615
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    invoke-virtual {p0, v1, v7, v2, v3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->drmNeedsCodecReinitialization(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/exoplayer/drm/DrmSession;Lio/bidmachine/media3/exoplayer/drm/DrmSession;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1616
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    .line 1617
    new-instance v4, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0x80

    invoke-direct/range {v4 .. v9}, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;II)V

    return-object v4

    .line 1624
    :cond_6e
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_77

    move v2, v0

    goto :goto_78

    :cond_77
    move v2, v4

    :goto_78
    if-eqz v2, :cond_83

    .line 1625
    sget v3, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v3, v5, :cond_81

    goto :goto_83

    :cond_81
    move v3, v4

    goto :goto_84

    :cond_83
    :goto_83
    move v3, v0

    :goto_84
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 1627
    invoke-virtual {p0, v1, v6, v7}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->canReuseCodec(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;)Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v3

    .line 1629
    iget v5, v3, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->result:I

    const/4 v8, 0x3

    if-eqz v5, :cond_f7

    const/16 v9, 0x10

    const/4 v10, 0x2

    if-eq v5, v0, :cond_de

    if-eq v5, v10, :cond_b2

    if-ne v5, v8, :cond_ac

    .line 1665
    invoke-virtual {p0, v7}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Lio/bidmachine/media3/common/Format;)Z

    move-result v0

    if-nez v0, :cond_a0

    goto :goto_fb

    .line 1668
    :cond_a0
    iput-object v7, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Lio/bidmachine/media3/common/Format;

    if-eqz v2, :cond_fa

    .line 1669
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSessionV23()Z

    move-result v0

    if-nez v0, :cond_fa

    :goto_aa
    move v9, v10

    goto :goto_fb

    .line 1675
    :cond_ac
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1648
    :cond_b2
    invoke-virtual {p0, v7}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Lio/bidmachine/media3/common/Format;)Z

    move-result v5

    if-nez v5, :cond_b9

    goto :goto_fb

    .line 1651
    :cond_b9
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 1652
    iput v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1653
    iget v5, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-eq v5, v10, :cond_d1

    if-ne v5, v0, :cond_d0

    iget v5, v7, Lio/bidmachine/media3/common/Format;->width:I

    iget v9, v6, Lio/bidmachine/media3/common/Format;->width:I

    if-ne v5, v9, :cond_d0

    iget v5, v7, Lio/bidmachine/media3/common/Format;->height:I

    iget v9, v6, Lio/bidmachine/media3/common/Format;->height:I

    if-ne v5, v9, :cond_d0

    goto :goto_d1

    :cond_d0
    move v0, v4

    :cond_d1
    :goto_d1
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 1658
    iput-object v7, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Lio/bidmachine/media3/common/Format;

    if-eqz v2, :cond_fa

    .line 1659
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSessionV23()Z

    move-result v0

    if-nez v0, :cond_fa

    goto :goto_aa

    .line 1634
    :cond_de
    invoke-virtual {p0, v7}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Lio/bidmachine/media3/common/Format;)Z

    move-result v0

    if-nez v0, :cond_e5

    goto :goto_fb

    .line 1637
    :cond_e5
    iput-object v7, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Lio/bidmachine/media3/common/Format;

    if-eqz v2, :cond_f0

    .line 1639
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSessionV23()Z

    move-result v0

    if-nez v0, :cond_fa

    goto :goto_aa

    .line 1642
    :cond_f0
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndFlushCodec()Z

    move-result v0

    if-nez v0, :cond_fa

    goto :goto_aa

    .line 1631
    :cond_f7
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    :cond_fa
    move v9, v4

    .line 1678
    :goto_fb
    iget v0, v3, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;->result:I

    if-eqz v0, :cond_110

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-ne v0, p1, :cond_107

    iget p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    if-ne p1, v8, :cond_110

    .line 1682
    :cond_107
    new-instance v4, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/Format;Lio/bidmachine/media3/common/Format;II)V

    return-object v4

    :cond_110
    return-object v3

    .line 1577
    :cond_111
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sample MIME type is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xfa5

    invoke-virtual {p0, p1, v1, v0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lio/bidmachine/media3/common/Format;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public abstract onOutputFormatChanged(Lio/bidmachine/media3/common/Format;Landroid/media/MediaFormat;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public onOutputStreamOffsetUsChanged(J)V
    .registers 3

    .line 0
    return-void
.end method

.method public onPositionReset(JZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 750
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 751
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 752
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    .line 753
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz p2, :cond_1d

    .line 754
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/mediacodec/BatchBuffer;->clear()V

    .line 755
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p2}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 756
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    .line 757
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Lio/bidmachine/media3/exoplayer/audio/OggOpusAudioPacketizer;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/audio/OggOpusAudioPacketizer;->reset()V

    goto :goto_20

    .line 759
    :cond_1d
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushOrReinitializeCodec()Z

    .line 764
    :goto_20
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/TimedValueQueue;->size()I

    move-result p1

    if-lez p1, :cond_2d

    const/4 p1, 0x1

    .line 765
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 767
    :cond_2d
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/TimedValueQueue;->clear()V

    .line 768
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public onProcessedOutputBuffer(J)V
    .registers 5

    .line 1800
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    .line 1801
    :goto_2
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 1802
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->previousStreamLastBufferTimeUs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2d

    .line 1803
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 1804
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    goto :goto_2

    :cond_2d
    return-void
.end method

.method public onProcessedStreamChange()V
    .registers 1

    .line 0
    return-void
.end method

.method public onQueueInputBuffer(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onReset()V
    .registers 3

    const/4 v0, 0x0

    .line 790
    :try_start_1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->disableBypass()V

    .line 791
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    .line 793
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Lio/bidmachine/media3/exoplayer/drm/DrmSession;)V

    return-void

    :catchall_b
    move-exception v1

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Lio/bidmachine/media3/exoplayer/drm/DrmSession;)V

    .line 794
    throw v1
.end method

.method public onStarted()V
    .registers 1

    .line 0
    return-void
.end method

.method public onStopped()V
    .registers 1

    .line 0
    return-void
.end method

.method public onStreamChanged([Lio/bidmachine/media3/common/Format;JJLio/bidmachine/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 723
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_24

    .line 725
    new-instance v4, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, p2

    move-wide v9, p4

    invoke-direct/range {v4 .. v10}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJ)V

    invoke-virtual {p0, v4}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 728
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->experimentalEnableProcessedStreamChangedAtStart:Z

    if-eqz p1, :cond_56

    .line 729
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    return-void

    .line 731
    :cond_24
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_57

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3c

    iget-wide v4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_57

    cmp-long p1, v4, v0

    if-ltz p1, :cond_57

    .line 736
    :cond_3c
    new-instance v4, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, p2

    move-wide v9, p4

    invoke-direct/range {v4 .. v10}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJ)V

    invoke-virtual {p0, v4}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 739
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_56

    .line 740
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    :cond_56
    return-void

    .line 743
    :cond_57
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJ)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onWakeupListenerSet(Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final processEndOfStream()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2226
    iget v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    .line 2239
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 2240
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderToEndOfStream()V

    return-void

    .line 2228
    :cond_11
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->reinitializeCodec()V

    return-void

    .line 2231
    :cond_15
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushCodec()V

    .line 2232
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateDrmSessionV23()V

    return-void

    .line 2235
    :cond_1c
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushCodec()V

    return-void
.end method

.method public abstract processOutputBuffer(JJLio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLio/bidmachine/media3/common/Format;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final processOutputMediaFormatChanged()V
    .registers 5

    const/4 v0, 0x1

    .line 2141
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    .line 2142
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 2143
    iget v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-eqz v2, :cond_28

    const-string v2, "width"

    .line 2144
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_28

    const-string v2, "height"

    .line 2145
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_28

    .line 2148
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    return-void

    .line 2151
    :cond_28
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    .line 2152
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    return-void
.end method

.method public final readSourceOmittingSampleData(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1042
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getFormatHolder()Lio/bidmachine/media3/exoplayer/FormatHolder;

    move-result-object v0

    .line 1043
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->noDataBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 1045
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->noDataBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->readSource(Lio/bidmachine/media3/exoplayer/FormatHolder;Lio/bidmachine/media3/decoder/DecoderInputBuffer;I)I

    move-result p1

    const/4 v1, -0x5

    const/4 v2, 0x1

    if-ne p1, v1, :cond_19

    .line 1047
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lio/bidmachine/media3/exoplayer/FormatHolder;)Lio/bidmachine/media3/exoplayer/DecoderReuseEvaluation;

    return v2

    :cond_19
    const/4 v0, -0x4

    if-ne p1, v0, :cond_29

    .line 1049
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->noDataBuffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/Buffer;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 1050
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 1051
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    :cond_29
    const/4 p1, 0x0

    return p1
.end method

.method public final reinitializeCodec()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2361
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 2362
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    return-void
.end method

.method public releaseCodec()V
    .registers 4

    const/4 v0, 0x0

    .line 808
    :try_start_1
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz v1, :cond_20

    .line 809
    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->release()V

    .line 810
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    iget v2, v1, Lio/bidmachine/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lio/bidmachine/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    .line 811
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onCodecReleased(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1e

    goto :goto_20

    :catchall_1e
    move-exception v1

    goto :goto_3e

    .line 814
    :cond_20
    :goto_20
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 816
    :try_start_22
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_2c

    .line 817
    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2a

    goto :goto_2c

    :catchall_2a
    move-exception v1

    goto :goto_35

    .line 820
    :cond_2c
    :goto_2c
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 821
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lio/bidmachine/media3/exoplayer/drm/DrmSession;)V

    .line 822
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    return-void

    .line 820
    :goto_35
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 821
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lio/bidmachine/media3/exoplayer/drm/DrmSession;)V

    .line 822
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    .line 823
    throw v1

    .line 814
    :goto_3e
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 816
    :try_start_40
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_4a

    .line 817
    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_48

    goto :goto_4a

    :catchall_48
    move-exception v1

    goto :goto_53

    .line 820
    :cond_4a
    :goto_4a
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 821
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lio/bidmachine/media3/exoplayer/drm/DrmSession;)V

    .line 822
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    .line 824
    throw v1

    .line 820
    :goto_53
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 821
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lio/bidmachine/media3/exoplayer/drm/DrmSession;)V

    .line 822
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    .line 823
    throw v1
.end method

.method public render(JJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 850
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 851
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    .line 852
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 854
    :cond_a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    if-nez v0, :cond_c9

    const/4 v0, 0x1

    .line 861
    :try_start_f
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v2, :cond_1d

    .line 862
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderToEndOfStream()V

    return-void

    :catch_17
    move-exception p1

    goto/16 :goto_83

    :catch_1a
    move-exception p1

    goto/16 :goto_ba

    .line 865
    :cond_1d
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    if-nez v2, :cond_29

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    move-result v2

    if-nez v2, :cond_29

    return-void

    .line 870
    :cond_29
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    .line 871
    iget-boolean v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz v2, :cond_40

    .line 872
    const-string v2, "bypassRender"

    invoke-static {v2}, Lio/bidmachine/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 873
    :goto_35
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassRender(JJ)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_35

    .line 874
    :cond_3c
    invoke-static {}, Lio/bidmachine/media3/common/util/TraceUtil;->endSection()V

    goto :goto_7d

    .line 875
    :cond_40
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz v2, :cond_6f

    .line 876
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getClock()Lio/bidmachine/media3/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 877
    const-string v4, "drainAndFeed"

    invoke-static {v4}, Lio/bidmachine/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 878
    :goto_51
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainOutputBuffer(JJ)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 879
    invoke-virtual {p0, v2, v3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldContinueRendering(J)Z

    move-result v4

    if-eqz v4, :cond_5e

    goto :goto_51

    .line 880
    :cond_5e
    :goto_5e
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->feedInputBuffer()Z

    move-result p1

    if-eqz p1, :cond_6b

    invoke-virtual {p0, v2, v3}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldContinueRendering(J)Z

    move-result p1

    if-eqz p1, :cond_6b

    goto :goto_5e

    .line 881
    :cond_6b
    invoke-static {}, Lio/bidmachine/media3/common/util/TraceUtil;->endSection()V

    goto :goto_7d

    .line 883
    :cond_6f
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    iget p4, p3, Lio/bidmachine/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->skipSource(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p3, Lio/bidmachine/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    .line 888
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    .line 890
    :goto_7d
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/DecoderCounters;->ensureUpdated()V
    :try_end_82
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_f .. :try_end_82} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_82} :catch_17

    return-void

    .line 895
    :goto_83
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isMediaCodecException(Ljava/lang/IllegalStateException;)Z

    move-result p2

    if-eqz p2, :cond_b9

    .line 896
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    .line 897
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_9a

    move-object p2, p1

    check-cast p2, Landroid/media/MediaCodec$CodecException;

    .line 898
    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p2

    if-eqz p2, :cond_9a

    move v1, v0

    :cond_9a
    if-eqz v1, :cond_9f

    .line 900
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 902
    :cond_9f
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecInfo()Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->createDecoderException(Ljava/lang/Throwable;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    move-result-object p1

    .line 905
    iget p2, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecDecoderException;->errorCode:I

    const/16 p3, 0x44d

    if-ne p2, p3, :cond_b0

    const/16 p2, 0xfa6

    goto :goto_b2

    :cond_b0
    const/16 p2, 0xfa3

    .line 908
    :goto_b2
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    invoke-virtual {p0, p1, p3, v1, p2}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lio/bidmachine/media3/common/Format;ZI)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 910
    :cond_b9
    throw p1

    .line 892
    :goto_ba
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    .line 893
    invoke-virtual {p1}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result p3

    invoke-static {p3}, Lio/bidmachine/media3/common/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result p3

    .line 892
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lio/bidmachine/media3/common/Format;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_c9
    const/4 p1, 0x0

    .line 856
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 857
    throw v0
.end method

.method public abstract renderToEndOfStream()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public resetCodecStateForFlush()V
    .registers 4

    .line 977
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 978
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 979
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    const/4 v2, 0x0

    .line 980
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 981
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastOutputBufferProcessedRealtimeMs:J

    .line 982
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 983
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 984
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 985
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    .line 986
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    .line 987
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 988
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastBufferInStreamPresentationTimeUs:J

    .line 989
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    .line 990
    iput v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 991
    iput v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 996
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    iput v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    return-void
.end method

.method public resetCodecStateForRelease()V
    .registers 3

    .line 1007
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    const/4 v0, 0x0

    .line 1009
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    .line 1010
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 1011
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 1012
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Lio/bidmachine/media3/common/Format;

    .line 1013
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    .line 1014
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    .line 1015
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 1016
    iput v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 1017
    iput v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 1018
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    .line 1019
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 1020
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosOutputExceptionWorkaround:Z

    .line 1021
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    .line 1022
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecRegisteredOnBufferAvailableListener:Z

    .line 1023
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 1024
    iput v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    return-void
.end method

.method public final resetInputBuffer()V
    .registers 3

    const/4 v0, -0x1

    .line 1284
    iput v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 1285
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final resetOutputBuffer()V
    .registers 2

    const/4 v0, -0x1

    .line 1289
    iput v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    const/4 v0, 0x0

    .line 1290
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final setCodecDrmSession(Lio/bidmachine/media3/exoplayer/drm/DrmSession;)V
    .registers 3

    .line 1299
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->replaceSession(Lio/bidmachine/media3/exoplayer/drm/DrmSession;Lio/bidmachine/media3/exoplayer/drm/DrmSession;)V

    .line 1300
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    return-void
.end method

.method public final setOutputStreamInfo(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V
    .registers 6

    .line 2268
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 2269
    iget-wide v0, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    .line 2270
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->needToNotifyOutputFormatChangeAfterStreamChange:Z

    .line 2271
    invoke-virtual {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onOutputStreamOffsetUsChanged(J)V

    :cond_13
    return-void
.end method

.method public final setPendingOutputEndOfStream()V
    .registers 2

    const/4 v0, 0x1

    .line 2250
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    return-void
.end method

.method public final setPendingPlaybackException(Lio/bidmachine/media3/exoplayer/ExoPlaybackException;)V
    .registers 2

    .line 659
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 774
    iput p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    .line 775
    iput p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    .line 776
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Lio/bidmachine/media3/common/Format;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Lio/bidmachine/media3/common/Format;)Z

    return-void
.end method

.method public final setSourceDrmSession(Lio/bidmachine/media3/exoplayer/drm/DrmSession;)V
    .registers 3

    .line 1294
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->replaceSession(Lio/bidmachine/media3/exoplayer/drm/DrmSession;Lio/bidmachine/media3/exoplayer/drm/DrmSession;)V

    .line 1295
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    return-void
.end method

.method public final shouldContinueRendering(J)Z
    .registers 7

    .line 1275
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    .line 1276
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getClock()Lio/bidmachine/media3/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    return p1

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    return p1
.end method

.method public shouldDiscardDecoderInputBuffer(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z
    .registers 4

    .line 1773
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipDecoderInputBuffer(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1774
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->clear()V

    .line 1775
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Lio/bidmachine/media3/exoplayer/DecoderCounters;

    iget v0, p1, Lio/bidmachine/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lio/bidmachine/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    return v1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public shouldInitCodec(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public shouldReinitCodec()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipDecoderInputBuffer(Lio/bidmachine/media3/decoder/DecoderInputBuffer;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public shouldUseBypass(Lio/bidmachine/media3/common/Format;)Z
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public final supportsFormat(Lio/bidmachine/media3/common/Format;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 480
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->supportsFormat(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;)I

    move-result p1
    :try_end_6
    .catch Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception v0

    const/16 v1, 0xfa2

    .line 482
    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lio/bidmachine/media3/common/Format;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public abstract supportsFormat(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecSelector;Lio/bidmachine/media3/common/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .registers 2

    .line 0
    const/16 v0, 0x8

    return v0
.end method

.method public final updateCodecOperatingRate(Lio/bidmachine/media3/common/Format;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1914
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_8

    return v2

    .line 1918
    :cond_8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz v0, :cond_5d

    iget v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5d

    .line 1920
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getState()I

    move-result v0

    if-nez v0, :cond_18

    goto :goto_5d

    .line 1925
    :cond_18
    iget v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    .line 1926
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/Format;

    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->getStreamFormats()[Lio/bidmachine/media3/common/Format;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecOperatingRateV23(FLio/bidmachine/media3/common/Format;[Lio/bidmachine/media3/common/Format;)F

    move-result p1

    .line 1927
    iget v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_2f

    return v2

    :cond_2f
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v3, p1, v1

    if-nez v3, :cond_3a

    .line 1933
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    const/4 p1, 0x0

    return p1

    :cond_3a
    cmpl-float v0, v0, v1

    if-nez v0, :cond_46

    .line 1935
    iget v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_45

    goto :goto_46

    :cond_45
    return v2

    .line 1939
    :cond_46
    :goto_46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1940
    const-string v1, "operating-rate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1941
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-interface {v1, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    .line 1942
    iput p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    :cond_5d
    :goto_5d
    return v2
.end method

.method public final updateDrmSessionV23()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2367
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getCryptoConfig()Lio/bidmachine/media3/decoder/CryptoConfig;

    move-result-object v0

    .line 2368
    instance-of v1, v0, Lio/bidmachine/media3/exoplayer/drm/FrameworkCryptoConfig;

    if-eqz v1, :cond_2a

    .line 2370
    :try_start_10
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCrypto;

    check-cast v0, Lio/bidmachine/media3/exoplayer/drm/FrameworkCryptoConfig;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/drm/FrameworkCryptoConfig;->sessionId:[B

    .line 2371
    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_1f
    .catch Landroid/media/MediaCryptoException; {:try_start_10 .. :try_end_1f} :catch_20

    goto :goto_2a

    :catch_20
    move-exception v0

    .line 2373
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Lio/bidmachine/media3/common/Format;

    const/16 v2, 0x1776

    invoke-virtual {p0, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lio/bidmachine/media3/common/Format;I)Lio/bidmachine/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 2377
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Lio/bidmachine/media3/exoplayer/drm/DrmSession;)V

    const/4 v0, 0x0

    .line 2378
    iput v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 2379
    iput v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    return-void
.end method

.method public final updateOutputFormatForTime(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 674
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/common/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/Format;

    if-nez p1, :cond_1e

    .line 675
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->needToNotifyOutputFormatChangeAfterStreamChange:Z

    if-eqz p2, :cond_1e

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz p2, :cond_1e

    .line 682
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/TimedValueQueue;->pollFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/Format;

    :cond_1e
    if-eqz p1, :cond_23

    .line 685
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Lio/bidmachine/media3/common/Format;

    goto :goto_2b

    .line 688
    :cond_23
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Lio/bidmachine/media3/common/Format;

    if-eqz p1, :cond_3d

    .line 689
    :goto_2b
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Lio/bidmachine/media3/common/Format;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/Format;

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Lio/bidmachine/media3/common/Format;Landroid/media/MediaFormat;)V

    const/4 p1, 0x0

    .line 690
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    .line 691
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->needToNotifyOutputFormatChangeAfterStreamChange:Z

    :cond_3d
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer.AnonymousClass1 (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$1;
.super Ljava/lang/Object;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer.Api31 (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer$Api31)
.class public final Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$Api31;
.super Ljava/lang/Object;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api31"
.end annotation


# direct methods
.method public static setLogSessionIdToMediaCodecFormat(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;Lio/bidmachine/media3/exoplayer/analytics/PlayerId;)V
    .registers 3

    .line 2708
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/analytics/PlayerId;->getLogSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object p1

    .line 2709
    invoke-static {}, Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31$$ExternalSyntheticApiModelOutline0;->m()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 2710
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    const-string v0, "log-session-id"

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$Api31$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/metrics/LogSessionId;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer.DecoderInitializationException (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer$DecoderInitializationException)
.class public Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
.super Ljava/lang/Exception;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoderInitializationException"
.end annotation


# instance fields
.field public final codecInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

.field public final diagnosticInfo:Ljava/lang/String;

.field public final fallbackDecoderInitializationException:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

.field public final mimeType:Ljava/lang/String;

.field public final secureDecoderRequired:Z


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/Format;Ljava/lang/Throwable;ZI)V
    .registers 15

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoder init failed: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 157
    invoke-static {p4}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->buildCustomDiagnosticInfo(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p2

    move v6, p3

    .line 151
    invoke-direct/range {v2 .. v9}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/Format;Ljava/lang/Throwable;ZLio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;)V
    .registers 15

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoder init failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p4, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 172
    instance-of p1, p2, Landroid/media/MediaCodec$CodecException;

    if-eqz p1, :cond_2a

    move-object p1, p2

    check-cast p1, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p1

    :goto_28
    move-object v8, p1

    goto :goto_2c

    :cond_2a
    const/4 p1, 0x0

    goto :goto_28

    :goto_2c
    const/4 v9, 0x0

    move-object v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    .line 166
    invoke-direct/range {v2 .. v9}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V
    .registers 8

    .line 184
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->mimeType:Ljava/lang/String;

    .line 186
    iput-boolean p4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->secureDecoderRequired:Z

    .line 187
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->codecInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 188
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    .line 189
    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->fallbackDecoderInitializationException:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    return-void
.end method

.method public static synthetic access$000(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    .registers 2

    .line 121
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->copyWithFallbackException(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-result-object p0

    return-object p0
.end method

.method public static buildCustomDiagnosticInfo(I)Ljava/lang/String;
    .registers 4

    if-gez p0, :cond_5

    .line 206
    const-string v0, "neg_"

    goto :goto_7

    :cond_5
    const-string v0, ""

    .line 208
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "io.bidmachine.media3.exoplayer.mediacodec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".MediaCodecRenderer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copyWithFallbackException(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    .registers 10

    .line 195
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 196
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->mimeType:Ljava/lang/String;

    iget-boolean v4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->secureDecoderRequired:Z

    iget-object v5, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->codecInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;Ljava/lang/String;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer.MediaCodecRendererCodecAdapterListener (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer$MediaCodecRendererCodecAdapterListener)
.class public final Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$MediaCodecRendererCodecAdapterListener;
.super Ljava/lang/Object;
.source "MediaCodecRenderer.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MediaCodecRendererCodecAdapterListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;)V
    .registers 2

    .line 2715
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$MediaCodecRendererCodecAdapterListener;->this$0:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$1;)V
    .registers 3

    .line 2715
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$MediaCodecRendererCodecAdapterListener;-><init>(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;)V

    return-void
.end method


# virtual methods
.method public onInputBufferAvailable()V
    .registers 2

    .line 2719
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$MediaCodecRendererCodecAdapterListener;->this$0:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->access$200(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;)Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2720
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$MediaCodecRendererCodecAdapterListener;->this$0:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->access$200(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;)Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;->onWakeup()V

    :cond_11
    return-void
.end method

.method public onOutputBufferAvailable()V
    .registers 2

    .line 2726
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$MediaCodecRendererCodecAdapterListener;->this$0:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->access$200(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;)Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2727
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$MediaCodecRendererCodecAdapterListener;->this$0:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;->access$200(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;)Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;->onWakeup()V

    :cond_11
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer.OutputStreamInfo (io.bidmachine.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo)
.class public final Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;
.super Ljava/lang/Object;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputStreamInfo"
.end annotation


# static fields
.field public static final UNSET:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;


# instance fields
.field public final formatQueue:Lio/bidmachine/media3/common/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/common/util/TimedValueQueue<",
            "Lio/bidmachine/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final previousStreamLastBufferTimeUs:J

.field public final startPositionUs:J

.field public final streamOffsetUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 2682
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJ)V

    sput-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->UNSET:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    return-void
.end method

.method public constructor <init>(JJJ)V
    .registers 7

    .line 2694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2695
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->previousStreamLastBufferTimeUs:J

    .line 2696
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->startPositionUs:J

    .line 2697
    iput-wide p5, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    .line 2698
    new-instance p1, Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/TimedValueQueue;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lio/bidmachine/media3/common/util/TimedValueQueue;

    return-void
.end method
