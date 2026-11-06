###### Class io.bidmachine.media3.extractor.ts.Id3Reader (io.bidmachine.media3.extractor.ts.Id3Reader)
.class public final Lio/bidmachine/media3/extractor/ts/Id3Reader;
.super Ljava/lang/Object;
.source "Id3Reader.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public final containerMimeType:Ljava/lang/String;

.field public final id3Header:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public output:Lio/bidmachine/media3/extractor/TrackOutput;

.field public sampleBytesRead:I

.field public sampleSize:I

.field public sampleTimeUs:J

.field public writingSample:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->containerMimeType:Ljava/lang/String;

    .line 56
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->id3Header:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 57
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    return-void
.end method


# virtual methods
.method public consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 9

    .line 91
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->writingSample:Z

    if-nez v0, :cond_a

    return-void

    .line 95
    :cond_a
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 96
    iget v1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_71

    rsub-int/lit8 v1, v1, 0xa

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 100
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    .line 101
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v4

    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->id3Header:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 102
    invoke-virtual {v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    iget v6, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    .line 99
    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget v3, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_71

    .line 107
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->id3Header:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 108
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->id3Header:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v4, 0x49

    if-ne v4, v1, :cond_67

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->id3Header:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 109
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v4, 0x44

    if-ne v4, v1, :cond_67

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->id3Header:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 110
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/16 v4, 0x33

    if-eq v4, v1, :cond_57

    goto :goto_67

    .line 115
    :cond_57
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->id3Header:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 116
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->id3Header:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->sampleSize:I

    goto :goto_71

    .line 111
    :cond_67
    :goto_67
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-boolean v3, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->writingSample:Z

    return-void

    .line 120
    :cond_71
    :goto_71
    iget v1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->sampleSize:I

    iget v2, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 121
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 122
    iget p1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    return-void
.end method

.method public createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5

    .line 68
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 69
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 70
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 72
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->containerMimeType:Ljava/lang/String;

    .line 73
    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    const-string v0, "application/id3"

    .line 74
    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    .line 75
    invoke-virtual {p2}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p2

    .line 70
    invoke-interface {p1, p2}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    return-void
.end method

.method public packetFinished(Z)V
    .registers 10

    .line 127
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->writingSample:Z

    if-eqz p1, :cond_32

    iget p1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->sampleSize:I

    if-eqz p1, :cond_32

    iget v0, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    if-eq v0, p1, :cond_12

    goto :goto_32

    .line 132
    :cond_12
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    move p1, v0

    :goto_21
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 133
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    iget v5, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->sampleSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 134
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->writingSample:Z

    :cond_32
    :goto_32
    return-void
.end method

.method public packetStarted(JI)V
    .registers 4

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_5

    return-void

    :cond_5
    const/4 p3, 0x1

    .line 83
    iput-boolean p3, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->writingSample:Z

    .line 84
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->sampleSize:I

    .line 86
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->sampleBytesRead:I

    return-void
.end method

.method public seek()V
    .registers 3

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->writingSample:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 63
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/Id3Reader;->sampleTimeUs:J

    return-void
.end method
