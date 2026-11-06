###### Class io.bidmachine.media3.extractor.ts.DtsReader (io.bidmachine.media3.extractor.ts.DtsReader)
.class public final Lio/bidmachine/media3/extractor/ts/DtsReader;
.super Ljava/lang/Object;
.source "DtsReader.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field public bytesRead:I

.field public final containerMimeType:Ljava/lang/String;

.field public extensionSubstreamHeaderSize:I

.field public format:Lio/bidmachine/media3/common/Format;

.field public formatId:Ljava/lang/String;

.field public frameType:I

.field public final headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public final language:Ljava/lang/String;

.field public output:Lio/bidmachine/media3/extractor/TrackOutput;

.field public final roleFlags:I

.field public sampleDurationUs:J

.field public sampleSize:I

.field public state:I

.field public syncBytes:I

.field public timeUs:J

.field public final uhdAudioChunkId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public uhdHeaderSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 7

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    new-array p3, p3, [B

    invoke-direct {v0, p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 p3, 0x0

    .line 109
    iput p3, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->state:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 110
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->timeUs:J

    .line 111
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->uhdAudioChunkId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, -0x1

    .line 112
    iput p3, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->extensionSubstreamHeaderSize:I

    .line 113
    iput p3, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->uhdHeaderSize:I

    .line 114
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->language:Ljava/lang/String;

    .line 115
    iput p2, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->roleFlags:I

    .line 116
    iput-object p4, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->containerMimeType:Ljava/lang/String;

    return-void
.end method

.method private continueRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z
    .registers 6

    .line 240
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 241
    iget v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 242
    iget p1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->bytesRead:I

    if-ne p1, p3, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_5
    :goto_5
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_130

    .line 144
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->state:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_132

    .line 220
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 203
    :pswitch_1b
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->sampleSize:I

    iget v3, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->bytesRead:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 204
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 205
    iget v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->bytesRead:I

    .line 206
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->sampleSize:I

    if-ne v1, v0, :cond_5

    .line 208
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->timeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v6

    if-eqz v0, :cond_43

    move v0, v4

    goto :goto_44

    :cond_43
    move v0, v5

    :goto_44
    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 209
    iget-object v6, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-wide v7, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->timeUs:J

    .line 211
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->frameType:I

    if-ne v0, v2, :cond_51

    move v9, v5

    goto :goto_52

    :cond_51
    move v9, v4

    :goto_52
    iget v10, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->sampleSize:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 209
    invoke-interface/range {v6 .. v12}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 215
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->timeUs:J

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->sampleDurationUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->timeUs:J

    .line 216
    iput v5, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->state:I

    goto :goto_5

    .line 195
    :pswitch_63
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->uhdHeaderSize:I

    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/media3/extractor/ts/DtsReader;->continueRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 196
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/DtsReader;->parseUhdHeader()V

    .line 197
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 198
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget v2, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->uhdHeaderSize:I

    invoke-interface {v0, v1, v2}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 199
    iput v3, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->state:I

    goto :goto_5

    .line 183
    :pswitch_85
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-direct {p0, p1, v0, v3}, Lio/bidmachine/media3/extractor/ts/DtsReader;->continueRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/extractor/DtsUtil;->parseDtsUhdHeaderSize([B)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->uhdHeaderSize:I

    .line 186
    iget v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->bytesRead:I

    if-le v1, v0, :cond_ae

    sub-int v0, v1, v0

    sub-int/2addr v1, v0

    .line 188
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->bytesRead:I

    .line 189
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    :cond_ae
    const/4 v0, 0x5

    .line 191
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->state:I

    goto/16 :goto_5

    .line 174
    :pswitch_b3
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->extensionSubstreamHeaderSize:I

    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/media3/extractor/ts/DtsReader;->continueRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/DtsReader;->parseExtensionSubstreamHeader()V

    .line 176
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 177
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    iget v2, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->extensionSubstreamHeaderSize:I

    invoke-interface {v0, v1, v2}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 178
    iput v3, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->state:I

    goto/16 :goto_5

    .line 167
    :pswitch_d6
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v2}, Lio/bidmachine/media3/extractor/ts/DtsReader;->continueRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 168
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 169
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/extractor/DtsUtil;->parseDtsHdHeaderSize([B)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->extensionSubstreamHeaderSize:I

    .line 170
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->state:I

    goto/16 :goto_5

    .line 158
    :pswitch_f3
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/media3/extractor/ts/DtsReader;->continueRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/DtsReader;->parseCoreHeader()V

    .line 160
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 161
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-interface {v0, v2, v1}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 162
    iput v3, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->state:I

    goto/16 :goto_5

    .line 146
    :pswitch_114
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ts/DtsReader;->skipToNextSyncWord(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->frameType:I

    if-eq v0, v1, :cond_12c

    if-ne v0, v2, :cond_121

    goto :goto_12c

    :cond_121
    if-ne v0, v4, :cond_127

    .line 151
    iput v4, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->state:I

    goto/16 :goto_5

    :cond_127
    const/4 v0, 0x2

    .line 153
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->state:I

    goto/16 :goto_5

    .line 149
    :cond_12c
    :goto_12c
    iput v2, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->state:I

    goto/16 :goto_5

    :cond_130
    return-void

    nop

    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_114
        :pswitch_f3
        :pswitch_d6
        :pswitch_b3
        :pswitch_85
        :pswitch_63
        :pswitch_1b
    .end packed-switch
.end method

.method public createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4

    .line 130
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 131
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    .line 132
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    return-void
.end method

.method public packetFinished(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public packetStarted(JI)V
    .registers 4

    .line 137
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->timeUs:J

    return-void
.end method

.method public final parseCoreHeader()V
    .registers 8

    .line 275
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    .line 276
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->format:Lio/bidmachine/media3/common/Format;

    if-nez v0, :cond_1e

    .line 277
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->language:Ljava/lang/String;

    iget v4, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->roleFlags:I

    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->containerMimeType:Ljava/lang/String;

    const/4 v6, 0x0

    .line 278
    invoke-static/range {v1 .. v6}, Lio/bidmachine/media3/extractor/DtsUtil;->parseDtsFormat([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/Format;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->format:Lio/bidmachine/media3/common/Format;

    .line 279
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v2, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 281
    :cond_1e
    invoke-static {v1}, Lio/bidmachine/media3/extractor/DtsUtil;->getDtsFrameSize([B)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->sampleSize:I

    .line 287
    invoke-static {v1}, Lio/bidmachine/media3/extractor/DtsUtil;->parseDtsAudioSampleCount([B)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->format:Lio/bidmachine/media3/common/Format;

    iget v2, v2, Lio/bidmachine/media3/common/Format;->sampleRate:I

    .line 286
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v0

    .line 285
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->sampleDurationUs:J

    return-void
.end method

.method public final parseExtensionSubstreamHeader()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/media3/extractor/DtsUtil;->parseDtsHdHeader([B)Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;

    move-result-object v0

    .line 294
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/ts/DtsReader;->updateFormatWithDtsHeaderInfo(Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;)V

    .line 295
    iget v1, v0, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;->frameSize:I

    iput v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->sampleSize:I

    .line 296
    iget-wide v0, v0, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;->frameDurationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_1e

    const-wide/16 v0, 0x0

    :cond_1e
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->sampleDurationUs:J

    return-void
.end method

.method public final parseUhdHeader()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 303
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->uhdAudioChunkId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, v1}, Lio/bidmachine/media3/extractor/DtsUtil;->parseDtsUhdHeader([BLjava/util/concurrent/atomic/AtomicInteger;)Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;

    move-result-object v0

    .line 305
    iget v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->frameType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 306
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/ts/DtsReader;->updateFormatWithDtsHeaderInfo(Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;)V

    .line 308
    :cond_14
    iget v1, v0, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;->frameSize:I

    iput v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->sampleSize:I

    .line 309
    iget-wide v0, v0, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;->frameDurationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_25

    const-wide/16 v0, 0x0

    :cond_25
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->sampleDurationUs:J

    return-void
.end method

.method public seek()V
    .registers 4

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->state:I

    .line 122
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->bytesRead:I

    .line 123
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->syncBytes:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 124
    iput-wide v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->timeUs:J

    .line 125
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->uhdAudioChunkId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final skipToNextSyncWord(Lio/bidmachine/media3/common/util/ParsableByteArray;)Z
    .registers 7

    .line 254
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_47

    .line 255
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->syncBytes:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->syncBytes:I

    .line 256
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->syncBytes:I

    .line 257
    invoke-static {v0}, Lio/bidmachine/media3/extractor/DtsUtil;->getFrameType(I)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->frameType:I

    if-eqz v0, :cond_0

    .line 259
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->headerScratchBytes:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p1

    .line 260
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->syncBytes:I

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    .line 261
    aput-byte v2, p1, v3

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x2

    .line 262
    aput-byte v2, p1, v4

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x3

    .line 263
    aput-byte v0, p1, v2

    const/4 p1, 0x4

    .line 264
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->bytesRead:I

    .line 265
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->syncBytes:I

    return v3

    :cond_47
    return v1
.end method

.method public final updateFormatWithDtsHeaderInfo(Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;)V
    .registers 6

    .line 314
    iget v0, p1, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;->sampleRate:I

    const v1, -0x7fffffff

    if-eq v0, v1, :cond_66

    iget v1, p1, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;->channelCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    goto :goto_66

    .line 317
    :cond_d
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->format:Lio/bidmachine/media3/common/Format;

    if-eqz v2, :cond_23

    iget v3, v2, Lio/bidmachine/media3/common/Format;->channelCount:I

    if-ne v1, v3, :cond_23

    iget v1, v2, Lio/bidmachine/media3/common/Format;->sampleRate:I

    if-ne v0, v1, :cond_23

    iget-object v0, p1, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;->mimeType:Ljava/lang/String;

    iget-object v1, v2, Lio/bidmachine/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 320
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 321
    :cond_23
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->format:Lio/bidmachine/media3/common/Format;

    if-nez v0, :cond_2d

    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    goto :goto_31

    :cond_2d
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format;->buildUpon()Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 322
    :goto_31
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    .line 324
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->containerMimeType:Ljava/lang/String;

    .line 325
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p1, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;->mimeType:Ljava/lang/String;

    .line 326
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p1, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;->channelCount:I

    .line 327
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget p1, p1, Lio/bidmachine/media3/extractor/DtsUtil$DtsHeader;->sampleRate:I

    .line 328
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->language:Ljava/lang/String;

    .line 329
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    iget v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->roleFlags:I

    .line 330
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/Format$Builder;->setRoleFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p1

    .line 331
    invoke-virtual {p1}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->format:Lio/bidmachine/media3/common/Format;

    .line 332
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/DtsReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v0, p1}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    :cond_66
    :goto_66
    return-void
.end method
