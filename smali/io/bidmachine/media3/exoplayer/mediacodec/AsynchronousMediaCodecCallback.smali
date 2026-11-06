###### Class io.bidmachine.media3.exoplayer.mediacodec.AsynchronousMediaCodecCallback (io.bidmachine.media3.exoplayer.mediacodec.AsynchronousMediaCodecCallback)
.class public final Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;
.super Landroid/media/MediaCodec$Callback;
.source "AsynchronousMediaCodecCallback.java"


# instance fields
.field public final availableInputBuffers:Landroidx/collection/CircularIntArray;

.field public final availableOutputBuffers:Landroidx/collection/CircularIntArray;

.field public final bufferInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final callbackThread:Landroid/os/HandlerThread;

.field public currentFormat:Landroid/media/MediaFormat;

.field public final formats:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field public handler:Landroid/os/Handler;

.field public internalException:Ljava/lang/IllegalStateException;

.field public final lock:Ljava/lang/Object;

.field public mediaCodecCryptoException:Landroid/media/MediaCodec$CryptoException;

.field public mediaCodecException:Landroid/media/MediaCodec$CodecException;

.field public onBufferAvailableListener:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;

.field public pendingFlushCount:J

.field public pendingOutputFormat:Landroid/media/MediaFormat;

.field public shutDown:Z


# direct methods
.method public static synthetic $r8$lambda$wmBD7L30mA9QyZMJiVsAIFZTit0(Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->onFlushCompleted()V

    return-void
.end method

.method public constructor <init>(Landroid/os/HandlerThread;)V
    .registers 3

    .line 90
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    .line 92
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    .line 93
    new-instance p1, Landroidx/collection/CircularIntArray;

    invoke-direct {p1}, Landroidx/collection/CircularIntArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Landroidx/collection/CircularIntArray;

    .line 94
    new-instance p1, Landroidx/collection/CircularIntArray;

    invoke-direct {p1}, Landroidx/collection/CircularIntArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Landroidx/collection/CircularIntArray;

    .line 95
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    .line 96
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final addOutputFormat(Landroid/media/MediaFormat;)V
    .registers 4

    .line 317
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Landroidx/collection/CircularIntArray;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 318
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dequeueInputBufferIndex()I
    .registers 4

    .line 137
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->maybeThrowException()V

    .line 139
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->isFlushingOrShutdown()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_11

    .line 140
    monitor-exit v0

    return v2

    :catchall_f
    move-exception v1

    goto :goto_22

    .line 142
    :cond_11
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Landroidx/collection/CircularIntArray;

    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_20

    .line 144
    :cond_1a
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Landroidx/collection/CircularIntArray;

    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->popFirst()I

    move-result v2

    :goto_20
    monitor-exit v0

    return v2

    .line 146
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_f

    throw v1
.end method

.method public dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I
    .registers 11

    .line 156
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_3
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->maybeThrowException()V

    .line 158
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->isFlushingOrShutdown()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_12

    .line 159
    monitor-exit v1

    return v2

    :catchall_f
    move-exception v0

    move-object p1, v0

    goto :goto_4d

    .line 161
    :cond_12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Landroidx/collection/CircularIntArray;

    invoke-virtual {v0}, Landroidx/collection/CircularIntArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 162
    monitor-exit v1

    return v2

    .line 164
    :cond_1c
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Landroidx/collection/CircularIntArray;

    invoke-virtual {v0}, Landroidx/collection/CircularIntArray;->popFirst()I

    move-result v0

    if-ltz v0, :cond_3e

    .line 166
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec$BufferInfo;

    .line 168
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_4b

    :cond_3e
    const/4 p1, -0x2

    if-ne v0, p1, :cond_4b

    .line 174
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    .line 176
    :cond_4b
    :goto_4b
    monitor-exit v1

    return v0

    .line 179
    :goto_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_f

    throw p1
.end method

.method public flush()V
    .registers 6

    .line 205
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    .line 207
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public final flushInternal()V
    .registers 2

    .line 296
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 297
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    .line 304
    :cond_12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Landroidx/collection/CircularIntArray;

    invoke-virtual {v0}, Landroidx/collection/CircularIntArray;->clear()V

    .line 305
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Landroidx/collection/CircularIntArray;

    invoke-virtual {v0}, Landroidx/collection/CircularIntArray;->clear()V

    .line 306
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 307
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public getOutputFormat()Landroid/media/MediaFormat;
    .registers 3

    .line 192
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    if-eqz v1, :cond_b

    .line 196
    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    goto :goto_11

    .line 194
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 197
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_9

    throw v1
.end method

.method public initialize(Landroid/media/MediaCodec;)V
    .registers 4

    .line 108
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 110
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 112
    invoke-virtual {p1, p0, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 115
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    return-void
.end method

.method public final isFlushingOrShutdown()Z
    .registers 5

    .line 312
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public final maybeThrowException()V
    .registers 1

    .line 323
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->maybeThrowInternalException()V

    .line 324
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->maybeThrowMediaCodecException()V

    .line 325
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->maybeThrowMediaCodecCryptoException()V

    return-void
.end method

.method public final maybeThrowInternalException()V
    .registers 3

    .line 330
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 332
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    .line 333
    throw v0
.end method

.method public final maybeThrowMediaCodecCryptoException()V
    .registers 3

    .line 348
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecCryptoException:Landroid/media/MediaCodec$CryptoException;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 350
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecCryptoException:Landroid/media/MediaCodec$CryptoException;

    .line 351
    throw v0
.end method

.method public final maybeThrowMediaCodecException()V
    .registers 3

    .line 339
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 341
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    .line 342
    throw v0
.end method

.method public onCryptoError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CryptoException;)V
    .registers 3

    .line 247
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 248
    :try_start_3
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecCryptoException:Landroid/media/MediaCodec$CryptoException;

    .line 249
    monitor-exit p1

    return-void

    :catchall_7
    move-exception p2

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p2
.end method

.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 3

    .line 240
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 241
    :try_start_3
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    .line 242
    monitor-exit p1

    return-void

    :catchall_7
    move-exception p2

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p2
.end method

.method public final onFlushCompleted()V
    .registers 7

    .line 275
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_3
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    if-eqz v1, :cond_b

    .line 277
    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    goto :goto_2d

    .line 280
    :cond_b
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1a

    .line 283
    monitor-exit v0

    return-void

    :cond_1a
    cmp-long v1, v1, v3

    if-gez v1, :cond_28

    .line 286
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->setInternalException(Ljava/lang/IllegalStateException;)V

    .line 287
    monitor-exit v0

    return-void

    .line 289
    :cond_28
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->flushInternal()V

    .line 290
    monitor-exit v0

    return-void

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_9

    throw v1
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 4

    .line 215
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 216
    :try_start_3
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Landroidx/collection/CircularIntArray;

    invoke-virtual {v0, p2}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 217
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->onBufferAvailableListener:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;

    if-eqz p2, :cond_12

    .line 218
    invoke-interface {p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;->onInputBufferAvailable()V

    goto :goto_12

    :catchall_10
    move-exception p2

    goto :goto_14

    .line 220
    :cond_12
    :goto_12
    monitor-exit p1

    return-void

    :goto_14
    monitor-exit p1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_10

    throw p2
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 5

    .line 225
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 226
    :try_start_3
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_10

    .line 227
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->addOutputFormat(Landroid/media/MediaFormat;)V

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    goto :goto_10

    :catchall_e
    move-exception p2

    goto :goto_23

    .line 230
    :cond_10
    :goto_10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Landroidx/collection/CircularIntArray;

    invoke-virtual {v0, p2}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 231
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->onBufferAvailableListener:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;

    if-eqz p2, :cond_21

    .line 233
    invoke-interface {p2}, Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;->onOutputBufferAvailable()V

    .line 235
    :cond_21
    monitor-exit p1

    return-void

    :goto_23
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_e

    throw p2
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 3

    .line 254
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 255
    :try_start_3
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->addOutputFormat(Landroid/media/MediaFormat;)V

    const/4 p2, 0x0

    .line 256
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    .line 257
    monitor-exit p1

    return-void

    :catchall_b
    move-exception p2

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p2
.end method

.method public final setInternalException(Ljava/lang/IllegalStateException;)V
    .registers 3

    .line 356
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_3
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    .line 358
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setOnBufferAvailableListener(Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;)V
    .registers 3

    .line 269
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_3
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->onBufferAvailableListener:Lio/bidmachine/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;

    .line 271
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public shutdown()V
    .registers 3

    .line 125
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 126
    :try_start_4
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    .line 127
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 128
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->flushInternal()V

    .line 129
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method

###### Class io.bidmachine.media3.exoplayer.mediacodec.AsynchronousMediaCodecCallback$$ExternalSyntheticLambda0 (io.bidmachine.media3.exoplayer.mediacodec.AsynchronousMediaCodecCallback$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->$r8$lambda$wmBD7L30mA9QyZMJiVsAIFZTit0(Lio/bidmachine/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;)V

    return-void
.end method
