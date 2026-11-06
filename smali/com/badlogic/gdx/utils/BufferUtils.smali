###### Class com.badlogic.gdx.utils.BufferUtils (com.badlogic.gdx.utils.BufferUtils)
.class public final Lcom/badlogic/gdx/utils/BufferUtils;
.super Ljava/lang/Object;
.source "BufferUtils.java"


# static fields
.field public static allocatedUnsafe:I

.field public static unsafeBuffers:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    .line 41
    sput v0, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    return-void
.end method

.method public static bytesToElements(Ljava/nio/Buffer;I)I
    .registers 4

    .line 421
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return p1

    .line 423
    :cond_5
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_c

    ushr-int/lit8 p0, p1, 0x1

    return p0

    .line 425
    :cond_c
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_13

    ushr-int/lit8 p0, p1, 0x1

    return p0

    .line 427
    :cond_13
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_1a

    ushr-int/lit8 p0, p1, 0x2

    return p0

    .line 429
    :cond_1a
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_21

    ushr-int/lit8 p0, p1, 0x3

    return p0

    .line 431
    :cond_21
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_28

    ushr-int/lit8 p0, p1, 0x2

    return p0

    .line 433
    :cond_28
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_2f

    ushr-int/lit8 p0, p1, 0x3

    return p0

    .line 436
    :cond_2f
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t copy to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " instance"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V
    .registers 5

    .line 230
    invoke-static {p0, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->elementsToBytes(Ljava/nio/Buffer;I)I

    move-result p2

    .line 231
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 232
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v1

    invoke-static {p0, v0, p1, v1, p2}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni(Ljava/nio/Buffer;ILjava/nio/Buffer;II)V

    return-void
.end method

.method public static copy([BILjava/nio/Buffer;I)V
    .registers 6

    .line 72
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-static {p2, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->bytesToElements(Ljava/nio/Buffer;I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 73
    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->positionInBytes(Ljava/nio/Buffer;)I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/utils/BufferUtils;->copyJni([BILjava/nio/Buffer;II)V

    return-void
.end method

.method private static native copyJni(Ljava/nio/Buffer;ILjava/nio/Buffer;II)V
.end method

.method private static native copyJni([BILjava/nio/Buffer;II)V
.end method

.method public static disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 501
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    .line 502
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v1

    .line 503
    :try_start_7
    sget-object v2, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 505
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_1a

    .line 506
    sget v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    sub-int/2addr v1, v0

    sput v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    .line 507
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->freeMemory(Ljava/nio/ByteBuffer;)V

    return-void

    :catchall_1a
    move-exception p0

    goto :goto_24

    .line 504
    :cond_1c
    :try_start_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "buffer not allocated with newUnsafeByteBuffer or already disposed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 505
    :goto_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_1a

    throw p0
.end method

.method public static elementsToBytes(Ljava/nio/Buffer;I)I
    .registers 4

    .line 440
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return p1

    .line 442
    :cond_5
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_c

    shl-int/lit8 p0, p1, 0x1

    return p0

    .line 444
    :cond_c
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_13

    shl-int/lit8 p0, p1, 0x1

    return p0

    .line 446
    :cond_13
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_1a

    shl-int/lit8 p0, p1, 0x2

    return p0

    .line 448
    :cond_1a
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_21

    shl-int/lit8 p0, p1, 0x3

    return p0

    .line 450
    :cond_21
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_28

    shl-int/lit8 p0, p1, 0x2

    return p0

    .line 452
    :cond_28
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_2f

    shl-int/lit8 p0, p1, 0x3

    return p0

    .line 455
    :cond_2f
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t copy to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " instance"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native freeMemory(Ljava/nio/ByteBuffer;)V
.end method

.method public static isUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Z
    .registers 4

    .line 511
    sget-object v0, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    monitor-enter v0

    .line 512
    :try_start_3
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 513
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public static newByteBuffer(I)Ljava/nio/ByteBuffer;
    .registers 2

    .line 471
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 472
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private static native newDisposableByteBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public static newFloatBuffer(I)Ljava/nio/FloatBuffer;
    .registers 2

    mul-int/lit8 p0, p0, 0x4

    .line 459
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 460
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 461
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static newIntBuffer(I)Ljava/nio/IntBuffer;
    .registers 2

    mul-int/lit8 p0, p0, 0x4

    .line 489
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 490
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 491
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;
    .registers 3

    .line 519
    invoke-static {p0}, Lcom/badlogic/gdx/utils/BufferUtils;->newDisposableByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 520
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 521
    sget v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    add-int/2addr v1, p0

    sput v1, Lcom/badlogic/gdx/utils/BufferUtils;->allocatedUnsafe:I

    .line 522
    sget-object p0, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    monitor-enter p0

    .line 523
    :try_start_13
    sget-object v1, Lcom/badlogic/gdx/utils/BufferUtils;->unsafeBuffers:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 524
    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public static positionInBytes(Ljava/nio/Buffer;)I
    .registers 4

    .line 402
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_9

    .line 403
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    return p0

    .line 404
    :cond_9
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_14

    .line 405
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    return p0

    .line 406
    :cond_14
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_1f

    .line 407
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    return p0

    .line 408
    :cond_1f
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_2a

    .line 409
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/lit8 p0, p0, 0x2

    return p0

    .line 410
    :cond_2a
    instance-of v0, p0, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_35

    .line 411
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/lit8 p0, p0, 0x3

    return p0

    .line 412
    :cond_35
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_40

    .line 413
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/lit8 p0, p0, 0x2

    return p0

    .line 414
    :cond_40
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_4b

    .line 415
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    shl-int/lit8 p0, p0, 0x3

    return p0

    .line 417
    :cond_4b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t copy to a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " instance"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
