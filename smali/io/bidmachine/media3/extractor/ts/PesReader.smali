###### Class io.bidmachine.media3.extractor.ts.PesReader (io.bidmachine.media3.extractor.ts.PesReader)
.class public final Lio/bidmachine/media3/extractor/ts/PesReader;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ts/TsPayloadReader;


# instance fields
.field public bytesRead:I

.field public dataAlignmentIndicator:Z

.field public dtsFlag:Z

.field public extendedHeaderLength:I

.field public payloadSize:I

.field public final pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

.field public ptsFlag:Z

.field public final reader:Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;

.field public seenFirstDts:Z

.field public state:I

.field public timeUs:J

.field public timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->reader:Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;

    .line 65
    new-instance p1, Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->state:I

    return-void
.end method


# virtual methods
.method public canConsumeSynthesizedEmptyPusi(Z)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 177
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/PesReader;->parseHeader()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_d

    :cond_b
    move v2, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v2, v0

    .line 178
    :goto_e
    iget v3, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_23

    iget v3, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->payloadSize:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_23

    if-eqz p1, :cond_20

    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->reader:Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;

    instance-of p1, p1, Lio/bidmachine/media3/extractor/ts/H262Reader;

    if-nez p1, :cond_23

    :cond_20
    if-eqz v2, :cond_23

    return v0

    :cond_23
    return v1
.end method

.method public consume(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, p2, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_56

    .line 93
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->state:I

    if-eqz v0, :cond_53

    if-eq v0, v5, :cond_53

    const-string v6, "PesReader"

    if-eq v0, v3, :cond_4e

    if-ne v0, v2, :cond_48

    .line 106
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->payloadSize:I

    if-eq v0, v1, :cond_39

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected start indicator: expected "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->payloadSize:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " more bytes"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_39
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    if-nez v0, :cond_41

    move v0, v5

    goto :goto_42

    :cond_41
    move v0, v4

    .line 111
    :goto_42
    iget-object v6, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->reader:Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {v6, v0}, Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;->packetFinished(Z)V

    goto :goto_53

    .line 114
    :cond_48
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 99
    :cond_4e
    const-string v0, "Unexpected start indicator reading extended header"

    invoke-static {v6, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_53
    :goto_53
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/ts/PesReader;->setState(I)V

    .line 119
    :cond_56
    :goto_56
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_ee

    .line 120
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->state:I

    if-eqz v0, :cond_e5

    if-eq v0, v5, :cond_cb

    if-eq v0, v3, :cond_9a

    if-ne v0, v2, :cond_94

    .line 141
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 142
    iget v6, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->payloadSize:I

    if-ne v6, v1, :cond_70

    move v6, v4

    goto :goto_72

    :cond_70
    sub-int v6, v0, v6

    :goto_72
    if-lez v6, :cond_7d

    sub-int/2addr v0, v6

    .line 145
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p1, v6}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 147
    :cond_7d
    iget-object v6, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->reader:Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {v6, p1}, Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;->consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    .line 148
    iget v6, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->payloadSize:I

    if-eq v6, v1, :cond_56

    sub-int/2addr v6, v0

    .line 149
    iput v6, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->payloadSize:I

    if-nez v6, :cond_56

    .line 152
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->reader:Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0, v4}, Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;->packetFinished(Z)V

    .line 153
    invoke-virtual {p0, v5}, Lio/bidmachine/media3/extractor/ts/PesReader;->setState(I)V

    goto :goto_56

    .line 158
    :cond_94
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_9a
    const/16 v0, 0xa

    .line 130
    iget v6, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 132
    iget-object v6, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    iget-object v6, v6, Lio/bidmachine/media3/common/util/ParsableBitArray;->data:[B

    invoke-virtual {p0, p1, v6, v0}, Lio/bidmachine/media3/extractor/ts/PesReader;->continueRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_56

    const/4 v0, 0x0

    iget v6, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 133
    invoke-virtual {p0, p1, v0, v6}, Lio/bidmachine/media3/extractor/ts/PesReader;->continueRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 134
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/PesReader;->parseHeaderExtension()V

    .line 135
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    if-eqz v0, :cond_be

    const/4 v0, 0x4

    goto :goto_bf

    :cond_be
    move v0, v4

    :goto_bf
    or-int/2addr p2, v0

    .line 136
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->reader:Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;

    iget-wide v6, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->timeUs:J

    invoke-interface {v0, v6, v7, p2}, Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;->packetStarted(JI)V

    .line 137
    invoke-virtual {p0, v2}, Lio/bidmachine/media3/extractor/ts/PesReader;->setState(I)V

    goto :goto_56

    .line 125
    :cond_cb
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    iget-object v0, v0, Lio/bidmachine/media3/common/util/ParsableBitArray;->data:[B

    const/16 v6, 0x9

    invoke-virtual {p0, p1, v0, v6}, Lio/bidmachine/media3/extractor/ts/PesReader;->continueRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 126
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/PesReader;->parseHeader()Z

    move-result v0

    if-eqz v0, :cond_df

    move v0, v3

    goto :goto_e0

    :cond_df
    move v0, v4

    :goto_e0
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/extractor/ts/PesReader;->setState(I)V

    goto/16 :goto_56

    .line 122
    :cond_e5
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_56

    :cond_ee
    return-void
.end method

.method public final continueRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z
    .registers 7

    .line 200
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_10

    return v1

    :cond_10
    if-nez p2, :cond_16

    .line 204
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1b

    .line 206
    :cond_16
    iget v2, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->bytesRead:I

    invoke-virtual {p1, p2, v2, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 208
    :goto_1b
    iget p1, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->bytesRead:I

    if-ne p1, p3, :cond_23

    return v1

    :cond_23
    const/4 p1, 0x0

    return p1
.end method

.method public init(Lio/bidmachine/media3/common/util/TimestampAdjuster;Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 4

    .line 74
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    .line 75
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->reader:Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {p1, p2, p3}, Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;->createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final parseHeader()Z
    .registers 8

    .line 215
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 216
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 217
    const-string v2, "PesReader"

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2b

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected start code prefix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iput v3, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->payloadSize:I

    return v1

    .line 223
    :cond_2b
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 224
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 225
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 226
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    .line 227
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 228
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->ptsFlag:Z

    .line 229
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v5}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->dtsFlag:Z

    .line 232
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 233
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    if-nez v0, :cond_71

    .line 236
    iput v3, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->payloadSize:I

    goto :goto_90

    :cond_71
    add-int/lit8 v0, v0, -0x3

    sub-int/2addr v0, v1

    .line 238
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->payloadSize:I

    if-gez v0, :cond_90

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found negative packet payload size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->payloadSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iput v3, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->payloadSize:I

    :cond_90
    :goto_90
    return v4
.end method

.method public final parseHeaderExtension()V
    .registers 11

    .line 253
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 254
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->timeUs:J

    .line 255
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->ptsFlag:Z

    if-eqz v0, :cond_8a

    .line 256
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 257
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    .line 258
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 259
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 260
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 261
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 262
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 263
    iget-boolean v5, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->seenFirstDts:Z

    if-nez v5, :cond_82

    iget-boolean v5, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->dtsFlag:Z

    if-eqz v5, :cond_82

    .line 264
    iget-object v5, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 265
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    .line 266
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 267
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 268
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 269
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v7}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    .line 270
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->pesScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v2, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 276
    iget-object v2, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    invoke-virtual {v2, v0, v1}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    .line 277
    iput-boolean v6, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->seenFirstDts:Z

    .line 279
    :cond_82
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->timestampAdjuster:Lio/bidmachine/media3/common/util/TimestampAdjuster;

    invoke-virtual {v0, v3, v4}, Lio/bidmachine/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->timeUs:J

    :cond_8a
    return-void
.end method

.method public seek()V
    .registers 2

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->state:I

    .line 83
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->bytesRead:I

    .line 84
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->seenFirstDts:Z

    .line 85
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->reader:Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {v0}, Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;->seek()V

    return-void
.end method

.method public final setState(I)V
    .registers 2

    .line 185
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->state:I

    const/4 p1, 0x0

    .line 186
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/PesReader;->bytesRead:I

    return-void
.end method
