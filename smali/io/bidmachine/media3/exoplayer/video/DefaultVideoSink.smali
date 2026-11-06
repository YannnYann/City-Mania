###### Class io.bidmachine.media3.exoplayer.video.DefaultVideoSink (io.bidmachine.media3.exoplayer.video.DefaultVideoSink)
.class public final Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;
.super Ljava/lang/Object;
.source "DefaultVideoSink.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;
    }
.end annotation


# instance fields
.field public bufferTimestampAdjustmentUs:J

.field public final clock:Lio/bidmachine/media3/common/util/Clock;

.field public inputFormat:Lio/bidmachine/media3/common/Format;

.field public listener:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

.field public listenerExecutor:Ljava/util/concurrent/Executor;

.field public outputSurface:Landroid/view/Surface;

.field public streamStartPositionUs:J

.field public final videoFrameHandlers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoFrameHandler;",
            ">;"
        }
    .end annotation
.end field

.field public videoFrameMetadataListener:Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;

.field public final videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

.field public final videoFrameRenderControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;


# direct methods
.method public static synthetic $r8$lambda$EIDR9RwgqWYplEniqvHyzi2D4mM(JJLio/bidmachine/media3/common/Format;Landroid/media/MediaFormat;)V
    .registers 6

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$gL1WB_KGj6rA09EYbUSnI7ENDF4(Ljava/lang/Runnable;)V
    .registers 1

    .line 0
    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;Lio/bidmachine/media3/common/util/Clock;)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 72
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->setClock(Lio/bidmachine/media3/common/util/Clock;)V

    .line 73
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->clock:Lio/bidmachine/media3/common/util/Clock;

    .line 74
    new-instance p2, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;

    new-instance v0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;-><init>(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$1;)V

    invoke-direct {p2, v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;-><init>(Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;)V

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;

    .line 76
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameHandlers:Ljava/util/Queue;

    .line 77
    new-instance p1, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {p1}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->inputFormat:Lio/bidmachine/media3/common/Format;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 78
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->streamStartPositionUs:J

    .line 79
    sget-object p1, Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;->NO_OP:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->listener:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    .line 80
    new-instance p1, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->listenerExecutor:Ljava/util/concurrent/Executor;

    .line 81
    new-instance p1, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameMetadataListener:Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 55
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->listenerExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic access$200(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)Landroid/view/Surface;
    .registers 1

    .line 55
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->outputSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public static synthetic access$300(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)Lio/bidmachine/media3/common/util/Clock;
    .registers 1

    .line 55
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->clock:Lio/bidmachine/media3/common/util/Clock;

    return-object p0
.end method

.method public static synthetic access$400(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;
    .registers 1

    .line 55
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameMetadataListener:Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;

    return-object p0
.end method

.method public static synthetic access$500(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/Queue;
    .registers 1

    .line 55
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameHandlers:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$600(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;
    .registers 1

    .line 55
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->listener:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    return-object p0
.end method


# virtual methods
.method public clearOutputSurfaceInfo()V
    .registers 3

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->outputSurface:Landroid/view/Surface;

    .line 193
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public enableMayRenderStartOfStream()V
    .registers 2

    .line 203
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->allowReleaseFirstFrameBeforeStarted()V

    return-void
.end method

.method public flush(Z)V
    .registers 2

    if-eqz p1, :cond_7

    .line 124
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->reset()V

    .line 126
    :cond_7
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->flush()V

    .line 127
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameHandlers:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public getInputSurface()Landroid/view/Surface;
    .registers 2

    .line 152
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->outputSurface:Landroid/view/Surface;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    return-object v0
.end method

.method public handleInputFrame(JZLio/bidmachine/media3/exoplayer/video/VideoSink$VideoFrameHandler;)Z
    .registers 5

    .line 227
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameHandlers:Ljava/util/Queue;

    invoke-interface {p3, p4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 228
    iget-wide p3, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->bufferTimestampAdjustmentUs:J

    sub-long/2addr p1, p3

    .line 229
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {p3, p1, p2}, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->onFrameAvailableForRendering(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public initialize(Lio/bidmachine/media3/common/Format;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public isEnded()Z
    .registers 2

    .line 147
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->isEnded()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isReady(Z)Z
    .registers 3

    .line 132
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->isReady(Z)Z

    move-result p1

    return p1
.end method

.method public join(Z)V
    .registers 3

    .line 264
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->join(Z)V

    return-void
.end method

.method public onInputStreamChanged(ILio/bidmachine/media3/common/Format;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/bidmachine/media3/common/Format;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 214
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 215
    iget p1, p2, Lio/bidmachine/media3/common/Format;->width:I

    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->inputFormat:Lio/bidmachine/media3/common/Format;

    iget v0, p3, Lio/bidmachine/media3/common/Format;->width:I

    if-ne p1, v0, :cond_15

    iget v0, p2, Lio/bidmachine/media3/common/Format;->height:I

    iget p3, p3, Lio/bidmachine/media3/common/Format;->height:I

    if-eq v0, p3, :cond_1c

    .line 216
    :cond_15
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;

    iget v0, p2, Lio/bidmachine/media3/common/Format;->height:I

    invoke-virtual {p3, p1, v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->onVideoSizeChanged(II)V

    .line 218
    :cond_1c
    iget p1, p2, Lio/bidmachine/media3/common/Format;->frameRate:F

    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->inputFormat:Lio/bidmachine/media3/common/Format;

    iget p3, p3, Lio/bidmachine/media3/common/Format;->frameRate:F

    cmpl-float p3, p1, p3

    if-eqz p3, :cond_2b

    .line 219
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p3, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->setFrameRate(F)V

    .line 221
    :cond_2b
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->inputFormat:Lio/bidmachine/media3/common/Format;

    return-void
.end method

.method public onRendererDisabled()V
    .registers 2

    .line 91
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->onDisabled()V

    return-void
.end method

.method public onRendererEnabled(Z)V
    .registers 3

    .line 86
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->onEnabled(Z)V

    return-void
.end method

.method public onRendererStarted()V
    .registers 2

    .line 96
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->onStarted()V

    return-void
.end method

.method public onRendererStopped()V
    .registers 2

    .line 101
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->onStopped()V

    return-void
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public render(JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 246
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->render(JJ)V
    :try_end_5
    .catch Lio/bidmachine/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 248
    new-instance p2, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;

    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->inputFormat:Lio/bidmachine/media3/common/Format;

    invoke-direct {p2, p1, p3}, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Lio/bidmachine/media3/common/Format;)V

    throw p2
.end method

.method public setChangeFrameRateStrategy(I)V
    .registers 3

    .line 198
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->setChangeFrameRateStrategy(I)V

    return-void
.end method

.method public setListener(Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 106
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->listener:Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    .line 107
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->listenerExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public setOutputSurfaceInfo(Landroid/view/Surface;Lio/bidmachine/media3/common/util/Size;)V
    .registers 3

    .line 186
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->outputSurface:Landroid/view/Surface;

    .line 187
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .registers 3

    .line 162
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameReleaseControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoFrameReleaseControl;->setPlaybackSpeed(F)V

    return-void
.end method

.method public setStreamTimestampInfo(JJ)V
    .registers 7

    .line 177
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->streamStartPositionUs:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_d

    .line 178
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->onStreamStartPositionChanged(J)V

    .line 179
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->streamStartPositionUs:J

    .line 181
    :cond_d
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->bufferTimestampAdjustmentUs:J

    return-void
.end method

.method public setVideoEffects(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 172
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setVideoFrameMetadataListener(Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameMetadataListener:Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;

    return-void
.end method

.method public setWakeupListener(Lio/bidmachine/media3/exoplayer/Renderer$WakeupListener;)V
    .registers 2

    .line 259
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public signalEndOfCurrentInputStream()V
    .registers 2

    .line 137
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->videoFrameRenderControl:Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl;->signalEndOfInput()V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.DefaultVideoSink.AnonymousClass1 (io.bidmachine.media3.exoplayer.video.DefaultVideoSink$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$1;
.super Ljava/lang/Object;
.source "DefaultVideoSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.video.DefaultVideoSink.FrameRendererImpl (io.bidmachine.media3.exoplayer.video.DefaultVideoSink$FrameRendererImpl)
.class public final Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;
.super Ljava/lang/Object;
.source "DefaultVideoSink.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrameRendererImpl"
.end annotation


# instance fields
.field public outputFormat:Lio/bidmachine/media3/common/Format;

.field public final synthetic this$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;


# direct methods
.method public static synthetic $r8$lambda$UjvmuiYQR-0hxkmwgPeLlArV9JY(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;Lio/bidmachine/media3/common/VideoSize;)V
    .registers 3

    .line 282
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;

    .line 282
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->access$600(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    move-result-object v0

    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;

    invoke-interface {v0, p0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;->onVideoSizeChanged(Lio/bidmachine/media3/exoplayer/video/VideoSink;Lio/bidmachine/media3/common/VideoSize;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VNK7ap85xHVktKLLpvaVUDE3XIQ(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;)V
    .registers 2

    .line 304
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;

    .line 304
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->access$600(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    move-result-object v0

    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;

    invoke-interface {v0, p0}, Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;->onFrameDropped(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bBL4Ri-dieHKlgRdVRClJ6WFSOU(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;)V
    .registers 2

    .line 289
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;

    .line 289
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->access$600(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;

    move-result-object v0

    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;

    invoke-interface {v0, p0}, Lio/bidmachine/media3/exoplayer/video/VideoSink$Listener;->onFirstFrameRendered(Lio/bidmachine/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)V
    .registers 2

    .line 270
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$1;)V
    .registers 3

    .line 270
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;-><init>(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)V

    return-void
.end method


# virtual methods
.method public dropFrame()V
    .registers 3

    .line 304
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->access$100(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 305
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->access$500(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoFrameHandler;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoFrameHandler;->skip()V

    return-void
.end method

.method public onVideoSizeChanged(Lio/bidmachine/media3/common/VideoSize;)V
    .registers 4

    .line 276
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    iget v1, p1, Lio/bidmachine/media3/common/VideoSize;->width:I

    .line 278
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setWidth(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p1, Lio/bidmachine/media3/common/VideoSize;->height:I

    .line 279
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setHeight(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "video/raw"

    .line 280
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->outputFormat:Lio/bidmachine/media3/common/Format;

    .line 282
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->access$100(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;Lio/bidmachine/media3/common/VideoSize;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public renderFrame(JJZ)V
    .registers 13

    if-eqz p5, :cond_18

    .line 288
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {p5}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->access$200(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)Landroid/view/Surface;

    move-result-object p5

    if-eqz p5, :cond_18

    .line 289
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {p5}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->access$100(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/concurrent/Executor;

    move-result-object p5

    new-instance v0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;)V

    invoke-interface {p5, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 293
    :cond_18
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->outputFormat:Lio/bidmachine/media3/common/Format;

    if-nez p5, :cond_25

    new-instance p5, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {p5}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p5}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p5

    :cond_25
    move-object v5, p5

    .line 294
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {p5}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->access$400(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;

    move-result-object v0

    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;

    .line 296
    invoke-static {p5}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->access$300(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)Lio/bidmachine/media3/common/util/Clock;

    move-result-object p5

    invoke-interface {p5}, Lio/bidmachine/media3/common/util/Clock;->nanoTime()J

    move-result-wide v3

    const/4 v6, 0x0

    move-wide v1, p3

    .line 294
    invoke-interface/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLio/bidmachine/media3/common/Format;Landroid/media/MediaFormat;)V

    .line 299
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {p3}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->access$500(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/Queue;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoFrameHandler;

    invoke-interface {p3, p1, p2}, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoFrameHandler;->render(J)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.video.DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

.field public final synthetic f$1:Lio/bidmachine/media3/common/VideoSize;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;Lio/bidmachine/media3/common/VideoSize;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/media3/common/VideoSize;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda0;->f$1:Lio/bidmachine/media3/common/VideoSize;

    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->$r8$lambda$UjvmuiYQR-0hxkmwgPeLlArV9JY(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;Lio/bidmachine/media3/common/VideoSize;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.video.DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->$r8$lambda$bBL4Ri-dieHKlgRdVRClJ6WFSOU(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda2 (io.bidmachine.media3.exoplayer.video.DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->$r8$lambda$VNK7ap85xHVktKLLpvaVUDE3XIQ(Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.DefaultVideoSink$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.video.DefaultVideoSink$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$$ExternalSyntheticLambda0;
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
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->$r8$lambda$gL1WB_KGj6rA09EYbUSnI7ENDF4(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.video.DefaultVideoSink$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.video.DefaultVideoSink$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/video/VideoFrameMetadataListener;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoFrameAboutToBeRendered(JJLio/bidmachine/media3/common/Format;Landroid/media/MediaFormat;)V
    .registers 7

    .line 0
    invoke-static/range {p1 .. p6}, Lio/bidmachine/media3/exoplayer/video/DefaultVideoSink;->$r8$lambda$EIDR9RwgqWYplEniqvHyzi2D4mM(JJLio/bidmachine/media3/common/Format;Landroid/media/MediaFormat;)V

    return-void
.end method
