###### Class io.bidmachine.media3.extractor.DefaultExtractorInput (io.bidmachine.media3.extractor.DefaultExtractorInput)
.class public final Lio/bidmachine/media3/extractor/DefaultExtractorInput;
.super Ljava/lang/Object;
.source "DefaultExtractorInput.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ExtractorInput;


# instance fields
.field public final dataReader:Lio/bidmachine/media3/common/DataReader;

.field public peekBuffer:[B

.field public peekBufferLength:I

.field public peekBufferPosition:I

.field public position:J

.field public final scratchSpace:[B

.field public final streamLength:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-string v0, "media3.extractor"

    invoke-static {v0}, Lio/bidmachine/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/media3/common/DataReader;JJ)V
    .registers 6

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->dataReader:Lio/bidmachine/media3/common/DataReader;

    .line 59
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->position:J

    .line 60
    iput-wide p4, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->streamLength:J

    const/high16 p1, 0x10000

    .line 61
    new-array p1, p1, [B

    iput-object p1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    const/16 p1, 0x1000

    .line 62
    new-array p1, p1, [B

    iput-object p1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->scratchSpace:[B

    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 163
    iget v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v1

    move v5, v0

    :goto_9
    if-ge v5, p1, :cond_23

    .line 165
    iget-object v2, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v3, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    move-object v1, p0

    move v4, p1

    move v6, p2

    .line 166
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v5

    const/4 p1, -0x1

    if-ne v5, p1, :cond_1b

    const/4 p1, 0x0

    return p1

    .line 170
    :cond_1b
    iget p1, v1, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr p1, v5

    iput p1, v1, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    move p1, v4

    move p2, v6

    goto :goto_9

    :cond_23
    move-object v1, p0

    move v4, p1

    .line 172
    iget p1, v1, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr p1, v4

    iput p1, v1, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    const/4 p1, 0x1

    return p1
.end method

.method public final commitBytesRead(I)V
    .registers 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    .line 315
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->position:J

    :cond_9
    return-void
.end method

.method public final ensureSpaceForPeek(I)V
    .registers 5

    .line 218
    iget v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, p1

    .line 219
    iget-object p1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v1, p1

    if-le v0, v1, :cond_1d

    .line 220
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v0

    const/high16 v2, 0x80000

    add-int/2addr v0, v2

    .line 221
    invoke-static {p1, v1, v0}, Lio/bidmachine/media3/common/util/Util;->constrainValue(III)I

    move-result p1

    .line 225
    iget-object v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    :cond_1d
    return-void
.end method

.method public getLength()J
    .registers 3

    .line 198
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->streamLength:J

    return-wide v0
.end method

.method public getPeekPosition()J
    .registers 5

    .line 188
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->position:J

    iget v2, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .registers 3

    .line 193
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->position:J

    return-wide v0
.end method

.method public peek([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    .line 123
    iget v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v3, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v3

    if-nez v0, :cond_1e

    .line 126
    iget-object v2, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v4, p3

    .line 127
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_18

    return v0

    .line 136
    :cond_18
    iget v0, v1, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    add-int/2addr v0, p3

    iput v0, v1, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    goto :goto_24

    :cond_1e
    move-object v1, p0

    move v4, p3

    .line 138
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 140
    :goto_24
    iget-object v0, v1, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v2, v1, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget p1, v1, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr p1, p3

    iput p1, v1, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    return p3
.end method

.method public peekFully([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    return-void
.end method

.method public peekFully([BIIZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0, p3, p4}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    move-result p4

    if-nez p4, :cond_8

    const/4 p1, 0x0

    return p1

    .line 151
    :cond_8
    iget-object p4, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, p3

    invoke-static {p4, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    if-nez v0, :cond_11

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 70
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v0

    goto :goto_12

    :cond_11
    move-object v1, p0

    .line 73
    :goto_12
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    return v0
.end method

.method public final readFromPeekBuffer([BII)I
    .registers 6

    .line 250
    iget v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 253
    :cond_6
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 254
    iget-object v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    invoke-virtual {p0, p3}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    return p3
.end method

.method public final readFromUpstream([BIIIZ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 298
    iget-object v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->dataReader:Lio/bidmachine/media3/common/DataReader;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/common/DataReader;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1c

    if-nez p4, :cond_16

    if-eqz p5, :cond_16

    return p2

    .line 303
    :cond_16
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1c
    add-int/2addr p4, p1

    return p4

    .line 296
    :cond_1e
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
.end method

.method public readFully([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->readFully([BIIZ)Z

    return-void
.end method

.method public readFully([BIIZ)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v0

    move v5, v0

    :goto_5
    const/4 v0, -0x1

    if-ge v5, p3, :cond_14

    if-eq v5, v0, :cond_14

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    .line 82
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v5

    goto :goto_5

    :cond_14
    move-object v1, p0

    .line 84
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    if-eq v5, v0, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public resetPeekPosition()V
    .registers 2

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    return-void
.end method

.method public skip(I)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    if-nez v0, :cond_16

    .line 97
    iget-object v2, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->scratchSpace:[B

    array-length v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v0

    goto :goto_17

    :cond_16
    move-object v1, p0

    .line 99
    :goto_17
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    return v0
.end method

.method public final skipFromPeekBuffer(I)I
    .registers 3

    .line 236
    iget v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 237
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    return p1
.end method

.method public skipFully(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->skipFully(IZ)Z

    return-void
.end method

.method public skipFully(IZ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v0

    move v5, v0

    :goto_5
    const/4 v0, -0x1

    if-ge v5, p1, :cond_1c

    if-eq v5, v0, :cond_1c

    .line 107
    iget-object v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->scratchSpace:[B

    array-length v0, v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 108
    iget-object v2, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->scratchSpace:[B

    neg-int v3, v5

    move-object v1, p0

    move v6, p2

    .line 109
    invoke-virtual/range {v1 .. v6}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->readFromUpstream([BIIIZ)I

    move-result v5

    goto :goto_5

    :cond_1c
    move-object v1, p0

    .line 111
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    if-eq v5, v0, :cond_24

    const/4 p1, 0x1

    return p1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public final updatePeekBuffer(I)V
    .registers 7

    .line 265
    iget v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferLength:I

    const/4 v1, 0x0

    .line 266
    iput v1, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBufferPosition:I

    .line 267
    iget-object v2, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    .line 268
    array-length v3, v2

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_16

    const/high16 v3, 0x10000

    add-int/2addr v3, v0

    .line 269
    new-array v3, v3, [B

    goto :goto_17

    :cond_16
    move-object v3, v2

    .line 271
    :goto_17
    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iput-object v3, p0, Lio/bidmachine/media3/extractor/DefaultExtractorInput;->peekBuffer:[B

    return-void
.end method
