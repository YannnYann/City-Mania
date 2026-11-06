###### Class io.bidmachine.media3.extractor.avi.ChunkReader (io.bidmachine.media3.extractor.avi.ChunkReader)
.class public final Lio/bidmachine/media3/extractor/avi/ChunkReader;
.super Ljava/lang/Object;
.source "ChunkReader.java"


# instance fields
.field public final alternativeChunkId:I

.field public bytesRemainingInCurrentChunk:I

.field public chunkCount:I

.field public final chunkId:I

.field public currentChunkIndex:I

.field public currentChunkSize:I

.field public final durationUs:J

.field public firstIndexChunkOffset:J

.field public indexChunkCount:I

.field public indexSize:I

.field public keyFrameIndices:[I

.field public keyFrameOffsets:[J

.field public final streamHeaderChunk:Lio/bidmachine/media3/extractor/avi/AviStreamHeaderChunk;

.field public final trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(ILio/bidmachine/media3/extractor/avi/AviStreamHeaderChunk;Lio/bidmachine/media3/extractor/TrackOutput;)V
    .registers 8

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->streamHeaderChunk:Lio/bidmachine/media3/extractor/avi/AviStreamHeaderChunk;

    .line 82
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/avi/AviStreamHeaderChunk;->getTrackType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_11

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 83
    :cond_11
    :goto_11
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkArgument(Z)V

    if-ne v0, v1, :cond_19

    const/high16 v2, 0x63640000

    goto :goto_1b

    :cond_19
    const/high16 v2, 0x62770000

    .line 86
    :goto_1b
    invoke-static {p1, v2}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->getChunkIdFourCc(II)I

    move-result v2

    iput v2, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->chunkId:I

    .line 87
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/avi/AviStreamHeaderChunk;->getDurationUs()J

    move-result-wide v2

    iput-wide v2, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->durationUs:J

    .line 88
    iput-object p3, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    if-ne v0, v1, :cond_32

    const/high16 p3, 0x62640000

    .line 90
    invoke-static {p1, p3}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->getChunkIdFourCc(II)I

    move-result p1

    goto :goto_33

    :cond_32
    const/4 p1, -0x1

    :goto_33
    iput p1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->alternativeChunkId:I

    const-wide/16 v0, -0x1

    .line 91
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->firstIndexChunkOffset:J

    const/16 p1, 0x200

    .line 92
    new-array p3, p1, [J

    iput-object p3, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    .line 93
    new-array p1, p1, [I

    iput-object p1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    .line 94
    iget p1, p2, Lio/bidmachine/media3/extractor/avi/AviStreamHeaderChunk;->length:I

    iput p1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->chunkCount:I

    return-void
.end method

.method public static getChunkIdFourCc(II)I
    .registers 3

    .line 224
    div-int/lit8 v0, p0, 0xa

    .line 225
    rem-int/lit8 p0, p0, 0xa

    add-int/lit8 p0, p0, 0x30

    shl-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x30

    or-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public advanceCurrentChunk()V
    .registers 2

    .line 114
    iget v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    return-void
.end method

.method public appendIndexChunk(JZ)V
    .registers 8

    .line 98
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->firstIndexChunkOffset:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 99
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->firstIndexChunkOffset:J

    :cond_a
    if-eqz p3, :cond_3d

    .line 102
    iget p3, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->indexSize:I

    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    array-length v0, v0

    if-ne p3, v0, :cond_2d

    .line 103
    iget-object p3, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    array-length v0, p3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p3

    iput-object p3, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    .line 104
    iget-object p3, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    array-length v0, p3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p3

    iput-object p3, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    .line 106
    :cond_2d
    iget-object p3, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    iget v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->indexSize:I

    aput-wide p1, p3, v0

    .line 107
    iget-object p1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    iget p2, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->indexChunkCount:I

    aput p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 108
    iput v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->indexSize:I

    .line 110
    :cond_3d
    iget p1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->indexChunkCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->indexChunkCount:I

    return-void
.end method

.method public commitIndex()V
    .registers 3

    .line 126
    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    iget v1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->indexSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    .line 127
    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    iget v1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->indexSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    .line 128
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->isAudio()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->streamHeaderChunk:Lio/bidmachine/media3/extractor/avi/AviStreamHeaderChunk;

    iget v0, v0, Lio/bidmachine/media3/extractor/avi/AviStreamHeaderChunk;->sampleSize:I

    if-eqz v0, :cond_26

    iget v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->indexSize:I

    if-lez v0, :cond_26

    .line 133
    iput v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->chunkCount:I

    :cond_26
    return-void
.end method

.method public final getChunkTimestampUs(I)J
    .registers 6

    .line 215
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->durationUs:J

    int-to-long v2, p1

    mul-long/2addr v0, v2

    iget p1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->chunkCount:I

    int-to-long v2, p1

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getCurrentChunkTimestampUs()J
    .registers 3

    .line 118
    iget v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->getChunkTimestampUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrameDurationUs()J
    .registers 3

    const/4 v0, 0x1

    .line 122
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->getChunkTimestampUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSeekPoint(I)Lio/bidmachine/media3/extractor/SeekPoint;
    .registers 8

    .line 219
    new-instance v0, Lio/bidmachine/media3/extractor/SeekPoint;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    aget v1, v1, p1

    int-to-long v1, v1

    .line 220
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->getFrameDurationUs()J

    move-result-wide v3

    mul-long/2addr v1, v3

    iget-object v3, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    aget-wide v4, v3, p1

    invoke-direct {v0, v1, v2, v4, v5}, Lio/bidmachine/media3/extractor/SeekPoint;-><init>(JJ)V

    return-object v0
.end method

.method public getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;
    .registers 7

    .line 193
    iget v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->indexSize:I

    if-nez v0, :cond_13

    .line 195
    new-instance p1, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    new-instance p2, Lio/bidmachine/media3/extractor/SeekPoint;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->firstIndexChunkOffset:J

    invoke-direct {p2, v0, v1, v2, v3}, Lio/bidmachine/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p1, p2}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-object p1

    .line 198
    :cond_13
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->getFrameDurationUs()J

    move-result-wide v0

    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 199
    iget-object p2, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    const/4 v0, 0x1

    .line 200
    invoke-static {p2, p1, v0, v0}, Lio/bidmachine/media3/common/util/Util;->binarySearchFloor([IIZZ)I

    move-result p2

    .line 202
    iget-object v1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    aget v1, v1, p2

    if-ne v1, p1, :cond_30

    .line 203
    new-instance p1, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    invoke-virtual {p0, p2}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->getSeekPoint(I)Lio/bidmachine/media3/extractor/SeekPoint;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-object p1

    .line 206
    :cond_30
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->getSeekPoint(I)Lio/bidmachine/media3/extractor/SeekPoint;

    move-result-object p1

    add-int/2addr p2, v0

    .line 207
    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    array-length v0, v0

    if-ge p2, v0, :cond_44

    .line 208
    new-instance v0, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    invoke-virtual {p0, p2}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->getSeekPoint(I)Lio/bidmachine/media3/extractor/SeekPoint;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-object v0

    .line 210
    :cond_44
    new-instance p2, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p2, p1}, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;-><init>(Lio/bidmachine/media3/extractor/SeekPoint;)V

    return-object p2
.end method

.method public handlesChunkId(I)Z
    .registers 3

    .line 138
    iget v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->chunkId:I

    if-eq v0, p1, :cond_b

    iget v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->alternativeChunkId:I

    if-ne v0, p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_b
    :goto_b
    const/4 p1, 0x1

    return p1
.end method

.method public isAudio()Z
    .registers 3

    .line 150
    iget v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->chunkId:I

    const/high16 v1, 0x62770000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentFrameAKeyFrame()Z
    .registers 3

    .line 142
    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    iget v1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public onChunkData(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    iget-object v1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    const/4 v2, 0x0

    .line 165
    invoke-interface {v1, p1, v0, v2}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/DataReader;IZ)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    if-nez v0, :cond_f

    const/4 v2, 0x1

    :cond_f
    if-eqz v2, :cond_29

    .line 168
    iget p1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->currentChunkSize:I

    if-lez p1, :cond_26

    .line 169
    iget-object v3, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 170
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->getCurrentChunkTimestampUs()J

    move-result-wide v4

    .line 171
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->isCurrentFrameAKeyFrame()Z

    move-result v6

    iget v7, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->currentChunkSize:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 169
    invoke-interface/range {v3 .. v9}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 176
    :cond_26
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->advanceCurrentChunk()V

    :cond_29
    return v2
.end method

.method public onChunkStart(I)V
    .registers 2

    .line 155
    iput p1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->currentChunkSize:I

    .line 156
    iput p1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->bytesRemainingInCurrentChunk:I

    return-void
.end method

.method public seekToPosition(J)V
    .registers 5

    .line 182
    iget v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->indexSize:I

    if-nez v0, :cond_8

    const/4 p1, 0x0

    .line 183
    iput p1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    return-void

    .line 185
    :cond_8
    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameOffsets:[J

    const/4 v1, 0x1

    .line 186
    invoke-static {v0, p1, p2, v1, v1}, Lio/bidmachine/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result p1

    .line 188
    iget-object p2, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->keyFrameIndices:[I

    aget p1, p2, p1

    iput p1, p0, Lio/bidmachine/media3/extractor/avi/ChunkReader;->currentChunkIndex:I

    return-void
.end method
