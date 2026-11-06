###### Class io.bidmachine.media3.extractor.avi.AviExtractor (io.bidmachine.media3.extractor.avi.AviExtractor)
.class public final Lio/bidmachine/media3/extractor/avi/AviExtractor;
.super Ljava/lang/Object;
.source "AviExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;,
        Lio/bidmachine/media3/extractor/avi/AviExtractor$AviSeekMap;
    }
.end annotation


# instance fields
.field public aviHeader:Lio/bidmachine/media3/extractor/avi/AviMainHeaderChunk;

.field public final chunkHeaderHolder:Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

.field public chunkReaders:[Lio/bidmachine/media3/extractor/avi/ChunkReader;

.field public currentChunkReader:Lio/bidmachine/media3/extractor/avi/ChunkReader;

.field public durationUs:J

.field public extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

.field public hdrlSize:I

.field public idx1BodySize:I

.field public moviEnd:J

.field public moviStart:J

.field public final parseSubtitlesDuringExtraction:Z

.field public pendingReposition:J

.field public final scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public seekMapHasBeenOutput:Z

.field public state:I

.field public final subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;


# direct methods
.method public constructor <init>(ILio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)V
    .registers 4

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    const/4 p2, 0x1

    and-int/2addr p1, p2

    const/4 v0, 0x0

    if-nez p1, :cond_b

    goto :goto_c

    :cond_b
    move p2, v0

    .line 182
    :goto_c
    iput-boolean p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->parseSubtitlesDuringExtraction:Z

    .line 183
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 184
    new-instance p1, Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;-><init>(Lio/bidmachine/media3/extractor/avi/AviExtractor$1;)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->chunkHeaderHolder:Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    .line 185
    new-instance p1, Lio/bidmachine/media3/extractor/NoOpExtractorOutput;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/NoOpExtractorOutput;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    .line 186
    new-array p1, v0, [Lio/bidmachine/media3/extractor/avi/ChunkReader;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->chunkReaders:[Lio/bidmachine/media3/extractor/avi/ChunkReader;

    const-wide/16 p1, -0x1

    .line 187
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->moviStart:J

    .line 188
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->moviEnd:J

    const/4 p1, -0x1

    .line 189
    iput p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->hdrlSize:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 190
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->durationUs:J

    return-void
.end method

.method public static synthetic access$100(Lio/bidmachine/media3/extractor/avi/AviExtractor;)[Lio/bidmachine/media3/extractor/avi/ChunkReader;
    .registers 1

    .line 54
    iget-object p0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->chunkReaders:[Lio/bidmachine/media3/extractor/avi/ChunkReader;

    return-object p0
.end method

.method public static alignInputToEvenPosition(Lio/bidmachine/media3/extractor/ExtractorInput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    invoke-interface {p0}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 543
    invoke-interface {p0, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    :cond_f
    return-void
.end method


# virtual methods
.method public final getChunkReader(I)Lio/bidmachine/media3/extractor/avi/ChunkReader;
    .registers 7

    .line 451
    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->chunkReaders:[Lio/bidmachine/media3/extractor/avi/ChunkReader;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 452
    invoke-virtual {v3, p1}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->handlesChunkId(I)Z

    move-result v4

    if-eqz v4, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 4

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->state:I

    .line 199
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->parseSubtitlesDuringExtraction:Z

    if-eqz v0, :cond_f

    .line 200
    new-instance v0, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->subtitleParserFactory:Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Lio/bidmachine/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/text/SubtitleParser$Factory;)V

    move-object p1, v0

    .line 201
    :cond_f
    iput-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    const-wide/16 v0, -0x1

    .line 202
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->pendingReposition:J

    return-void
.end method

.method public final parseHdrlBody(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x6c726468

    .line 371
    invoke-static {v0, p1}, Lio/bidmachine/media3/extractor/avi/ListChunk;->parseFrom(ILio/bidmachine/media3/common/util/ParsableByteArray;)Lio/bidmachine/media3/extractor/avi/ListChunk;

    move-result-object p1

    .line 372
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/avi/ListChunk;->getType()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_6b

    .line 376
    const-class v0, Lio/bidmachine/media3/extractor/avi/AviMainHeaderChunk;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Lio/bidmachine/media3/extractor/avi/AviChunk;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/avi/AviMainHeaderChunk;

    if-eqz v0, :cond_64

    .line 381
    iput-object v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->aviHeader:Lio/bidmachine/media3/extractor/avi/AviMainHeaderChunk;

    .line 383
    iget v1, v0, Lio/bidmachine/media3/extractor/avi/AviMainHeaderChunk;->totalFrames:I

    int-to-long v1, v1

    iget v0, v0, Lio/bidmachine/media3/extractor/avi/AviMainHeaderChunk;->frameDurationUs:I

    int-to-long v3, v0

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->durationUs:J

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    iget-object p1, p1, Lio/bidmachine/media3/extractor/avi/ListChunk;->children:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_30
    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/media3/extractor/avi/AviChunk;

    .line 387
    invoke-interface {v3}, Lio/bidmachine/media3/extractor/avi/AviChunk;->getType()I

    move-result v4

    const v5, 0x6c727473

    if-ne v4, v5, :cond_30

    .line 388
    check-cast v3, Lio/bidmachine/media3/extractor/avi/ListChunk;

    add-int/lit8 v4, v2, 0x1

    .line 392
    invoke-virtual {p0, v3, v2}, Lio/bidmachine/media3/extractor/avi/AviExtractor;->processStreamList(Lio/bidmachine/media3/extractor/avi/ListChunk;I)Lio/bidmachine/media3/extractor/avi/ChunkReader;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 394
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    move v2, v4

    goto :goto_30

    .line 398
    :cond_54
    new-array p1, v1, [Lio/bidmachine/media3/extractor/avi/ChunkReader;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/bidmachine/media3/extractor/avi/ChunkReader;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->chunkReaders:[Lio/bidmachine/media3/extractor/avi/ChunkReader;

    .line 399
    iget-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    return-void

    .line 378
    :cond_64
    const-string p1, "AviHeader not found"

    invoke-static {p1, v2}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 373
    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected header list type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {p1}, Lio/bidmachine/media3/extractor/avi/ListChunk;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-static {p1, v2}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public final parseIdx1Body(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 12

    .line 404
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/avi/AviExtractor;->peekSeekOffset(Lio/bidmachine/media3/common/util/ParsableByteArray;)J

    move-result-wide v0

    .line 405
    :goto_4
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x10

    if-lt v2, v5, :cond_2f

    .line 406
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    .line 407
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v6

    .line 408
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v7, v0

    const/4 v9, 0x4

    .line 409
    invoke-virtual {p1, v9}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 410
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/extractor/avi/AviExtractor;->getChunkReader(I)Lio/bidmachine/media3/extractor/avi/ChunkReader;

    move-result-object v2

    if-nez v2, :cond_27

    goto :goto_4

    :cond_27
    and-int/2addr v6, v5

    if-ne v6, v5, :cond_2b

    move v3, v4

    .line 415
    :cond_2b
    invoke-virtual {v2, v7, v8, v3}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->appendIndexChunk(JZ)V

    goto :goto_4

    .line 418
    :cond_2f
    iget-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->chunkReaders:[Lio/bidmachine/media3/extractor/avi/ChunkReader;

    array-length v0, p1

    :goto_32
    if-ge v3, v0, :cond_3c

    aget-object v1, p1, v3

    .line 419
    invoke-virtual {v1}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->commitIndex()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 421
    :cond_3c
    iput-boolean v4, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->seekMapHasBeenOutput:Z

    .line 422
    iget-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->chunkReaders:[Lio/bidmachine/media3/extractor/avi/ChunkReader;

    array-length p1, p1

    if-nez p1, :cond_50

    .line 423
    iget-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    new-instance v0, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->durationUs:J

    invoke-direct {v0, v1, v2}, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    return-void

    .line 425
    :cond_50
    iget-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    new-instance v0, Lio/bidmachine/media3/extractor/avi/AviExtractor$AviSeekMap;

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->durationUs:J

    invoke-direct {v0, p0, v1, v2}, Lio/bidmachine/media3/extractor/avi/AviExtractor$AviSeekMap;-><init>(Lio/bidmachine/media3/extractor/avi/AviExtractor;J)V

    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    return-void
.end method

.method public final peekSeekOffset(Lio/bidmachine/media3/common/util/ParsableByteArray;)J
    .registers 10

    .line 434
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v1, 0x10

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_b

    return-wide v2

    .line 438
    :cond_b
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/16 v1, 0x8

    .line 439
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 440
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    int-to-long v4, v1

    .line 444
    iget-wide v6, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->moviStart:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_20

    goto :goto_24

    :cond_20
    const-wide/16 v1, 0x8

    add-long v2, v6, v1

    .line 445
    :goto_24
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-wide v2
.end method

.method public final processStreamList(Lio/bidmachine/media3/extractor/avi/ListChunk;I)Lio/bidmachine/media3/extractor/avi/ChunkReader;
    .registers 10

    .line 500
    const-class v0, Lio/bidmachine/media3/extractor/avi/AviStreamHeaderChunk;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Lio/bidmachine/media3/extractor/avi/AviChunk;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/extractor/avi/AviStreamHeaderChunk;

    .line 501
    const-class v1, Lio/bidmachine/media3/extractor/avi/StreamFormatChunk;

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Lio/bidmachine/media3/extractor/avi/AviChunk;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/extractor/avi/StreamFormatChunk;

    .line 502
    const-string v2, "AviExtractor"

    const/4 v3, 0x0

    if-nez v0, :cond_1b

    .line 503
    const-string p1, "Missing Stream Header"

    invoke-static {v2, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1b
    if-nez v1, :cond_23

    .line 507
    const-string p1, "Missing Stream Format"

    invoke-static {v2, p1}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 510
    :cond_23
    invoke-virtual {v0}, Lio/bidmachine/media3/extractor/avi/AviStreamHeaderChunk;->getDurationUs()J

    move-result-wide v4

    .line 511
    iget-object v1, v1, Lio/bidmachine/media3/extractor/avi/StreamFormatChunk;->format:Lio/bidmachine/media3/common/Format;

    .line 512
    invoke-virtual {v1}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    .line 513
    invoke-virtual {v2, p2}, Lio/bidmachine/media3/common/Format$Builder;->setId(I)Lio/bidmachine/media3/common/Format$Builder;

    .line 514
    iget v6, v0, Lio/bidmachine/media3/extractor/avi/AviStreamHeaderChunk;->suggestedBufferSize:I

    if-eqz v6, :cond_37

    .line 516
    invoke-virtual {v2, v6}, Lio/bidmachine/media3/common/Format$Builder;->setMaxInputSize(I)Lio/bidmachine/media3/common/Format$Builder;

    .line 518
    :cond_37
    const-class v6, Lio/bidmachine/media3/extractor/avi/StreamNameChunk;

    invoke-virtual {p1, v6}, Lio/bidmachine/media3/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Lio/bidmachine/media3/extractor/avi/AviChunk;

    move-result-object p1

    check-cast p1, Lio/bidmachine/media3/extractor/avi/StreamNameChunk;

    if-eqz p1, :cond_46

    .line 520
    iget-object p1, p1, Lio/bidmachine/media3/extractor/avi/StreamNameChunk;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lio/bidmachine/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    .line 522
    :cond_46
    iget-object p1, v1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lio/bidmachine/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_54

    const/4 v1, 0x2

    if-ne p1, v1, :cond_53

    goto :goto_54

    :cond_53
    return-object v3

    .line 524
    :cond_54
    :goto_54
    iget-object v1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {v1, p2, p1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object p1

    .line 525
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 526
    invoke-interface {p1, v4, v5}, Lio/bidmachine/media3/extractor/TrackOutput;->durationUs(J)V

    .line 527
    iget-wide v1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->durationUs:J

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->durationUs:J

    .line 528
    new-instance v1, Lio/bidmachine/media3/extractor/avi/ChunkReader;

    invoke-direct {v1, p2, v0, p1}, Lio/bidmachine/media3/extractor/avi/ChunkReader;-><init>(ILio/bidmachine/media3/extractor/avi/AviStreamHeaderChunk;Lio/bidmachine/media3/extractor/TrackOutput;)V

    return-object v1
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/media3/extractor/avi/AviExtractor;->resolvePendingReposition(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    return v0

    .line 221
    :cond_8
    iget p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x6

    const/16 v4, 0xc

    const/4 v5, 0x0

    packed-switch p2, :pswitch_data_16e

    .line 315
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 313
    :pswitch_19
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/avi/AviExtractor;->readMoviChunks(Lio/bidmachine/media3/extractor/ExtractorInput;)I

    move-result p1

    return p1

    .line 306
    :pswitch_1e
    new-instance p2, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->idx1BodySize:I

    invoke-direct {p2, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 307
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->idx1BodySize:I

    invoke-interface {p1, v0, v5, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 308
    invoke-virtual {p0, p2}, Lio/bidmachine/media3/extractor/avi/AviExtractor;->parseIdx1Body(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 309
    iput v3, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->state:I

    .line 310
    iget-wide p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->moviStart:J

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->pendingReposition:J

    return v5

    .line 293
    :pswitch_38
    iget-object p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/16 v0, 0x8

    invoke-interface {p1, p2, v5, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 294
    iget-object p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 295
    iget-object p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p2

    .line 296
    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    const v1, 0x31786469

    if-ne p2, v1, :cond_5f

    const/4 p1, 0x5

    .line 298
    iput p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->state:I

    .line 299
    iput v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->idx1BodySize:I

    goto :goto_67

    .line 302
    :cond_5f
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide p1

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->pendingReposition:J

    :goto_67
    return v5

    .line 254
    :pswitch_68
    iget-wide v6, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->moviStart:J

    const-wide/16 v8, -0x1

    cmp-long p2, v6, v8

    if-eqz p2, :cond_7d

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget-wide v8, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->moviStart:J

    cmp-long p2, v6, v8

    if-eqz p2, :cond_7d

    .line 255
    iput-wide v8, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->pendingReposition:J

    return v5

    .line 258
    :cond_7d
    iget-object p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-interface {p1, p2, v5, v4}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 259
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 260
    iget-object p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 261
    iget-object p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->chunkHeaderHolder:Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2, v1}, Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->populateFrom(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 262
    iget-object p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p2

    .line 263
    iget-object v1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->chunkHeaderHolder:Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget v1, v1, Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    const v6, 0x46464952

    if-ne v1, v6, :cond_a8

    .line 266
    invoke-interface {p1, v4}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    return v5

    :cond_a8
    const v4, 0x5453494c

    const-wide/16 v6, 0x8

    if-ne v1, v4, :cond_f7

    const v1, 0x69766f6d

    if-eq p2, v1, :cond_b5

    goto :goto_f7

    .line 274
    :cond_b5
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iput-wide v8, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->moviStart:J

    .line 276
    iget-object p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->chunkHeaderHolder:Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget p2, p2, Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    int-to-long v10, p2

    add-long/2addr v8, v10

    add-long/2addr v8, v6

    iput-wide v8, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->moviEnd:J

    .line 277
    iget-boolean p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->seekMapHasBeenOutput:Z

    if-nez p2, :cond_eb

    .line 278
    iget-object p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->aviHeader:Lio/bidmachine/media3/extractor/avi/AviMainHeaderChunk;

    invoke-static {p2}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/bidmachine/media3/extractor/avi/AviMainHeaderChunk;

    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/avi/AviMainHeaderChunk;->hasIndex()Z

    move-result p2

    if-eqz p2, :cond_dd

    .line 279
    iput v2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->state:I

    .line 280
    iget-wide p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->moviEnd:J

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->pendingReposition:J

    return v5

    .line 283
    :cond_dd
    iget-object p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    new-instance v1, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;

    iget-wide v6, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->durationUs:J

    invoke-direct {v1, v6, v7}, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p2, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    .line 284
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->seekMapHasBeenOutput:Z

    .line 289
    :cond_eb
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide p1

    const-wide/16 v0, 0xc

    add-long/2addr p1, v0

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->pendingReposition:J

    .line 290
    iput v3, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->state:I

    return v5

    .line 271
    :cond_f7
    :goto_f7
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide p1

    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->chunkHeaderHolder:Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget v0, v0, Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    add-long/2addr p1, v6

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->pendingReposition:J

    return v5

    .line 247
    :pswitch_105
    iget p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->hdrlSize:I

    sub-int/2addr p2, v2

    .line 248
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {v0, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 249
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, p2}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 250
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/avi/AviExtractor;->parseHdrlBody(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    const/4 p1, 0x3

    .line 251
    iput p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->state:I

    return v5

    .line 234
    :pswitch_11b
    iget-object p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-interface {p1, p2, v5, v4}, Lio/bidmachine/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 235
    iget-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 236
    iget-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->chunkHeaderHolder:Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget-object p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->populateWithListHeaderFrom(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 237
    iget-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->chunkHeaderHolder:Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget p2, p1, Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    const v0, 0x6c726468

    if-ne p2, v0, :cond_141

    .line 242
    iget p1, p1, Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    iput p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->hdrlSize:I

    const/4 p1, 0x2

    .line 243
    iput p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->state:I

    return v5

    .line 238
    :cond_141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "hdrl expected, found: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->chunkHeaderHolder:Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget p2, p2, Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 225
    :pswitch_15b
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/avi/AviExtractor;->sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_167

    .line 226
    invoke-interface {p1, v4}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 231
    iput v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->state:I

    return v5

    .line 228
    :cond_167
    const-string p1, "AVI Header List not found"

    invoke-static {p1, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_15b
        :pswitch_11b
        :pswitch_105
        :pswitch_68
        :pswitch_38
        :pswitch_1e
        :pswitch_19
    .end packed-switch
.end method

.method public final readMoviChunks(Lio/bidmachine/media3/extractor/ExtractorInput;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->moviEnd:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    const/4 p1, -0x1

    return p1

    .line 462
    :cond_c
    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->currentChunkReader:Lio/bidmachine/media3/extractor/avi/ChunkReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 463
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->onChunkData(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result p1

    if-eqz p1, :cond_85

    const/4 p1, 0x0

    .line 464
    iput-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->currentChunkReader:Lio/bidmachine/media3/extractor/avi/ChunkReader;

    goto :goto_85

    .line 467
    :cond_1b
    invoke-static {p1}, Lio/bidmachine/media3/extractor/avi/AviExtractor;->alignInputToEvenPosition(Lio/bidmachine/media3/extractor/ExtractorInput;)V

    .line 468
    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v2, 0xc

    invoke-interface {p1, v0, v1, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 469
    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 470
    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    const v3, 0x5453494c

    const/16 v4, 0x8

    if-ne v0, v3, :cond_54

    .line 472
    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 473
    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    const v3, 0x69766f6d

    if-ne v0, v3, :cond_4c

    goto :goto_4d

    :cond_4c
    move v2, v4

    .line 474
    :goto_4d
    invoke-interface {p1, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 475
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    return v1

    .line 478
    :cond_54
    iget-object v2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    const v3, 0x4b4e554a    # 1.352225E7f

    if-ne v0, v3, :cond_6b

    .line 480
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    iput-wide v3, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->pendingReposition:J

    return v1

    .line 483
    :cond_6b
    invoke-interface {p1, v4}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 484
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 485
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/avi/AviExtractor;->getChunkReader(I)Lio/bidmachine/media3/extractor/avi/ChunkReader;

    move-result-object v0

    if-nez v0, :cond_80

    .line 488
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->pendingReposition:J

    return v1

    .line 491
    :cond_80
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->onChunkStart(I)V

    .line 492
    iput-object v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->currentChunkReader:Lio/bidmachine/media3/extractor/avi/ChunkReader;

    :cond_85
    :goto_85
    return v1
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public final resolvePendingReposition(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->pendingReposition:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 355
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    .line 356
    iget-wide v4, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->pendingReposition:J

    cmp-long v6, v4, v0

    if-ltz v6, :cond_21

    const-wide/32 v6, 0x40000

    add-long/2addr v6, v0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1b

    goto :goto_21

    :cond_1b
    sub-long/2addr v4, v0

    long-to-int p2, v4

    .line 363
    invoke-interface {p1, p2}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_25

    .line 358
    :cond_21
    :goto_21
    iput-wide v4, p2, Lio/bidmachine/media3/extractor/PositionHolder;->position:J

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p1, 0x0

    .line 366
    :goto_26
    iput-wide v2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->pendingReposition:J

    return p1
.end method

.method public seek(JJ)V
    .registers 8

    const-wide/16 p3, -0x1

    .line 321
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->pendingReposition:J

    const/4 p3, 0x0

    .line 322
    iput-object p3, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->currentChunkReader:Lio/bidmachine/media3/extractor/avi/ChunkReader;

    .line 323
    iget-object p3, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->chunkReaders:[Lio/bidmachine/media3/extractor/avi/ChunkReader;

    array-length p4, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, p4, :cond_16

    aget-object v2, p3, v1

    .line 324
    invoke-virtual {v2, p1, p2}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->seekToPosition(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_28

    .line 327
    iget-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->chunkReaders:[Lio/bidmachine/media3/extractor/avi/ChunkReader;

    array-length p1, p1

    if-nez p1, :cond_24

    .line 329
    iput v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->state:I

    return-void

    :cond_24
    const/4 p1, 0x3

    .line 331
    iput p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->state:I

    return-void

    :cond_28
    const/4 p1, 0x6

    .line 335
    iput p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->state:I

    return-void
.end method

.method public sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 208
    iget-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 209
    iget-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p1

    const v0, 0x46464952

    if-eq p1, v0, :cond_1d

    return v2

    .line 212
    :cond_1d
    iget-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 213
    iget-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor;->scratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p1

    const v0, 0x20495641

    if-ne p1, v0, :cond_30

    const/4 p1, 0x1

    return p1

    :cond_30
    return v2
.end method

###### Class io.bidmachine.media3.extractor.avi.AviExtractor.AnonymousClass1 (io.bidmachine.media3.extractor.avi.AviExtractor$1)
.class public synthetic Lio/bidmachine/media3/extractor/avi/AviExtractor$1;
.super Ljava/lang/Object;
.source "AviExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/avi/AviExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class io.bidmachine.media3.extractor.avi.AviExtractor.AviSeekMap (io.bidmachine.media3.extractor.avi.AviExtractor$AviSeekMap)
.class public Lio/bidmachine/media3/extractor/avi/AviExtractor$AviSeekMap;
.super Ljava/lang/Object;
.source "AviExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/avi/AviExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AviSeekMap"
.end annotation


# instance fields
.field public final durationUs:J

.field public final synthetic this$0:Lio/bidmachine/media3/extractor/avi/AviExtractor;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/avi/AviExtractor;J)V
    .registers 4

    .line 553
    iput-object p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor$AviSeekMap;->this$0:Lio/bidmachine/media3/extractor/avi/AviExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor$AviSeekMap;->durationUs:J

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .registers 3

    .line 564
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor$AviSeekMap;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;
    .registers 10

    .line 569
    iget-object v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor$AviSeekMap;->this$0:Lio/bidmachine/media3/extractor/avi/AviExtractor;

    invoke-static {v0}, Lio/bidmachine/media3/extractor/avi/AviExtractor;->access$100(Lio/bidmachine/media3/extractor/avi/AviExtractor;)[Lio/bidmachine/media3/extractor/avi/ChunkReader;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    move-result-object v0

    const/4 v1, 0x1

    .line 570
    :goto_e
    iget-object v2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor$AviSeekMap;->this$0:Lio/bidmachine/media3/extractor/avi/AviExtractor;

    invoke-static {v2}, Lio/bidmachine/media3/extractor/avi/AviExtractor;->access$100(Lio/bidmachine/media3/extractor/avi/AviExtractor;)[Lio/bidmachine/media3/extractor/avi/ChunkReader;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_33

    .line 571
    iget-object v2, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor$AviSeekMap;->this$0:Lio/bidmachine/media3/extractor/avi/AviExtractor;

    invoke-static {v2}, Lio/bidmachine/media3/extractor/avi/AviExtractor;->access$100(Lio/bidmachine/media3/extractor/avi/AviExtractor;)[Lio/bidmachine/media3/extractor/avi/ChunkReader;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lio/bidmachine/media3/extractor/avi/ChunkReader;->getSeekPoints(J)Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;

    move-result-object v2

    .line 572
    iget-object v3, v2, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->first:Lio/bidmachine/media3/extractor/SeekPoint;

    iget-wide v3, v3, Lio/bidmachine/media3/extractor/SeekPoint;->position:J

    iget-object v5, v0, Lio/bidmachine/media3/extractor/SeekMap$SeekPoints;->first:Lio/bidmachine/media3/extractor/SeekPoint;

    iget-wide v5, v5, Lio/bidmachine/media3/extractor/SeekPoint;->position:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_30

    move-object v0, v2

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_33
    return-object v0
.end method

.method public isSeekable()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

###### Class io.bidmachine.media3.extractor.avi.AviExtractor.ChunkHeaderHolder (io.bidmachine.media3.extractor.avi.AviExtractor$ChunkHeaderHolder)
.class public Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;
.super Ljava/lang/Object;
.source "AviExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/extractor/avi/AviExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChunkHeaderHolder"
.end annotation


# instance fields
.field public chunkType:I

.field public listType:I

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/media3/extractor/avi/AviExtractor$1;)V
    .registers 2

    .line 580
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public populateFrom(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 3

    .line 595
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    .line 596
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    const/4 p1, 0x0

    .line 597
    iput p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    return-void
.end method

.method public populateWithListHeaderFrom(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 586
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->populateFrom(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 587
    iget v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    const v1, 0x5453494c

    if-ne v0, v1, :cond_11

    .line 591
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p1

    iput p1, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    return-void

    .line 588
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LIST expected, found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/bidmachine/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method
