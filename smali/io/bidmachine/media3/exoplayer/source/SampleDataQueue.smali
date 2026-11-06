###### Class io.bidmachine.media3.exoplayer.source.SampleDataQueue (io.bidmachine.media3.exoplayer.source.SampleDataQueue)
.class public Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;
.super Ljava/lang/Object;
.source "SampleDataQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;
    }
.end annotation


# instance fields
.field public final allocationLength:I

.field public final allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

.field public firstAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

.field public readAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

.field public final scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public totalBytesWritten:J

.field public writeAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/exoplayer/upstream/Allocator;)V
    .registers 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

    .line 57
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/upstream/Allocator;->getIndividualAllocationLength()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->allocationLength:I

    .line 58
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 59
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;-><init>(JI)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->firstAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 60
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 61
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->writeAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    return-void
.end method

.method public static getNodeContainingPosition(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;J)Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;
    .registers 5

    .line 455
    :goto_0
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 456
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->next:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    goto :goto_0

    :cond_9
    return-object p0
.end method

.method public static readData(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;JLjava/nio/ByteBuffer;I)Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;
    .registers 8

    .line 403
    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->getNodeContainingPosition(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;J)Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    :cond_4
    :goto_4
    if-lez p4, :cond_25

    .line 406
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->endPosition:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 407
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->allocation:Lio/bidmachine/media3/exoplayer/upstream/Allocation;

    .line 408
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/upstream/Allocation;->data:[B

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->translateOffset(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 411
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 412
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->next:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    goto :goto_4

    :cond_25
    return-object p0
.end method

.method public static readData(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;J[BI)Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;
    .registers 10

    .line 429
    invoke-static {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->getNodeContainingPosition(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;J)Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    move v0, p4

    :cond_5
    :goto_5
    if-lez v0, :cond_28

    .line 432
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->endPosition:J

    sub-long/2addr v1, p1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 433
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->allocation:Lio/bidmachine/media3/exoplayer/upstream/Allocation;

    .line 434
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/upstream/Allocation;->data:[B

    .line 436
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->translateOffset(J)I

    move-result v3

    sub-int v4, p4, v0

    .line 434
    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 442
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_5

    .line 443
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->next:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    goto :goto_5

    :cond_28
    return-object p0
.end method

.method public static readEncryptionData(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;
    .registers 22

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 317
    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    const/4 v4, 0x1

    .line 320
    invoke-virtual {v1, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 321
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    move-object/from16 v6, p0

    invoke-static {v6, v2, v3, v5, v4}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readData(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;J[BI)Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    move-result-object v5

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 323
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    and-int/lit16 v8, v6, 0x80

    if-eqz v8, :cond_24

    move v8, v4

    goto :goto_25

    :cond_24
    move v8, v7

    :goto_25
    and-int/lit8 v6, v6, 0x7f

    move-object/from16 v9, p1

    .line 328
    iget-object v9, v9, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->cryptoInfo:Lio/bidmachine/media3/decoder/CryptoInfo;

    .line 329
    iget-object v10, v9, Lio/bidmachine/media3/decoder/CryptoInfo;->iv:[B

    if-nez v10, :cond_36

    const/16 v10, 0x10

    .line 330
    new-array v10, v10, [B

    iput-object v10, v9, Lio/bidmachine/media3/decoder/CryptoInfo;->iv:[B

    goto :goto_39

    .line 333
    :cond_36
    invoke-static {v10, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 335
    :goto_39
    iget-object v10, v9, Lio/bidmachine/media3/decoder/CryptoInfo;->iv:[B

    invoke-static {v5, v2, v3, v10, v6}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readData(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;J[BI)Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    move-result-object v5

    int-to-long v10, v6

    add-long/2addr v2, v10

    if-eqz v8, :cond_56

    const/4 v4, 0x2

    .line 341
    invoke-virtual {v1, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 342
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    invoke-static {v5, v2, v3, v6, v4}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readData(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;J[BI)Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    move-result-object v5

    const-wide/16 v10, 0x2

    add-long/2addr v2, v10

    .line 344
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    :cond_56
    move v10, v4

    .line 350
    iget-object v4, v9, Lio/bidmachine/media3/decoder/CryptoInfo;->numBytesOfClearData:[I

    if-eqz v4, :cond_61

    .line 351
    array-length v6, v4

    if-ge v6, v10, :cond_5f

    goto :goto_61

    :cond_5f
    :goto_5f
    move-object v11, v4

    goto :goto_64

    .line 352
    :cond_61
    :goto_61
    new-array v4, v10, [I

    goto :goto_5f

    .line 354
    :goto_64
    iget-object v4, v9, Lio/bidmachine/media3/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    if-eqz v4, :cond_6e

    .line 355
    array-length v6, v4

    if-ge v6, v10, :cond_6c

    goto :goto_6e

    :cond_6c
    :goto_6c
    move-object v12, v4

    goto :goto_71

    .line 356
    :cond_6e
    :goto_6e
    new-array v4, v10, [I

    goto :goto_6c

    :goto_71
    if-eqz v8, :cond_96

    mul-int/lit8 v4, v10, 0x6

    .line 360
    invoke-virtual {v1, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 361
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    invoke-static {v5, v2, v3, v6, v4}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readData(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;J[BI)Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    move-result-object v5

    int-to-long v13, v4

    add-long/2addr v2, v13

    .line 363
    invoke-virtual {v1, v7}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    :goto_85
    if-ge v7, v10, :cond_a2

    .line 365
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    aput v4, v11, v7

    .line 366
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    aput v4, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_85

    .line 369
    :cond_96
    aput v7, v11, v7

    .line 370
    iget v1, v0, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    iget-wide v13, v0, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    sub-long v13, v2, v13

    long-to-int v4, v13

    sub-int/2addr v1, v4

    aput v1, v12, v7

    .line 374
    :cond_a2
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->cryptoData:Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    invoke-static {v1}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;

    .line 375
    iget-object v13, v1, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    iget-object v14, v9, Lio/bidmachine/media3/decoder/CryptoInfo;->iv:[B

    iget v15, v1, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iget v4, v1, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iget v1, v1, Lio/bidmachine/media3/extractor/TrackOutput$CryptoData;->clearBlocks:I

    move/from16 v17, v1

    move/from16 v16, v4

    invoke-virtual/range {v9 .. v17}, Lio/bidmachine/media3/decoder/CryptoInfo;->set(I[I[I[B[BIII)V

    .line 386
    iget-wide v6, v0, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    sub-long/2addr v2, v6

    long-to-int v1, v2

    int-to-long v2, v1

    add-long/2addr v6, v2

    .line 387
    iput-wide v6, v0, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 388
    iget v2, v0, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v2, v1

    iput v2, v0, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    return-object v5
.end method

.method public static readSampleData(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;
    .registers 9

    .line 268
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 269
    invoke-static {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readEncryptionData(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    .line 272
    :cond_a
    invoke-virtual {p1}, Lio/bidmachine/media3/decoder/Buffer;->hasSupplementalData()Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x4

    .line 274
    invoke-virtual {p3, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 275
    iget-wide v1, p2, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    invoke-virtual {p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-static {p0, v1, v2, v3, v0}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readData(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;J[BI)Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    .line 276
    invoke-virtual {p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p3

    .line 277
    iget-wide v1, p2, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, p2, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 278
    iget v1, p2, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v1, v0

    iput v1, p2, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 281
    invoke-virtual {p1, p3}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 282
    iget-wide v0, p2, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object v2, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p0, v0, v1, v2, p3}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readData(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;JLjava/nio/ByteBuffer;I)Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    .line 283
    iget-wide v0, p2, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p2, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    .line 284
    iget v0, p2, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    sub-int/2addr v0, p3

    iput v0, p2, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 287
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->resetSupplementalData(I)V

    .line 288
    iget-wide v0, p2, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object p1, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    iget p2, p2, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 289
    invoke-static {p0, v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readData(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;JLjava/nio/ByteBuffer;I)Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    return-object p0

    .line 292
    :cond_52
    iget p3, p2, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    invoke-virtual {p1, p3}, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 293
    iget-wide v0, p2, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object p1, p1, Lio/bidmachine/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget p2, p2, Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    .line 294
    invoke-static {p0, v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readData(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;JLjava/nio/ByteBuffer;I)Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clearAllocationNodes(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;)V
    .registers 3

    .line 212
    iget-object v0, p1, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->allocation:Lio/bidmachine/media3/exoplayer/upstream/Allocation;

    if-nez v0, :cond_5

    return-void

    .line 218
    :cond_5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/upstream/Allocator;->release(Lio/bidmachine/media3/exoplayer/upstream/Allocator$AllocationNode;)V

    .line 219
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->clear()Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    return-void
.end method

.method public discardDownstreamTo(J)V
    .registers 6

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    goto :goto_2b

    .line 156
    :cond_7
    :goto_7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->firstAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1f

    .line 159
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->allocation:Lio/bidmachine/media3/exoplayer/upstream/Allocation;

    invoke-interface {v1, v0}, Lio/bidmachine/media3/exoplayer/upstream/Allocator;->release(Lio/bidmachine/media3/exoplayer/upstream/Allocation;)V

    .line 160
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->firstAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->clear()Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->firstAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    goto :goto_7

    .line 162
    :cond_1f
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-wide p1, p1, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->startPosition:J

    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->startPosition:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_2b

    .line 165
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    :cond_2b
    :goto_2b
    return-void
.end method

.method public discardUpstreamSampleBytes(J)V
    .registers 8

    .line 83
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    .line 84
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_50

    .line 85
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->firstAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->startPosition:J

    cmp-long p1, p1, v1

    if-nez p1, :cond_1d

    goto :goto_50

    .line 94
    :cond_1d
    :goto_1d
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long p1, p1, v1

    if-lez p1, :cond_28

    .line 95
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->next:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    goto :goto_1d

    .line 98
    :cond_28
    iget-object p1, v0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->next:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 99
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->clearAllocationNodes(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;)V

    .line 101
    new-instance p2, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->endPosition:J

    iget v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->allocationLength:I

    invoke-direct {p2, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;-><init>(JI)V

    iput-object p2, v0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->next:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 104
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    iget-wide v3, v0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_47

    move-object v0, p2

    .line 106
    :cond_47
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->writeAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 107
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    if-ne v0, p1, :cond_4f

    .line 108
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    :cond_4f
    return-void

    .line 87
    :cond_50
    :goto_50
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->firstAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->clearAllocationNodes(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;)V

    .line 88
    new-instance p1, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    iget p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->allocationLength:I

    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;-><init>(JI)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->firstAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 89
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 90
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->writeAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    return-void
.end method

.method public getTotalBytesWritten()J
    .registers 3

    .line 172
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    return-wide v0
.end method

.method public peekToBuffer(Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;)V
    .registers 5

    .line 143
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v0, p1, p2, v1}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readSampleData(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    return-void
.end method

.method public final postAppend(I)V
    .registers 6

    .line 245
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    .line 246
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->writeAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->endPosition:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 247
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->next:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->writeAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    :cond_12
    return-void
.end method

.method public final preAppend(I)I
    .registers 8

    .line 231
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->writeAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->allocation:Lio/bidmachine/media3/exoplayer/upstream/Allocation;

    if-nez v1, :cond_1a

    .line 232
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

    .line 233
    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/upstream/Allocator;->allocate()Lio/bidmachine/media3/exoplayer/upstream/Allocation;

    move-result-object v1

    new-instance v2, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->writeAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-wide v3, v3, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->endPosition:J

    iget v5, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->allocationLength:I

    invoke-direct {v2, v3, v4, v5}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;-><init>(JI)V

    .line 232
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->initialize(Lio/bidmachine/media3/exoplayer/upstream/Allocation;Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;)V

    .line 236
    :cond_1a
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->writeAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->endPosition:J

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public readToBuffer(Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;)V
    .registers 5

    .line 130
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-static {v0, p1, p2, v1}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readSampleData(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;Lio/bidmachine/media3/decoder/DecoderInputBuffer;Lio/bidmachine/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;Lio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    return-void
.end method

.method public reset()V
    .registers 5

    .line 68
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->firstAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->clearAllocationNodes(Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;)V

    .line 69
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->firstAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->allocationLength:I

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->reset(JI)V

    .line 70
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->firstAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 71
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->writeAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 72
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    .line 73
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->allocator:Lio/bidmachine/media3/exoplayer/upstream/Allocator;

    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/upstream/Allocator;->trim()V

    return-void
.end method

.method public rewind()V
    .registers 2

    .line 117
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->firstAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->readAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    return-void
.end method

.method public sampleData(Lio/bidmachine/media3/common/DataReader;IZ)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->preAppend(I)I

    move-result p2

    .line 177
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->writeAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->allocation:Lio/bidmachine/media3/exoplayer/upstream/Allocation;

    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/upstream/Allocation;->data:[B

    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    .line 180
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->translateOffset(J)I

    move-result v0

    .line 178
    invoke-interface {p1, v1, v0, p2}, Lio/bidmachine/media3/common/DataReader;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_20

    if-eqz p3, :cond_1a

    return p2

    .line 186
    :cond_1a
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 188
    :cond_20
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->postAppend(I)V

    return p1
.end method

.method public sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V
    .registers 8

    :goto_0
    if-lez p2, :cond_1a

    .line 194
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->preAppend(I)I

    move-result v0

    .line 195
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->writeAllocationNode:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->allocation:Lio/bidmachine/media3/exoplayer/upstream/Allocation;

    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/upstream/Allocation;->data:[B

    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->totalBytesWritten:J

    .line 197
    invoke-virtual {v1, v3, v4}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->translateOffset(J)I

    move-result v1

    .line 195
    invoke-virtual {p1, v2, v1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    sub-int/2addr p2, v0

    .line 200
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;->postAppend(I)V

    goto :goto_0

    :cond_1a
    return-void
.end method

###### Class io.bidmachine.media3.exoplayer.source.SampleDataQueue.AllocationNode (io.bidmachine.media3.exoplayer.source.SampleDataQueue$AllocationNode)
.class public final Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;
.super Ljava/lang/Object;
.source "SampleDataQueue.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/upstream/Allocator$AllocationNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/SampleDataQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AllocationNode"
.end annotation


# instance fields
.field public allocation:Lio/bidmachine/media3/exoplayer/upstream/Allocation;

.field public endPosition:J

.field public next:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

.field public startPosition:J


# direct methods
.method public constructor <init>(JI)V
    .registers 4

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->reset(JI)V

    return-void
.end method


# virtual methods
.method public clear()Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;
    .registers 3

    const/4 v0, 0x0

    .line 530
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->allocation:Lio/bidmachine/media3/exoplayer/upstream/Allocation;

    .line 531
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->next:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 532
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->next:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    return-object v1
.end method

.method public getAllocation()Lio/bidmachine/media3/exoplayer/upstream/Allocation;
    .registers 2

    .line 540
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->allocation:Lio/bidmachine/media3/exoplayer/upstream/Allocation;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/upstream/Allocation;

    return-object v0
.end method

.method public initialize(Lio/bidmachine/media3/exoplayer/upstream/Allocation;Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;)V
    .registers 3

    .line 509
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->allocation:Lio/bidmachine/media3/exoplayer/upstream/Allocation;

    .line 510
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->next:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    return-void
.end method

.method public next()Lio/bidmachine/media3/exoplayer/upstream/Allocator$AllocationNode;
    .registers 3

    .line 546
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->next:Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    if-eqz v0, :cond_a

    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->allocation:Lio/bidmachine/media3/exoplayer/upstream/Allocation;

    if-nez v1, :cond_9

    goto :goto_a

    :cond_9
    return-object v0

    :cond_a
    :goto_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset(JI)V
    .registers 6

    .line 497
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->allocation:Lio/bidmachine/media3/exoplayer/upstream/Allocation;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 498
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->startPosition:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 499
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->endPosition:J

    return-void
.end method

.method public translateOffset(J)I
    .registers 5

    .line 521
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->startPosition:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/source/SampleDataQueue$AllocationNode;->allocation:Lio/bidmachine/media3/exoplayer/upstream/Allocation;

    iget p2, p2, Lio/bidmachine/media3/exoplayer/upstream/Allocation;->offset:I

    add-int/2addr p1, p2

    return p1
.end method
