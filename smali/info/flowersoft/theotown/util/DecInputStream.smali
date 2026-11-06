###### Class info.flowersoft.theotown.util.DecInputStream (info.flowersoft.theotown.util.DecInputStream)
.class public Linfo/flowersoft/theotown/util/DecInputStream;
.super Ljava/io/BufferedInputStream;
.source "DecInputStream.java"


# instance fields
.field public markedPos:I

.field public final pA:I

.field public final pB:I

.field public final pC:I

.field public pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5

    .line 21
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    if-nez p2, :cond_12

    const/16 p1, 0xa3

    .line 24
    iput p1, p0, Linfo/flowersoft/theotown/util/DecInputStream;->pA:I

    const/16 p1, 0x65

    .line 25
    iput p1, p0, Linfo/flowersoft/theotown/util/DecInputStream;->pB:I

    const/16 p1, 0x95

    .line 26
    iput p1, p0, Linfo/flowersoft/theotown/util/DecInputStream;->pC:I

    goto :goto_24

    :cond_12
    shr-int/lit8 p1, p2, 0x1

    and-int/lit16 p1, p1, 0xfd

    .line 28
    iput p1, p0, Linfo/flowersoft/theotown/util/DecInputStream;->pA:I

    shr-int/lit8 p1, p2, 0xb

    and-int/lit16 p1, p1, 0xfd

    .line 29
    iput p1, p0, Linfo/flowersoft/theotown/util/DecInputStream;->pB:I

    shr-int/lit8 p1, p2, 0x15

    and-int/lit16 p1, p1, 0xfd

    .line 30
    iput p1, p0, Linfo/flowersoft/theotown/util/DecInputStream;->pC:I

    .line 34
    :goto_24
    :try_start_24
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result p1

    .line 35
    iget v0, p0, Linfo/flowersoft/theotown/util/DecInputStream;->pC:I

    mul-int/2addr v0, p1

    iget v1, p0, Linfo/flowersoft/theotown/util/DecInputStream;->pB:I

    add-int/2addr v0, v1

    mul-int/lit16 p1, p1, 0x4165

    shr-int/lit8 p2, p2, 0x1b

    and-int/lit8 p2, p2, 0xf

    add-int/2addr p1, p2

    .line 38
    iget p2, p0, Linfo/flowersoft/theotown/util/DecInputStream;->pA:I

    mul-int/2addr p1, p2

    add-int/2addr p1, v0

    .line 39
    iput p1, p0, Linfo/flowersoft/theotown/util/DecInputStream;->pos:I
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public declared-synchronized mark(I)V
    .registers 2

    monitor-enter p0

    .line 68
    :try_start_1
    invoke-super {p0, p1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 69
    iget p1, p0, Linfo/flowersoft/theotown/util/DecInputStream;->pos:I

    iput p1, p0, Linfo/flowersoft/theotown/util/DecInputStream;->markedPos:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 70
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method public declared-synchronized read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 47
    :try_start_1
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_12

    .line 49
    iget v1, p0, Linfo/flowersoft/theotown/util/DecInputStream;->pos:I

    xor-int/2addr v0, v1

    .line 50
    iget v2, p0, Linfo/flowersoft/theotown/util/DecInputStream;->pA:I

    add-int/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/util/DecInputStream;->pos:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    goto :goto_12

    :catchall_10
    move-exception v0

    goto :goto_14

    .line 52
    :cond_12
    :goto_12
    monitor-exit p0

    return v0

    :goto_14
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_10

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p3

    add-int v0, p2, p3

    :goto_7
    if-ge p2, v0, :cond_1b

    .line 60
    aget-byte v1, p1, p2

    iget v2, p0, Linfo/flowersoft/theotown/util/DecInputStream;->pos:I

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 61
    iget v1, p0, Linfo/flowersoft/theotown/util/DecInputStream;->pA:I

    add-int/2addr v2, v1

    iput v2, p0, Linfo/flowersoft/theotown/util/DecInputStream;->pos:I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :catchall_19
    move-exception p1

    goto :goto_1d

    .line 63
    :cond_1b
    monitor-exit p0

    return p3

    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_19

    throw p1
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 74
    :try_start_1
    invoke-super {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 75
    iget v0, p0, Linfo/flowersoft/theotown/util/DecInputStream;->markedPos:I

    iput v0, p0, Linfo/flowersoft/theotown/util/DecInputStream;->pos:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 76
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method
