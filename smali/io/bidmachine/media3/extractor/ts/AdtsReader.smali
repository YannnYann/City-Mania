###### Class io.bidmachine.media3.extractor.ts.AdtsReader (io.bidmachine.media3.extractor.ts.AdtsReader)
.class public final Lio/bidmachine/media3/extractor/ts/AdtsReader;
.super Ljava/lang/Object;
.source "AdtsReader.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/ts/ElementaryStreamReader;


# static fields
.field public static final ID3_IDENTIFIER:[B


# instance fields
.field public final adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

.field public bytesRead:I

.field public final containerMimeType:Ljava/lang/String;

.field public currentFrameVersion:I

.field public currentOutput:Lio/bidmachine/media3/extractor/TrackOutput;

.field public currentSampleDuration:J

.field public final exposeId3:Z

.field public firstFrameSampleRateIndex:I

.field public firstFrameVersion:I

.field public formatId:Ljava/lang/String;

.field public foundFirstFrame:Z

.field public hasCrc:Z

.field public hasOutputFormat:Z

.field public final id3HeaderBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

.field public id3Output:Lio/bidmachine/media3/extractor/TrackOutput;

.field public final language:Ljava/lang/String;

.field public matchState:I

.field public output:Lio/bidmachine/media3/extractor/TrackOutput;

.field public final roleFlags:I

.field public sampleDurationUs:J

.field public sampleSize:I

.field public state:I

.field public timeUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    .line 67
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1, v0, v1, p2}, Lio/bidmachine/media3/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;)V
    .registers 8

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    .line 126
    new-instance v0, Lio/bidmachine/media3/common/util/ParsableByteArray;

    sget-object v1, Lio/bidmachine/media3/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v0, -0x1

    .line 127
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->firstFrameVersion:I

    .line 128
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 129
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 130
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->timeUs:J

    .line 131
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->exposeId3:Z

    .line 132
    iput-object p2, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    .line 133
    iput p3, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->roleFlags:I

    .line 134
    iput-object p4, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->containerMimeType:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->setFindingSampleState()V

    return-void
.end method

.method private continueRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z
    .registers 6

    .line 233
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 234
    iget v1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 235
    iget p1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->bytesRead:I

    if-ne p1, p3, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public static isAdtsSyncWord(I)Z
    .registers 2

    .line 0
    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final assertTracksCreated()V
    .registers 2

    .line 563
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->currentOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->id3Output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final checkAdtsHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 4

    .line 346
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 351
    :cond_7
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    iget-object v0, v0, Lio/bidmachine/media3/common/util/ParsableBitArray;->data:[B

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p1

    aget-byte p1, v1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 353
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 354
    iget-object p1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 355
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_30

    if-eq p1, v0, :cond_30

    .line 358
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->resetSync()V

    return-void

    .line 362
    :cond_30
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    .line 363
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    .line 364
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->currentFrameVersion:I

    iput v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->firstFrameVersion:I

    .line 365
    iput p1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    .line 367
    :cond_3d
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    return-void
.end method

.method public final checkSyncPositionValid(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Z
    .registers 11

    add-int/lit8 v0, p2, 0x1

    .line 393
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 394
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    iget-object v0, v0, Lio/bidmachine/media3/common/util/ParsableBitArray;->data:[B

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->tryRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_12

    return v2

    .line 399
    :cond_12
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 400
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 401
    iget v4, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->firstFrameVersion:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    if-eq v0, v4, :cond_26

    return v2

    .line 406
    :cond_26
    iget v4, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    const/4 v6, 0x2

    if-eq v4, v5, :cond_4b

    .line 407
    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    iget-object v4, v4, Lio/bidmachine/media3/common/util/ParsableBitArray;->data:[B

    invoke-virtual {p0, p1, v4, v1}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->tryRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z

    move-result v4

    if-nez v4, :cond_36

    return v1

    .line 411
    :cond_36
    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v4, v6}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 412
    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    invoke-virtual {v4, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 413
    iget v7, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    if-eq v4, v7, :cond_46

    return v2

    :cond_46
    add-int/lit8 v4, p2, 0x2

    .line 416
    invoke-virtual {p1, v4}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 420
    :cond_4b
    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    iget-object v4, v4, Lio/bidmachine/media3/common/util/ParsableBitArray;->data:[B

    invoke-virtual {p0, p1, v4, v3}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->tryRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z

    move-result v3

    if-nez v3, :cond_56

    return v1

    .line 424
    :cond_56
    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 425
    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_69

    return v2

    .line 432
    :cond_69
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 433
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result p1

    add-int/2addr p2, v3

    if-lt p2, p1, :cond_75

    return v1

    .line 439
    :cond_75
    aget-byte v3, v4, p2

    if-ne v3, v5, :cond_8f

    add-int/2addr p2, v1

    if-ne p2, p1, :cond_7d

    return v1

    .line 444
    :cond_7d
    aget-byte p1, v4, p2

    invoke-virtual {p0, v5, p1}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->isAdtsSyncBytes(BB)Z

    move-result p1

    if-eqz p1, :cond_8e

    aget-byte p1, v4, p2

    and-int/lit8 p1, p1, 0x8

    shr-int/lit8 p1, p1, 0x3

    if-ne p1, v0, :cond_8e

    return v1

    :cond_8e
    return v2

    :cond_8f
    const/16 v0, 0x49

    if-eq v3, v0, :cond_94

    return v2

    :cond_94
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p1, :cond_99

    return v1

    .line 454
    :cond_99
    aget-byte v0, v4, v0

    const/16 v3, 0x44

    if-eq v0, v3, :cond_a0

    return v2

    :cond_a0
    add-int/2addr p2, v6

    if-ne p2, p1, :cond_a4

    return v1

    .line 461
    :cond_a4
    aget-byte p1, v4, p2

    const/16 p2, 0x33

    if-ne p1, p2, :cond_ab

    return v1

    :cond_ab
    return v2
.end method

.method public consume(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->assertTracksCreated()V

    .line 177
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_52

    .line 178
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->state:I

    if-eqz v0, :cond_4e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_38

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    .line 197
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->readSample(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    goto :goto_3

    .line 200
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 191
    :cond_23
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x7

    goto :goto_2a

    :cond_29
    const/4 v0, 0x5

    .line 192
    :goto_2a
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    iget-object v1, v1, Lio/bidmachine/media3/common/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v1, v0}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->continueRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->parseAdtsHeader()V

    goto :goto_3

    .line 183
    :cond_38
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->continueRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->parseId3Header()V

    goto :goto_3

    .line 188
    :cond_4a
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->checkAdtsHeader(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    goto :goto_3

    .line 180
    :cond_4e
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->findNextSample(Lio/bidmachine/media3/common/util/ParsableByteArray;)V

    goto :goto_3

    :cond_52
    return-void
.end method

.method public createTracks(Lio/bidmachine/media3/extractor/ExtractorOutput;Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .registers 5

    .line 151
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 152
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    .line 153
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 154
    iput-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->currentOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 155
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->exposeId3:Z

    if-eqz v0, :cond_49

    .line 156
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 157
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->id3Output:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 158
    new-instance v0, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v0}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 160
    invoke-virtual {p2}, Lio/bidmachine/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->containerMimeType:Ljava/lang/String;

    .line 161
    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    const-string v0, "application/id3"

    .line 162
    invoke-virtual {p2, v0}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object p2

    .line 163
    invoke-virtual {p2}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object p2

    .line 158
    invoke-interface {p1, p2}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    return-void

    .line 165
    :cond_49
    new-instance p1, Lio/bidmachine/media3/extractor/DiscardingTrackOutput;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/DiscardingTrackOutput;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->id3Output:Lio/bidmachine/media3/extractor/TrackOutput;

    return-void
.end method

.method public final findNextSample(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 11

    .line 293
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 294
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 295
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    :goto_c
    if-ge v1, v2, :cond_7b

    add-int/lit8 v3, v1, 0x1

    .line 297
    aget-byte v4, v0, v1

    and-int/lit16 v5, v4, 0xff

    .line 298
    iget v6, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->matchState:I

    const/16 v7, 0x200

    if-ne v6, v7, :cond_4c

    int-to-byte v6, v5

    const/4 v8, -0x1

    invoke-virtual {p0, v8, v6}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->isAdtsSyncBytes(BB)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 299
    iget-boolean v6, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v6, :cond_2e

    add-int/lit8 v6, v1, -0x1

    .line 300
    invoke-virtual {p0, p1, v6}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->checkSyncPositionValid(Lio/bidmachine/media3/common/util/ParsableByteArray;I)Z

    move-result v6

    if-eqz v6, :cond_4c

    :cond_2e
    and-int/lit8 v0, v4, 0x8

    shr-int/lit8 v0, v0, 0x3

    .line 301
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->currentFrameVersion:I

    const/4 v0, 0x1

    and-int/lit8 v1, v4, 0x1

    if-nez v1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    .line 302
    :goto_3b
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->hasCrc:Z

    .line 303
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v0, :cond_45

    .line 304
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->setCheckingAdtsHeaderState()V

    goto :goto_48

    .line 306
    :cond_45
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    .line 308
    :goto_48
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void

    .line 313
    :cond_4c
    iget v4, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->matchState:I

    or-int/2addr v5, v4

    const/16 v6, 0x149

    if-eq v5, v6, :cond_75

    const/16 v6, 0x1ff

    if-eq v5, v6, :cond_72

    const/16 v6, 0x344

    if-eq v5, v6, :cond_6d

    const/16 v6, 0x433

    if-eq v5, v6, :cond_66

    const/16 v5, 0x100

    if-eq v4, v5, :cond_79

    .line 331
    iput v5, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->matchState:I

    goto :goto_c

    .line 324
    :cond_66
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->setReadingId3HeaderState()V

    .line 325
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void

    :cond_6d
    const/16 v1, 0x400

    .line 321
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->matchState:I

    goto :goto_79

    .line 315
    :cond_72
    iput v7, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->matchState:I

    goto :goto_79

    :cond_75
    const/16 v1, 0x300

    .line 318
    iput v1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->matchState:I

    :cond_79
    :goto_79
    move v1, v3

    goto :goto_c

    .line 337
    :cond_7b
    invoke-virtual {p1, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method public getSampleDurationUs()J
    .registers 3

    .line 215
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->sampleDurationUs:J

    return-wide v0
.end method

.method public final isAdtsSyncBytes(BB)Z
    .registers 3

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    .line 467
    invoke-static {p1}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result p1

    return p1
.end method

.method public packetFinished(Z)V
    .registers 2

    .line 0
    return-void
.end method

.method public packetStarted(JI)V
    .registers 4

    .line 171
    iput-wide p1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->timeUs:J

    return-void
.end method

.method public final parseAdtsHeader()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 493
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->hasOutputFormat:Z

    if-nez v0, :cond_9b

    .line 494
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    if-eq v0, v1, :cond_31

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected audio object type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AdtsReader"

    invoke-static {v3, v0}, Lio/bidmachine/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :cond_31
    move v1, v0

    .line 509
    :goto_32
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 510
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 512
    iget v3, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    .line 513
    invoke-static {v1, v3, v0}, Lio/bidmachine/media3/extractor/AacUtil;->buildAudioSpecificConfig(III)[B

    move-result-object v0

    .line 515
    invoke-static {v0}, Lio/bidmachine/media3/extractor/AacUtil;->parseAudioSpecificConfig([B)Lio/bidmachine/media3/extractor/AacUtil$Config;

    move-result-object v1

    .line 516
    new-instance v3, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v3}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    .line 518
    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/Format$Builder;->setId(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->containerMimeType:Ljava/lang/String;

    .line 519
    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    const-string v4, "audio/mp4a-latm"

    .line 520
    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    iget-object v4, v1, Lio/bidmachine/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 521
    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    iget v4, v1, Lio/bidmachine/media3/extractor/AacUtil$Config;->channelCount:I

    .line 522
    invoke-virtual {v3, v4}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    iget v1, v1, Lio/bidmachine/media3/extractor/AacUtil$Config;->sampleRateHz:I

    .line 523
    invoke-virtual {v3, v1}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 524
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    .line 525
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->roleFlags:I

    .line 526
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/Format$Builder;->setRoleFlags(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    .line 530
    iget v1, v0, Lio/bidmachine/media3/common/Format;->sampleRate:I

    int-to-long v3, v1

    const-wide/32 v5, 0x3d090000

    div-long/2addr v5, v3

    iput-wide v5, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->sampleDurationUs:J

    .line 531
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v1, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    .line 532
    iput-boolean v2, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->hasOutputFormat:Z

    goto :goto_a2

    .line 534
    :cond_9b
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 537
    :goto_a2
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 538
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->adtsScratch:Lio/bidmachine/media3/common/util/ParsableBitArray;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x7

    .line 539
    iget-boolean v2, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v2, :cond_b8

    add-int/lit8 v1, v0, -0x9

    :cond_b8
    move v7, v1

    .line 543
    iget-object v3, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-wide v4, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->sampleDurationUs:J

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->setReadingSampleState(Lio/bidmachine/media3/extractor/TrackOutput;JII)V

    return-void
.end method

.method public final parseId3Header()V
    .registers 10

    .line 482
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->id3Output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 483
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 484
    iget-object v4, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->id3Output:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    .line 485
    invoke-virtual {v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    add-int/lit8 v8, v0, 0xa

    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    move-object v3, p0

    .line 484
    invoke-virtual/range {v3 .. v8}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->setReadingSampleState(Lio/bidmachine/media3/extractor/TrackOutput;JII)V

    return-void
.end method

.method public final readSample(Lio/bidmachine/media3/common/util/ParsableByteArray;)V
    .registers 9

    .line 549
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->sampleSize:I

    iget v2, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 550
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->currentOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/util/ParsableByteArray;I)V

    .line 551
    iget p1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->bytesRead:I

    .line 552
    iget v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->sampleSize:I

    if-ne p1, v0, :cond_42

    .line 554
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->timeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    invoke-static {p1}, Lio/bidmachine/media3/common/util/Assertions;->checkState(Z)V

    .line 555
    iget-object v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->currentOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-wide v1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->timeUs:J

    iget v4, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->sampleSize:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v6}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 556
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->timeUs:J

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->currentSampleDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->timeUs:J

    .line 557
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->setFindingSampleState()V

    :cond_42
    return-void
.end method

.method public final resetSync()V
    .registers 2

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    .line 220
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->setFindingSampleState()V

    return-void
.end method

.method public seek()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 145
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->timeUs:J

    .line 146
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/ts/AdtsReader;->resetSync()V

    return-void
.end method

.method public final setCheckingAdtsHeaderState()V
    .registers 2

    const/4 v0, 0x1

    .line 282
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->state:I

    const/4 v0, 0x0

    .line 283
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->bytesRead:I

    return-void
.end method

.method public final setFindingSampleState()V
    .registers 2

    const/4 v0, 0x0

    .line 241
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->state:I

    .line 242
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->bytesRead:I

    const/16 v0, 0x100

    .line 243
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->matchState:I

    return-void
.end method

.method public final setReadingAdtsHeaderState()V
    .registers 2

    const/4 v0, 0x3

    .line 276
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->state:I

    const/4 v0, 0x0

    .line 277
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->bytesRead:I

    return-void
.end method

.method public final setReadingId3HeaderState()V
    .registers 3

    const/4 v0, 0x2

    .line 251
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->state:I

    .line 252
    sget-object v0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    array-length v0, v0

    iput v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->bytesRead:I

    const/4 v0, 0x0

    .line 253
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->sampleSize:I

    .line 254
    iget-object v1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Lio/bidmachine/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method public final setReadingSampleState(Lio/bidmachine/media3/extractor/TrackOutput;JII)V
    .registers 7

    const/4 v0, 0x4

    .line 267
    iput v0, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->state:I

    .line 268
    iput p4, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->bytesRead:I

    .line 269
    iput-object p1, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->currentOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 270
    iput-wide p2, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->currentSampleDuration:J

    .line 271
    iput p5, p0, Lio/bidmachine/media3/extractor/ts/AdtsReader;->sampleSize:I

    return-void
.end method

.method public final tryRead(Lio/bidmachine/media3/common/util/ParsableByteArray;[BI)Z
    .registers 6

    .line 472
    invoke-virtual {p1}, Lio/bidmachine/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p3, :cond_8

    return v1

    .line 475
    :cond_8
    invoke-virtual {p1, p2, v1, p3}, Lio/bidmachine/media3/common/util/ParsableByteArray;->readBytes([BII)V

    const/4 p1, 0x1

    return p1
.end method
