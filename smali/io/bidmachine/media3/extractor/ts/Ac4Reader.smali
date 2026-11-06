###### Class io.bidmachine.media3.extractor.ts.Ac4Reader (io.bidmachine.media3.extractor.ts.Ac4Reader)
.class public final Lio/bidmachine/media3/extractor/ts/Ac4Reader;
.super Ljava/lang/Object;
.source "Ac4Reader.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public bytesRead:I

.field public final containerMimeType:Ljava/lang/String;

.field public format:Lio/bidmachine/media3/common/Format;

.field public formatId:Ljava/lang/String;

.field public hasCRC:Z

.field public final headerScratchBits:Lio/bidmachine/media3/common/util/ParsableBitArray;

.field public final headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final language:Ljava/lang/String;

.field public lastByteWasAC:Z

.field public output:Lio/bidmachine/media3/extractor/TrackOutput;

.field public final roleFlags:I

.field public sampleDurationUs:J

.field public sampleSize:I

.field public state:I

.field public timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, v0, v1, p1}, Lio/bidmachine/media3/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->headerScratchBits:Lio/bidmachine/media3/common/util/ParsableBitArray;

    .line 100
    new-instance v1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget-object v0, v0, Lio/bidmachine/media3/common/util/ParsableBitArray;->data:[B

    invoke-direct {v1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->state:I

    .line 102
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->bytesRead:I

    .line 103
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 104
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->hasCRC:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 105
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->timeUs:J

    .line 106
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    .line 107
    iput p2, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->roleFlags:I

    .line 108
    iput-object p3, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->containerMimeType:Ljava/lang/String;

    return-void
.end method

.method private continueRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z
    .registers 6

    .line 186
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 187
    iget v1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 188
    iget p1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->bytesRead:I

    if-ne p1, p3, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method private parseHeader()V
    .registers 6

    .line 218
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->headerScratchBits:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 219
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->headerScratchBits:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-static {v0}, Lio/bidmachine/media3/extractor/Ac4Util;->parseAc4SyncframeInfo(Lio/bidmachine/media3/common/util/ParsableBitArray;)Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->format:Lio/bidmachine/media3/common/Format;

    const-string v2, "audio/ac4"

    if-eqz v1, :cond_26

    iget v3, v0, Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;->channelCount:I

    iget v4, v1, Lio/bidmachine/media3/common/Format;->channelCount:I

    if-ne v3, v4, :cond_26

    iget v3, v0, Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;->sampleRate:I

    iget v4, v1, Lio/bidmachine/media3/common/Format;->sampleRate:I

    if-ne v3, v4, :cond_26

    iget-object v1, v1, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 223
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 224
    :cond_26
    new-instance v1, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v1}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    .line 226
    invoke-virtual {v1, v3}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->containerMimeType:Ljava/lang/String;

    .line 227
    invoke-virtual {v1, v3}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 228
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    iget v2, v0, Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;->channelCount:I

    .line 229
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    iget v2, v0, Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;->sampleRate:I

    .line 230
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    .line 231
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    iget v2, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->roleFlags:I

    .line 232
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/Format$Builder;->setRoleFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->format:Lio/bidmachine/media3/common/Format;

    .line 234
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v2, v1}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 236
    :cond_5e
    iget v1, v0, Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;->frameSize:I

    iput v1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->sampleSize:I

    .line 239
    iget v0, v0, Lio/bidmachine/media3/extractor/Ac4Util$SyncFrameInfo;->sampleCount:I

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->format:Lio/bidmachine/media3/common/Format;

    iget v2, v2, Lio/bidmachine/media3/common/Format;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->sampleDurationUs:J

    return-void
.end method

.method private skipToNextSync(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z
    .registers 7

    .line 200
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_31

    .line 201
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    const/16 v2, 0xac

    const/4 v3, 0x1

    if-nez v0, :cond_18

    .line 202
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_15

    move v1, v3

    :cond_15
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    goto :goto_0

    .line 205
    :cond_18
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_20

    move v2, v3

    goto :goto_21

    :cond_20
    move v2, v1

    .line 206
    :goto_21
    iput-boolean v2, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    const/16 v2, 0x40

    const/16 v4, 0x41

    if-eq v0, v2, :cond_2b

    if-ne v0, v4, :cond_0

    :cond_2b
    if-ne v0, v4, :cond_2e

    move v1, v3

    .line 208
    :cond_2e
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->hasCRC:Z

    return v3

    :cond_31
    return v1
.end method


# virtual methods
.method public consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 13

    .line 134
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_5
    :goto_5
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_a0

    .line 136
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_78

    if-eq v0, v3, :cond_58

    if-eq v0, v1, :cond_17

    goto :goto_5

    .line 154
    :cond_17
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->sampleSize:I

    iget v4, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 155
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 156
    iget v1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->bytesRead:I

    .line 157
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->sampleSize:I

    if-ne v1, v0, :cond_5

    .line 159
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->timeUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3e

    goto :goto_3f

    :cond_3e
    move v3, v2

    :goto_3f
    invoke-static {v3}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 160
    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-wide v5, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->timeUs:J

    iget v8, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->sampleSize:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 161
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->timeUs:J

    iget-wide v3, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->sampleDurationUs:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->timeUs:J

    .line 162
    iput v2, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->state:I

    goto :goto_5

    .line 146
    :cond_58
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v3, 0x10

    invoke-direct {p0, p1, v0, v3}, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->continueRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    invoke-direct {p0}, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->parseHeader()V

    .line 148
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 149
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {v0, v2, v3}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 150
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->state:I

    goto :goto_5

    .line 138
    :cond_78
    invoke-direct {p0, p1}, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->skipToNextSync(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    iput v3, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->state:I

    .line 140
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v4, -0x54

    aput-byte v4, v0, v2

    .line 141
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-boolean v2, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->hasCRC:Z

    if-eqz v2, :cond_97

    const/16 v2, 0x41

    goto :goto_99

    :cond_97
    const/16 v2, 0x40

    :goto_99
    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 142
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->bytesRead:I

    goto/16 :goto_5

    :cond_a0
    return-void
.end method

.method public createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4

    .line 122
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 123
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    .line 124
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    return-void
.end method

.method public packetFinished(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public packetStarted(JI)V
    .registers 4

    .line 129
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->timeUs:J

    return-void
.end method

.method public seek()V
    .registers 3

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->state:I

    .line 114
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->bytesRead:I

    .line 115
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 116
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->hasCRC:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 117
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/Ac4Reader;->timeUs:J

    return-void
.end method
