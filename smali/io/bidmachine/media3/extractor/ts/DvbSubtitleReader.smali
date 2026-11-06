###### Class io.bidmachine.media3.extractor.ts.DvbSubtitleReader (io.bidmachine.media3.extractor.ts.DvbSubtitleReader)
.class public final Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;
.super Ljava/lang/Object;
.source "DvbSubtitleReader.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public bytesToCheck:I

.field public final containerMimeType:Ljava/lang/String;

.field public final outputs:[Lio/bidmachine/media3/extractor/TrackOutput;

.field public sampleBytesWritten:I

.field public sampleTimeUs:J

.field public final subtitleInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public writingSample:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->subtitleInfos:Ljava/util/List;

    .line 52
    iput-object p2, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->containerMimeType:Ljava/lang/String;

    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lio/bidmachine/media3/extractor/TrackOutput;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->outputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 54
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    return-void
.end method


# virtual methods
.method public final checkNextByte(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Z
    .registers 5

    .line 126
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 129
    :cond_8
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-eq p1, p2, :cond_10

    .line 130
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 132
    :cond_10
    iget p1, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    .line 133
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    return p1
.end method

.method public consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 8

    .line 106
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    if-eqz v0, :cond_3c

    .line 107
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->checkNextByte(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_3c

    .line 111
    :cond_12
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1f

    invoke-virtual {p0, p1, v1}, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->checkNextByte(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_3c

    .line 115
    :cond_1f
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 116
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    .line 117
    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->outputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    array-length v4, v3

    :goto_2a
    if-ge v1, v4, :cond_37

    aget-object v5, v3, v1

    .line 118
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 119
    invoke-interface {v5, p1, v2}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 121
    :cond_37
    iget p1, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    add-int/2addr p1, v2

    iput p1, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    :cond_3c
    :goto_3c
    return-void
.end method

.method public createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 8

    const/4 v0, 0x0

    .line 65
    :goto_1
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->outputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    array-length v1, v1

    if-ge v0, v1, :cond_51

    .line 66
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->subtitleInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    .line 67
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 68
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v2

    .line 69
    new-instance v3, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v3}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 71
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->containerMimeType:Ljava/lang/String;

    .line 72
    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    const-string v4, "application/dvbsubs"

    .line 73
    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    iget-object v4, v1, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->initializationData:[B

    .line 74
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    iget-object v1, v1, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->language:Ljava/lang/String;

    .line 75
    invoke-virtual {v3, v1}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v1

    .line 69
    invoke-interface {v2, v1}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 77
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->outputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_51
    return-void
.end method

.method public packetFinished(Z)V
    .registers 12

    .line 94
    iget-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    if-eqz p1, :cond_2d

    .line 96
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    move p1, v0

    :goto_13
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 97
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->outputs:[Lio/bidmachine/media3/extractor/TrackOutput;

    array-length v1, p1

    move v2, v0

    :goto_1a
    if-ge v2, v1, :cond_2b

    aget-object v3, p1, v2

    .line 98
    iget-wide v4, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    iget v7, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 100
    :cond_2b
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    :cond_2d
    return-void
.end method

.method public packetStarted(JI)V
    .registers 4

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_5

    return-void

    :cond_5
    const/4 p3, 0x1

    .line 86
    iput-boolean p3, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    .line 87
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    const/4 p1, 0x0

    .line 88
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    const/4 p1, 0x2

    .line 89
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    return-void
.end method

.method public seek()V
    .registers 3

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 60
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    return-void
.end method
