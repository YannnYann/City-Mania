###### Class io.bidmachine.media3.extractor.flac.FlacExtractor (io.bidmachine.media3.extractor.flac.FlacExtractor)
.class public final Lio/bidmachine/media3/extractor/flac/FlacExtractor;
.super Ljava/lang/Object;
.source "FlacExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/Extractor;


# static fields
.field public static final FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;


# instance fields
.field public binarySearchSeeker:Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker;

.field public final buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public currentFrameBytesWritten:I

.field public currentFrameFirstSampleNumber:J

.field public extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

.field public flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

.field public frameStartMarker:I

.field public id3Metadata:Lio/bidmachine/media3/common/Metadata;

.field public final id3MetadataDisabled:Z

.field public minFrameSize:I

.field public final sampleNumberHolder:Lio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;

.field public state:I

.field public final streamMarkerAndInfoBlock:[B

.field public trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;


# direct methods
.method public static synthetic $r8$lambda$boJqv8EEzf92FSIB0-YSfgxlQWQ()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 3

    .line 60
    new-instance v0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/flac/FlacExtractor;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lio/bidmachine/media3/extractor/Extractor;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Lio/bidmachine/media3/extractor/flac/FlacExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/flac/FlacExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, v0}, Lio/bidmachine/media3/extractor/flac/FlacExtractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    .line 144
    new-array v0, v0, [B

    iput-object v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    .line 146
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v2

    .line 147
    :goto_1c
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->id3MetadataDisabled:Z

    .line 148
    new-instance p1, Lio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Lio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;

    .line 149
    iput v2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->state:I

    return-void
.end method


# virtual methods
.method public final findFrame(Lio/bidmachine/media3/common/util/ParsableByteArray;Z)J
    .registers 7

    .line 358
    iget-object v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 361
    :goto_9
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_2b

    .line 362
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 363
    iget-object v1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    iget v2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget-object v3, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Lio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-static {p1, v1, v2, v3}, Lio/bidmachine/media3/extractor/FlacFrameReader;->checkAndReadFrameHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/extractor/FlacStreamMetadata;ILio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 365
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 366
    iget-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Lio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;

    iget-wide p1, p1, Lio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    return-wide p1

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_2b
    if-eqz p2, :cond_67

    .line 391
    :goto_2d
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result p2

    iget v1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->minFrameSize:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_5f

    .line 392
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 p2, 0x0

    .line 395
    :try_start_3a
    iget-object v1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    iget v2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget-object v3, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Lio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;

    .line 396
    invoke-static {p1, v1, v2, v3}, Lio/bidmachine/media3/extractor/FlacFrameReader;->checkAndReadFrameHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/extractor/FlacStreamMetadata;ILio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v1
    :try_end_44
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3a .. :try_end_44} :catch_45

    goto :goto_46

    :catch_45
    move v1, p2

    .line 402
    :goto_46
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v2

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v3

    if-le v2, v3, :cond_51

    goto :goto_52

    :cond_51
    move p2, v1

    :goto_52
    if-eqz p2, :cond_5c

    .line 409
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 410
    iget-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Lio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;

    iget-wide p1, p1, Lio/bidmachine/media3/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    return-wide p1

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 415
    :cond_5f
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result p2

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_6a

    .line 417
    :cond_67
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    :goto_6a
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public final getFrameStartMarker(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    invoke-static {p1}, Lio/bidmachine/media3/extractor/FlacMetadataReader;->getFrameStartMarker(Lio/bidmachine/media3/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    .line 248
    iget-object v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/ExtractorOutput;

    .line 251
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    .line 252
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    .line 250
    invoke-virtual {p0, v1, v2, v3, v4}, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->getSeekMap(JJ)Lio/bidmachine/media3/extractor/SeekMap;

    move-result-object p1

    .line 249
    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    const/4 p1, 0x5

    .line 254
    iput p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method public final getSeekMap(JJ)Lio/bidmachine/media3/extractor/SeekMap;
    .registers 13

    .line 331
    iget-object v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    iget-object v0, v2, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->seekTable:Lio/bidmachine/media3/extractor/FlacStreamMetadata$SeekTable;

    if-eqz v0, :cond_11

    .line 333
    new-instance p3, Lio/bidmachine/media3/extractor/FlacSeekTableSeekMap;

    invoke-direct {p3, v2, p1, p2}, Lio/bidmachine/media3/extractor/FlacSeekTableSeekMap;-><init>(Lio/bidmachine/media3/extractor/FlacStreamMetadata;J)V

    return-object p3

    :cond_11
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_2f

    .line 334
    iget-wide v0, v2, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_2f

    .line 335
    new-instance v1, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker;

    iget v3, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker;-><init>(Lio/bidmachine/media3/extractor/FlacStreamMetadata;IJJ)V

    iput-object v1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker;

    .line 338
    invoke-virtual {v1}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->getSeekMap()Lio/bidmachine/media3/extractor/SeekMap;

    move-result-object p1

    return-object p1

    .line 340
    :cond_2f
    new-instance p1, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;

    invoke-virtual {v2}, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object p1
.end method

.method public final getStreamMarkerAndInfoBlockBytes(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-interface {p1, v0, v1, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 217
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p1, 0x2

    .line 218
    iput p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 4

    .line 160
    iput-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 161
    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 162
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public final outputSampleMetadata()V
    .registers 12

    .line 424
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    .line 427
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    iget v2, v2, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v2, v2

    div-long v5, v0, v2

    .line 428
    iget-object v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lio/bidmachine/media3/extractor/TrackOutput;

    iget v8, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 429
    invoke-interface/range {v4 .. v10}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->state:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_27

    const/4 v2, 0x3

    if-eq v0, v2, :cond_23

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1f

    const/4 v1, 0x5

    if-ne v0, v1, :cond_19

    .line 185
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->readFrames(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 187
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 182
    :cond_1f
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->getFrameStartMarker(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    return v1

    .line 179
    :cond_23
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->readMetadataBlocks(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    return v1

    .line 176
    :cond_27
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->readStreamMarker(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    return v1

    .line 173
    :cond_2b
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->getStreamMarkerAndInfoBlockBytes(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    return v1

    .line 170
    :cond_2f
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->readId3Metadata(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    return v1
.end method

.method public final readFrames(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 264
    iget-object v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker;

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->handlePendingSeek(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 268
    :cond_1b
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    const/4 v0, 0x0

    if-nez p2, :cond_2d

    .line 269
    iget-object p2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    .line 270
    invoke-static {p1, p2}, Lio/bidmachine/media3/extractor/FlacFrameReader;->getFirstSampleNumber(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/FlacStreamMetadata;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    return v0

    .line 275
    :cond_2d
    iget-object p2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result p2

    const v1, 0x8000

    if-ge p2, v1, :cond_5e

    .line 278
    iget-object v4, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 280
    invoke-virtual {v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    sub-int/2addr v1, p2

    .line 279
    invoke-interface {p1, v4, p2, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_48

    const/4 v4, 0x1

    goto :goto_49

    :cond_48
    move v4, v0

    :goto_49
    if-nez v4, :cond_52

    .line 285
    iget-object v1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    add-int/2addr p2, p1

    invoke-virtual {v1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    goto :goto_5f

    .line 286
    :cond_52
    iget-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    if-nez p1, :cond_5f

    .line 287
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->outputSampleMetadata()V

    return v1

    :cond_5e
    move v4, v0

    .line 293
    :cond_5f
    :goto_5f
    iget-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p1

    .line 296
    iget p2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    iget v1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->minFrameSize:I

    if-ge p2, v1, :cond_79

    .line 297
    iget-object v5, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    sub-int/2addr v1, p2

    invoke-virtual {v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v5, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 300
    :cond_79
    iget-object p2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p0, p2, v4}, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->findFrame(Lio/bidmachine/media3/common/util/ParsableByteArray;Z)J

    move-result-wide v4

    .line 301
    iget-object p2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p2

    sub-int/2addr p2, p1

    .line 302
    iget-object v1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 303
    iget-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {p1, v1, p2}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 304
    iget p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    add-int/2addr p1, p2

    iput p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    cmp-long p1, v4, v2

    if-eqz p1, :cond_a2

    .line 308
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->outputSampleMetadata()V

    .line 309
    iput v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    .line 310
    iput-wide v4, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    .line 313
    :cond_a2
    iget-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p1

    array-length p1, p1

    iget-object p2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result p2

    sub-int/2addr p1, p2

    .line 314
    iget-object p2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    const/16 v1, 0x10

    if-ge p2, v1, :cond_e1

    if-ge p1, v1, :cond_e1

    .line 320
    iget-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    .line 321
    iget-object p2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 322
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    iget-object v1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    iget-object v2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    .line 321
    invoke-static {p2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    iget-object p2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 324
    iget-object p2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    :cond_e1
    return v0
.end method

.method public final readId3Metadata(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->id3MetadataDisabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lio/bidmachine/media3/extractor/FlacMetadataReader;->readId3Metadata(Lio/bidmachine/media3/extractor/ExtractorInput;Z)Lio/bidmachine/media3/common/Metadata;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->id3Metadata:Lio/bidmachine/media3/common/Metadata;

    .line 212
    iput v1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method public final readMetadataBlocks(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    new-instance v0, Lio/bidmachine/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    invoke-direct {v0, v1}, Lio/bidmachine/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;-><init>(Lio/bidmachine/media3/extractor/FlacStreamMetadata;)V

    const/4 v1, 0x0

    :goto_8
    if-nez v1, :cond_19

    .line 231
    invoke-static {p1, v0}, Lio/bidmachine/media3/extractor/FlacMetadataReader;->readMetadataBlock(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;)Z

    move-result v1

    .line 233
    iget-object v2, v0, Lio/bidmachine/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    invoke-static {v2}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    iput-object v2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    goto :goto_8

    .line 236
    :cond_19
    iget-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    iget p1, p1, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    const/4 v0, 0x6

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->minFrameSize:I

    .line 238
    iget-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    iget-object v1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->id3Metadata:Lio/bidmachine/media3/common/Metadata;

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->getFormat([BLio/bidmachine/media3/common/Metadata;)Lio/bidmachine/media3/common/Format;

    move-result-object p1

    .line 239
    iget-object v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/TrackOutput;

    .line 240
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    const-string v1, "audio/flac"

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 241
    iget-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->trackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Lio/bidmachine/media3/extractor/FlacStreamMetadata;

    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/extractor/TrackOutput;->durationUs(J)V

    const/4 p1, 0x4

    .line 243
    iput p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method public final readStreamMarker(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-static {p1}, Lio/bidmachine/media3/extractor/FlacMetadataReader;->readStreamMarker(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    const/4 p1, 0x3

    .line 223
    iput p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public seek(JJ)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_a

    .line 194
    iput p2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->state:I

    goto :goto_11

    .line 195
    :cond_a
    iget-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Lio/bidmachine/media3/extractor/flac/FlacBinarySearchSeeker;

    if-eqz p1, :cond_11

    .line 196
    invoke-virtual {p1, p3, p4}, Lio/bidmachine/media3/extractor/BinarySearchSeeker;->setSeekTargetUs(J)V

    :cond_11
    :goto_11
    cmp-long p1, p3, v0

    if-nez p1, :cond_16

    goto :goto_18

    :cond_16
    const-wide/16 v0, -0x1

    .line 198
    :goto_18
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    .line 199
    iput p2, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    .line 200
    iget-object p1, p0, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->buffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    return-void
.end method

.method public sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    invoke-static {p1, v0}, Lio/bidmachine/media3/extractor/FlacMetadataReader;->peekId3Metadata(Lio/bidmachine/media3/extractor/ExtractorInput;Z)Lio/bidmachine/media3/common/Metadata;

    .line 155
    invoke-static {p1}, Lio/bidmachine/media3/extractor/FlacMetadataReader;->checkAndPeekStreamMarker(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.extractor.flac.FlacExtractor$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.flac.FlacExtractor$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/flac/FlacExtractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/extractor/ExtractorsFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 2

    .line 0
    invoke-static {}, Lio/bidmachine/media3/extractor/flac/FlacExtractor;->$r8$lambda$boJqv8EEzf92FSIB0-YSfgxlQWQ()[Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method
