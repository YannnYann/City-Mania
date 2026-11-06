###### Class io.bidmachine.media3.extractor.ts.MpeghReader (io.bidmachine.media3.extractor.ts.MpeghReader)
.class public final Lio/bidmachine/media3/extractor/ts/MpeghReader;
.super Ljava/lang/Object;
.source "MpeghReader.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public configFound:Z

.field public final containerMimeType:Ljava/lang/String;

.field public dataPending:Z

.field public final dataScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public flags:I

.field public formatId:Ljava/lang/String;

.field public frameBytes:I

.field public header:Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;

.field public headerDataFinished:Z

.field public final headerScratchBits:Lio/bidmachine/media3/common/util/ParsableBitArray;

.field public final headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public mainStreamLabel:J

.field public output:Lio/bidmachine/media3/extractor/TrackOutput;

.field public payloadBytesRead:I

.field public rapPending:Z

.field public samplingRate:I

.field public standardFrameLength:I

.field public state:I

.field public syncBytes:I

.field public timeUs:D

.field public timeUsPending:D

.field public truncationSamples:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->containerMimeType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 100
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->state:I

    .line 101
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v0, 0xf

    new-array v0, v0, [B

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([BI)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 103
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerScratchBits:Lio/bidmachine/media3/common/util/ParsableBitArray;

    .line 104
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->dataScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 105
    new-instance p1, Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->header:Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;

    const p1, -0x7fffffff

    .line 106
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->samplingRate:I

    const/4 p1, -0x1

    .line 107
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->standardFrameLength:I

    const-wide/16 v0, -0x1

    .line 108
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->mainStreamLabel:J

    const/4 p1, 0x1

    .line 109
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->rapPending:Z

    .line 110
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerDataFinished:Z

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    .line 111
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->timeUs:D

    .line 112
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->timeUsPending:D

    return-void
.end method

.method private skipToNextSync(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z
    .registers 6

    .line 254
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 256
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v2

    :cond_f
    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-nez v0, :cond_3a

    .line 262
    :cond_14
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_39

    .line 263
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->syncBytes:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->syncBytes:I

    .line 264
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    or-int/2addr v0, v3

    iput v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->syncBytes:I

    .line 265
    invoke-static {v0}, Lio/bidmachine/media3/extractor/ts/MpeghUtil;->isSyncWord(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 266
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 267
    iput v2, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->syncBytes:I

    return v1

    :cond_39
    return v2

    :cond_3a
    return v1
.end method


# virtual methods
.method public consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_5
    :goto_5
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_c4

    .line 165
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->state:I

    const/4 v1, 0x1

    if-eqz v0, :cond_ba

    const/4 v2, 0x2

    if-eq v0, v1, :cond_66

    if-ne v0, v2, :cond_60

    .line 198
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->header:Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;

    iget v0, v0, Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetType:I

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/ts/MpeghReader;->shouldParsePacket(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 199
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->dataScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p0, p1, v0, v1}, Lio/bidmachine/media3/extractor/ts/MpeghReader;->copyData(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/common/util/ParsableByteArray;Z)V

    .line 201
    :cond_24
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ts/MpeghReader;->writeSampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 202
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->payloadBytesRead:I

    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->header:Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;

    iget v4, v3, Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLength:I

    if-ne v0, v4, :cond_5

    .line 203
    iget v0, v3, Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetType:I

    if-ne v0, v1, :cond_42

    .line 204
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableBitArray;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->dataScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/ts/MpeghReader;->parseConfig(Lio/bidmachine/media3/common/util/ParsableBitArray;)V

    goto :goto_5d

    :cond_42
    const/16 v3, 0x11

    if-ne v0, v3, :cond_58

    .line 206
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableBitArray;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->dataScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 208
    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 207
    invoke-static {v0}, Lio/bidmachine/media3/extractor/ts/MpeghUtil;->parseAudioTruncationInfo(Lio/bidmachine/media3/common/util/ParsableBitArray;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->truncationSamples:I

    goto :goto_5d

    :cond_58
    if-ne v0, v2, :cond_5d

    .line 210
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/MpeghReader;->finalizeFrame()V

    .line 213
    :cond_5d
    :goto_5d
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->state:I

    goto :goto_5

    .line 217
    :cond_60
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 172
    :cond_66
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, v3}, Lio/bidmachine/media3/extractor/ts/MpeghReader;->copyData(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/common/util/ParsableByteArray;Z)V

    .line 173
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_b6

    .line 174
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/MpeghReader;->parseHeader()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 176
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 177
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 180
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 183
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->dataScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->header:Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;

    iget v3, v3, Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLength:I

    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 185
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerDataFinished:Z

    .line 188
    iput v2, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->state:I

    goto/16 :goto_5

    .line 189
    :cond_9e
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    const/16 v2, 0xf

    if-ge v0, v2, :cond_5

    .line 190
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 191
    iput-boolean v3, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerDataFinished:Z

    goto/16 :goto_5

    .line 194
    :cond_b6
    iput-boolean v3, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerDataFinished:Z

    goto/16 :goto_5

    .line 167
    :cond_ba
    invoke-direct {p0, p1}, Lio/bidmachine/media3/extractor/ts/MpeghReader;->skipToNextSync(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 168
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->state:I

    goto/16 :goto_5

    :cond_c4
    return-void
.end method

.method public final copyData(Lio/bidmachine/media3/common/util/ParsableByteArray;Lio/bidmachine/media3/common/util/ParsableByteArray;Z)V
    .registers 8

    .line 237
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 238
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 239
    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-virtual {p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    invoke-virtual {p1, v2, v3, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 240
    invoke-virtual {p2, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    if-eqz p3, :cond_23

    .line 242
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    :cond_23
    return-void
.end method

.method public createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4

    .line 137
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 138
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->formatId:Ljava/lang/String;

    .line 139
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    return-void
.end method

.method public final finalizeFrame()V
    .registers 11

    .line 369
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->configFound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 371
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->rapPending:Z

    const/4 v0, 0x1

    move v5, v0

    goto :goto_b

    :cond_a
    move v5, v1

    .line 373
    :goto_b
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->standardFrameLength:I

    iget v2, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->truncationSamples:I

    sub-int/2addr v0, v2

    int-to-double v2, v0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v6

    iget v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->samplingRate:I

    int-to-double v6, v0

    div-double/2addr v2, v6

    .line 375
    iget-wide v6, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->timeUs:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .line 376
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->dataPending:Z

    if-eqz v0, :cond_2c

    .line 377
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->dataPending:Z

    .line 378
    iget-wide v2, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->timeUsPending:D

    iput-wide v2, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->timeUs:D

    goto :goto_31

    .line 380
    :cond_2c
    iget-wide v8, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->timeUs:D

    add-double/2addr v8, v2

    iput-wide v8, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->timeUs:D

    .line 382
    :goto_31
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    move-wide v3, v6

    iget v6, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->frameBytes:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 383
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->configFound:Z

    .line 384
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->truncationSamples:I

    .line 385
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->frameBytes:I

    return-void
.end method

.method public packetFinished(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public packetStarted(JI)V
    .registers 6

    .line 144
    iput p3, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->flags:I

    .line 147
    iget-boolean p3, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->rapPending:Z

    if-nez p3, :cond_11

    iget p3, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->frameBytes:I

    if-nez p3, :cond_e

    iget-boolean p3, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerDataFinished:Z

    if-nez p3, :cond_11

    :cond_e
    const/4 p3, 0x1

    .line 148
    iput-boolean p3, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->dataPending:Z

    :cond_11
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_25

    .line 152
    iget-boolean p3, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->dataPending:Z

    if-eqz p3, :cond_22

    long-to-double p1, p1

    .line 153
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->timeUsPending:D

    return-void

    :cond_22
    long-to-double p1, p1

    .line 155
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->timeUs:D

    :cond_25
    return-void
.end method

.method public final parseConfig(Lio/bidmachine/media3/common/util/ParsableBitArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 333
    invoke-static {p1}, Lio/bidmachine/media3/extractor/ts/MpeghUtil;->parseMpegh3daConfig(Lio/bidmachine/media3/common/util/ParsableBitArray;)Lio/bidmachine/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;

    move-result-object p1

    .line 334
    iget v0, p1, Lio/bidmachine/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;->samplingFrequency:I

    iput v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->samplingRate:I

    .line 335
    iget v0, p1, Lio/bidmachine/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;->standardFrameLength:I

    iput v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->standardFrameLength:I

    .line 336
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->mainStreamLabel:J

    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->header:Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;

    iget-wide v2, v2, Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLabel:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7b

    .line 337
    iput-wide v2, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->mainStreamLabel:J

    .line 340
    iget v0, p1, Lio/bidmachine/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;->profileLevelIndication:I

    const/4 v1, -0x1

    const-string v2, "mhm1"

    if-eq v0, v1, :cond_3e

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lio/bidmachine/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;->profileLevelIndication:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, ".%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 344
    :cond_3e
    iget-object p1, p1, Lio/bidmachine/media3/extractor/ts/MpeghUtil$Mpegh3daConfig;->compatibleProfileLevelSet:[B

    if-eqz p1, :cond_4c

    array-length v0, p1

    if-lez v0, :cond_4c

    .line 347
    sget-object v0, Lio/bidmachine/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    .line 348
    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x0

    .line 350
    :goto_4d
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->formatId:Ljava/lang/String;

    .line 352
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->containerMimeType:Ljava/lang/String;

    .line 353
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "audio/mhm1"

    .line 354
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->samplingRate:I

    .line 355
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 356
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 357
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 358
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    .line 359
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    :cond_7b
    const/4 p1, 0x1

    .line 361
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->configFound:Z

    return-void
.end method

.method public final parseHeader()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    .line 285
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerScratchBits:Lio/bidmachine/media3/common/util/ParsableBitArray;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->reset([BI)V

    .line 288
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerScratchBits:Lio/bidmachine/media3/common/util/ParsableBitArray;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->header:Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;

    invoke-static {v1, v2}, Lio/bidmachine/media3/extractor/ts/MpeghUtil;->parseMhasPacketHeader(Lio/bidmachine/media3/common/util/ParsableBitArray;Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v2, 0x0

    .line 291
    iput v2, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->payloadBytesRead:I

    .line 292
    iget v2, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->frameBytes:I

    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->header:Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;

    iget v3, v3, Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLength:I

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->frameBytes:I

    :cond_28
    return v1
.end method

.method public seek()V
    .registers 4

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->state:I

    .line 118
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->syncBytes:I

    .line 119
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 120
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->payloadBytesRead:I

    .line 121
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->frameBytes:I

    const v1, -0x7fffffff

    .line 122
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->samplingRate:I

    const/4 v1, -0x1

    .line 123
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->standardFrameLength:I

    .line 124
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->truncationSamples:I

    const-wide/16 v1, -0x1

    .line 125
    iput-wide v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->mainStreamLabel:J

    .line 126
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->configFound:Z

    .line 127
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->dataPending:Z

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->headerDataFinished:Z

    .line 129
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->rapPending:Z

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    .line 130
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->timeUs:D

    .line 131
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->timeUsPending:D

    return-void
.end method

.method public final shouldParsePacket(I)Z
    .registers 4

    .line 0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    const/16 v1, 0x11

    if-ne p1, v1, :cond_8

    goto :goto_a

    :cond_8
    const/4 p1, 0x0

    return p1

    :cond_a
    :goto_a
    return v0
.end method

.method public final writeSampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 5

    .line 319
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->header:Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;

    iget v1, v1, Lio/bidmachine/media3/extractor/ts/MpeghUtil$MhasPacketHeader;->packetLength:I

    iget v2, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->payloadBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 320
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 321
    iget p1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->payloadBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/media3/extractor/ts/MpeghReader;->payloadBytesRead:I

    return-void
.end method
