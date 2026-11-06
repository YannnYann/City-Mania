###### Class io.bidmachine.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter (io.bidmachine.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter)
.class public final Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecAdapter.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;
    }
.end annotation


# instance fields
.field public final asynchronousMediaCodecCallback:Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

.field public final bufferEnqueuer:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;

.field public final codec:Landroid/media/MediaCodec;

.field public codecReleased:Z

.field public final loudnessCodecController:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;

.field public state:I


# direct methods
.method public static synthetic $r8$lambda$u_F_0eAsfxsFddfYozad5ojUPRA(Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/media/MediaCodec;JJ)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p2, p1

    move-object p1, p0

    move-object p0, p2

    move-wide p2, p3

    move-wide p4, p5

    .line 310
    invoke-interface/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;->onFrameRendered(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;)V
    .registers 5

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 182
    new-instance p1, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    invoke-direct {p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;-><init>(Landroid/os/HandlerThread;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    .line 183
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;

    .line 184
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->loudnessCodecController:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;

    const/4 p1, 0x0

    .line 185
    iput p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->state:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$1;)V
    .registers 6

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;)V

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .registers 5

    .line 54
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->initialize(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method public static synthetic access$200(I)Ljava/lang/String;
    .registers 1

    .line 54
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->createQueueingThreadLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(I)Ljava/lang/String;
    .registers 1

    .line 54
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->createCallbackThreadLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createCallbackThreadLabel(I)Ljava/lang/String;
    .registers 2

    .line 359
    const-string v0, "ExoPlayer:MediaCodecAsyncAdapter:"

    invoke-static {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->createThreadLabel(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createQueueingThreadLabel(I)Ljava/lang/String;
    .registers 2

    .line 363
    const-string v0, "ExoPlayer:MediaCodecQueueingThread:"

    invoke-static {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->createThreadLabel(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createThreadLabel(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_e

    .line 369
    const-string p0, "Audio"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_e
    const/4 p1, 0x2

    if-ne p0, p1, :cond_17

    .line 371
    const-string p0, "Video"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 373
    :cond_17
    const-string p1, "Unknown("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :goto_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dequeueInputBufferIndex()I
    .registers 2

    .line 236
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;->maybeThrowException()V

    .line 237
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->dequeueInputBufferIndex()I

    move-result v0

    return v0
.end method

.method public dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I
    .registers 3

    .line 242
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;->maybeThrowException()V

    .line 243
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I

    move-result p1

    return p1
.end method

.method public detachOutputSurface()V
    .registers 2

    .line 329
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/MediaCodec;)V

    return-void
.end method

.method public flush()V
    .registers 2

    .line 271
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;->flush()V

    .line 272
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 273
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->flush()V

    .line 274
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method public getInputBuffer(I)Ljava/nio/ByteBuffer;
    .registers 3

    .line 254
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .registers 3

    .line 260
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getOutputFormat()Landroid/media/MediaFormat;
    .registers 2

    .line 248
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public final initialize(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .registers 7

    .line 193
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->initialize(Landroid/media/MediaCodec;)V

    .line 194
    const-string v0, "configureCodec"

    invoke-static {v0}, Lio/bidmachine/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 196
    invoke-static {}, Lio/bidmachine/media3/common/util/TraceUtil;->endSection()V

    .line 197
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;

    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;->start()V

    .line 198
    const-string p1, "startCodec"

    invoke-static {p1}, Lio/bidmachine/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 200
    invoke-static {}, Lio/bidmachine/media3/common/util/TraceUtil;->endSection()V

    .line 201
    sget p1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 p2, 0x23

    if-lt p1, p2, :cond_35

    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->loudnessCodecController:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;

    if-eqz p1, :cond_35

    .line 202
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->addMediaCodec(Landroid/media/MediaCodec;)V

    :cond_35
    const/4 p1, 0x1

    .line 204
    iput p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->state:I

    return-void
.end method

.method public needsReconfiguration()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public queueInputBuffer(IIIJI)V
    .registers 14

    .line 215
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public queueSecureInputBuffer(IILio/bidmachine/media3/decoder/CryptoInfo;JI)V
    .registers 14

    .line 221
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;->queueSecureInputBuffer(IILio/bidmachine/media3/decoder/CryptoInfo;JI)V

    return-void
.end method

.method public registerOnBufferAvailableListener(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;)Z
    .registers 3

    .line 317
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->setOnBufferAvailableListener(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public release()V
    .registers 7

    const/16 v0, 0x21

    const/16 v1, 0x1e

    const/16 v2, 0x23

    const/4 v3, 0x1

    .line 280
    :try_start_7
    iget v4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->state:I

    if-ne v4, v3, :cond_18

    .line 281
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;

    invoke-interface {v4}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;->shutdown()V

    .line 282
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    invoke-virtual {v4}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->shutdown()V

    goto :goto_18

    :catchall_16
    move-exception v4

    goto :goto_56

    :cond_18
    :goto_18
    const/4 v4, 0x2

    .line 284
    iput v4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->state:I
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_16

    .line 286
    iget-boolean v4, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    if-nez v4, :cond_55

    .line 292
    :try_start_1f
    sget v4, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    if-lt v4, v1, :cond_2d

    if-ge v4, v0, :cond_2d

    .line 293
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_2b

    goto :goto_2d

    :catchall_2b
    move-exception v0

    goto :goto_40

    :cond_2d
    :goto_2d
    if-lt v4, v2, :cond_38

    .line 296
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->loudnessCodecController:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;

    if-eqz v0, :cond_38

    .line 297
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->removeMediaCodec(Landroid/media/MediaCodec;)V

    .line 299
    :cond_38
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 300
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    return-void

    .line 296
    :goto_40
    sget v1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    if-lt v1, v2, :cond_4d

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->loudnessCodecController:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;

    if-eqz v1, :cond_4d

    .line 297
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->removeMediaCodec(Landroid/media/MediaCodec;)V

    .line 299
    :cond_4d
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 300
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    .line 301
    throw v0

    :cond_55
    return-void

    .line 286
    :goto_56
    iget-boolean v5, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    if-nez v5, :cond_90

    .line 292
    :try_start_5a
    sget v5, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    if-lt v5, v1, :cond_68

    if-ge v5, v0, :cond_68

    .line 293
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_65
    .catchall {:try_start_5a .. :try_end_65} :catchall_66

    goto :goto_68

    :catchall_66
    move-exception v0

    goto :goto_7b

    :cond_68
    :goto_68
    if-lt v5, v2, :cond_73

    .line 296
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->loudnessCodecController:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;

    if-eqz v0, :cond_73

    .line 297
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->removeMediaCodec(Landroid/media/MediaCodec;)V

    .line 299
    :cond_73
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 300
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    goto :goto_90

    .line 296
    :goto_7b
    sget v1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    if-lt v1, v2, :cond_88

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->loudnessCodecController:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;

    if-eqz v1, :cond_88

    .line 297
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;->removeMediaCodec(Landroid/media/MediaCodec;)V

    .line 299
    :cond_88
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 300
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    .line 301
    throw v0

    .line 303
    :cond_90
    :goto_90
    throw v4
.end method

.method public releaseOutputBuffer(IJ)V
    .registers 5

    .line 231
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public releaseOutputBuffer(IZ)V
    .registers 4

    .line 226
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public setOnFrameRenderedListener(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/os/Handler;)V
    .registers 5

    .line 308
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    new-instance v1, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .registers 3

    .line 323
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setParameters(Landroid/os/Bundle;)V
    .registers 3

    .line 334
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public setVideoScalingMode(I)V
    .registers 3

    .line 339
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter.AnonymousClass1 (io.bidmachine.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter$1)
.class public synthetic Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$1;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter.Factory (io.bidmachine.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter$Factory)
.class public final Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecAdapter.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public final callbackThreadSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field public enableSynchronousBufferQueueingWithAsyncCryptoFlag:Z

.field public final queueingThreadSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$bsQd0NyspMUM2ewrCakSxpXl32c(I)Landroid/os/HandlerThread;
    .registers 2

    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->access$200(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$ufdZ8qOKqScLY0ukFxKLUUPHynw(I)Landroid/os/HandlerThread;
    .registers 2

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->access$300(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 70
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->callbackThreadSupplier:Lcom/google/common/base/Supplier;

    .line 89
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->queueingThreadSupplier:Lcom/google/common/base/Supplier;

    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->enableSynchronousBufferQueueingWithAsyncCryptoFlag:Z

    return-void
.end method

.method public static useSynchronousBufferQueueingWithAsyncCryptoFlag(Lio/bidmachine/media3/common/Format;)Z
    .registers 4

    .line 150
    sget v0, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    const/16 v1, 0x23

    if-ge v0, v1, :cond_16

    .line 154
    iget-object p0, p0, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p0}, Lio/bidmachine/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    return v2

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public createAdapter(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v1, 0x0

    .line 111
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCodec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 112
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_76

    .line 115
    :try_start_1d
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->enableSynchronousBufferQueueingWithAsyncCryptoFlag:Z

    if-eqz v0, :cond_34

    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->format:Lio/bidmachine/media3/common/Format;

    .line 116
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->useSynchronousBufferQueueingWithAsyncCryptoFlag(Lio/bidmachine/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 117
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecBufferEnqueuer;

    invoke-direct {v0, v4}, Lio/bidmachine/media3/exoplayer/mediacodec/SynchronousMediaCodecBufferEnqueuer;-><init>(Landroid/media/MediaCodec;)V

    const/4 v2, 0x4

    :goto_2f
    move-object v6, v0

    goto :goto_43

    :catch_31
    move-exception v0

    move-object p1, v0

    goto :goto_79

    .line 120
    :cond_34
    new-instance v0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->queueingThreadSupplier:Lcom/google/common/base/Supplier;

    .line 121
    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HandlerThread;

    invoke-direct {v0, v4, v2}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    const/4 v2, 0x0

    goto :goto_2f

    .line 123
    :goto_43
    new-instance v3, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;

    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->callbackThreadSupplier:Lcom/google/common/base/Supplier;

    .line 126
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/HandlerThread;

    iget-object v7, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->loudnessCodecController:Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;Lio/bidmachine/media3/exoplayer/mediacodec/LoudnessCodecController;Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$1;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_54} :catch_31

    .line 129
    :try_start_54
    invoke-static {}, Lio/bidmachine/media3/common/util/TraceUtil;->endSection()V

    .line 130
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->surface:Landroid/view/Surface;

    if-nez v0, :cond_6e

    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-boolean v1, v1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecInfo;->detachedSurfaceSupported:Z

    if-eqz v1, :cond_6e

    sget v1, Lio/bidmachine/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x23

    if-lt v1, v5, :cond_6e

    or-int/lit8 v2, v2, 0x8

    goto :goto_6e

    :catch_6a
    move-exception v0

    move-object p1, v0

    move-object v1, v3

    goto :goto_79

    .line 135
    :cond_6e
    :goto_6e
    iget-object v1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->crypto:Landroid/media/MediaCrypto;

    invoke-static {v3, v1, v0, p1, v2}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->access$100(Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_75} :catch_6a

    return-object v3

    :catch_76
    move-exception v0

    move-object p1, v0

    move-object v4, v1

    :goto_79
    if-nez v1, :cond_81

    if-eqz v4, :cond_84

    .line 142
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    goto :goto_84

    .line 140
    :cond_81
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->release()V

    .line 144
    :cond_84
    :goto_84
    throw p1
.end method

.method public bridge synthetic createAdapter(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->createAdapter(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;

    move-result-object p1

    return-object p1
.end method

.method public experimentalSetAsyncCryptoFlagEnabled(Z)V
    .registers 2

    .line 101
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->enableSynchronousBufferQueueingWithAsyncCryptoFlag:Z

    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda0;->f$0:I

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->$r8$lambda$ufdZ8qOKqScLY0ukFxKLUUPHynw(I)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory$$ExternalSyntheticLambda1;->f$0:I

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;->$r8$lambda$bsQd0NyspMUM2ewrCakSxpXl32c(I)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter$$ExternalSyntheticLambda1 (io.bidmachine.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;

.field public final synthetic f$1:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;

    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .registers 13

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$$ExternalSyntheticLambda1;->f$1:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->$r8$lambda$u_F_0eAsfxsFddfYozad5ojUPRA(Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/media/MediaCodec;JJ)V

    return-void
.end method
