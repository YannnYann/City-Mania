###### Class io.bidmachine.media3.extractor.ts.MpegAudioReader (io.bidmachine.media3.extractor.ts.MpegAudioReader)
.class public final Lio/bidmachine/media3/extractor/ts/MpegAudioReader;
.super Ljava/lang/Object;
.source "MpegAudioReader.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public final containerMimeType:Ljava/lang/String;

.field public formatId:Ljava/lang/String;

.field public frameBytesRead:I

.field public frameDurationUs:J

.field public frameSize:I

.field public hasOutputFormat:Z

.field public final header:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

.field public final headerScratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final language:Ljava/lang/String;

.field public lastByteWasFF:Z

.field public output:Lio/bidmachine/media3/extractor/TrackOutput;

.field public final roleFlags:I

.field public state:I

.field public timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, v0, v1, p1}, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->state:I

    .line 75
    new-instance v1, Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->headerScratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 76
    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 77
    new-instance v0, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->header:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 78
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->timeUs:J

    .line 79
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    .line 80
    iput p2, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->roleFlags:I

    .line 81
    iput-object p3, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->containerMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 4

    .line 106
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :goto_5
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_27

    .line 108
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->state:I

    if-eqz v0, :cond_23

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 116
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->readFrameRemainder(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    goto :goto_5

    .line 119
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 113
    :cond_1f
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->readHeaderRemainder(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    goto :goto_5

    .line 110
    :cond_23
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->findHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    goto :goto_5

    :cond_27
    return-void
.end method

.method public createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4

    .line 94
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 95
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    .line 96
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    return-void
.end method

.method public final findHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 10

    .line 142
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 144
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    :goto_c
    if-ge v1, v2, :cond_46

    .line 146
    aget-byte v3, v0, v1

    and-int/lit16 v4, v3, 0xff

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_1a

    move v4, v7

    goto :goto_1b

    :cond_1a
    move v4, v6

    .line 147
    :goto_1b
    iget-boolean v5, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v5, :cond_27

    and-int/lit16 v3, v3, 0xe0

    const/16 v5, 0xe0

    if-ne v3, v5, :cond_27

    move v3, v7

    goto :goto_28

    :cond_27
    move v3, v6

    .line 148
    :goto_28
    iput-boolean v4, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v3, :cond_43

    add-int/lit8 v2, v1, 0x1

    .line 150
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 152
    iput-boolean v6, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    .line 153
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->headerScratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p1

    aget-byte v0, v0, v1

    aput-byte v0, p1, v7

    const/4 p1, 0x2

    .line 154
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 155
    iput v7, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->state:I

    return-void

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 159
    :cond_46
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method public packetFinished(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public packetStarted(JI)V
    .registers 4

    .line 101
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->timeUs:J

    return-void
.end method

.method public final readFrameRemainder(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 10

    .line 234
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->frameSize:I

    iget v2, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 235
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 236
    iget p1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 237
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->frameSize:I

    if-ge p1, v0, :cond_1c

    return-void

    .line 243
    :cond_1c
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->timeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    move p1, v0

    :goto_2b
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 244
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->timeUs:J

    iget v5, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->frameSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v7}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 245
    iget-wide v1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->timeUs:J

    iget-wide v3, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->frameDurationUs:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->timeUs:J

    .line 246
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 247
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->state:I

    return-void
.end method

.method public final readHeaderRemainder(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 9

    .line 180
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    const/4 v2, 0x4

    rsub-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 181
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->headerScratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    iget v3, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    invoke-virtual {p1, v1, v3, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 182
    iget p1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    if-ge p1, v2, :cond_20

    return-void

    .line 188
    :cond_20
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->headerScratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 189
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->header:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->headerScratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->setForHeaderData(I)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_3a

    .line 192
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 193
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->state:I

    return-void

    .line 197
    :cond_3a
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->header:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget v3, p1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    iput v3, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->frameSize:I

    .line 198
    iget-boolean v3, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    if-nez v3, :cond_97

    .line 199
    iget v3, p1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v3, v3

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    iget p1, p1, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v5, p1

    div-long/2addr v3, v5

    iput-wide v3, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->frameDurationUs:J

    .line 200
    new-instance p1, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {p1}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    .line 202
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->containerMimeType:Ljava/lang/String;

    .line 203
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->header:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget-object v3, v3, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 204
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    const/16 v3, 0x1000

    .line 205
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/Format$Builder;->setMaxInputSize(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->header:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget v3, v3, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->channels:I

    .line 206
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->header:Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;

    iget v3, v3, Lio/bidmachine/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    .line 207
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    .line 208
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    iget v3, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->roleFlags:I

    .line 209
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/Format$Builder;->setRoleFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    .line 211
    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v3, p1}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 212
    iput-boolean v1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    .line 215
    :cond_97
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->headerScratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 216
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->headerScratch:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {p1, v0, v2}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    const/4 p1, 0x2

    .line 217
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->state:I

    return-void
.end method

.method public seek()V
    .registers 3

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->state:I

    .line 87
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    .line 88
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 89
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/MpegAudioReader;->timeUs:J

    return-void
.end method
