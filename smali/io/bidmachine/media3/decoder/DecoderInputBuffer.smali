###### Class io.bidmachine.media3.decoder.DecoderInputBuffer (io.bidmachine.media3.decoder.DecoderInputBuffer)
.class public Lio/bidmachine/media3/decoder/DecoderInputBuffer;
.super Lio/bidmachine/media3/decoder/Buffer;
.source "DecoderInputBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/decoder/DecoderInputBuffer$InsufficientCapacityException;
    }
.end annotation


# instance fields
.field public final bufferReplacementMode:I

.field public final cryptoInfo:Lio/bidmachine/media3/decoder/CryptoInfo;

.field public data:Ljava/nio/ByteBuffer;

.field public format:Lio/bidmachine/media3/common/Format;

.field public final paddingSize:I

.field public supplementalData:Ljava/nio/ByteBuffer;

.field public timeUs:J

.field public waitingForKeys:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-string v0, "media3.decoder"

    invoke-static {v0}, Lio/bidmachine/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 145
    invoke-direct {p0}, Lio/bidmachine/media3/decoder/Buffer;-><init>()V

    .line 146
    new-instance v0, Lio/bidmachine/media3/decoder/CryptoInfo;

    invoke-direct {v0}, Lio/bidmachine/media3/decoder/CryptoInfo;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->cryptoInfo:Lio/bidmachine/media3/decoder/CryptoInfo;

    .line 147
    iput p1, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->bufferReplacementMode:I

    .line 148
    iput p2, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->paddingSize:I

    return-void
.end method

.method public static newNoDataInstance()Lio/bidmachine/media3/decoder/DecoderInputBuffer;
    .registers 2

    .line 123
    new-instance v0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 227
    invoke-super {p0}, Lio/bidmachine/media3/decoder/Buffer;->clear()V

    .line 228
    iget-object v0, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_a

    .line 229
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 231
    :cond_a
    iget-object v0, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_11

    .line 232
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_11
    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->waitingForKeys:Z

    return-void
.end method

.method public final createReplacementByteBuffer(I)Ljava/nio/ByteBuffer;
    .registers 4

    .line 238
    iget v0, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->bufferReplacementMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 239
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 241
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 243
    :cond_12
    iget-object v0, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_1c

    :cond_18
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    .line 244
    :goto_1c
    new-instance v1, Lio/bidmachine/media3/decoder/DecoderInputBuffer$InsufficientCapacityException;

    invoke-direct {v1, v0, p1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer$InsufficientCapacityException;-><init>(II)V

    throw v1
.end method

.method public ensureSpaceForWrite(I)V
    .registers 5

    .line 180
    iget v0, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->paddingSize:I

    add-int/2addr p1, v0

    .line 181
    iget-object v0, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_e

    .line 183
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->createReplacementByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return-void

    .line 187
    :cond_e
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    .line 188
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr p1, v2

    if-lt v1, p1, :cond_1c

    .line 191
    iput-object v0, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return-void

    .line 195
    :cond_1c
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->createReplacementByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 196
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-lez v2, :cond_2f

    .line 199
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 200
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 203
    :cond_2f
    iput-object p1, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final flip()V
    .registers 2

    .line 217
    iget-object v0, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    .line 218
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 220
    :cond_7
    iget-object v0, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_e

    .line 221
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_e
    return-void
.end method

.method public final isEncrypted()Z
    .registers 2

    const/high16 v0, 0x40000000    # 2.0f

    .line 208
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/decoder/Buffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public resetSupplementalData(I)V
    .registers 3

    .line 159
    iget-object v0, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_b

    goto :goto_11

    .line 162
    :cond_b
    iget-object p1, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void

    .line 160
    :cond_11
    :goto_11
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    return-void
.end method

###### Class io.bidmachine.media3.decoder.DecoderInputBuffer.InsufficientCapacityException (io.bidmachine.media3.decoder.DecoderInputBuffer$InsufficientCapacityException)
.class public final Lio/bidmachine/media3/decoder/DecoderInputBuffer$InsufficientCapacityException;
.super Ljava/lang/IllegalStateException;
.source "DecoderInputBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/decoder/DecoderInputBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InsufficientCapacityException"
.end annotation


# instance fields
.field public final currentCapacity:I

.field public final requiredCapacity:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer too small ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    iput p1, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer$InsufficientCapacityException;->currentCapacity:I

    .line 63
    iput p2, p0, Lio/bidmachine/media3/decoder/DecoderInputBuffer$InsufficientCapacityException;->requiredCapacity:I

    return-void
.end method
