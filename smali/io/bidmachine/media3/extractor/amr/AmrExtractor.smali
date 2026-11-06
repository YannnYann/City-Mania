###### Class io.bidmachine.media3.extractor.amr.AmrExtractor (io.bidmachine.media3.extractor.amr.AmrExtractor)
.class public final Lio/bidmachine/media3/extractor/amr/AmrExtractor;
.super Ljava/lang/Object;
.source "AmrExtractor.java"

# interfaces
.implements Lio/bidmachine/media3/extractor/Extractor;


# static fields
.field public static final FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;

.field public static final amrSignatureNb:[B

.field public static final amrSignatureWb:[B

.field public static final frameSizeBytesByTypeNb:[I

.field public static final frameSizeBytesByTypeWb:[I


# instance fields
.field public currentSampleBytesRemaining:I

.field public currentSampleSize:I

.field public currentSampleTimeUs:J

.field public currentTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

.field public extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

.field public firstSamplePosition:J

.field public firstSampleSize:I

.field public final flags:I

.field public hasOutputFormat:Z

.field public isSeekInProgress:Z

.field public isWideBand:Z

.field public numSamplesWithSameSize:I

.field public realTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

.field public final scratch:[B

.field public seekMap:Lio/bidmachine/media3/extractor/SeekMap;

.field public seekTimeUs:J

.field public final skippingTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

.field public timeOffsetUs:J


# direct methods
.method public static synthetic $r8$lambda$YtpZIiU0Gi8h8AEC3iDKaai_BXc()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 3

    .line 62
    new-instance v0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lio/bidmachine/media3/extractor/Extractor;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Lio/bidmachine/media3/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/bidmachine/media3/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->FACTORY:Lio/bidmachine/media3/extractor/ExtractorsFactory;

    const/16 v0, 0x10

    .line 122
    new-array v1, v0, [I

    fill-array-data v1, :array_28

    sput-object v1, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    .line 145
    new-array v0, v0, [I

    fill-array-data v0, :array_4c

    sput-object v0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    .line 164
    const-string v0, "#!AMR\n"

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    .line 165
    const-string v0, "#!AMR-WB\n"

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    return-void

    :array_28
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_4c
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, v0}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_9

    or-int/lit8 p1, p1, 0x1

    .line 209
    :cond_9
    iput p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->flags:I

    const/4 p1, 0x1

    .line 210
    new-array p1, p1, [B

    iput-object p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->scratch:[B

    const/4 p1, -0x1

    .line 211
    iput p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    .line 212
    new-instance p1, Lio/bidmachine/media3/extractor/DiscardingTrackOutput;

    invoke-direct {p1}, Lio/bidmachine/media3/extractor/DiscardingTrackOutput;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->skippingTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 213
    iput-object p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    return-void
.end method

.method public static getBitrateFromFrameSize(IJ)I
    .registers 7

    int-to-long v0, p0

    const-wide/32 v2, 0x7a1200

    mul-long/2addr v0, v2

    .line 498
    div-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method public static peekAmrSignature(Lio/bidmachine/media3/extractor/ExtractorInput;[B)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    invoke-interface {p0}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 318
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 319
    array-length v2, p1

    invoke-interface {p0, v0, v1, v2}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 320
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final assertInitialized()V
    .registers 2

    .line 475
    iget-object v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->realTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-static {v0}, Lio/bidmachine/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getConstantBitrateSeekMap(JZ)Lio/bidmachine/media3/extractor/SeekMap;
    .registers 15

    .line 468
    iget v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    const-wide/16 v1, 0x4e20

    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->getBitrateFromFrameSize(IJ)I

    move-result v8

    .line 469
    new-instance v3, Lio/bidmachine/media3/extractor/ConstantBitrateSeekMap;

    iget-wide v6, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->firstSamplePosition:J

    iget v9, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    move-wide v4, p1

    move v10, p3

    invoke-direct/range {v3 .. v10}, Lio/bidmachine/media3/extractor/ConstantBitrateSeekMap;-><init>(JJIIZ)V

    return-object v3
.end method

.method public final getFrameSizeInBytes(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 414
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->isValidFrameType(I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal AMR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    iget-boolean v1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v1, :cond_17

    const-string v1, "WB"

    goto :goto_19

    :cond_17
    const-string v1, "NB"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " frame type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 415
    invoke-static {p1, v0}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 420
    :cond_2e
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v0, :cond_37

    sget-object v0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    aget p1, v0, p1

    return p1

    :cond_37
    sget-object v0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    aget p1, v0, p1

    return p1
.end method

.method public init(Lio/bidmachine/media3/extractor/ExtractorOutput;)V
    .registers 4

    .line 225
    iput-object p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 226
    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->track(II)Lio/bidmachine/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->realTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 227
    iput-object v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    .line 228
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public final isNarrowBandValidFrameType(I)Z
    .registers 3

    .line 436
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    if-nez v0, :cond_e

    const/16 v0, 0xc

    if-lt p1, v0, :cond_c

    const/16 v0, 0xe

    if-le p1, v0, :cond_e

    :cond_c
    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public final isSeekTimeUsWithinRange(JJ)Z
    .registers 5

    sub-long/2addr p3, p1

    .line 487
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 p3, 0x4e20

    cmp-long p1, p1, p3

    if-gez p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public final isValidFrameType(I)Z
    .registers 3

    if-ltz p1, :cond_14

    const/16 v0, 0xf

    if-gt p1, v0, :cond_14

    .line 426
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->isWideBandValidFrameType(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->isNarrowBandValidFrameType(I)Z

    move-result p1

    if-eqz p1, :cond_14

    :cond_12
    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public final isWideBandValidFrameType(I)Z
    .registers 3

    .line 431
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v0, :cond_e

    const/16 v0, 0xa

    if-lt p1, v0, :cond_c

    const/16 v0, 0xd

    if-le p1, v0, :cond_e

    :cond_c
    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public final maybeOutputFormat()V
    .registers 8

    .line 325
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->hasOutputFormat:Z

    if-nez v0, :cond_4d

    const/4 v0, 0x1

    .line 326
    iput-boolean v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->hasOutputFormat:Z

    .line 327
    iget-boolean v1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    const-string v2, "audio/amr-wb"

    if-eqz v1, :cond_f

    move-object v3, v2

    goto :goto_11

    :cond_f
    const-string v3, "audio/amr"

    :goto_11
    if-eqz v1, :cond_14

    goto :goto_16

    .line 328
    :cond_14
    const-string v2, "audio/3gpp"

    :goto_16
    if-eqz v1, :cond_1b

    const/16 v4, 0x3e80

    goto :goto_1d

    :cond_1b
    const/16 v4, 0x1f40

    :goto_1d
    if-eqz v1, :cond_26

    .line 331
    sget-object v1, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    const/16 v5, 0x8

    aget v1, v1, v5

    goto :goto_2b

    :cond_26
    sget-object v1, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    const/4 v5, 0x7

    aget v1, v1, v5

    .line 332
    :goto_2b
    iget-object v5, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->realTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    new-instance v6, Lio/bidmachine/media3/common/Format$Builder;

    invoke-direct {v6}, Lio/bidmachine/media3/common/Format$Builder;-><init>()V

    .line 334
    invoke-virtual {v6, v3}, Lio/bidmachine/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v3

    .line 335
    invoke-virtual {v3, v2}, Lio/bidmachine/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v2

    .line 336
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/Format$Builder;->setMaxInputSize(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v1

    .line 337
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/common/Format$Builder;->setChannelCount(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 338
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/Format$Builder;->setSampleRate(I)Lio/bidmachine/media3/common/Format$Builder;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lio/bidmachine/media3/common/Format$Builder;->build()Lio/bidmachine/media3/common/Format;

    move-result-object v0

    .line 332
    invoke-interface {v5, v0}, Lio/bidmachine/media3/extractor/TrackOutput;->format(Lio/bidmachine/media3/common/Format;)V

    :cond_4d
    return-void
.end method

.method public final maybeOutputSeekMap(JI)V
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 441
    iget-object v2, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    if-eqz v2, :cond_7

    goto :goto_61

    .line 445
    :cond_7
    iget v2, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->flags:I

    and-int/lit8 v3, v2, 0x4

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_26

    .line 446
    new-instance p1, Lio/bidmachine/media3/extractor/IndexSeekMap;

    iget-wide p2, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->firstSamplePosition:J

    new-array v2, v1, [J

    aput-wide p2, v2, v0

    new-array p2, v1, [J

    const-wide/16 v6, 0x0

    aput-wide v6, p2, v0

    invoke-direct {p1, v2, p2, v4, v5}, Lio/bidmachine/media3/extractor/IndexSeekMap;-><init>([J[JJ)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    goto :goto_58

    :cond_26
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_51

    .line 451
    iget v3, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_34

    iget v7, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    if-eq v3, v7, :cond_34

    goto :goto_51

    .line 454
    :cond_34
    iget v3, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    const/16 v4, 0x14

    if-ge v3, v4, :cond_3c

    if-ne p3, v6, :cond_58

    :cond_3c
    and-int/lit8 p3, v2, 0x2

    if-eqz p3, :cond_41

    move v0, v1

    .line 457
    :cond_41
    invoke-virtual {p0, p1, p2, v0}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->getConstantBitrateSeekMap(JZ)Lio/bidmachine/media3/extractor/SeekMap;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    .line 459
    iget-object p2, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->realTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {p1}, Lio/bidmachine/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lio/bidmachine/media3/extractor/TrackOutput;->durationUs(J)V

    goto :goto_58

    .line 453
    :cond_51
    :goto_51
    new-instance p1, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;

    invoke-direct {p1, v4, v5}, Lio/bidmachine/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    iput-object p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    .line 462
    :cond_58
    :goto_58
    iget-object p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    if-eqz p1, :cond_61

    .line 463
    iget-object p2, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    invoke-interface {p2, p1}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    :cond_61
    :goto_61
    return-void
.end method

.method public final peekNextSampleSize(Lio/bidmachine/media3/extractor/ExtractorInput;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 399
    iget-object v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->scratch:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lio/bidmachine/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 401
    iget-object p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->scratch:[B

    aget-byte p1, p1, v2

    and-int/lit16 v0, p1, 0x83

    if-gtz v0, :cond_1b

    shr-int/lit8 p1, p1, 0x3

    and-int/lit8 p1, p1, 0xf

    .line 410
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->getFrameSizeInBytes(I)I

    move-result p1

    return p1

    .line 405
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid padding bits for frame header "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method public read(Lio/bidmachine/media3/extractor/ExtractorInput;Lio/bidmachine/media3/extractor/PositionHolder;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->assertInitialized()V

    .line 234
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1c

    .line 235
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->readAmrHeader(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_14

    goto :goto_1c

    .line 236
    :cond_14
    const-string p1, "Could not find AMR header."

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/bidmachine/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object p1

    throw p1

    .line 240
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->maybeOutputFormat()V

    .line 241
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->readSample(Lio/bidmachine/media3/extractor/ExtractorInput;)I

    move-result p2

    .line 242
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->maybeOutputSeekMap(JI)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_49

    .line 243
    iget-object p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    instance-of v0, p1, Lio/bidmachine/media3/extractor/IndexSeekMap;

    if-eqz v0, :cond_49

    .line 245
    iget-wide v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    iget-wide v2, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v0, v2

    .line 246
    check-cast p1, Lio/bidmachine/media3/extractor/IndexSeekMap;

    invoke-virtual {p1, v0, v1}, Lio/bidmachine/media3/extractor/IndexSeekMap;->setDurationUs(J)V

    .line 247
    iget-object p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->extractorOutput:Lio/bidmachine/media3/extractor/ExtractorOutput;

    iget-object v2, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    invoke-interface {p1, v2}, Lio/bidmachine/media3/extractor/ExtractorOutput;->seekMap(Lio/bidmachine/media3/extractor/SeekMap;)V

    .line 248
    iget-object p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->realTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    invoke-interface {p1, v0, v1}, Lio/bidmachine/media3/extractor/TrackOutput;->durationUs(J)V

    :cond_49
    return p2
.end method

.method public final readAmrHeader(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    sget-object v0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    invoke-static {p1, v0}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->peekAmrSignature(Lio/bidmachine/media3/extractor/ExtractorInput;[B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    .line 303
    iput-boolean v2, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    .line 304
    array-length v0, v0

    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    return v3

    .line 306
    :cond_11
    sget-object v0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    invoke-static {p1, v0}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->peekAmrSignature(Lio/bidmachine/media3/extractor/ExtractorInput;[B)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 307
    iput-boolean v3, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->isWideBand:Z

    .line 308
    array-length v0, v0

    invoke-interface {p1, v0}, Lio/bidmachine/media3/extractor/ExtractorInput;->skipFully(I)V

    return v3

    :cond_20
    return v2
.end method

.method public final readSample(Lio/bidmachine/media3/extractor/ExtractorInput;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    iget v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    const-wide/16 v1, 0x4e20

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-nez v0, :cond_60

    .line 347
    :try_start_9
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->peekNextSampleSize(Lio/bidmachine/media3/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleSize:I
    :try_end_f
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_f} :catch_5f

    .line 351
    iput v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    .line 352
    iget v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    if-ne v0, v5, :cond_1f

    .line 353
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iput-wide v6, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->firstSamplePosition:J

    .line 354
    iget v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    iput v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    .line 356
    :cond_1f
    iget v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->firstSampleSize:I

    iget v6, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    if-ne v0, v6, :cond_2a

    .line 357
    iget v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    add-int/2addr v0, v3

    iput v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    .line 359
    :cond_2a
    iget-object v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    instance-of v6, v0, Lio/bidmachine/media3/extractor/IndexSeekMap;

    if-eqz v6, :cond_60

    .line 360
    check-cast v0, Lio/bidmachine/media3/extractor/IndexSeekMap;

    .line 363
    iget-wide v6, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    iget-wide v8, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    .line 364
    invoke-interface {p1}, Lio/bidmachine/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iget v10, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    const-wide/32 v10, 0x186a0

    .line 365
    invoke-virtual {v0, v6, v7, v10, v11}, Lio/bidmachine/media3/extractor/IndexSeekMap;->isTimeUsInIndex(JJ)Z

    move-result v10

    if-nez v10, :cond_4c

    .line 367
    invoke-virtual {v0, v6, v7, v8, v9}, Lio/bidmachine/media3/extractor/IndexSeekMap;->addSeekPoint(JJ)V

    .line 369
    :cond_4c
    iget-boolean v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->isSeekInProgress:Z

    if-eqz v0, :cond_60

    iget-wide v8, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->seekTimeUs:J

    invoke-virtual {p0, v6, v7, v8, v9}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->isSeekTimeUsWithinRange(JJ)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 370
    iput-boolean v4, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->isSeekInProgress:Z

    .line 371
    iget-object v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->realTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    iput-object v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    goto :goto_60

    :catch_5f
    return v5

    .line 376
    :cond_60
    :goto_60
    iget-object v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    iget v6, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    .line 377
    invoke-interface {v0, p1, v6, v3}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleData(Lio/bidmachine/media3/common/DataReader;IZ)I

    move-result p1

    if-ne p1, v5, :cond_6b

    return v5

    .line 382
    :cond_6b
    iget v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    if-lez v0, :cond_73

    return v4

    .line 387
    :cond_73
    iget-object v5, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    iget-wide v6, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    iget-wide v8, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v6, v8

    iget v9, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Lio/bidmachine/media3/extractor/TrackOutput;->sampleMetadata(JIIILio/bidmachine/media3/extractor/TrackOutput$CryptoData;)V

    .line 393
    iget-wide v5, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v5, v1

    iput-wide v5, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    return v4
.end method

.method public release()V
    .registers 1

    .line 0
    return-void
.end method

.method public seek(JJ)V
    .registers 8

    const-wide/16 v0, 0x0

    .line 255
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    const/4 v2, 0x0

    .line 256
    iput v2, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleSize:I

    .line 257
    iput v2, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    .line 258
    iput-wide p3, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->seekTimeUs:J

    .line 259
    iget-object p3, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->seekMap:Lio/bidmachine/media3/extractor/SeekMap;

    instance-of p4, p3, Lio/bidmachine/media3/extractor/IndexSeekMap;

    if-eqz p4, :cond_29

    .line 260
    check-cast p3, Lio/bidmachine/media3/extractor/IndexSeekMap;

    invoke-virtual {p3, p1, p2}, Lio/bidmachine/media3/extractor/IndexSeekMap;->getTimeUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    .line 261
    iget-wide p3, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->seekTimeUs:J

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->isSeekTimeUsWithinRange(JJ)Z

    move-result p1

    if-nez p1, :cond_28

    const/4 p1, 0x1

    .line 262
    iput-boolean p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->isSeekInProgress:Z

    .line 263
    iget-object p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->skippingTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    iput-object p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->currentTrackOutput:Lio/bidmachine/media3/extractor/TrackOutput;

    :cond_28
    return-void

    :cond_29
    cmp-long p4, p1, v0

    if-eqz p4, :cond_3a

    .line 265
    instance-of p4, p3, Lio/bidmachine/media3/extractor/ConstantBitrateSeekMap;

    if-eqz p4, :cond_3a

    .line 266
    check-cast p3, Lio/bidmachine/media3/extractor/ConstantBitrateSeekMap;

    invoke-virtual {p3, p1, p2}, Lio/bidmachine/media3/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    return-void

    .line 268
    :cond_3a
    iput-wide v0, p0, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->timeOffsetUs:J

    return-void
.end method

.method public sniff(Lio/bidmachine/media3/extractor/ExtractorInput;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->readAmrHeader(Lio/bidmachine/media3/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method

###### Class io.bidmachine.media3.extractor.amr.AmrExtractor$$ExternalSyntheticLambda0 (io.bidmachine.media3.extractor.amr.AmrExtractor$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/media3/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/media3/extractor/ExtractorsFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lio/bidmachine/media3/extractor/Extractor;
    .registers 2

    .line 0
    invoke-static {}, Lio/bidmachine/media3/extractor/amr/AmrExtractor;->$r8$lambda$YtpZIiU0Gi8h8AEC3iDKaai_BXc()[Lio/bidmachine/media3/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method
