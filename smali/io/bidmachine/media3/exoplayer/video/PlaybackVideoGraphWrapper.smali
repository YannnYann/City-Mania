###### Class io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper (io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper)
.class public final Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"

# interfaces
.implements Lio/bidmachine/media3/common/VideoGraph$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;,
        Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;,
        Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;,
        Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;,
        Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;,
        Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectivePreviewingSingleInputVideoGraphFactory;
    }
.end annotation


# static fields
.field public static final NO_OP_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field public bufferTimestampAdjustmentUs:J

.field public final clock:Lio/bidmachine/media3/common/util/Clock;

.field public final compositionEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final compositorSettings:Lio/bidmachine/media3/common/VideoCompositorSettings;

.field public final context:Landroid/content/Context;

.field public currentSurfaceAndSize:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/view/Surface;",
            "Lio/bidmachine/media3/common/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public final defaultVideoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

.field public finalBufferPresentationTimeUs:J

.field public handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

.field public hasSignaledEndOfCurrentInputStream:Z

.field public final inputVideoSinks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;",
            ">;"
        }
    .end annotation
.end field

.field public lastOutputBufferPresentationTimeUs:J

.field public final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;",
            ">;"
        }
    .end annotation
.end field

.field public outputStreamStartPositionUs:J

.field public pendingFlushCount:I

.field public final previewingVideoGraphFactory:Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;

.field public registeredVideoInputCount:I

.field public final requestOpenGlToneMapping:Z

.field public state:I

.field public final streamStartPositionsUs:Lio/bidmachine/media3/common/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/common/util/TimedValueQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public totalVideoInputCount:I

.field public final videoFrameHandler:Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoFrameHandler;

.field public videoGraph:Lio/bidmachine/media3/common/PreviewingVideoGraph;

.field public videoGraphOutputFormat:Lio/bidmachine/media3/common/Format;

.field public wakeupListener:Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;


# direct methods
.method public static synthetic $r8$lambda$MohEgMqrHcCPcOvKc0SAQe9ebcI(Ljava/lang/Runnable;)V
    .registers 1

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$wiSRpAAbQB4wWfXYuO3DiRQ3faY(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V
    .registers 2

    .line 598
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->pendingFlushCount:I

    add-int/lit8 v0, v0, -0x1

    .line 598
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->pendingFlushCount:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 262
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->NO_OP_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)V
    .registers 5

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->access$200(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->context:Landroid/content/Context;

    .line 314
    new-instance v0, Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-direct {v0}, Lio/bidmachine/media3/common/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->streamStartPositionsUs:Lio/bidmachine/media3/common/util/TimedValueQueue;

    .line 315
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->access$300(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->previewingVideoGraphFactory:Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;

    .line 316
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->inputVideoSinks:Landroid/util/SparseArray;

    .line 317
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->access$400(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->compositionEffects:Ljava/util/List;

    .line 318
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->access$500(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Lio/bidmachine/media3/common/VideoCompositorSettings;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->compositorSettings:Lio/bidmachine/media3/common/VideoCompositorSettings;

    .line 319
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->access$600(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Lio/bidmachine/media3/common/util/Clock;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->clock:Lio/bidmachine/media3/common/util/Clock;

    .line 320
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->access$700(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;-><init>(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;Lio/bidmachine/media3/common/util/Clock;)V

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 321
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;-><init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoFrameHandler:Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoFrameHandler;

    .line 333
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 334
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->access$900(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->requestOpenGlToneMapping:Z

    .line 335
    new-instance p1, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {p1}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoGraphOutputFormat:Lio/bidmachine/media3/common/Format;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 336
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->lastOutputBufferPresentationTimeUs:J

    .line 337
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->finalBufferPresentationTimeUs:J

    const/4 p1, -0x1

    .line 338
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->totalVideoInputCount:I

    const/4 p1, 0x0

    .line 339
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->state:I

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;)V
    .registers 3

    .line 78
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;-><init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)V

    return-void
.end method

.method public static synthetic access$1100()Ljava/util/concurrent/Executor;
    .registers 1

    .line 78
    sget-object v0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->NO_OP_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static synthetic access$1200(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Lio/bidmachine/media3/exoplayer/video/VideoSink;
    .registers 1

    .line 78
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    return-object p0
.end method

.method public static synthetic access$1300(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Lio/bidmachine/media3/common/Format;I)Lio/bidmachine/media3/common/VideoFrameProcessor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->registerInput(Lio/bidmachine/media3/common/Format;I)Lio/bidmachine/media3/common/VideoFrameProcessor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1400(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Z)V
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->flush(Z)V

    return-void
.end method

.method public static synthetic access$1500(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Z)Z
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->isReady(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1600(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)J
    .registers 3

    .line 78
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->finalBufferPresentationTimeUs:J

    return-wide v0
.end method

.method public static synthetic access$1602(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;J)J
    .registers 3

    .line 78
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->finalBufferPresentationTimeUs:J

    return-wide p1
.end method

.method public static synthetic access$1700(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)J
    .registers 3

    .line 78
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->lastOutputBufferPresentationTimeUs:J

    return-wide v0
.end method

.method public static synthetic access$1802(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Z)Z
    .registers 2

    .line 78
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->hasSignaledEndOfCurrentInputStream:Z

    return p1
.end method

.method public static synthetic access$1900(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Z
    .registers 1

    .line 78
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->isEnded()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2000(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->setVideoFrameMetadataListener(Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;)V

    return-void
.end method

.method public static synthetic access$2100(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;F)V
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->setPlaybackSpeed(F)V

    return-void
.end method

.method public static synthetic access$2200(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Lio/bidmachine/media3/common/util/TimedValueQueue;
    .registers 1

    .line 78
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->streamStartPositionsUs:Lio/bidmachine/media3/common/util/TimedValueQueue;

    return-object p0
.end method

.method public static synthetic access$2300(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;J)V
    .registers 3

    .line 78
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->setBufferTimestampAdjustment(J)V

    return-void
.end method

.method public static synthetic access$2400(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Z
    .registers 1

    .line 78
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->shouldRenderToInputVideoSink()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2500(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;JJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->render(JJ)V

    return-void
.end method

.method public static synthetic access$2602(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;)Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;
    .registers 2

    .line 78
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->wakeupListener:Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;

    return-object p1
.end method

.method public static synthetic access$2700(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;
    .registers 1

    .line 78
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->previewingVideoGraphFactory:Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;

    return-object p0
.end method

.method public static synthetic access$2800(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Ljava/util/List;
    .registers 1

    .line 78
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->compositionEffects:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$2900(Lio/bidmachine/media3/common/ColorInfo;)Lio/bidmachine/media3/common/ColorInfo;
    .registers 1

    .line 78
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->getAdjustedInputColorInfo(Lio/bidmachine/media3/common/ColorInfo;)Lio/bidmachine/media3/common/ColorInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3000(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    .line 78
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static synthetic access$800(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Lio/bidmachine/media3/common/PreviewingVideoGraph;
    .registers 1

    .line 78
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoGraph:Lio/bidmachine/media3/common/PreviewingVideoGraph;

    return-object p0
.end method

.method public static getAdjustedInputColorInfo(Lio/bidmachine/media3/common/ColorInfo;)Lio/bidmachine/media3/common/ColorInfo;
    .registers 2

    if-eqz p0, :cond_a

    .line 622
    invoke-virtual {p0}, Lio/bidmachine/media3/common/ColorInfo;->isDataSpaceValid()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_a

    :cond_9
    return-object p0

    .line 623
    :cond_a
    :goto_a
    sget-object p0, Lio/bidmachine/media3/common/ColorInfo;->SDR_BT709_LIMITED:Lio/bidmachine/media3/common/ColorInfo;

    return-object p0
.end method


# virtual methods
.method public addListener(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;)V
    .registers 3

    .line 348
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearOutputSurfaceInfo()V
    .registers 4

    .line 385
    sget-object v0, Lio/bidmachine/media3/common/util/Size;->UNKNOWN:Lio/bidmachine/media3/common/util/Size;

    .line 387
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/Size;->getWidth()I

    move-result v1

    .line 388
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/Size;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    .line 385
    invoke-virtual {p0, v2, v1, v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->maybeSetOutputSurfaceInfo(Landroid/view/Surface;II)V

    .line 389
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    return-void
.end method

.method public final flush(Z)V
    .registers 6

    .line 580
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 583
    :cond_7
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->pendingFlushCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->pendingFlushCount:I

    .line 584
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->flush(Z)V

    .line 585
    :goto_12
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->streamStartPositionsUs:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/TimedValueQueue;->size()I

    move-result p1

    if-le p1, v1, :cond_20

    .line 586
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->streamStartPositionsUs:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/TimedValueQueue;->pollFirst()Ljava/lang/Object;

    goto :goto_12

    .line 588
    :cond_20
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->streamStartPositionsUs:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/TimedValueQueue;->size()I

    move-result p1

    if-ne p1, v1, :cond_41

    .line 589
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->streamStartPositionsUs:Lio/bidmachine/media3/common/util/TimedValueQueue;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/TimedValueQueue;->pollFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 591
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->bufferTimestampAdjustmentUs:J

    invoke-interface {p1, v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setStreamTimestampInfo(JJ)V

    :cond_41
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 593
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->lastOutputBufferPresentationTimeUs:J

    .line 594
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->finalBufferPresentationTimeUs:J

    const/4 p1, 0x0

    .line 595
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->hasSignaledEndOfCurrentInputStream:Z

    .line 598
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/common/util/HandlerWrapper;

    new-instance v0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V

    invoke-interface {p1, v0}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getSink(I)Lio/bidmachine/media3/exoplayer/video/VideoSink;
    .registers 4

    .line 364
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->inputVideoSinks:Landroid/util/SparseArray;

    invoke-static {v0, p1}, Lio/bidmachine/media3/common/util/Util;->contains(Landroid/util/SparseArray;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 365
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;-><init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroid/content/Context;I)V

    .line 366
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->addListener(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;)V

    .line 367
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->inputVideoSinks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final isEnded()Z
    .registers 2

    .line 563
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->pendingFlushCount:I

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->hasSignaledEndOfCurrentInputStream:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 565
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    .line 536
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final isReady(Z)Z
    .registers 3

    .line 558
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    if-eqz p1, :cond_a

    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->pendingFlushCount:I

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->isReady(Z)Z

    move-result p1

    return p1
.end method

.method public final maybeSetOutputSurfaceInfo(Landroid/view/Surface;II)V
    .registers 6

    .line 544
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoGraph:Lio/bidmachine/media3/common/PreviewingVideoGraph;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_1a

    .line 549
    new-instance v1, Lio/bidmachine/media3/common/SurfaceInfo;

    invoke-direct {v1, p1, p2, p3}, Lio/bidmachine/media3/common/SurfaceInfo;-><init>(Landroid/view/Surface;II)V

    invoke-interface {v0, v1}, Lio/bidmachine/media3/common/VideoGraph;->setOutputSurfaceInfo(Lio/bidmachine/media3/common/SurfaceInfo;)V

    .line 550
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    new-instance v1, Lio/bidmachine/media3/common/util/Size;

    invoke-direct {v1, p2, p3}, Lio/bidmachine/media3/common/util/Size;-><init>(II)V

    invoke-interface {v0, p1, v1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setOutputSurfaceInfo(Landroid/view/Surface;Lio/bidmachine/media3/common/util/Size;)V

    return-void

    :cond_1a
    const/4 p1, 0x0

    .line 552
    invoke-interface {v0, p1}, Lio/bidmachine/media3/common/VideoGraph;->setOutputSurfaceInfo(Lio/bidmachine/media3/common/SurfaceInfo;)V

    .line 553
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->clearOutputSurfaceInfo()V

    return-void
.end method

.method public final registerInput(Lio/bidmachine/media3/common/Format;I)Lio/bidmachine/media3/common/VideoFrameProcessor;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_90

    .line 476
    iget v2, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->state:I

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 477
    iget-object v2, p1, Lio/bidmachine/media3/common/Format;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->getAdjustedInputColorInfo(Lio/bidmachine/media3/common/ColorInfo;)Lio/bidmachine/media3/common/ColorInfo;

    move-result-object v2

    .line 479
    iget-boolean v3, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->requestOpenGlToneMapping:Z

    if-eqz v3, :cond_1c

    .line 480
    sget-object v2, Lio/bidmachine/media3/common/ColorInfo;->SDR_BT709_LIMITED:Lio/bidmachine/media3/common/ColorInfo;

    :cond_1a
    :goto_1a
    move-object v5, v2

    goto :goto_35

    .line 483
    :cond_1c
    iget v3, v2, Lio/bidmachine/media3/common/ColorInfo;->colorTransfer:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1a

    sget v3, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x22

    if-ge v3, v4, :cond_1a

    .line 490
    invoke-virtual {v2}, Lio/bidmachine/media3/common/ColorInfo;->buildUpon()Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/ColorInfo$Builder;->setColorTransfer(I)Lio/bidmachine/media3/common/ColorInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/media3/common/ColorInfo$Builder;->build()Lio/bidmachine/media3/common/ColorInfo;

    move-result-object v2

    goto :goto_1a

    .line 493
    :goto_35
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->clock:Lio/bidmachine/media3/common/util/Clock;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Looper;

    invoke-interface {v2, v3, v0}, Lio/bidmachine/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lio/bidmachine/media3/common/util/HandlerWrapper;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    .line 495
    :try_start_47
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->previewingVideoGraphFactory:Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;

    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->context:Landroid/content/Context;

    sget-object v6, Lio/bidmachine/media3/common/DebugViewProvider;->NONE:Lio/bidmachine/media3/common/DebugViewProvider;

    .line 501
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v8, v2}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/common/util/HandlerWrapper;)V

    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->compositorSettings:Lio/bidmachine/media3/common/VideoCompositorSettings;

    iget-object v10, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->compositionEffects:Ljava/util/List;
    :try_end_59
    .catch Lio/bidmachine/media3/common/VideoFrameProcessingException; {:try_start_47 .. :try_end_59} :catch_87

    const-wide/16 v11, 0x0

    move-object v7, p0

    .line 496
    :try_start_5c
    invoke-interface/range {v3 .. v12}, Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;->create(Landroid/content/Context;Lio/bidmachine/media3/common/ColorInfo;Lio/bidmachine/media3/common/DebugViewProvider;Lio/bidmachine/media3/common/VideoGraph$Listener;Ljava/util/concurrent/Executor;Lio/bidmachine/media3/common/VideoCompositorSettings;Ljava/util/List;J)Lio/bidmachine/media3/common/PreviewingVideoGraph;

    move-result-object v2

    iput-object v2, v7, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoGraph:Lio/bidmachine/media3/common/PreviewingVideoGraph;

    .line 505
    invoke-interface {v2}, Lio/bidmachine/media3/common/VideoGraph;->initialize()V
    :try_end_65
    .catch Lio/bidmachine/media3/common/VideoFrameProcessingException; {:try_start_5c .. :try_end_65} :catch_84

    .line 510
    iget-object v2, v7, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    if-eqz v2, :cond_7c

    .line 511
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/view/Surface;

    .line 512
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lio/bidmachine/media3/common/util/Size;

    .line 513
    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p0, v3, v4, v2}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->maybeSetOutputSurfaceInfo(Landroid/view/Surface;II)V

    .line 515
    :cond_7c
    iget-object v2, v7, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    invoke-interface {v2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->initialize(Lio/bidmachine/media3/common/Format;)Z

    .line 516
    iput v1, v7, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->state:I

    goto :goto_98

    :catch_84
    move-exception v0

    :goto_85
    move-object p2, v0

    goto :goto_8a

    :catch_87
    move-exception v0

    move-object v7, p0

    goto :goto_85

    .line 507
    :goto_8a
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;

    invoke-direct {v0, p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Lio/bidmachine/media3/common/Format;)V

    throw v0

    :cond_90
    move-object v7, p0

    .line 518
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_98

    return-object v0

    .line 525
    :cond_98
    :goto_98
    :try_start_98
    iget-object v2, v7, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoGraph:Lio/bidmachine/media3/common/PreviewingVideoGraph;

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/common/PreviewingVideoGraph;

    invoke-interface {v2, p2}, Lio/bidmachine/media3/common/VideoGraph;->registerInput(I)V
    :try_end_a3
    .catch Lio/bidmachine/media3/common/VideoFrameProcessingException; {:try_start_98 .. :try_end_a3} :catch_c9

    .line 529
    iget p1, v7, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->registeredVideoInputCount:I

    add-int/2addr p1, v1

    iput p1, v7, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->registeredVideoInputCount:I

    .line 530
    iget-object p1, v7, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    new-instance v1, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;

    invoke-direct {v1, p0, v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;-><init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;)V

    iget-object v0, v7, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    .line 531
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/common/util/HandlerWrapper;)V

    .line 530
    invoke-interface {p1, v1, v2}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setListener(Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V

    .line 532
    iget-object p1, v7, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoGraph:Lio/bidmachine/media3/common/PreviewingVideoGraph;

    invoke-interface {p1, p2}, Lio/bidmachine/media3/common/VideoGraph;->getProcessor(I)Lio/bidmachine/media3/common/VideoFrameProcessor;

    move-result-object p1

    return-object p1

    :catch_c9
    move-exception v0

    move-object p2, v0

    .line 527
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;

    invoke-direct {v0, p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Lio/bidmachine/media3/common/Format;)V

    throw v0
.end method

.method public release()V
    .registers 4

    .line 394
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    return-void

    .line 397
    :cond_6
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->handler:Lio/bidmachine/media3/common/util/HandlerWrapper;

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 398
    invoke-interface {v0, v2}, Lio/bidmachine/media3/common/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 400
    :cond_e
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->videoGraph:Lio/bidmachine/media3/common/PreviewingVideoGraph;

    if-eqz v0, :cond_15

    .line 401
    invoke-interface {v0}, Lio/bidmachine/media3/common/VideoGraph;->release()V

    .line 403
    :cond_15
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    .line 404
    iput v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->state:I

    return-void
.end method

.method public final render(JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->render(JJ)V

    return-void
.end method

.method public final setBufferTimestampAdjustment(J)V
    .registers 6

    .line 611
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->bufferTimestampAdjustmentUs:J

    .line 612
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->outputStreamStartPositionUs:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setStreamTimestampInfo(JJ)V

    return-void
.end method

.method public setOutputSurfaceInfo(Landroid/view/Surface;Lio/bidmachine/media3/common/util/Size;)V
    .registers 4

    .line 373
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    .line 374
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/media3/common/util/Size;

    .line 375
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/common/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    .line 378
    :cond_1b
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->currentSurfaceAndSize:Landroid/util/Pair;

    .line 380
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/Size;->getHeight()I

    move-result p2

    .line 379
    invoke-virtual {p0, p1, v0, p2}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->maybeSetOutputSurfaceInfo(Landroid/view/Surface;II)V

    return-void
.end method

.method public final setPlaybackSpeed(F)V
    .registers 3

    .line 607
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setPlaybackSpeed(F)V

    return-void
.end method

.method public setTotalVideoInputCount(I)V
    .registers 2

    .line 540
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->totalVideoInputCount:I

    return-void
.end method

.method public final setVideoFrameMetadataListener(Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .registers 3

    .line 603
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->defaultVideoSink:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setVideoFrameMetadataListener(Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;)V

    return-void
.end method

.method public final shouldRenderToInputVideoSink()Z
    .registers 3

    .line 617
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->totalVideoInputCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->registeredVideoInputCount:I

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper.AnonymousClass1 (io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$1)
.class public Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoFrameHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;-><init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public render(J)V
    .registers 4

    .line 325
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$800(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Lio/bidmachine/media3/common/PreviewingVideoGraph;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/PreviewingVideoGraph;

    invoke-interface {v0, p1, p2}, Lio/bidmachine/media3/common/PreviewingVideoGraph;->renderOutputFrame(J)V

    return-void
.end method

.method public skip()V
    .registers 4

    .line 330
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$800(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Lio/bidmachine/media3/common/PreviewingVideoGraph;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/PreviewingVideoGraph;

    const-wide/16 v1, -0x2

    invoke-interface {v0, v1, v2}, Lio/bidmachine/media3/common/PreviewingVideoGraph;->renderOutputFrame(J)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper.Builder (io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$Builder)
.class public final Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public built:Z

.field public clock:Lio/bidmachine/media3/common/util/Clock;

.field public compositionEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public compositorSettings:Lio/bidmachine/media3/common/VideoCompositorSettings;

.field public final context:Landroid/content/Context;

.field public previewingVideoGraphFactory:Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;

.field public requestOpenGlToneMapping:Z

.field public videoFrameProcessorFactory:Lio/bidmachine/media3/common/VideoFrameProcessor$Factory;

.field public final videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;)V
    .registers 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->context:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 138
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->compositionEffects:Ljava/util/List;

    .line 139
    sget-object p1, Lio/bidmachine/media3/common/VideoCompositorSettings;->DEFAULT:Lio/bidmachine/media3/common/VideoCompositorSettings;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->compositorSettings:Lio/bidmachine/media3/common/VideoCompositorSettings;

    .line 140
    sget-object p1, Lio/bidmachine/media3/common/util/Clock;->DEFAULT:Lio/bidmachine/media3/common/util/Clock;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->clock:Lio/bidmachine/media3/common/util/Clock;

    return-void
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Landroid/content/Context;
    .registers 1

    .line 122
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;
    .registers 1

    .line 122
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->previewingVideoGraphFactory:Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;

    return-object p0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Ljava/util/List;
    .registers 1

    .line 122
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->compositionEffects:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Lio/bidmachine/media3/common/VideoCompositorSettings;
    .registers 1

    .line 122
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->compositorSettings:Lio/bidmachine/media3/common/VideoCompositorSettings;

    return-object p0
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Lio/bidmachine/media3/common/util/Clock;
    .registers 1

    .line 122
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->clock:Lio/bidmachine/media3/common/util/Clock;

    return-object p0
.end method

.method public static synthetic access$700(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;
    .registers 1

    .line 122
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    return-object p0
.end method

.method public static synthetic access$900(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;)Z
    .registers 1

    .line 122
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->requestOpenGlToneMapping:Z

    return p0
.end method


# virtual methods
.method public build()Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;
    .registers 5

    .line 235
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->built:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 237
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->previewingVideoGraphFactory:Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;

    const/4 v2, 0x0

    if-nez v0, :cond_20

    .line 238
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->videoFrameProcessorFactory:Lio/bidmachine/media3/common/VideoFrameProcessor$Factory;

    if-nez v0, :cond_17

    .line 239
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;

    invoke-direct {v0, v2}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;-><init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->videoFrameProcessorFactory:Lio/bidmachine/media3/common/VideoFrameProcessor$Factory;

    .line 241
    :cond_17
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectivePreviewingSingleInputVideoGraphFactory;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->videoFrameProcessorFactory:Lio/bidmachine/media3/common/VideoFrameProcessor$Factory;

    invoke-direct {v0, v3}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectivePreviewingSingleInputVideoGraphFactory;-><init>(Lio/bidmachine/media3/common/VideoFrameProcessor$Factory;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->previewingVideoGraphFactory:Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;

    .line 244
    :cond_20
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-direct {v0, p0, v2}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;-><init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;)V

    .line 245
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->built:Z

    return-object v0
.end method

.method public setClock(Lio/bidmachine/media3/common/util/Clock;)Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;
    .registers 2

    .line 210
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Builder;->clock:Lio/bidmachine/media3/common/util/Clock;

    return-object p0
.end method

###### Class io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper.DefaultVideoSinkListener (io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$DefaultVideoSinkListener)
.class public final Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DefaultVideoSinkListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V
    .registers 2

    .line 970
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;)V
    .registers 3

    .line 970
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;-><init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V

    return-void
.end method


# virtual methods
.method public onFirstFrameRendered(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V
    .registers 4

    .line 974
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$3000(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;

    .line 975
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;->onFirstFrameRendered(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method public onFrameDropped(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V
    .registers 4

    .line 981
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$3000(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;

    .line 982
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;->onFrameDropped(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method public onVideoSizeChanged(Lio/bidmachine/media3/exoplayer/video/VideoSink;Lio/bidmachine/media3/common/VideoSize;)V
    .registers 5

    .line 988
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$3000(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;

    .line 989
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-interface {v0, v1, p2}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;->onVideoSizeChanged(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Lio/bidmachine/media3/common/VideoSize;)V

    goto :goto_a

    :cond_1c
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper.InputVideoSink (io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$InputVideoSink)
.class public final Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoSink;
.implements Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputVideoSink"
.end annotation


# instance fields
.field public inputBufferTimestampAdjustmentUs:J

.field public inputFormat:Lio/bidmachine/media3/common/Format;

.field public final inputIndex:I

.field public inputType:I

.field public lastBufferPresentationTimeUs:J

.field public listener:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

.field public listenerExecutor:Ljava/util/concurrent/Executor;

.field public signaledEndOfStream:Z

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

.field public videoEffects:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public videoFrameProcessor:Lio/bidmachine/media3/common/VideoFrameProcessor;

.field public final videoFrameProcessorMaxPendingFrameCount:I


# direct methods
.method public static synthetic $r8$lambda$M1nMuA-jU-YRIsk-fcJlWyZPdTc(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 915
    invoke-static {p0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/media3/exoplayer/video/VideoSink;

    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;->onFrameDropped(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pgj6dp8NYe3MCNN0A5DMxUhLmJo(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 908
    invoke-interface {p1, p0}, Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;->onFirstFrameRendered(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QZN6pbRdMuJblMMAf8QFh1EoUUk(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;Lio/bidmachine/media3/common/VideoSize;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 923
    invoke-interface {p1, p0, p2}, Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;->onVideoSizeChanged(Lio/bidmachine/media3/exoplayer/video/VideoSink;Lio/bidmachine/media3/common/VideoSize;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroid/content/Context;I)V
    .registers 4

    .line 651
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    iput p3, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->inputIndex:I

    .line 657
    invoke-static {p2}, Lio/bidmachine/media3/common/util/Util;->getMaxPendingFramesCountForMediaCodecDecoders(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->videoFrameProcessorMaxPendingFrameCount:I

    .line 658
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->videoEffects:Lcom/google/common/collect/ImmutableList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 659
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->lastBufferPresentationTimeUs:J

    .line 660
    sget-object p1, Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;->NO_OP:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->listener:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    .line 661
    invoke-static {}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1100()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->listenerExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public clearOutputSurfaceInfo()V
    .registers 2

    .line 819
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->clearOutputSurfaceInfo()V

    return-void
.end method

.method public enableMayRenderStartOfStream()V
    .registers 2

    .line 830
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1200(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->enableMayRenderStartOfStream()V

    return-void
.end method

.method public flush(Z)V
    .registers 4

    .line 705
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 706
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->videoFrameProcessor:Lio/bidmachine/media3/common/VideoFrameProcessor;

    invoke-interface {v0}, Lio/bidmachine/media3/common/VideoFrameProcessor;->flush()V

    :cond_b
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 708
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->lastBufferPresentationTimeUs:J

    .line 709
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1400(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Z)V

    const/4 p1, 0x0

    .line 710
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->signaledEndOfStream:Z

    return-void
.end method

.method public getInputSurface()Landroid/view/Surface;
    .registers 2

    .line 769
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->isInitialized()Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 770
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->videoFrameProcessor:Lio/bidmachine/media3/common/VideoFrameProcessor;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/VideoFrameProcessor;

    invoke-interface {v0}, Lio/bidmachine/media3/common/VideoFrameProcessor;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public handleInputFrame(JZLio/bidmachine/media3/exoplayer/video/VideoSink$VideoFrameHandler;)Z
    .registers 7

    .line 836
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->isInitialized()Z

    move-result p3

    invoke-static {p3}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 838
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {p3}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$2400(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_11

    return v0

    .line 841
    :cond_11
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->videoFrameProcessor:Lio/bidmachine/media3/common/VideoFrameProcessor;

    invoke-static {p3}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/bidmachine/media3/common/VideoFrameProcessor;

    invoke-interface {p3}, Lio/bidmachine/media3/common/VideoFrameProcessor;->getPendingInputFrameCount()I

    move-result p3

    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->videoFrameProcessorMaxPendingFrameCount:I

    if-lt p3, v1, :cond_22

    return v0

    .line 845
    :cond_22
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->videoFrameProcessor:Lio/bidmachine/media3/common/VideoFrameProcessor;

    invoke-static {p3}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/bidmachine/media3/common/VideoFrameProcessor;

    invoke-interface {p3}, Lio/bidmachine/media3/common/VideoFrameProcessor;->registerInputFrame()Z

    move-result p3

    if-nez p3, :cond_31

    return v0

    .line 859
    :cond_31
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->inputBufferTimestampAdjustmentUs:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->lastBufferPresentationTimeUs:J

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 863
    invoke-interface {p4, p1, p2}, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoFrameHandler;->render(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public initialize(Lio/bidmachine/media3/common/Format;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 692
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->isInitialized()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 693
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget v2, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->inputIndex:I

    invoke-static {v0, p1, v2}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1300(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Lio/bidmachine/media3/common/Format;I)Lio/bidmachine/media3/common/VideoFrameProcessor;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->videoFrameProcessor:Lio/bidmachine/media3/common/VideoFrameProcessor;

    if-eqz p1, :cond_16

    return v1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public isEnded()Z
    .registers 2

    .line 745
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1900(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .line 700
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->videoFrameProcessor:Lio/bidmachine/media3/common/VideoFrameProcessor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isReady(Z)Z
    .registers 3

    .line 719
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    if-eqz p1, :cond_c

    .line 720
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 719
    :goto_d
    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1500(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Z)Z

    move-result p1

    return p1
.end method

.method public join(Z)V
    .registers 3

    .line 895
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1200(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->join(Z)V

    return-void
.end method

.method public onFirstFrameRendered(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V
    .registers 4

    .line 907
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->listener:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    .line 908
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->listenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFrameDropped(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V
    .registers 4

    .line 913
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->listener:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    .line 914
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->listenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInputStreamChanged(ILio/bidmachine/media3/common/Format;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/Format;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 751
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->isInitialized()Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    goto :goto_25

    .line 757
    :cond_e
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported input type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 759
    :cond_25
    :goto_25
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->setPendingVideoEffects(Ljava/util/List;)V

    .line 760
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->inputType:I

    .line 761
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->inputFormat:Lio/bidmachine/media3/common/Format;

    .line 762
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1602(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;J)J

    .line 763
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1802(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Z)Z

    .line 764
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->registerInputStream(Lio/bidmachine/media3/common/Format;)V

    return-void
.end method

.method public onRendererDisabled()V
    .registers 2

    .line 671
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1200(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->onRendererDisabled()V

    return-void
.end method

.method public onRendererEnabled(Z)V
    .registers 3

    .line 666
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1200(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->onRendererEnabled(Z)V

    return-void
.end method

.method public onRendererStarted()V
    .registers 2

    .line 676
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1200(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->onRendererStarted()V

    return-void
.end method

.method public onRendererStopped()V
    .registers 2

    .line 681
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1200(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->onRendererStopped()V

    return-void
.end method

.method public onVideoSizeChanged(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Lio/bidmachine/media3/common/VideoSize;)V
    .registers 5

    .line 921
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->listener:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    .line 922
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->listenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;Lio/bidmachine/media3/common/VideoSize;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final registerInputStream(Lio/bidmachine/media3/common/Format;)V
    .registers 8

    .line 961
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget-object p1, p1, Lio/bidmachine/media3/common/Format;->colorInfo:Lio/bidmachine/media3/common/ColorInfo;

    .line 962
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$2900(Lio/bidmachine/media3/common/ColorInfo;)Lio/bidmachine/media3/common/ColorInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setColorInfo(Lio/bidmachine/media3/common/ColorInfo;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 963
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v2

    .line 964
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->videoFrameProcessor:Lio/bidmachine/media3/common/VideoFrameProcessor;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lio/bidmachine/media3/common/VideoFrameProcessor;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->inputType:I

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->videoEffects:Lcom/google/common/collect/ImmutableList;

    const-wide/16 v4, 0x0

    .line 965
    invoke-interface/range {v0 .. v5}, Lio/bidmachine/media3/common/VideoFrameProcessor;->registerInputStream(ILio/bidmachine/media3/common/Format;Ljava/util/List;J)V

    return-void
.end method

.method public release()V
    .registers 2

    .line 900
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->release()V

    return-void
.end method

.method public render(JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 885
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$2500(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;JJ)V

    return-void
.end method

.method public setChangeFrameRateStrategy(I)V
    .registers 3

    .line 825
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1200(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->setChangeFrameRateStrategy(I)V

    return-void
.end method

.method public setListener(Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 686
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->listener:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    .line 687
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->listenerExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public setOutputSurfaceInfo(Landroid/view/Surface;Lio/bidmachine/media3/common/util/Size;)V
    .registers 4

    .line 814
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->setOutputSurfaceInfo(Landroid/view/Surface;Lio/bidmachine/media3/common/util/Size;)V

    return-void
.end method

.method public final setPendingVideoEffects(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 947
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$2700(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;->supportsMultipleInputs()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 948
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->videoEffects:Lcom/google/common/collect/ImmutableList;

    return-void

    .line 950
    :cond_13
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 952
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 953
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$2800(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    .line 954
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->videoEffects:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .registers 3

    .line 781
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$2100(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;F)V

    return-void
.end method

.method public setStreamTimestampInfo(JJ)V
    .registers 10

    .line 801
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$2200(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Lio/bidmachine/media3/common/util/TimedValueQueue;

    move-result-object v0

    .line 802
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->lastBufferPresentationTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-nez v3, :cond_14

    const-wide/16 v1, 0x0

    goto :goto_17

    :cond_14
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 803
    :goto_17
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 801
    invoke-virtual {v0, v1, v2, p1}, Lio/bidmachine/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 804
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->inputBufferTimestampAdjustmentUs:J

    .line 809
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {p1, p3, p4}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$2300(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;J)V

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

    .line 786
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->videoEffects:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_13

    .line 789
    :cond_9
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->setPendingVideoEffects(Ljava/util/List;)V

    .line 790
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->inputFormat:Lio/bidmachine/media3/common/Format;

    if-eqz p1, :cond_13

    .line 791
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->registerInputStream(Lio/bidmachine/media3/common/Format;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public setVideoFrameMetadataListener(Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .registers 3

    .line 776
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$2000(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;)V

    return-void
.end method

.method public setWakeupListener(Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;)V
    .registers 3

    .line 890
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$2602(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;)Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;

    return-void
.end method

.method public signalEndOfCurrentInputStream()V
    .registers 5

    .line 725
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->lastBufferPresentationTimeUs:J

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1602(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;J)J

    .line 726
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1700(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)J

    move-result-wide v0

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1600(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_26

    .line 727
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1200(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Lio/bidmachine/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->signalEndOfCurrentInputStream()V

    .line 728
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->this$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$1802(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Z)Z

    :cond_26
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->$r8$lambda$Pgj6dp8NYe3MCNN0A5DMxUhLmJo(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

.field public final synthetic f$2:Lio/bidmachine/media3/common/VideoSize;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;Lio/bidmachine/media3/common/VideoSize;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda1;->f$2:Lio/bidmachine/media3/common/VideoSize;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda1;->f$2:Lio/bidmachine/media3/common/VideoSize;

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->$r8$lambda$QZN6pbRdMuJblMMAf8QFh1EoUUk(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;Lio/bidmachine/media3/common/VideoSize;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink$$ExternalSyntheticLambda2;->f$1:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->$r8$lambda$M1nMuA-jU-YRIsk-fcJlWyZPdTc(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper.Listener (io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$Listener)
.class public interface abstract Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onFirstFrameRendered(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V
.end method

.method public abstract onFrameDropped(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V
.end method

.method public abstract onVideoSizeChanged(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;Lio/bidmachine/media3/common/VideoSize;)V
.end method

###### Class io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper.ReflectiveDefaultVideoFrameProcessorFactory (io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory)
.class public final Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"

# interfaces
.implements Lio/bidmachine/media3/common/VideoFrameProcessor$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReflectiveDefaultVideoFrameProcessorFactory"
.end annotation


# static fields
.field public static final VIDEO_FRAME_PROCESSOR_FACTORY_SUPPLIER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lio/bidmachine/media3/common/VideoFrameProcessor$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CMzZd_bN2JGz_INB7gNJv0WwFys()Lio/bidmachine/media3/common/VideoFrameProcessor$Factory;
    .registers 5

    .line 1071
    :try_start_0
    const-string v0, "io.bidmachine.media3.effect.DefaultVideoFrameProcessor$Factory$Builder"

    .line 1072
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 1074
    new-array v2, v1, [Ljava/lang/Class;

    .line 1076
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 1077
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1078
    const-string v3, "build"

    new-array v4, v1, [Ljava/lang/Class;

    .line 1081
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1082
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1079
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/common/VideoFrameProcessor$Factory;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    return-object v0

    :catch_28
    move-exception v0

    .line 1085
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1066
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory$$ExternalSyntheticLambda0;-><init>()V

    .line 1067
    invoke-static {v0}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;->VIDEO_FRAME_PROCESSOR_FACTORY_SUPPLIER:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;)V
    .registers 2

    .line 1063
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;-><init>()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory$$ExternalSyntheticLambda0;
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
    invoke-static {}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveDefaultVideoFrameProcessorFactory;->$r8$lambda$CMzZd_bN2JGz_INB7gNJv0WwFys()Lio/bidmachine/media3/common/VideoFrameProcessor$Factory;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper.ReflectivePreviewingSingleInputVideoGraphFactory (io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$ReflectivePreviewingSingleInputVideoGraphFactory)
.class public final Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectivePreviewingSingleInputVideoGraphFactory;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"

# interfaces
.implements Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReflectivePreviewingSingleInputVideoGraphFactory"
.end annotation


# instance fields
.field public final videoFrameProcessorFactory:Lio/bidmachine/media3/common/VideoFrameProcessor$Factory;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/common/VideoFrameProcessor$Factory;)V
    .registers 2

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectivePreviewingSingleInputVideoGraphFactory;->videoFrameProcessorFactory:Lio/bidmachine/media3/common/VideoFrameProcessor$Factory;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Lio/bidmachine/media3/common/ColorInfo;Lio/bidmachine/media3/common/DebugViewProvider;Lio/bidmachine/media3/common/VideoGraph$Listener;Ljava/util/concurrent/Executor;Lio/bidmachine/media3/common/VideoCompositorSettings;Ljava/util/List;J)Lio/bidmachine/media3/common/PreviewingVideoGraph;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/bidmachine/media3/common/ColorInfo;",
            "Lio/bidmachine/media3/common/DebugViewProvider;",
            "Lio/bidmachine/media3/common/VideoGraph$Listener;",
            "Ljava/util/concurrent/Executor;",
            "Lio/bidmachine/media3/common/VideoCompositorSettings;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;J)",
            "Lio/bidmachine/media3/common/PreviewingVideoGraph;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    .line 1029
    :try_start_0
    const-string v0, "io.bidmachine.media3.effect.PreviewingSingleInputVideoGraph$Factory"

    .line 1030
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1031
    const-class v1, Lio/bidmachine/media3/common/VideoFrameProcessor$Factory;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    .line 1034
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectivePreviewingSingleInputVideoGraphFactory;->videoFrameProcessorFactory:Lio/bidmachine/media3/common/VideoFrameProcessor$Factory;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1035
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    .line 1039
    invoke-interface/range {v1 .. v10}, Lio/bidmachine/media3/common/PreviewingVideoGraph$Factory;->create(Landroid/content/Context;Lio/bidmachine/media3/common/ColorInfo;Lio/bidmachine/media3/common/DebugViewProvider;Lio/bidmachine/media3/common/VideoGraph$Listener;Ljava/util/concurrent/Executor;Lio/bidmachine/media3/common/VideoCompositorSettings;Ljava/util/List;J)Lio/bidmachine/media3/common/PreviewingVideoGraph;

    move-result-object p1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    return-object p1

    :catch_2e
    move-exception v0

    move-object p1, v0

    .line 1049
    invoke-static {p1}, Lio/bidmachine/media3/common/VideoFrameProcessingException;->from(Ljava/lang/Exception;)Lio/bidmachine/media3/common/VideoFrameProcessingException;

    move-result-object p1

    throw p1
.end method

.method public supportsMultipleInputs()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

###### Class io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/common/util/HandlerWrapper;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/common/util/HandlerWrapper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/common/util/HandlerWrapper;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/common/util/HandlerWrapper;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->$r8$lambda$MohEgMqrHcCPcOvKc0SAQe9ebcI(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.video.PlaybackVideoGraphWrapper$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;->$r8$lambda$wiSRpAAbQB4wWfXYuO3DiRQ3faY(Lio/bidmachine/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V

    return-void
.end method
