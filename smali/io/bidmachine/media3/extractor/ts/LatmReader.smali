###### Class io.bidmachine.media3.extractor.ts.LatmReader (io.bidmachine.media3.extractor.ts.LatmReader)
.class public final Lio/bidmachine/media3/extractor/ts/LatmReader;
.super Ljava/lang/Object;
.source "LatmReader.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public audioMuxVersionA:I

.field public bytesRead:I

.field public channelCount:I

.field public codecs:Ljava/lang/String;

.field public final containerMimeType:Ljava/lang/String;

.field public format:Lio/bidmachine/media3/common/Format;

.field public formatId:Ljava/lang/String;

.field public frameLengthType:I

.field public final language:Ljava/lang/String;

.field public numSubframes:I

.field public otherDataLenBits:J

.field public otherDataPresent:Z

.field public output:Lio/bidmachine/media3/extractor/TrackOutput;

.field public final roleFlags:I

.field public final sampleBitArray:Lio/bidmachine/media3/common/util/ParsableBitArray;

.field public final sampleDataBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public sampleDurationUs:J

.field public sampleRateHz:I

.field public sampleSize:I

.field public secondHeaderByte:I

.field public state:I

.field public streamMuxRead:Z

.field public timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->language:Ljava/lang/String;

    .line 89
    iput p2, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->roleFlags:I

    .line 90
    iput-object p3, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->containerMimeType:Ljava/lang/String;

    .line 91
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 p2, 0x400

    invoke-direct {p1, p2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleDataBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 92
    new-instance p2, Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-direct {p2, p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object p2, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleBitArray:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 93
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->timeUs:J

    return-void
.end method

.method public static latmGetValue(Lio/bidmachine/media3/common/util/ParsableBitArray;)J
    .registers 3

    const/4 v0, 0x2

    .line 337
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    .line 338
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_5
    :goto_5
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_8b

    .line 120
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->state:I

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-eqz v0, :cond_81

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_6d

    const/4 v1, 0x3

    if-eq v0, v3, :cond_4d

    if-ne v0, v1, :cond_47

    .line 144
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleSize:I

    iget v2, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 145
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleBitArray:Lio/bidmachine/media3/common/util/ParsableBitArray;

    iget-object v1, v1, Lio/bidmachine/media3/common/util/ParsableBitArray;->data:[B

    iget v2, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->bytesRead:I

    invoke-virtual {p1, v1, v2, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 146
    iget v1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->bytesRead:I

    .line 147
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleSize:I

    if-ne v1, v0, :cond_5

    .line 148
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleBitArray:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 149
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleBitArray:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/ts/LatmReader;->parseAudioMuxElement(Lio/bidmachine/media3/common/util/ParsableBitArray;)V

    .line 150
    iput v4, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->state:I

    goto :goto_5

    .line 154
    :cond_47
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 136
    :cond_4d
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->secondHeaderByte:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleSize:I

    .line 137
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleDataBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    array-length v2, v2

    if-le v0, v2, :cond_68

    .line 138
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleSize:I

    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/ts/LatmReader;->resetBufferForSize(I)V

    .line 140
    :cond_68
    iput v4, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->bytesRead:I

    .line 141
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->state:I

    goto :goto_5

    .line 127
    :cond_6d
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_7c

    .line 129
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->secondHeaderByte:I

    .line 130
    iput v3, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->state:I

    goto :goto_5

    :cond_7c
    if-eq v0, v1, :cond_5

    .line 132
    iput v4, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->state:I

    goto :goto_5

    .line 122
    :cond_81
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 123
    iput v2, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->state:I

    goto/16 :goto_5

    :cond_8b
    return-void
.end method

.method public createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5

    .line 105
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 106
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 107
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

    return-void
.end method

.method public packetFinished(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public packetStarted(JI)V
    .registers 4

    .line 112
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->timeUs:J

    return-void
.end method

.method public final parseAudioMuxElement(Lio/bidmachine/media3/common/util/ParsableBitArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 171
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->streamMuxRead:Z

    .line 174
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ts/LatmReader;->parseStreamMuxConfig(Lio/bidmachine/media3/common/util/ParsableBitArray;)V

    goto :goto_12

    .line 175
    :cond_d
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->streamMuxRead:Z

    if-nez v0, :cond_12

    goto :goto_2c

    .line 179
    :cond_12
    :goto_12
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->audioMuxVersionA:I

    const/4 v1, 0x0

    if-nez v0, :cond_32

    .line 180
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->numSubframes:I

    if-nez v0, :cond_2d

    .line 183
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ts/LatmReader;->parsePayloadLengthInfo(Lio/bidmachine/media3/common/util/ParsableBitArray;)I

    move-result v0

    .line 184
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/media3/extractor/ts/LatmReader;->parsePayloadMux(Lio/bidmachine/media3/common/util/ParsableBitArray;I)V

    .line 185
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->otherDataPresent:Z

    if-eqz v0, :cond_2c

    .line 186
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->otherDataLenBits:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_2c
    :goto_2c
    return-void

    .line 181
    :cond_2d
    invoke-static {v1, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 190
    :cond_32
    invoke-static {v1, v1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public final parseAudioSpecificConfig(Lio/bidmachine/media3/common/util/ParsableBitArray;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 288
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v0

    const/4 v1, 0x1

    .line 289
    invoke-static {p1, v1}, Lio/bidmachine/media3/extractor/AacUtil;->parseAudioSpecificConfig(Lio/bidmachine/media3/common/util/ParsableBitArray;Z)Lio/bidmachine/media3/extractor/AacUtil$Config;

    move-result-object v1

    .line 290
    iget-object v2, v1, Lio/bidmachine/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    iput-object v2, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->codecs:Ljava/lang/String;

    .line 291
    iget v2, v1, Lio/bidmachine/media3/extractor/AacUtil$Config;->sampleRateHz:I

    iput v2, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleRateHz:I

    .line 292
    iget v1, v1, Lio/bidmachine/media3/extractor/AacUtil$Config;->channelCount:I

    iput v1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->channelCount:I

    .line 293
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public final parseFrameLength(Lio/bidmachine/media3/common/util/ParsableBitArray;)V
    .registers 6

    const/4 v0, 0x3

    .line 265
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->frameLengthType:I

    if-eqz v1, :cond_2f

    const/4 v2, 0x1

    if-eq v1, v2, :cond_29

    const/4 v3, 0x6

    if-eq v1, v0, :cond_25

    const/4 v0, 0x4

    if-eq v1, v0, :cond_25

    const/4 v0, 0x5

    if-eq v1, v0, :cond_25

    if-eq v1, v3, :cond_21

    const/4 v0, 0x7

    if-ne v1, v0, :cond_1b

    goto :goto_21

    .line 283
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 280
    :cond_21
    :goto_21
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    .line 276
    :cond_25
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    :cond_29
    const/16 v0, 0x9

    .line 271
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void

    :cond_2f
    const/16 v0, 0x8

    .line 268
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    return-void
.end method

.method public final parsePayloadLengthInfo(Lio/bidmachine/media3/common/util/ParsableBitArray;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 299
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->frameLengthType:I

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :cond_5
    const/16 v1, 0x8

    .line 302
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_5

    return v0

    :cond_11
    const/4 p1, 0x0

    .line 307
    invoke-static {p1, p1}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public final parsePayloadMux(Lio/bidmachine/media3/common/util/ParsableBitArray;I)V
    .registers 13

    .line 314
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->getPosition()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 317
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleDataBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    shr-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_21

    .line 321
    :cond_11
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleDataBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    mul-int/lit8 v1, p2, 0x8

    invoke-virtual {p1, v0, v2, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits([BII)V

    .line 322
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleDataBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 324
    :goto_21
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleDataBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {p1, v0, p2}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 326
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->timeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v3

    if-eqz p1, :cond_34

    const/4 v2, 0x1

    :cond_34
    invoke-static {v2}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 327
    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-wide v4, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->timeUs:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x1

    move v7, p2

    invoke-interface/range {v3 .. v9}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 328
    iget-wide p1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->timeUs:J

    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleDurationUs:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->timeUs:J

    return-void
.end method

.method public final parseStreamMuxConfig(Lio/bidmachine/media3/common/util/ParsableBitArray;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 197
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_d

    .line 198
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    goto :goto_e

    :cond_d
    move v3, v2

    :goto_e
    iput v3, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->audioMuxVersionA:I

    const/4 v4, 0x0

    if-nez v3, :cond_ee

    if-ne v1, v0, :cond_18

    .line 201
    invoke-static {p1}, Lio/bidmachine/media3/extractor/ts/LatmReader;->latmGetValue(Lio/bidmachine/media3/common/util/ParsableBitArray;)J

    .line 203
    :cond_18
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_e9

    const/4 v3, 0x6

    .line 206
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iput v3, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->numSubframes:I

    const/4 v3, 0x4

    .line 207
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v5, 0x3

    .line 208
    invoke-virtual {p1, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    if-nez v3, :cond_e4

    if-nez v5, :cond_e4

    const/16 v3, 0x8

    if-nez v1, :cond_a4

    .line 213
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->getPosition()I

    move-result v4

    .line 214
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ts/LatmReader;->parseAudioSpecificConfig(Lio/bidmachine/media3/common/util/ParsableBitArray;)I

    move-result v5

    .line 215
    invoke-virtual {p1, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    add-int/lit8 v4, v5, 0x7

    .line 216
    div-int/2addr v4, v3

    new-array v4, v4, [B

    .line 217
    invoke-virtual {p1, v4, v2, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits([BII)V

    .line 218
    new-instance v2, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v2}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->formatId:Ljava/lang/String;

    .line 220
    invoke-virtual {v2, v5}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->containerMimeType:Ljava/lang/String;

    .line 221
    invoke-virtual {v2, v5}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    const-string v5, "audio/mp4a-latm"

    .line 222
    invoke-virtual {v2, v5}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->codecs:Ljava/lang/String;

    .line 223
    invoke-virtual {v2, v5}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    iget v5, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->channelCount:I

    .line 224
    invoke-virtual {v2, v5}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    iget v5, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleRateHz:I

    .line 225
    invoke-virtual {v2, v5}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    .line 226
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->language:Ljava/lang/String;

    .line 227
    invoke-virtual {v2, v4}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    iget v4, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->roleFlags:I

    .line 228
    invoke-virtual {v2, v4}, Lio/bidmachine/media3/common/Format$Builder;->setRoleFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v2

    .line 230
    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->format:Lio/bidmachine/media3/common/Format;

    invoke-virtual {v2, v4}, Lio/bidmachine/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b1

    .line 231
    iput-object v2, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->format:Lio/bidmachine/media3/common/Format;

    .line 232
    iget v4, v2, Lio/bidmachine/media3/common/Format;->sampleRate:I

    int-to-long v4, v4

    const-wide/32 v6, 0x3d090000

    div-long/2addr v6, v4

    iput-wide v6, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleDurationUs:J

    .line 233
    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v4, v2}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    goto :goto_b1

    .line 236
    :cond_a4
    invoke-static {p1}, Lio/bidmachine/media3/extractor/ts/LatmReader;->latmGetValue(Lio/bidmachine/media3/common/util/ParsableBitArray;)J

    move-result-wide v4

    long-to-int v2, v4

    .line 237
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ts/LatmReader;->parseAudioSpecificConfig(Lio/bidmachine/media3/common/util/ParsableBitArray;)I

    move-result v4

    sub-int/2addr v2, v4

    .line 238
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 240
    :cond_b1
    :goto_b1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ts/LatmReader;->parseFrameLength(Lio/bidmachine/media3/common/util/ParsableBitArray;)V

    .line 241
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    iput-boolean v2, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->otherDataPresent:Z

    const-wide/16 v4, 0x0

    .line 242
    iput-wide v4, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->otherDataLenBits:J

    if-eqz v2, :cond_da

    if-ne v1, v0, :cond_c9

    .line 245
    invoke-static {p1}, Lio/bidmachine/media3/extractor/ts/LatmReader;->latmGetValue(Lio/bidmachine/media3/common/util/ParsableBitArray;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->otherDataLenBits:J

    goto :goto_da

    .line 249
    :cond_c9
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 250
    iget-wide v1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->otherDataLenBits:J

    shl-long/2addr v1, v3

    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    iput-wide v1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->otherDataLenBits:J

    if-nez v0, :cond_c9

    .line 254
    :cond_da
    :goto_da
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 256
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_e3
    return-void

    .line 210
    :cond_e4
    invoke-static {v4, v4}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 204
    :cond_e9
    invoke-static {v4, v4}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 260
    :cond_ee
    invoke-static {v4, v4}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public final resetBufferForSize(I)V
    .registers 3

    .line 332
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleDataBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->reset(I)V

    .line 333
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleBitArray:Lio/bidmachine/media3/common/util/ParsableBitArray;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->sampleDataBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->reset([B)V

    return-void
.end method

.method public seek()V
    .registers 4

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->state:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 99
    iput-wide v1, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->timeUs:J

    .line 100
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/LatmReader;->streamMuxRead:Z

    return-void
.end method
